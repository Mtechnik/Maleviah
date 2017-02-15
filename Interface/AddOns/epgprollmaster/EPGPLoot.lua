local _, L = ...;

local realm = string.gsub(GetRealmName(), ' ', "")

local EPGPLoot = {}
EPGPLoot.__index = EPGPLoot

EPGPLoot.MODE_EPGP = "epgp"
EPGPLoot.MODE_ROLL = "roll"

function EPGPLoot.new()
    local self = {}
    setmetatable(self, EPGPLoot)
    self.currentMode = self.MODE_ROLL
    self.bufferedData = {}
    self.LH = C_LootHistory
    return self
end

function EPGPLoot:isEPGPMode()
    return (self.currentMode == self.MODE_EPGP)
end

function EPGPLoot:LoadPlayerInfo(itemIdx, playerIdx)

    local rollID = self.LH.GetItem(itemIdx);
    local name, _, rollType = self.LH.GetPlayerInfo(itemIdx, playerIdx);
    local currentData

    if (not self.bufferedData[rollID]) then
        self.bufferedData[rollID] = {}
    end

    if (not self.bufferedData[rollID][name]) then
        local ep,gp = EPGP:GetEPGP(name)
        if (not ep) then
            ep,gp = EPGP:GetEPGP(name .. '-' .. realm)
        end
        currentData = {}
        currentData.EPGP = 0
        currentData.hasNotMin = true
        if (ep and gp and gp > 0) then
            currentData.EPGP = (ep/gp)
        end
        if (ep) then
            currentData.hasNotMin = (EPGP:GetMinEP() > ep)
        end
        self.bufferedData[rollID][name] = currentData
    else
        currentData = self.bufferedData[rollID][name]
    end

    return currentData.EPGP, currentData.hasNotMin, rollType
end

local origUpdatePlayerFrame = LootHistoryFrame_UpdatePlayerFrame
function LootHistoryFrame_UpdatePlayerFrame(self, playerFrame)

    local origResult = origUpdatePlayerFrame(self,playerFrame)
    if (playerFrame.playerIdx and self.LootModeHandle) then
        local lootHandle = self.LootModeHandle

        if (lootHandle:isEPGPMode()) then
            -- load player data
            local epgp, hasNotMinEp, rollType = lootHandle:LoadPlayerInfo(playerFrame.itemIdx, playerFrame.playerIdx)
            if (rollType and (rollType == LOOT_ROLL_TYPE_NEED or rollType == LOOT_ROLL_TYPE_GREED or rollType == LOOT_ROLL_TYPE_DISENCHANT)) then
                local text = string.format(" %.2f", epgp)
                if (hasNotMinEp == true) then
                    text = '|cff555555'..text..'|r'
                end

                playerFrame.RollText:SetText(text)
                playerFrame.RollText:SetSize(0,16)
                playerFrame.RollIcon:SetPoint("RIGHT", playerFrame.RollText, "LEFT", 2, -1);
            end
        else
            -- reset to default options
            playerFrame.RollText:SetSize(24,16)
        end
    end

    return origResult
end

