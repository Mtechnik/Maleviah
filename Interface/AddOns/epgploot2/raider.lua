local EPGPloot2_CurrentLootTable = {}
local EPGPLoot2_FrameStack = {}
local t,tries = 0,0

local MainArmortype ={
	["WARRIOR"] = "Plate",
	["MAGE"] = "Cloth",
	["PRIEST"] = "Cloth",
	["WARLOCK"] = "Cloth",
	["PALADIN"] = "Plate",
	["ROGUE"] = "Leather",
	["SHAMAN"] = "Mail",
	["HUNTER"] = "Mail",
	["DEATHKNIGHT"] = "Plate",
	["DRUID"] = "Leather",
	["MONK"] = "Leather",
}

local function ProgressFrameOnShow()
	t = 0
	tries = 0
end

local function ProgressFrameOnUpdate(myself,elaps)

	local blnAllItemsFound=true
	t = t - elaps
	if t<0 then 
		t=2
		tries=tries+1
		if tries<8 then

			
			for k,v in pairs(EPGPloot2_CurrentLootTable) do
				EPGPLoot2TooltipScan:SetHyperlink(k)
				itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(k)
				if itemLink then
					EPGPloot2_CurrentLootTable[k].infobox:SetText(itemLink)
				else
					blnAllItemsFound=false
				end
			end
			
			if blnAllItemsFound then
				tries=8
			end
		end

		if tries == 8 then
			tries = 9
			EPGPLoot2:LootNextItem()
		end
	end		
end

local function lootIcon_OnLeave(frame)
    if GameTooltip:IsOwned(frame) then
         GameTooltip:Hide()
     end
end

function lootIcon_OnEnter(frame)
    if frame.link then
	    GameTooltip:SetOwner(frame, "ANCHOR_RIGHT")
	    GameTooltip:SetHyperlink(frame.link)
	    GameTooltip:Show()
    else
        EPGPLoot2:Print("Item link missing, can't set hyperlink");
    end
end

function EPGPLoot2:RollPressed(lootItem,MasterLooterName)

	if EPGPloot2_CurrentLootTable[lootItem].infobox then
		EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFF00ff00Roll|r")
	end
	
	EPGPloot2Form:Hide();
	EPGPloot2_CurrentLootTable[lootItem].handled=true
	EPGPLoot2:LootNextItem(MasterLooterName);

	if EPGPLoot2_MasterLooterHasOldVersion then
		lootItem = EPGPLoot2:GetItemIDFromItemLink(lootItem..":");
	end;

	self:SendCommMessage("epgploot2", "roll:" .. lootItem, "WHISPER", MasterLooterName);
end

function EPGPLoot2:NeedPressed(lootItem,MasterLooterName)

	if EPGPloot2_CurrentLootTable[lootItem].infobox then
		EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFF00ff00Need|r")
	end
	
	EPGPloot2Form:Hide();
	EPGPloot2_CurrentLootTable[lootItem].handled=true
	EPGPLoot2:LootNextItem(MasterLooterName);

	if EPGPLoot2_MasterLooterHasOldVersion then
		lootItem = EPGPLoot2:GetItemIDFromItemLink(lootItem..":");
	end;

	self:SendCommMessage("epgploot2", "need:" .. lootItem, "WHISPER", MasterLooterName);
end

function EPGPLoot2:OffspecPressed(lootItem,MasterLooterName)

	if EPGPloot2_CurrentLootTable[lootItem].infobox then
		EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFF00ff00Offspec|r")
	end
	
	EPGPloot2Form:Hide();
	EPGPloot2_CurrentLootTable[lootItem].handled=true
	EPGPLoot2:LootNextItem(MasterLooterName);

	if EPGPLoot2_MasterLooterHasOldVersion then
		lootItem = EPGPLoot2:GetItemIDFromItemLink(lootItem..":");
	end;

	self:SendCommMessage("epgploot2","offspec:" .. lootItem, "WHISPER", MasterLooterName);
end

function EPGPLoot2:MinorUpgradePressed(lootItem,MasterLooterName)

	if EPGPloot2_CurrentLootTable[lootItem].infobox then
		EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFF00ff00Minor Upgrade|r")
	end
	
	EPGPloot2Form:Hide();
	EPGPloot2_CurrentLootTable[lootItem].handled=true
	EPGPLoot2:LootNextItem(MasterLooterName);

	if EPGPLoot2_MasterLooterHasOldVersion then
		lootItem = EPGPLoot2:GetItemIDFromItemLink(lootItem..":");
	end;

	self:SendCommMessage("epgploot2","upgrade:" .. lootItem, "WHISPER", MasterLooterName);
