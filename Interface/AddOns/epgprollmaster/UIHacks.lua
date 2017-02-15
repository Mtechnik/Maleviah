
-- overwrite original function
-- hide passes as master looter to clean the list a bit
function LootHistoryFrameUtil_ShouldDisplayPlayer(itemIdx, playerIdx)
    local name, class, rollType, roll, isWinner, isMe = C_LootHistory.GetPlayerInfo(itemIdx, playerIdx);
    return(isMe or roll or rollType ~= LOOT_ROLL_TYPE_PASS)
end

local f = CreateFrame("frame")
f:RegisterEvent("LOOT_HISTORY_ROLL_CHANGED")
f:SetScript("OnEvent", function(self,event,...)

    -- update expanded roll (sort and filter)
    if event == "LOOT_HISTORY_ROLL_CHANGED" then
        local itemIdx, playerIdx = ...;
        local LH = LootHistoryFrame;

        if LH.itemFrames[itemIdx] and playerIdx%5==0  then
            local itemFrame = LH.itemFrames[itemIdx]

            if itemFrame.rollID and LH.expandedRolls[itemFrame.rollID] then
                LootHistoryFrame_FullUpdate(LH)
            end
        end

    end
end)


-- region loot assignment fix
-- there is a bug in LootHistoryDropDown. The playerId in this frame is not updated during rolls.
-- then it assigns loot to the wrong person.

local orgLootHistoryPlayerFrameOnClick = LootHistoryPlayerFrame_OnClick
function LootHistoryPlayerFrame_OnClick(self, button)
    if ( C_LootHistory.CanMasterLoot(self.itemIdx, self.playerIdx) ) then
        LootHistoryDropDown.playerName = C_LootHistory.GetPlayerInfo(self.itemIdx, self.playerIdx)
    end

    return orgLootHistoryPlayerFrameOnClick(self, button)
end

local orgLootHistoryFrameUpdatePlayerFrames = LootHistoryFrame_UpdatePlayerFrames
function LootHistoryFrame_UpdatePlayerFrames(self, itemIdx)

    if LootHistoryDropDown.playerIdx and LootHistoryDropDown.itemIdx and LootHistoryDropDown.itemIdx == itemIdx then
        local name = C_LootHistory.GetPlayerInfo(itemIdx, LootHistoryDropDown.playerIdx)
        if name ~= LootHistoryDropDown.playerName then
            -- error case with wrong playerId in Dropdown

            local rollID, itemLink, numPlayers = C_LootHistory.GetItem(itemIdx);
            for i=1,numPlayers do
                name = C_LootHistory.GetPlayerInfo(itemIdx, i)
                if name == LootHistoryDropDown.playerName then
                    LootHistoryDropDown.playerIdx = i;
                    break
                end
            end
        end
    end

    return orgLootHistoryFrameUpdatePlayerFrames(self, itemIdx)
end
-- endregion