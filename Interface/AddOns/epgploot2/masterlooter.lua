local MasterLootCollection = {}
local MasterLootCounter
local PrioCache = {}
local IsLootingInProgress = false

-- New method of determining winner
local function SortNeedersAndMinorUpgraders(objA,objB)
	-- raiders go before trialists
	if EPGPLoot2:IsRaider(PrioCache[objA].rank) and EPGPLoot2:IsTrialist(PrioCache[objB].rank) then
		return true
	end
	if EPGPLoot2:IsRaider(PrioCache[objB].rank) and EPGPLoot2:IsTrialist(PrioCache[objA].rank) then
		return false
	end
	
	-- both ObjA and ObjB have the same rank, let priority determine who is first.
	return PrioCache[objA].prio > PrioCache[objB].prio
end

local function SortRollers(objA,objB)
	return objA.roll > objB.roll
end




local function DetermineWinnerForItem(item)
		
--EPGPLoot2:Print(item.." needers:"..#MasterLootCollection[item].needers)		
--EPGPLoot2:Print(item.." minor:"..#MasterLootCollection[item].minorupgraders)		
--EPGPLoot2:Print(item.." ofspecc:"..#MasterLootCollection[item].offspeccers)		
--EPGPLoot2:Print(item.." rollers:"..#MasterLootCollection[item].rollers)		
		
	if #MasterLootCollection[item].needers > 0 then
		--People needed on this item
		table.sort(MasterLootCollection[item].needers, SortNeedersAndMinorUpgraders)
	end
	if #MasterLootCollection[item].minorupgraders > 0 then
		--People minorneeded on this item
		table.sort(MasterLootCollection[item].minorupgraders, SortNeedersAndMinorUpgraders)
	end
	if #MasterLootCollection[item].offspeccers > 0 then
		--People offspeccedneeded on this item
		--it is a random roll
		table.sort(MasterLootCollection[item].offspeccers, SortRollers)
	end
	if #MasterLootCollection[item].rollers > 0 then
		--it is a random roll
		table.sort(MasterLootCollection[item].rollers, SortRollers)
	end

	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(item)
	
	local winner="shard"
	local winnertype="pass"
	local runnerup="shard"
	local runneruptype="pass"
	local announcemessage = "The "..itemLink.." will be sharded (everyone passed)"
	local winningroll =""

	if #MasterLootCollection[item].rollers > 0 then
		winner =  MasterLootCollection[item].rollers[1].name
		winnertype = "roll"
		winningroll = MasterLootCollection[item].rollers[1].roll
	end
	if #MasterLootCollection[item].offspeccers > 0 then
		winner =  MasterLootCollection[item].offspeccers[1].name
		winnertype = "offspec"
		winningroll = MasterLootCollection[item].offspeccers[1].roll
	end
	if #MasterLootCollection[item].minorupgraders > 0 then
		winner =  MasterLootCollection[item].minorupgraders[1]
		winnertype = "minor"
	end
	if #MasterLootCollection[item].needers > 0 then
		winner =  MasterLootCollection[item].needers[1]
		winnertype = "need"
	end
	
	if #MasterLootCollection[item].rollers > 0 then
		if winnertype=="roll" and #MasterLootCollection[item].rollers > 1 then
			runnerup =  MasterLootCollection[item].rollers[2].name
		else
			runnerup =  MasterLootCollection[item].rollers[1].name
		end
		runneruptype = "roll"
	end
	if #MasterLootCollection[item].offspeccers > 0 then
		if winnertype == "offspec" and #MasterLootCollection[item].offspeccers > 1 then
			runnerup =  MasterLootCollection[item].offspeccers[2].name
		else
			runnerup =  MasterLootCollection[item].offspeccers[1].name
		end
		runneruptype = "offspec"
	end
	if #MasterLootCollection[item].minorupgraders > 0 then
		if winnertype == "minor" and #MasterLootCollection[item].minorupgraders > 1 then
			runnerup =  MasterLootCollection[item].minorupgraders[2]
		else
			runnerup =  MasterLootCollection[item].minorupgraders[1]
		end
		runneruptype = "minor"
	end
	if #MasterLootCollection[item].needers > 1 then
		runnerup =  MasterLootCollection[item].needers[2]
		runneruptype = "need"
	end
	--EPGPLoot2:Print("debug winnertype = " .. winnertype)
	
	if winnertype == "roll" or winnertype=="offspec" then
		announcemessage="The "..itemLink.." winner is "..winner.." (highest roller:" ..winningroll..")"
	else
		if winnertype ~= "pass" then
			announcemessage="The "..itemLink.." winner is "..winner.." (prio:".. strsub(tostring(PrioCache[winner].prio),1,6)..", "..winnertype ..")"
		end
	end

	return winner, winnertype, runnerup, runneruptype,announcemessage
	
end


local function DetermineWinners()
	-- get the current priorities
	PrioCache = EPGPLoot2:UpdateRaidPrio()
	for k,v in pairs(MasterLootCollection) do
		local winner, winnertype, runnerup, runneruptype, announcemessage
		
		
		if (MasterLootCollection[k].type ~= "RR") and (MasterLootCollection[k].type ~= "FR") then

			winner, winnertype, runnerup, runneruptype, announcemessage = DetermineWinnerForItem(k)
			MasterLootCollection[k].infobox:SetText("1: "..winner.." ("..winnertype..")|n2: "..runnerup.." ("..runneruptype..")")
			MasterLootCollection[k].winner = winner
			MasterLootCollection[k].winnertype = winnertype
			MasterLootCollection[k].runnerup = runnerup
			MasterLootCollection[k].runneruptype = runneruptype
			MasterLootCollection[k].announcemessage = announcemessage

		else

			if MasterLootCollection[k].HasBeenRolledFor == false then
				winner, winnertype, runnerup, runneruptype, announcemessage = DetermineWinnerForItem(k)
				MasterLootCollection[k].infobox:SetText("1: "..winner.." ("..winnertype..")|n2: "..runnerup.." ("..runneruptype..")")
				MasterLootCollection[k].winner = winner
				MasterLootCollection[k].winnertype = winnertype
				MasterLootCollection[k].runnerup = runnerup
				MasterLootCollection[k].runneruptype = runneruptype
				MasterLootCollection[k].announcemessage = announcemessage
				MasterLootCollection[k].HasBeenRolledFor=true
			end
		end
		
		MasterLootCollection[k].masterlootbutton:SetScript("OnClick", function() EPGPLoot2:HandOutLoot(k) end)
		MasterLootCollection[k].masterlootbutton:SetScript("OnEnter", function() GameTooltip:SetOwner(MasterLootCollection[k].masterlootbutton, "ANCHOR_RIGHT"); GameTooltip:SetText(EPGPLoot2:Tooltiptext(k)) end)
		MasterLootCollection[k].masterlootbutton:Show()					
	end

end

function EPGPLoot2:Tooltiptext(k)
	local tooltiptext = ""
	if #MasterLootCollection[k].needers>0 then
		tooltiptext = tooltiptext .. "Needers:|n"
		for i=1, #MasterLootCollection[k].needers do
			tooltiptext = tooltiptext .. "-"..MasterLootCollection[k].needers[i].. "(".. strsub(tostring(PrioCache[MasterLootCollection[k].needers[i]].prio),1,6) .." ".. EPGPLoot2:PriorityRankName(PrioCache[MasterLootCollection[k].needers[i]].rank) ..")|n"
		end
	end
	if #MasterLootCollection[k].minorupgraders>0 then
		tooltiptext = tooltiptext .. "|nMinor upgrades:|n"
		for i=1 , #MasterLootCollection[k].minorupgraders do
			tooltiptext = tooltiptext .. "-"..MasterLootCollection[k].minorupgraders[i].. "(".. strsub(tostring(PrioCache[MasterLootCollection[k].minorupgraders[i]].prio),1,6) .." ".. EPGPLoot2:PriorityRankName(PrioCache[MasterLootCollection[k].minorupgraders[i]].rank) ..")|n"
		end
	end
	if #MasterLootCollection[k].offspeccers>0 then
		tooltiptext = tooltiptext .. "|nOffspec:|n"
		for i=1 ,#MasterLootCollection[k].offspeccers do
			tooltiptext = tooltiptext .. "-"..MasterLootCollection[k].offspeccers[i].name .. "(roll:".. tostring(MasterLootCollection[k].offspeccers[i].roll) .." ".. EPGPLoot2:PriorityRankName(PrioCache[MasterLootCollection[k].offspeccers[i].name].rank) ..")|n"
		end
	end
	if #MasterLootCollection[k].rollers>0 then
		tooltiptext = tooltiptext .. "|nRolled:|n"
		for i=1 , #MasterLootCollection[k].rollers do
			tooltiptext = tooltiptext .. "-"..MasterLootCollection[k].rollers[i].name .. "(roll:".. tostring(MasterLootCollection[k].rollers[i].roll) .." ".. EPGPLoot2:PriorityRankName(PrioCache[MasterLootCollection[k].rollers[i].name].rank) ..")|n"
		end
	end
	return tooltiptext
end

function EPGPLoot2:AnnounceInRaid(k)
	local tooltiptext = EPGPLoot2:Tooltiptext(k)
	
	local RaidMessage = {}
	RaidMessage = EPGPLoot2:Split(tooltiptext,"|n")
	for i=1, #RaidMessage do
		SendChatMessage(RaidMessage[i], "RAID", nil);
	end
end

local function EndTheBidding()

	if EPGPLoot2_debug_MLtesting then
		EPGPLoot2:SendCommMessage("epgploot2","lootroundend:nil", "WHISPER", UnitName("PLAYER"));
	else
		EPGPLoot2:SendCommMessage("epgploot2","lootroundend:nil", "RAID");
	end
	DetermineWinners()
end

local function StartTheLooting(self,LootCommandstring,lootlist)

	-- clear all the ongoing stuff, send out reset messages.
	MasterLootCollection = {}
	MasterLootCounter=0
	-- setup masterlooter arrays and such
	for k,v in pairs(lootlist) do
		
		MasterLootCollection[k] = lootlist[k]
		MasterLootCollection[k].needers={}
		MasterLootCollection[k].rollers={}
		MasterLootCollection[k].minorupgraders={}
		MasterLootCollection[k].offspeccers={}

	end
	
	local ItemIDLootCommandString = "3x5!NG:116660;NG:18230;"; -- 116660 = Ironhoof Destroyer (BRF Mythic mount), 18230 = Broken I.W.I.N. Button, fixed format for old version nagging
	
	-- todo: fix parsing so we can change the lootstring without breaking everything
	-- broadcast the commandstring.
	if EPGPLoot2_debug_MLtesting then
		-- for itemid versions;
		self:SendCommMessage("epgploot2","start:" .. ItemIDLootCommandString, "WHISPER", UnitName("PLAYER"));

		-- for itemlink versions:
		self:SendCommMessage("epgploot2","start2:" .. self.db.profile.RaiderRank .."x"..self.db.profile.TrialistRank.."!".. LootCommandstring, "WHISPER", UnitName("PLAYER"));
	else
		-- for itemid versions;
		self:SendCommMessage("epgploot2","start:" .. ItemIDLootCommandString, "RAID");

		-- for itemlink versions:
		self:SendCommMessage("epgploot2","start2:" .. self.db.profile.RaiderRank .."x"..self.db.profile.TrialistRank.."!".. LootCommandstring, "RAID");
	end

end

-- when debugging isMerchantLoot can be true, in which case items are the merchant's items, not the loot on a corpse
function EPGPLoot2:StartTheMasterLooting(isMerchantLoot)
	--self:Print("Found loot that requires my attention!!")

	local numItems = 0;
	if isMerchantLoot then
		numItems = GetMerchantNumItems();
		if EPGPLoot2_debug then
			EPGPLoot2:Print("EPGPLoot2:StartTheMasterLooting, MerchantLoot");
		end;
	else
		numItems = GetNumLootItems();
		if EPGPLoot2_debug then
			EPGPLoot2:Print("EPGPLoot2:StartTheMasterLooting.");
		end;
	end;

	local framename = ""
	local lootlist = {}
	local strLootCommandstring = ""
	local i=0
	local lootannouncer = {}
	local lootannouncecounter = 1
	if UnitExists("target") then
		framename = "EPGPLoot2"..UnitGUID("target")
		lootannouncer[lootannouncecounter] = UnitName("target")..": "
	else
		framename ="EPGPLoot2MasterLooter"
		lootannouncer[lootannouncecounter] = ""
	end
	
	local f = getfenv()[framename]
	if f then
		f:Hide()
	end
	
	if f and framename ~= "EPGPLoot2MasterLooter" then
		--self:Print("Reusing old frame- same target as before")
		f:Show()
		return
	end

	
	--Create the frame that starts it all.
	local f = CreateFrame("Frame",framename,UIParent)
	f:SetFrameStrata("BACKGROUND")
	f:SetWidth(256) 
	f:SetHeight((numItems * 32) + 160) 
	f:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
									edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
									tile = true, tileSize = 16, edgeSize = 16, 
									insets = { left = 4, right = 4, top = 4, bottom = 4 }});
	f:SetBackdropColor(0,0,0,1);
	f:SetPoint(self.db.profile.MLpoint,self.db.profile.MLxOfs,self.db.profile.MLyOfs)
	
	f:SetMovable(true)
	f:EnableMouse(true)
	f:SetScript("OnMouseDown",function()
					f:StartMoving()
					end)
	f:SetScript("OnMouseUp",function()
					f:StopMovingOrSizing()
					self.db.profile.MLpoint, self.db.profile.MLrelativeTo, self.db.profile.MLrelativePoint, self.db.profile.MLxOfs, self.db.profile.MLyOfs = f:GetPoint()
					end)
	
	for index = 1, numItems do

		if (isMerchantLoot or LootSlotHasItem(index)) then

			local lootSlotItemLink = "";
			if isMerchantLoot then
				lootSlotItemLink = GetMerchantItemLink(index);
			else
				lootSlotItemLink = GetLootSlotLink(index);
			end;

			if lootSlotItemLink then

				local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(lootSlotItemLink);

				local itemID = EPGPLoot2:GetItemIDFromItemLink(lootSlotItemLink);
				if (itemID == 0) then
					EPGPLoot2:Print("Couldn't find ItemID for " .. itemLink);
					return;
				end;
			
				if itemLink and (itemRarity >= self.db.profile.RarityThreshold) and EPGPLoot2_ignored_items[itemID]==nil then
			
				    if strlen(lootannouncer[lootannouncecounter] .. itemLink) > 255 then
					    lootannouncecounter=lootannouncecounter+1
					    lootannouncer[lootannouncecounter] = itemLink
				    else
					    lootannouncer[lootannouncecounter] = lootannouncer[lootannouncecounter] .. itemLink
				    end
				
				    local looticon = CreateFrame("Button", nil, f)
				    looticon:SetFrameStrata("BACKGROUND")
				    looticon:SetWidth(30) -- Set these to whatever height/width is needed 
				    looticon:SetHeight(30) -- for your Texture

				    local tx = looticon:CreateTexture(nil,"BACKGROUND")
				    tx:SetTexture(GetItemIcon(itemLink))
				    tx:SetAllPoints(looticon)
				    looticon.texture = tx
				    looticon:SetPoint("TOPLEFT",8,-16-i*32)

				    --tooltip code
				    looticon.link = itemLink
				    looticon:SetScript("OnEnter", function (self)
												    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
												    GameTooltip:SetHyperlink(self.link)
												    GameTooltip:Show()
												    end)
				    looticon:SetScript("OnLeave", function (self)
												    if GameTooltip:IsOwned(self) then
												    GameTooltip:Hide()
												    end
												    end)
				    ---end tooltip code
				
							
				    local lootlistitem = {}
				    if lootlist[itemLink]~=nil then				
					    lootlistitem = lootlist[itemLink]
					    lootlistitem.count = lootlistitem.count+1
				    else					
				    -- we need to throw up a box for this item... but what type of box? Let's find out:
					    lootlistitem.itemlink = itemLink
					    if EPGPLoot2:IsFreeForAllRollOrFarmItem(tostring(itemID),iLevel) then
						    -- throw a free for all roll dialog for this one:
						    strLootCommandstring = strLootCommandstring .. "FR:" .. itemLink.. ";"
						    lootlistitem.type = "FR"
						    lootlistitem.HasBeenRolledFor = false

					    else
						    if EPGPLoot2:IsItemRaiderRoll(tostring(itemID)) then
							    -- throw a raider only roll dialog for this one:
							    strLootCommandstring = strLootCommandstring .. "RR:" .. itemLink .. ";"
							    lootlistitem.type = "RR"
							    lootlistitem.HasBeenRolledFor = false

						    else
							    -- throw a need greed dialog for this one:
							    strLootCommandstring = strLootCommandstring .. "NG:" .. itemLink .. ";"
							    lootlistitem.type = "NG"
						    end
					    end
					
					    --create infobox to go with this item
					    local infobox = f:CreateFontString("infobox" .. itemLink)
					    infobox:SetFont("Fonts\\FRIZQT__.TTF", 10)
					    infobox:SetWidth(200)
					    infobox:SetPoint("TOPLEFT",42,-16-i*32)
					    infobox:SetText("|cFF666666Undecided|r")
					    infobox:SetJustifyH("LEFT") 
					
					    local MLlootitem = CreateFrame("Button", "Masterlootbutton" .. itemLink, f)
					    MLlootitem:SetNormalFontObject("GameFontNormalSmall")
					    MLlootitem:SetHighlightFontObject("GameFontHighlightSmall")
					    MLlootitem:SetDisabledFontObject("GameFontDisableSmall")
					
					    MLlootitem:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Coin-Up")
					    MLlootitem:SetPushedTexture("Interface\\Buttons\\UI-GroupLoot-Coin-Highlight")
					    MLlootitem:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Coin-Down")
					
					    MLlootitem:SetHeight(16)
					    MLlootitem:SetPoint("TOPRIGHT",-22,-16-i*32)
					    MLlootitem:SetText("")
					    MLlootitem:SetWidth(16)
					    MLlootitem:SetScript("OnEnter", function() GameTooltip:SetOwner(MLlootitem, "ANCHOR_RIGHT"); GameTooltip:SetText("Hand out the loot!") end)
					    MLlootitem:SetScript("OnLeave", function() GameTooltip:Hide() end)					
					    MLlootitem:Hide()
					    MLlootitem:SetScript("OnClick", function() EPGPLoot2:HandOutItem(lootItem) end )
					
					    lootlistitem.infobox = infobox
					    lootlistitem.masterlootbutton = MLlootitem
					
					    lootlistitem.count=1
					    lootlist[itemLink]=lootlistitem
					
				    end
				
				    i=i+1
			    end
            end
		end
	
	end
	-- looped through the items. strLootCommandstring should now hold the command to all items on this mob.
	
	--Add a end bidding button
	local EndBiddingButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	EndBiddingButton:SetNormalFontObject("GameFontNormalSmall")
	EndBiddingButton:SetHighlightFontObject("GameFontHighlightSmall")
	EndBiddingButton:SetDisabledFontObject("GameFontDisableSmall")
	EndBiddingButton:SetHeight(22)
	EndBiddingButton:SetPoint("BOTTOM",0,44)
	EndBiddingButton:SetText("End bidding")
	EndBiddingButton:SetWidth(200)
	EndBiddingButton:SetScript("OnClick",
			  function()
				EndTheBidding(self)
			  end)
	EndBiddingButton:Disable()			  

	--Add a recalculate priority button
	local RecalculateButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	RecalculateButton:SetNormalFontObject("GameFontNormalSmall")
	RecalculateButton:SetHighlightFontObject("GameFontHighlightSmall")
	RecalculateButton:SetDisabledFontObject("GameFontDisableSmall")
	RecalculateButton:SetHeight(22)
	RecalculateButton:SetPoint("BOTTOM",0,68)
	RecalculateButton:SetText("Recalculate")
	RecalculateButton:SetWidth(200)
	RecalculateButton:SetScript("OnClick",
			  function()
				DetermineWinners()
			  end)		
	RecalculateButton:Disable()
	
	--Add a start the looting button
	local StartLootingButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	StartLootingButton:SetNormalFontObject("GameFontNormalSmall")
	StartLootingButton:SetHighlightFontObject("GameFontHighlightSmall")
	StartLootingButton:SetDisabledFontObject("GameFontDisableSmall")
	StartLootingButton:SetHeight(22)
	StartLootingButton:SetPoint("BOTTOM",0,20)
	StartLootingButton:SetText("Start")
	StartLootingButton:SetWidth(200)
	StartLootingButton:SetScript("OnClick",
			  function()
				EndBiddingButton:Enable()
				RecalculateButton:Enable()
				StartTheLooting(self,strLootCommandstring,lootlist)
			  end)	
	
	--Add a close button
	local CloseFrameButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
	CloseFrameButton:SetNormalFontObject("GameFontNormalSmall")
	CloseFrameButton:SetHighlightFontObject("GameFontHighlightSmall")
	CloseFrameButton:SetDisabledFontObject("GameFontDisableSmall")
	CloseFrameButton:SetHeight(22)
	CloseFrameButton:SetPoint("BOTTOM",0,-20)
	CloseFrameButton:SetText("Exit")
	CloseFrameButton:SetWidth(200)
	CloseFrameButton:SetScript("OnClick",
			  function()
				f:Hide()
			  end)

	f:Show()
	
	--Announce the loot we have for all people in the raid:
	for k, v in pairs(lootannouncer) do
		v  = string.gsub(v, "\n", " ", 1, true) -- DIE NEWLINES, DIE A HORRIBLE DEATH 
		SendChatMessage(v, "RAID_WARNING", nil, nil)
	end

	--Now also send extra commands to our raiders...
	local ExtraCommand = ""
	if self.db.profile.ArmorNeedForAll then
		ExtraCommand = "4all"
	else
		for k,v in pairs(self.db.profile.ArmorNeedForSpec) do
			ExtraCommand = ExtraCommand .. k
		end
	end
	
	if EPGPLoot2_debug_MLtesting then
		self:SendCommMessage("epgploot2","extracmd:"..ExtraCommand , "WHISPER", UnitName("PLAYER"));
	else
		self:SendCommMessage("epgploot2","extracmd:"..ExtraCommand , "RAID");
	end
	
end

function EPGPLoot2:NeedReceived(from, item)
	table.insert(MasterLootCollection[item].needers,from)
end

function EPGPLoot2:RollReceived(from, item)
	local t={}
	t.name=from
	t.roll=math.random(100)

	table.insert(MasterLootCollection[item].rollers,t)

	
	if EPGPLoot2_debug_MLtesting then
		self:SendCommMessage("epgploot2","rollreport:"..t.roll..";"..item , "WHISPER", UnitName("PLAYER"));
	else
		self:SendCommMessage("epgploot2","rollreport:"..t.roll..";"..item  , "WHISPER", from);
	end
	
	
end

function EPGPLoot2:UpgradeReceived(from, item)
	table.insert(MasterLootCollection[item].minorupgraders,from)
end

function EPGPLoot2:OffspecReceived(from, item)
	local t={}
	t.name=from
	t.roll=math.random(100)
	table.insert(MasterLootCollection[item].offspeccers,t)
	
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,itemEquipLoc, itemTexture = GetItemInfo(item)

	if EPGPLoot2_debug_MLtesting then
		self:SendCommMessage("epgploot2","rollreport:"..t.roll..";"..item , "WHISPER", UnitName("PLAYER"));
	else
		self:SendCommMessage("epgploot2","rollreport:"..t.roll..";"..item  , "WHISPER", from);
	end

	
end

function EPGPLoot2:PassReceived(from, item)
	--
end

function EPGPLoot2:FinishedReceived(from)
	-- if all people are finished clicking buttons, do stuff here.
	MasterLootCounter = MasterLootCounter +1
	
	if MasterLootCounter == GetNumGroupMembers() or EPGPLoot2_debug_MLtesting then
		-- do our Winner thing for each item.
		DetermineWinners()
		return
	end
	
end

function EPGPLoot2:HandOutLoot(lootItem)
	SendChatMessage(MasterLootCollection[lootItem].announcemessage, "RAID_WARNING", nil, nil)
	
	if self.db.profile.ShowLootResults then
		EPGPLoot2:AnnounceInRaid(lootItem)
	end
	
	local blnShard = false
	if MasterLootCollection[lootItem].winnertype=="pass" then
		if EPGPLoot2_Sharder~=nil then
			blnShard=true
		else
			if self.db.profile.Sharder~=nil then
				if UnitInRaid(self.db.profile.Sharder) then
					EPGPLoot2_Sharder=self.db.profile.Sharder
					blnShard=true
				else
					return
				end
			else
				return
			end
		end
	end
	
	if blnShard then
		local dialog = StaticPopup_Show("EPGPLOOT2_CONFIRM_MASTERLOOT", MasterLootCollection[lootItem].itemlink , EPGPLoot2_Sharder .. " (Disenchanter)")
		if dialog then
			dialog.item = lootItem
			dialog.player = EPGPLoot2_Sharder
		end
	else
		local dialog = StaticPopup_Show("EPGPLOOT2_CONFIRM_MASTERLOOT", MasterLootCollection[lootItem].itemlink , MasterLootCollection[lootItem].winner)
		if dialog then
			dialog.item = lootItem
			dialog.player = MasterLootCollection[lootItem].winner
		end
	end
	
	MasterLootCollection[lootItem].count = MasterLootCollection[lootItem].count-1
	if MasterLootCollection[lootItem].count > 0 then
		--there is another item of this type, remove the winner from the list - let the others have a go as well.
		if MasterLootCollection[lootItem].winnertype == "need" then
			table.remove(MasterLootCollection[lootItem].needers,1)
		end
		if MasterLootCollection[lootItem].winnertype == "minor" then
			table.remove(MasterLootCollection[lootItem].minorupgraders,1)
		end
		if MasterLootCollection[lootItem].winnertype == "offspec" then
			table.remove(MasterLootCollection[lootItem].offspeccers,1)
		end
		if MasterLootCollection[lootItem].winnertype == "roll" then
			table.remove(MasterLootCollection[lootItem].rollers,1)
		end
	end
	DetermineWinners()
end

function EPGPLoot2:GiveLootItemToPlayer(item,player)
 
    local pindex=-1
    local lindex=-1

    --EPGPLoot2:Print("masterlooting-trying to assign;"..item.." - "..player);

    player = EPGPLoot2:FixUnitName(player);
    local _p, _r = EPGPLoot2:crack_name(player);

    local ci,li
   
    for li = 1, GetNumLootItems() do
        --local lootIcon, lootName, lootQuantity, rarity = GetLootSlotInfo(index);

        local iteminfo = GetLootSlotLink(li);
        if iteminfo then
            if iteminfo == item then
                lindex = li
            end
--[[
            local item_id = select(3, iteminfo:find("item:(%d+):"))

            if tostring(item_id) == tostring(item) then
                lindex=li
            end
]]--
        end

    end

    for ci = 1, GetNumGroupMembers() do
        --EPGPLoot2:Print("candidate: "..GetMasterLootCandidate(ci))
        if (lindex > -1 and ( GetMasterLootCandidate(lindex,ci) == player) or (GetMasterLootCandidate(lindex,ci) == _p ) ) then
            pindex=ci
        end
    end
   
    if pindex>-1 and lindex>-1 then
        --EPGPLoot2:Print("masterlooting");
        --EPGPLoot2:Print("lindex=" .. lindex .. " pindex=" .. pindex);
        GiveMasterLoot(lindex, pindex);
    else
        if pindex==-1 then
            EPGPLoot2:Print(player.." was not found in the loot candidate list.");
        end
        if lindex==-1 then
            EPGPLoot2:Print(item.." was not found in the lootable items.");
        end
    end
 
end


StaticPopupDialogs["EPGPLOOT2_CONFIRM_MASTERLOOT"] = {
    text = "Give %s to %s",
    button1 = ACCEPT,
    button2 = CANCEL,
    timeout = 0,
    whileDead = 1,
    maxLetters = 16,
    hideOnEscape = 1,

    OnAccept = function(self)
        EPGPLoot2:GiveLootItemToPlayer(self.item, self.player)
    end

}
