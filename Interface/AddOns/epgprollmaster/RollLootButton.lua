local _, L = ...;
local rollButton

local function RollAllItems()
    for i=1, LootFrame.numLootItems do
        DoMasterLootRoll(i);
    end
end

local function BuildRollButton()
    rollButton = CreateFrame("Button","Rollbutton",LootFrame)
    rollButton:SetPoint("TOPRIGHT",LootFrame,"TOPRIGHT",-10,-27)
    rollButton:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Up");
    rollButton:SetPushedTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Down");
    rollButton:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Dice-Highlight");
    rollButton:SetSize(30, 30)
    rollButton:SetScript('OnClick', RollAllItems)
    rollButton:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
        GameTooltip:AddLine(L["RequestRolls"])
        GameTooltip:Show()
    end)
    rollButton:SetScript("OnLeave", function(self)
        GameTooltip:Hide()
    end)
end


local f = CreateFrame("frame")
f:RegisterEvent("LOOT_OPENED")
f:SetScript("OnEvent", function(self,event,...)
	if event == "LOOT_OPENED" then
        if IsMasterLooter() then
            if not rollButton then
                BuildRollButton();
            end
            rollButton:Show()
        elseif rollButton then
            rollButton:Hide()
        end
	end
end)