end

function EPGPLoot2:PassPressed(lootItem,MasterLooterName)

	if EPGPloot2_CurrentLootTable[lootItem].infobox then
		EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass|r")
	end
	
	EPGPloot2Form:Hide();
	EPGPloot2_CurrentLootTable[lootItem].handled=true
	EPGPLoot2:LootNextItem(MasterLooterName);

	if EPGPLoot2_MasterLooterHasOldVersion then
		lootItem = EPGPLoot2:GetItemIDFromItemLink(lootItem..":");
	end;

	self:SendCommMessage("epgploot2","pass:" .. lootItem, "WHISPER", MasterLooterName);
end
 
function EPGPLoot2:ShowRaiderDialog(lootItem)
	
	--set a tooltip, to load the item from servercache
	EPGPLoot2TooltipScan:SetHyperlink(lootItem)

	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(lootItem)
	local sDialogtype = EPGPloot2_CurrentLootTable[lootItem].dialogtype
	local blnIsTrialist=EPGPLoot2:AmITrialist(EPGPloot2_CurrentLootTable[lootItem].raiderrank)
	local blnIsFriendOrAlt=EPGPLoot2:AmIFriendOrAlt(EPGPloot2_CurrentLootTable[lootItem].trialistrank)
	local MasterLooterName = EPGPloot2_CurrentLootTable[lootItem].masterlooter
	
	--do some checks first.
	if self.db.profile.AutoPass then 
		-- we're autopassing on this item if we cannot use it.
		EPGPLoot2TooltipScan:SetHyperlink(lootItem)
		if EPGPLoot2TooltipScan:CanUse() == false then
			self:Print(itemLink.." cannot be used, sending an automated 'pass' command to the masterlooter.")
			EPGPLoot2:PassPressed(lootItem,MasterLooterName)
			if EPGPloot2_CurrentLootTable[lootItem].infobox then
				EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass:|nUnusable|r")
			end
			return
		end
	
	end
		
	if self.db.profile.AutoAFK and UnitIsAFK("PLAYER") then 
		self:Print("You are AFK during looting of item "..itemLink..", sending an automated 'pass' command to the masterlooter.")
		EPGPLoot2:PassPressed(lootItem,MasterLooterName)
		if EPGPloot2_CurrentLootTable[lootItem].infobox then
			EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass:|nAFK|r")
		end
		return
	end 

	if sDialogtype == "RR" and blnIsTrialist then
		self:Print("You are not elegible to roll on "..itemLink..", sending an automated 'pass' command to the masterlooter.")
		EPGPLoot2:PassPressed(lootItem,MasterLooterName)
		if EPGPloot2_CurrentLootTable[lootItem].infobox then
			EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass:|nnot elegible|r")
		end
		return
	end
	
	--Now check if it is armor and the type is mainspec for this class
	--if itemType=="Armor" and itemEquipLoc~="INVTYPE_TABARD" and itemEquipLoc~="INVTYPE_CLOAK" then
		-- this item is armor and it is not a tabard or a cloak (cloaks are always of type cloth or leather so payers below their mainspec should always be elegible to roll on it)
	local blnMainArmortype=true
	
	if itemEquipLoc~="INVTYPE_TABARD" and itemEquipLoc~="INVTYPE_CLOAK" then
	-- only do this check for items that are not tabards or cloaks (these are always outside of the main proficiency for most classes
		if itemType=="Armor" and (itemSubType=="Cloth" or itemSubType=="Leather" or itemSubType=="Mail" or itemSubType=="Plate") then
			--this is an equipable type.
					
			local playerClass, englishClass = UnitClass("player");
			if MainArmortype[englishClass]~=itemSubType then
				--this is not main armor type for this class
				blnMainArmortype=false
				
				-- check if this user has set the preference for passing:
				if self.db.profile.AutoPassingOnLowArmor then
					--autopassing on lower armor; check if ithe item is an exception to that first.
					if not EPGPLoot2:IsItemAPassOnLowerArmorException(lootItem) and not EPGPLoot2:IsItemAOnWishlist(lootItem) then
						--Nope, this is no exception, just pass on it.
						self:Print("The item "..itemLink.." is of a lower armorclass, sending an automated 'pass' command to the masterlooter.")
						EPGPLoot2:PassPressed(lootItem,MasterLooterName)
						if EPGPloot2_CurrentLootTable[lootItem].infobox then
							EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass:|nnot ".. MainArmortype[englishClass] .."|r")
						end
						return
					end
					
				end
			end
		end
	end
		
	if blnMainArmortype==false and blnIsFriendOrAlt then
		--a friends or alts cannot need on downgrades.
			self:Print(itemLink.." is of a lower armortype than your class proficiency, sending an automated 'pass' command to the masterlooter.")
			EPGPLoot2:PassPressed(lootItem,MasterLooterName)
			if EPGPloot2_CurrentLootTable[lootItem].infobox then
				EPGPloot2_CurrentLootTable[lootItem].infobox:SetText("|cFFff0000Pass:|n not elegible|r")
			end
			return
	end
	--end

	if EPGPLoot2:IsItemAOnWishlist(lootItem) and sDialogtype == "NG" then
		-- this item is on our wishlist, and it is a need/greed item
		if GetItemCount(lootItem,true)==0 then
			--We don't have this item already, so send a NEED command.
			if blnMainArmortype then
				self:Print(itemLink.." is on your wishlist! Sending an automated 'need' command to the masterlooter.")
				EPGPLoot2:NeedPressed(lootItem,MasterLooterName)
				return
			else
				--it is not the main armor type, send a minorupgrade command.
				self:Print(itemLink.." is on your wishlist! The item is not your main armortype -sending an automated 'minor upgrade' command to the masterlooter.")
				EPGPLoot2:MinorUpgradePressed(lootItem,MasterLooterName)
				return
			end
		else
			self:Print("You already have the wishlist item:"..itemLink.."! The item# is "..lootItem)
		end
	end
	
	
	--Checks have been done, let's start showing that dialog:
	itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(lootItem)
	EPGPloot2FormLootIcon:Hide()
	
	local LootIcon = getfenv()["LootFrameLootIcon"]
	local tx 

	if not LootIcon then

		LootIcon = CreateFrame("Button", "LootFrameLootIcon",EPGPloot2Form)
		tx = LootIcon:CreateTexture(nil,"BACKGROUND")
	else

		LootIcon:Hide()
		tx = LootIcon.texture
		--LootIcon = CreateFrame("Button", "LootFrameLootIcon",EPGPloot2Form)
	end

	LootIcon:SetWidth(42) -- Set these to whatever height/width is needed 
	LootIcon:SetHeight(42) -- for your Texture


	LootIcon.link = itemLink
	LootIcon:SetScript("OnEnter", lootIcon_OnEnter)
	LootIcon:SetScript("OnLeave", lootIcon_OnLeave)
	
	tx:SetTexture(GetItemIcon(lootItem))
	tx:SetAllPoints(LootIcon)
	LootIcon.texture = tx
	LootIcon:SetPoint("TOPLEFT",27,-17)

	LootIcon:Show()
	
	
	
		-- The dialog looks like this:
		-- +=============================+
		-- |[icon]    make your choice   |
		-- |[button1] [button2] [button3]|
		-- |[button4]                    |
		-- +=============================+
	if itemLink then			
		EPGPloot2FormLabel2Label:SetText(itemLink)
	end
	if itemType then
		EPGPloot2FormLabel1Label:SetText(itemType)
		if itemSubType then
			EPGPloot2FormLabel1Label:SetText(itemType.." - "..itemSubType)
		else
			EPGPloot2FormLabel1Label:SetText(itemType)
		end
	end
	
		
	if sDialogtype == "FR" or sDialogtype == "RR" then
		--set up 'Roll' buttons
		-- EPGPloot2FormButton1 'need' button
		EPGPloot2FormButton1:Show()
		EPGPloot2FormButton1:SetText("Roll")
		EPGPloot2FormButton1:SetScript("OnClick", function() EPGPLoot2:RollPressed(lootItem,MasterLooterName) end)
		EPGPloot2FormButton1:Enable()
		
		-- EPGPloot2FormButton2 'greed' button
		EPGPloot2FormButton2:Hide()
		-- EPGPLoot3FormButton3 'pass' button
		EPGPloot2FormButton3:Show()
		EPGPloot2FormButton3:SetText("Pass")
		EPGPloot2FormButton3:SetScript("OnClick", function() EPGPLoot2:PassPressed(lootItem,MasterLooterName) end )
		-- EPGPloot2FormButton4 'minor upgrade' button
		EPGPloot2FormButton4:Hide()
	end

	if sDialogtype == "NG" and blnIsFriendOrAlt == false then
		--set up 'Need/Greed' type buttons
		
		-- EPGPloot2FormButton1 
		EPGPloot2FormButton1:SetText("Need")
		EPGPloot2FormButton1:SetScript("OnClick", function() EPGPLoot2:NeedPressed(lootItem,MasterLooterName) end)
		if blnMainArmortype then
			EPGPloot2FormButton1:Enable()
		else
			if EPGPLoot2_CanINeed then
				EPGPloot2FormButton1:Enable()
			else
				EPGPloot2FormButton1:Disable()
			end
		end
		EPGPloot2FormButton1:Show()
		
		-- EPGPloot2FormButton2 
		EPGPloot2FormButton2:SetText("Roll")
		EPGPloot2FormButton2:SetScript("OnClick", function() EPGPLoot2:OffspecPressed(lootItem,MasterLooterName) end)
		--if blnIsTrialist then
			--EPGPloot2FormButton2:Hide()
		--else
			EPGPloot2FormButton2:Show()
		--end

		
		-- EPGPLoot3FormButton3 
		EPGPloot2FormButton3:SetText("Pass")
		EPGPloot2FormButton3:SetScript("OnClick", function() EPGPLoot2:PassPressed(lootItem,MasterLooterName) end)
		EPGPloot2FormButton3:Show()
		
		-- EPGPloot2FormButton4 
		EPGPloot2FormButton4:SetText("Minor upgrade")
		EPGPloot2FormButton4:SetScript("OnClick", function() EPGPLoot2:MinorUpgradePressed(lootItem,MasterLooterName) end)		
		--if blnIsTrialist then
			--EPGPloot2FormButton4:Hide()
		--else
			EPGPloot2FormButton4:Show()
		--end

	end

	if sDialogtype == "NG" and blnIsFriendOrAlt then
		--set up 'Need/Greed' for Friends and Alts: in fact a Roll/Pass dialog

		EPGPloot2FormButton1:Show()
		EPGPloot2FormButton1:SetText("Roll")
		EPGPloot2FormButton1:SetScript("OnClick", function() EPGPLoot2:RollPressed(lootItem,MasterLooterName) end)
		EPGPloot2FormButton1:Enable()
		
		-- EPGPloot2FormButton2 'greed' button
		EPGPloot2FormButton2:Hide()
		-- EPGPLoot3FormButton3 'pass' button
		EPGPloot2FormButton3:Show()
		EPGPloot2FormButton3:SetText("Pass")
		EPGPloot2FormButton3:SetScript("OnClick", function() EPGPLoot2:PassPressed(lootItem,MasterLooterName) end )
		-- EPGPloot2FormButton4 'minor upgrade' button
		EPGPloot2FormButton4:Hide()		
		
	end
	
	EPGPloot2Form:Show()
	
end

function EPGPLoot2:ForcedLootRoundEnded()
	
	EPGPloot2Form:Hide()
	EPGPloot2Progress:Hide()
	
end

function EPGPLoot2:LootNextItem(MasterLooterName)
	local allDone = true --set the flag.
	
	for k,v in pairs(EPGPloot2_CurrentLootTable) do
	
		if EPGPloot2_CurrentLootTable[k].handled == false then
				allDone = false -- not done yet!
			
				EPGPLoot2:ShowRaiderDialog(k)
			
			break
		end
	
	end
	
	if allDone then
		-- Send end signal
		self:SendCommMessage("epgploot2", "finished:nil", "WHISPER", MasterLooterName);
		self:SendCommMessage("epgploot2", "progress:nil", "RAID");
		
	end
end

local function ClearProgressFrame()

	for i=1,#EPGPLoot2_FrameStack do
		EPGPLoot2_FrameStack[i]:Hide()
	end
	
	EPGPLoot2_FrameStack={}
	
end

function EPGPLoot2:StartRaiderLoot(MasterLooterName,LootCommandstring)

	self:Print("Distributing the loot starts now!")
	-- self:Print(LootCommandstring);

	-- decompose the lootcommandstring.
	local iExclamationmark = strfind(LootCommandstring,"!")
	if iExclamationmark == nil or iExclamationmark < 2 then
		self:Print("Error: Raiderrank/Trialistrank not found!")
		return
	end
	
	local strRanks = strsub(LootCommandstring,1,iExclamationmark-1)
	
	local iRaiderrank = tonumber(strsub(strRanks,1,strfind(strRanks,"x")-1))
	local iTrialistrank = tonumber(strsub(strRanks,strfind(strRanks,"x")+1,strlen(strRanks)));
	
	if EPGPLoot2:AmITrialist(iRaiderrank) then
		if EPGPLoot2:AmIFriendOrAlt(iTrialistrank) then
			self:Print("You are bidding under friend/alt/reservist lootrules")
		else
			self:Print("You are bidding under trialist lootrules")
		end
	end
	
	--Clear the global lootcommand table
	for k,v in pairs(EPGPloot2_CurrentLootTable) do
		EPGPloot2_CurrentLootTable[k]=nil
	end
	
	--set up a new table
	local LootCommandTable = {}
	LootCommandTable = EPGPLoot2:Split(strsub(LootCommandstring,iExclamationmark+1),";")

	ClearProgressFrame()
	
	for i=1,#LootCommandTable-1 do
		
		local currentItem = strsub(LootCommandTable[i],4)
		local itemdata = {}

		--EPGPLoot2:Print("curitem:"..currentItem);
		
		itemdata.raiderrank = iRaiderrank
		itemdata.trialistrank = iTrialistrank
		itemdata.handled = false
		itemdata.dialogtype=strsub(LootCommandTable[i],1,2)
		itemdata.masterlooter = MasterLooterName

		local LootIcon = CreateFrame("Button", "ProgressFrameLootIcon",EPGPloot2Progress)
		tx = LootIcon:CreateTexture(nil,"BACKGROUND")

		LootIcon:SetWidth(20) -- Set these to whatever height/width is needed 
		LootIcon:SetHeight(20) -- for your Texture

		LootIcon.link = currentItem
		LootIcon:SetScript("OnEnter", lootIcon_OnEnter)
		LootIcon:SetScript("OnLeave", lootIcon_OnLeave)
		
		tx:SetTexture(GetItemIcon(currentItem))
		tx:SetAllPoints(LootIcon)
		LootIcon.texture = tx
		LootIcon:SetPoint("TOPLEFT",8,-18-i*22)
		LootIcon:Show()
	
		--create infobox to go with this item
		local InfoBox = EPGPloot2Progress:CreateFontString("infobox"..currentItem)
		InfoBox:SetFont("Fonts\\FRIZQT__.TTF", 8)
		InfoBox:SetWidth(100)
		InfoBox:SetPoint("TOPLEFT",28,-18-i*22)

		--InfoBox:SetText("|cFF666666Retrieving #"..currentItem.."|nmouse over the icon to load it|r")
		InfoBox:SetText(currentItem);

		InfoBox:SetJustifyH("LEFT") 
	
		itemdata.looticon = LootIcon
		itemdata.infobox = InfoBox

		table.insert(EPGPLoot2_FrameStack,LootIcon)
		table.insert(EPGPLoot2_FrameStack,InfoBox)

		EPGPloot2_CurrentLootTable[currentItem] = itemdata
		
	end
	
	--Show the progress window
	EPGPLoot2:UpdateProgress("")
	
	EPGPloot2Progress:SetScript("OnShow", ProgressFrameOnShow) 
	EPGPloot2Progress:SetScript("OnUpdate", ProgressFrameOnUpdate)
	
	EPGPloot2Progress:Show() -- the 'show' function should trigger the lootdialogs
		
end



-- from is a full player name (player-realm)
function EPGPLoot2:UpdateProgress(name)
	
	local blnAllHandled = true
	
	if name~="" then
		EPGPLoot2_Progress[name]=true
	end
	
	local progressstring = "|n|n"
  	local total = GetNumGroupMembers()
		
	for i = 1, total do
        -- todo: show realm name when player name isn't unique in raid
--		groupMemberName, _ , _ , _, _ , _ , _ , _ , _ , _ , _ = GetRaidRosterInfo(i);
		groupMemberName = GetUnitName( "raid".. i, true ) ;
		groupMemberName = EPGPLoot2:FixUnitName(groupMemberName);

		local groupMemberPlayerName, groupMemberRealmName = EPGPLoot2:crack_name(groupMemberName);

		if EPGPLoot2_Progress[groupMemberName] then
			progressstring = progressstring .. "|cFF00ff00"  .. groupMemberPlayerName .. "|r|n"
		else
			progressstring = progressstring .. "|cFFcccccc"  .. groupMemberPlayerName .. "|r|n"
			blnAllHandled = false 
		end
			
	end

	EPGPloot2ProgressLabel1Label:SetText(progressstring);
	
	if blnAllHandled then
		EPGPloot2Progress:Hide()
	end
	
end

function EPGPLoot2:RollReportFromMasterLooter(commandstring)
	local commandstringvalues = {}
	commandstringvalues = EPGPLoot2:Split(commandstring,";")
	if #commandstringvalues==2 then
	
		local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(commandstringvalues[2])
		EPGPLoot2:Print("You rolled "..commandstringvalues[1].." on item: "..itemLink)
	
		if EPGPloot2_CurrentLootTable[commandstringvalues[2]].infobox then
			EPGPloot2_CurrentLootTable[commandstringvalues[2]].infobox:SetText("|cFF00ff00Roll|r|n"..commandstringvalues[1])
		end
		
	end
end