local origUpdatePlayerFrames = LootHistoryFrame_UpdatePlayerFrames
function LootHistoryFrame_UpdatePlayerFrames(self, itemIdx)

    local firstFrame, lastFrame = origUpdatePlayerFrames(self, itemIdx)

    if (self.LootModeHandle and self.LootModeHandle:isEPGPMode()) then
       local frameLists = {}
       frameLists[LOOT_ROLL_TYPE_NEED] = {}
       frameLists[LOOT_ROLL_TYPE_GREED] = {}
       frameLists[LOOT_ROLL_TYPE_DISENCHANT] = {}
       frameLists[LOOT_ROLL_TYPE_PASS] = {}
       frameLists['REST'] = {}

       -- build lookup table of player frames
       local currentFrame = lastFrame
       repeat
           if (currentFrame.playerIdx) then
               local _, _, rollType = self.LootModeHandle.LH.GetPlayerInfo(itemIdx, currentFrame.playerIdx);
               if (rollType) then
                   table.insert(frameLists[rollType], currentFrame)
               else
                   table.insert(frameLists['REST'], currentFrame)
               end
           end
           local pointCount = currentFrame:GetNumPoints()
           if (pointCount > 0) then
               local point, relativeTo = currentFrame:GetPoint(pointCount)
               currentFrame = relativeTo
           end
       until (pointCount == 0)

       local compareFunction = function(f1, f2)
           local firstEPGP, firstHasNotMin = LootHistoryFrame.LootModeHandle:LoadPlayerInfo(f1.itemIdx, f1.playerIdx)
           local secondEPGP, secondHasNotMin = LootHistoryFrame.LootModeHandle:LoadPlayerInfo(f2.itemIdx, f2.playerIdx)
           return ((firstHasNotMin == false and secondHasNotMin == true)
                   or (firstHasNotMin == secondHasNotMin and firstEPGP > secondEPGP))
       end
       table.sort(frameLists[LOOT_ROLL_TYPE_NEED], compareFunction)
       table.sort(frameLists[LOOT_ROLL_TYPE_GREED], compareFunction)
       table.sort(frameLists[LOOT_ROLL_TYPE_DISENCHANT], compareFunction)
       table.sort(frameLists[LOOT_ROLL_TYPE_PASS], compareFunction)
       table.sort(frameLists['REST'], compareFunction)

       local orderedFrames = {}
       local mergeTable = function(mytable)
           for key, value in ipairs(mytable) do
               table.insert(orderedFrames, value);
           end
           table.wipe(mytable)
       end
       mergeTable(frameLists[LOOT_ROLL_TYPE_NEED])
       mergeTable(frameLists[LOOT_ROLL_TYPE_GREED])
       mergeTable(frameLists[LOOT_ROLL_TYPE_DISENCHANT])
       mergeTable(frameLists[LOOT_ROLL_TYPE_PASS])
       mergeTable(frameLists['REST'])
       table.wipe(frameLists)

       firstFrame = nil
       lastFrame = nil
       for i, playerFrame in ipairs(orderedFrames) do
           playerFrame:ClearAllPoints()
           if ( lastFrame ) then
               playerFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -1);
           end
           if ( i % 2 == 1) then
               playerFrame.AlternatingBG:Show();
           else
               playerFrame.AlternatingBG:Hide();
           end

           lastFrame = playerFrame
           firstFrame = firstFrame or playerFrame;
       end
    end

    return firstFrame, lastFrame
end

-- region update priorities after loot distribution

-- refresh PRs of undistributed items
-- TODO: C_LootHistory.CanMasterLoot doesn't work for non master looter
-- TODO: at first focus on master looter
function EPGPLoot:refreshRemainingItems()
    local numItems = self.LH.GetNumItems()
    for itemIdx=1, numItems do
        if (self.LH.CanMasterLoot(itemIdx, 1)) then
            local rollID = self.LH.GetItem(itemIdx)
            self.bufferedData[rollID] = {}
        end
    end
    LootHistoryFrame_FullUpdate(LootHistoryFrame)
end
-- endregion

function EPGPLoot:UpdateBtnTexture(button, mode)

    if (mode == self.MODE_EPGP) then
        button:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Up")
    else
        button:SetNormalTexture("Interface\\GossipFrame\\VendorGossipIcon")
    end
end

function EPGPLoot:GetTooltipText()

    if (self.currentMode == self.MODE_EPGP) then
        return L["ToggleTooltip_Rolls"]
    else
        return L["ToggleTooltip_PR"]
    end
end

function EPGPLoot:ToggleMode(button)

    if (self.currentMode == self.MODE_ROLL) then
        self.currentMode = self.MODE_EPGP
    else
        self.currentMode = self.MODE_ROLL
    end

    self:UpdateBtnTexture(button, self.currentMode)
    button:GetScript("OnEnter")(button) -- update tooltip
    LootHistoryFrame_FullUpdate(LootHistoryFrame)
end

local function BuildToggleBtn(frame, handler)

    local btn = CreateFrame("Button","ToggleLootModeBtn",frame)
    btn:SetPoint("TOPRIGHT",frame,"TOPLEFT",2,-8)
    btn:SetSize(16, 16)
    handler:UpdateBtnTexture(btn)
    btn:SetScript('OnClick', function(btn) LootHistoryFrame.LootModeHandle:ToggleMode(btn) end)

    btn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:AddLine(LootHistoryFrame.LootModeHandle:GetTooltipText())
        GameTooltip:Show()
    end)
    btn:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)

    return btn
end

LootHistoryFrame:HookScript("OnShow", function(self)
    if (not self.ToggleLootModeBtn) then
        local lootHandler = EPGPLoot.new()
        self.LootModeHandle = lootHandler
        self.ToggleLootModeBtn = BuildToggleBtn(self.CloseButton, lootHandler)

        local LLNLib = LibStub:GetLibrary("LibLootNotify-1.0")
        LLNLib.RegisterCallback(EPGP, "LootReceived", function() LootHistoryFrame.LootModeHandle:refreshRemainingItems() end)
    end
end)
