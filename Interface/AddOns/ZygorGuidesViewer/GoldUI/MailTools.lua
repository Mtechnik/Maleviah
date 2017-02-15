local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Mailtools then ZGV.Mailtools = {} end
local Mailtools = ZGV.Mailtools
local Gratuity = LibStub("LibGratuity-3.0")

local ROWCOUNT=14
local GOLD_FORMAT_TYPE=3

local Mailtools_player_name = UnitName("player")

local AUCTION_HOUSE_MAIL = BUTTON_LAG_AUCTIONHOUSE -- only entry in global strings that uses just Auction House
local AUCTION_EXPIRED_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_EXPIRED_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_REMOVED_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_REMOVED_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_WON_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_WON_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_SOLD_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_SOLD_MAIL_SUBJECT,"%%s","(.*)")
local AUCTION_OUTBID_MAIL_SUBJECT_FILTER = string.gsub(AUCTION_OUTBID_MAIL_SUBJECT,"%%s","(.*)")
local GOLD_AMOUNT_ICON = string.gsub(GOLD_AMOUNT_TEXTURE,"%%d","")
local AH_SOLD_ICON = "Interface\\Icons\\INV_Misc_Coin_01"

function Mailtools:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	self.needToUpdate = false
	self.lastUpdated = time()

	local rownum=0
	local rowoff=0

	-- Initialise
	if self.ActiveTab == "Collector" then
		for indexMail,v in pairs(self.InboxItems) do
			if self.InboxItems[indexMail].count <= 0 and self.InboxItems[indexMail].gold <=0 then
				table.remove(self.InboxItems,indexMail)
			end
		end
	end
	if self.ActiveTab == "Sender" then
	end

	-- Sort
	if self.ActiveTab == "Collector" then
		sort(self.InboxItems,Mailtools.sort_collector)
	elseif self.ActiveTab == "Sender" then
		sort(self.InventoryItems,Mailtools.sort_sender)
	end

	-- Display
	if self.ActiveTab == "Collector" then
		page = self.MainFrame.Collector_Frame 
		self.MainFrame.offset = max(0,min(self.MainFrame.offset,#self.InboxItems-ROWCOUNT))
		rowoff=self.MainFrame.offset
		for ii,invItem in ipairs(self.InboxItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<ROWCOUNT+1 then 
				local row = page.rows[rownum]
				row.item = invItem
				local color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
			
				if invItem.id < 0 then -- money
					row.name:SetText(ZGV.GetMoneyString(invItem.gold or 0))
					row.icon:SetTexture(invItem.icon)
				else -- item -- item
					row.name:SetText((invItem.cod>0 and "[COD] " or "")..invItem.count.." "..(color..(invItem.displayName or invItem.name or "...")))
					row.icon:SetTexture(invItem.icon)
				end
				row.price:SetText(invItem.source)
				row.price:SetTextColor(unpack(invItem.color))

				if invItem.cod>0 then
					invItem.selected = false
					row.toggle:SetToggle(false)
					row.toggle:Hide()
				else
					row.toggle:SetToggle(invItem.selected)
					row.toggle:Show()
				end
								
				row:Show()
			end
		end
		
		self.MainFrame.scrollbar:TotalValue(#self.InboxItems)
		self.MainFrame.scrollbar:SetValue(rowoff)
	elseif self.ActiveTab == "Sender" then
		page = self.MainFrame.Sender_Frame 
		self.MainFrame.offset = max(0,min(self.MainFrame.offset,#self.InventoryItems-ROWCOUNT))
		rowoff=self.MainFrame.offset
		for ii,invItem in ipairs(self.InventoryItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<ROWCOUNT+1 then 
				local row = page.rows[rownum]
				row.item = invItem
				row.icon:SetTexture(invItem.icon)
				local color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end

				row.name:SetText(invItem.count.." "..(color..(invItem.displayName or invItem.name or "...")))
				row.toggle:SetToggle(invItem.selected)
				row:Show()
			end
		end

		self.MainFrame.scrollbar:TotalValue(#self.InventoryItems)
		self.MainFrame.scrollbar:SetValue(rowoff)
	end

	for r=rownum+1,ROWCOUNT do page.rows[r]:Hide() end
end

--[[ --------------------------------------------------------------------------
	Collector functions
-------------------------------------------------------------------------- --]]

function Mailtools.sort_collector(a,b)
	if not a or not b then return false end

	if a.gold == b.gold then
		return (a.name or "") < (b.name or "")
	else
		return (a.gold or 0) > (b.gold or 0)
	end
end


function Mailtools:GetListOfInbox()
	self.InboxItems = {} -- {id={position={{mail,slot}...},name,icon,count,gold}}
	local numItems, totalItems = GetInboxNumItems()

	for mi_mail=1,numItems do
		local mi_name, mi_slot, mi_id, mi_count, mi_icon, mi_gold, mi_cod, mi_quality
		local mi_icon, _, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(mi_mail)

		local mi_source = sender
		local mi_player=true 
		mi_color = {1,1,1,1}
		

		if string.find(subject, AUCTION_EXPIRED_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH expired" 
			mi_player=false 
			mi_color = {1,1,1,0.4}
		end
		if string.find(subject, AUCTION_REMOVED_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH cancelled"  
			mi_player=false 
			mi_color = {1,1,1,0.4}
		end
		if string.find(subject, AUCTION_WON_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH bought"  mi_player=false 
			mi_color = {1,1,1,0.8}
		end

		if string.find(subject, AUCTION_OUTBID_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH outbid"
			mi_player=false 
			_,_,mi_name = string.find(subject, AUCTION_OUTBID_MAIL_SUBJECT_FILTER)
			mi_source = "Outbid "..mi_name
			mi_color = {1,1,1,0.4}
		end


		if string.find(subject, AUCTION_SOLD_MAIL_SUBJECT_FILTER) then 
			mi_source = "AH sold"
			mi_player=false 
			_,_,mi_name = string.find(subject, AUCTION_SOLD_MAIL_SUBJECT_FILTER)
			mi_source = "Sold "..mi_name
			mi_color = {1,1,1,0.8}
		end

		if mi_source == AUCTION_HOUSE_MAIL then
			Mailtools.ForceInboxRefresh = true
			return
		end

		for mi_slot=1, ATTACHMENTS_MAX_RECEIVE do
			local itemlink = GetInboxItemLink(mi_mail,mi_slot)
			if itemlink then
				local mi_id = tonumber(itemlink:match("item:(%d+)"))
				local mi_name,mi_icon,mi_count,mi_quality = GetInboxItem(mi_mail,mi_slot)

				if (mi_quality == -1) then -- Mailbox sometimes does not return proper quality
					_,_,mi_quality = GetItemInfo(itemlink);
				end

				if mi_id == 82800 then -- Caged pet
					BattlePetId = ZGV.PetBattle.IdByName[mi_name]
					mi_id = 1000000000+(BattlePetId*100000)
				end					
				
				Mailtools:AddItemToIncoming(mi_mail,mi_slot,mi_id,mi_name,mi_icon,mi_count,0,mi_source,mi_player,mi_cod,mi_quality,mi_color,true)
			end
		end

		if mi_gold > 0 then
			Mailtools:AddItemToIncoming(mi_mail,0,-1,mi_name,AH_SOLD_ICON,0,mi_gold,mi_source,mi_player,mi_cod,mi_quality,mi_color,true)
		end
	end

	Mailtools.checksum = Mailtools:GetInboxChecksum()
end

function Mailtools:GetInboxChecksum()
	local checksum = 0
	local numItems, totalItems = GetInboxNumItems()

	for mi_mail=1,numItems do
		local mi_name, mi_slot, mi_id, mi_count, mi_icon, mi_gold, mi_cod
		local mi_icon, _, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(mi_mail)

		for mi_slot=1, ATTACHMENTS_MAX_RECEIVE do
			local itemlink = GetInboxItemLink(mi_mail,mi_slot)
			if itemlink then
				local mi_id = tonumber(itemlink:match("item:(%d+)"))
				local mi_name,mi_icon,mi_count = GetInboxItem(mi_mail,mi_slot)				
				checksum = checksum + mi_id*mi_slot*mi_mail*mi_count*(mi_cod+1)
			end
		end

		if mi_gold > 0 then
			checksum = checksum + mi_gold*mi_mail
		end
	end
	return checksum
end

function Mailtools:AddItemToIncoming(mi_mail,mi_slot,mi_id,mi_name,mi_icon,mi_count,mi_gold,mi_source,mi_player,mi_cod,mi_quality,mi_color,selected)
	local existing = nil

	if mi_gold>0 then -- we are adding gold
		for i,v in pairs(self.InboxItems) do
			if v.source == mi_source and v.gold>0 and v.name==mi_name then
				existing = i
			end
		end
	else -- we are adding item
		for i,v in pairs(self.InboxItems) do
			if v.id == mi_id then
				existing = i
			end
		end
	end

	if not existing then
		local newslot  = #self.InboxItems + 1
		self.InboxItems[newslot] = {
			position = {},
			id = mi_id,
			name = mi_name,
			icon = mi_icon,
			count = mi_count,
			gold = mi_gold,
			source = mi_source,
			selected = selected,
			player = mi_player,
			cod = mi_cod,
			position = {},
			quality = mi_quality,
			color = mi_color
		}
		self.InboxItems[newslot].position[mi_mail] = {}
		self.InboxItems[newslot].position[mi_mail][mi_slot] = mi_count
		self.InboxItems[newslot].count = mi_count
	else
		self.InboxItems[existing].count = self.InboxItems[existing].count + mi_count
		self.InboxItems[existing].gold = self.InboxItems[existing].gold + mi_gold
		self.InboxItems[existing].position[mi_mail] = self.InboxItems[existing].position[mi_mail] or {}
		self.InboxItems[existing].position[mi_mail][mi_slot] = mi_count
	end
end

function Mailtools:StartCollecting()
	if ZGV.db.profile.collectall then
		Mailtools.RunningMassCollect = true
		Mailtools:CollectEverything()
	else
		Mailtools:CollectSelected()
	end
end

function Mailtools:CollectSelected()
	Mailtools.ItemsToCollect = {}
	Mailtools.GoldToCollect = {}

	for ii,invItem in ipairs(self.InboxItems) do 
		if invItem.selected then
			for mail,attachments in pairs(invItem.position) do
				for slot,count in pairs(attachments) do
					Mailtools.ItemsToCollect[mail] = Mailtools.ItemsToCollect[mail] or {}
					if invItem.gold == 0 then
						Mailtools.ItemsToCollect[mail][slot] = {count = count, item = invItem}
					else
						Mailtools.ItemsToCollect[mail][slot] = {count = invItem.gold, item = invItem}
					end
				end
			end
		end
	end

	Mailtools.RunningCollect = true
	Mailtools:CollectNextSelected()
end

function Mailtools:CollectNextSelected()
	local max_index = 0
	for ii,slot in pairs(self.ItemsToCollect) do 
		if ii > max_index and next(slot) then
			max_index = ii
		end
	end

	if max_index > 0 then
		local mail = max_index
		local slot,object = next(self.ItemsToCollect[mail])

		self.ItemsToCollect[mail][slot] = nil

		local _, _, _, subject, money, _, _, itemCount, _, _, _, _, _, _= GetInboxHeaderInfo(mail)

		if itemCount == 1 and slot>0 then
			Mailtools.IgnoreNextMail_Success = true
		else
			Mailtools.IgnoreNextMail_Success = false
		end

		if slot > 0  then
			self.ActiveCollectItem = {mail=mail, slot=slot, name=object.item.name}
			TakeInboxItem(mail, slot)

			-- items are chatted anyway
			-- if ZGV.db.profile.mailtools_verbose then ZGV:Print("Collected: %s...............
			object.item.count = object.item.count - object.count
		else
			self.ActiveCollectItem = {mail=mail, slot=slot, name="Gold"}
			TakeInboxMoney(mail)
			--if ZGV.db.profile.mailtools_verbose then ZGV:Print(("Collected: %d (%d) from %s"):format(object.item.gold or 0,money or 0,subject or "?")) end
			Mailtools.NextGoldAmount = object.item.gold 
			object.item.gold = 0
		end
		ZGV.Mailtools.needToUpdate = true
	else
		Mailtools.RunningCollect = false
		Mailtools.ItemsToCollect = {}
		Mailtools.IgnoreNextMail_Success = false
		Mailtools.needToUpdate = true
		self.ActiveCollectItem = {}
		ZGV.Mailtools:GetListOfInbox()
	end
end

function Mailtools:CollectEverything()
	if not ZGV.db.profile.collectall then return end

	local mi_icon, mi_texture, sender, subject, mi_gold, mi_cod, _, mi_count, _, _, _, _, isGM, itemQuantity = GetInboxHeaderInfo(1)


	if mi_icon or mi_texture then
		Mailtools.StartRefreshingInbox = false
		if mi_cod==0 then
			Mailtools.NextGoldAmount = mi_gold
			--TakeInboxTextItem(1)
			AutoLootMailItem(1)
			if ZGV.db.profile.mailtools_verbose and mi_gold>0 then ZGV:Print(("Collected: %s from |cffffee88%s|r"):format(ZGV.GetMoneyString(mi_gold),subject or "?")) end
		else
			Mailtools.RunningMassCollect = false
		end
	else
		local numItems, totalItems = GetInboxNumItems()
		if totalItems>0 then
			if not Mailtools.StartRefreshingInbox then
				Mailtools.StartRefreshingInbox = true
			end
		else	
			Mailtools.RunningMassCollect = false
			Mailtools.StartRefreshingInbox = false
		end
	end
	ZGV.Mailtools.needToUpdate = true
end

function Mailtools:ToggleAllInbox(isChecked)
	for ii,invItem in ipairs(Mailtools.InboxItems) do 
		invItem.selected = isChecked
	end
	ZGV.Mailtools.needToUpdate = true
end

--[[ --------------------------------------------------------------------------
	Sender functions
-------------------------------------------------------------------------- --]]

function Mailtools:GetListOfInventory()
	Mailtools.InventoryItems = {}
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			self:AddItemToInventory(bag,slot)
		end
	end
end

function Mailtools:AddItemToInventory(bag,slot)
	local itemid=GetContainerItemID(bag,slot)
	local CachedPetCages = CachedPetCages or {}
	local itemlink = GetContainerItemLink(bag, slot) 

	if itemid then
		Gratuity:SetBagItem(bag,slot)
		local n = Gratuity:NumLines()
		local isbop = false
		local isboa = false
		local isbound = false
		local price = 0

		for i=1,n do
			local line=Gratuity:GetLine(i)
			if line then
				isbop = isbop or strfind(line, ITEM_BIND_ON_PICKUP)
				isboa = isboa or strfind(line, ITEM_BIND_TO_BNETACCOUNT)
				isboa = isboa or strfind(line, ITEM_BNETACCOUNTBOUND)
				isbound = isbound or strfind(line, ITEM_SOULBOUND)
				isbound = isbound or strfind(line, ITEM_BIND_QUEST)
				isbound = isbound or strfind(line, ITEM_CONJURED)

				-- if we found use clause, we are past possible points of binding, stop looking
				if strfind(line, USE_COLON) then break end 
			end
		end


		local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(itemlink)
		local texture, itemCount, locked, quality, readable = GetContainerItemInfo(bag, slot)
		local displayName = nil

		if isbop or isboa or isbound then return false end

		local statusIcon, statusText, statusId
		local petItem_id = nil
		local petItemFallback_id = nil

		if itemid == 82800 then -- Caged pet
			local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

			local result
			petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
			if result~="OK" then return end

			breedid,breedname = ZGV.PetBattle:GetPetBreedBySlot(bag,slot)

			name = BattlePetName
			displayName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"
			--[[
			return
			--]]
		end

		if not (petItem_id or itemid) or not name then
			ZGV:Print("Unable to add item "..itemid.." to mailtools.")
			return
		end

		local exists = false
		for i,v in pairs(self.InventoryItems) do
			if v.link==itemlink and not exists then
				exists = exists or true
				table.insert(self.InventoryItems[i].position,{bag=bag,slot=slot})
				self.InventoryItems[i].count = self.InventoryItems[i].count + itemCount
			end
		end
		if not exists then
			local newitem = {
				id=petItem_id or itemid,
				name=name,
				displayName=displayName,
				link=itemlink,
				icon=texture,
				count=itemCount,
				quality=quality,
				position= {},
				BattlePetId=BattlePetId,
				BattlePetName=BattlePetName
				}
			table.insert(newitem.position,{bag=bag,slot=slot})
			table.insert(self.InventoryItems,newitem)
		end
	end
end

function Mailtools:ToggleAllInventory(isChecked)
	for ii,invItem in ipairs(Mailtools.InventoryItems) do 
		invItem.selected = isChecked
	end
	ZGV.Mailtools.needToUpdate = true
end

function Mailtools.sort_sender(a,b)
	if not a or not b then return false end

	return a.name < b.name
end

function Mailtools:SendSelected()
	Mailtools.ItemsToSend = {}

	for ii,invItem in ipairs(self.InventoryItems) do 
		if invItem.selected then
			
			for _,location in pairs(invItem.position) do
				location.link=invItem.link
				table.insert(Mailtools.ItemsToSend,location)
			end
		end
	end

	Mailtools.TotalMailsToSend = math.ceil(#Mailtools.ItemsToSend / 12)
	Mailtools.CurrentMailToSend = 0

	Mailtools.RunningSend = true
	Mailtools:SendNextBatch()
end

function Mailtools:SendNextBatch()
	if not Mailtools.RunningSend then return end

	ZGV:ScheduleTimer(function()
		local target = ZM_Sender_Frame.recipent:GetText()

		if target == "" then return end

		local added = 0
		Mailtools.CurrentBatch = {}
		for index,item in pairs(Mailtools.ItemsToSend) do
			if item.link == GetContainerItemLink(item.bag,item.slot) then
				UseContainerItem(item.bag,item.slot)
				added = added + 1
				Mailtools.CurrentBatch[index] = item
				if added == 12 then
					break
				end
			end
		end

		if added == 0 then
			Mailtools.RunningSend = false
			Mailtools.CurrentMailToSend = 0
			Mailtools.TotalMailsToSend = 0
			return
		else
			Mailtools.CurrentMailToSend = Mailtools.CurrentMailToSend + 1
			SendMail(target,"Zygor Package")
		end
	end, 0)
end

function Mailtools:FillSenderList(prefix)
	frame = self.MainFrame.Sender_Frame

	ZGV.db.profile.Mail = ZGV.db.profile.Mail or {}

	ZGV.db.profile.Mail.altNames = ZGV.db.profile.Mail.altNames or {}
	ZGV.db.profile.Mail.altNames = ZGV.db.profile.Mail.altNames or {}

	Mailtools.SenderNamesList = {}
	prefix = prefix or ""
	
	-- Previous mail targets
	for _, name in pairs(ZGV.db.profile.Mail.previousNames or {}) do
		if name ~= Mailtools_player_name then
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
		end
	end

	-- Known player alts
	for _, name in pairs(ZGV.db.factionrealm.altNames or {}) do
		if name ~= Mailtools_player_name then
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
		end
	end

	-- Friends
	local numFriends, onlineFriends = GetNumFriends()
	for index=1,numFriends do
		name = GetFriendInfo(index)
			if prefix==string.sub(name, 1, string.len(prefix)) then
				Mailtools.SenderNamesList[name] = name
			end
	end

	local recipentSuggest = self.MainFrame.Sender_Frame.recipentSuggest
	recipentSuggest:removeAllItems()

	for _, name in pairs(Mailtools.SenderNamesList) do
		frame.recipentSuggest:addItem(name, function()
			frame.recipent:SetText(name)
			frame.recipentSuggest:HideFrame()
		end)
	end
end


--[[ --------------------------------------------------------------------------
	Generic functions
-------------------------------------------------------------------------- --]]

function Mailtools:IsEverythingSelected(array)
	for ii,invItem in ipairs(array) do 
		if not invItem.selected then
			return false
		end
	end
	return true
end


local function EventHandler(self, event, ...)
	args = {...}
	if event=="MAIL_SHOW" then
		Mailtools.InboxItems = {}
		Mailtools.BagItems = {}
		Mailtools.CollectedGold = 0
		Mailtools:ShowWindow()
		Mailtools.checksum = Mailtools:GetInboxChecksum()
		Mailtools:GetListOfInbox()
		Mailtools.RunningCollect = false
		Mailtools.RunningMassCollect = false
		Mailtools.IgnoreNextMail_Success = false
		Mailtools.StartRefreshingInbox = false
		Mailtools.LastInboxRefresh = time()
		Mailtools:GetListOfInventory()
		Mailtools:FillSenderList()
		Mailtools.altNames = ZGV.db.factionrealm.altNames
	end
	if event=="MAIL_CLOSED" then
		Mailtools:HideWindow()
		Mailtools.InboxItems = {}
	end

	if not Mailtools.MainFrame then return end
	if not Mailtools.MainFrame:IsVisible() then return end
	
	if event=="MAIL_FAILED" then
		Mailtools.RunningCollect = false
		Mailtools.RunningMassCollect = false
		Mailtools.IgnoreNextMail_Success = false
	end
	if event=="MAIL_INBOX_UPDATE" then
		if not Mailtools.RunningCollect then
			local checksum = ZGV.Mailtools:GetInboxChecksum()
			if Mailtools.checksum ~= checksum then
				Mailtools:GetListOfInbox()
			end
		end
		local numItems, totalItems = GetInboxNumItems()
		if totalItems == 0 then
			MiniMapMailFrame:Hide() -- Hide mail icon
		end
	end
	if event=="MAIL_SUCCESS" then
		if Mailtools.RunningSend then
			SendMailFrame_Reset()
			ZGV.db.char.last_mail_target = ZM_Sender_Frame.recipent:GetText()
			ZGV.db.profile.Mail.previousNames[ZM_Sender_Frame.recipent:GetText()] = ZM_Sender_Frame.recipent:GetText()

			for index,item in pairs(Mailtools.CurrentBatch) do
				Mailtools.ItemsToSend[index] = nil
			end

			ZGV:ScheduleTimer(function() Mailtools:SendNextBatch() end, 0)
			
		end

		if Mailtools.RunningMassCollect then
			if Mailtools.NextGoldAmount then
				Mailtools.CollectedGold = Mailtools.CollectedGold + Mailtools.NextGoldAmount
				Mailtools.NextGoldAmount = false
			end
			Mailtools:CollectEverything()
		end

		if Mailtools.IgnoreNextMail_Success then
			Mailtools.IgnoreNextMail_Success = false
		else
			if Mailtools.RunningCollect then
				if Mailtools.NextGoldAmount then
					Mailtools.CollectedGold = Mailtools.CollectedGold + Mailtools.NextGoldAmount
					Mailtools.NextGoldAmount = false
					ZGV:ScheduleTimer(function() Mailtools:CollectNextSelected() end, 0.5)
				else
					ZGV:ScheduleTimer(function() Mailtools:CollectNextSelected() end, 0)
				end
			end
		end
	end

	if event=="BAG_UPDATE_DELAYED" or event=="BAG_UPDATE_DELAYED" or event=="UNIT_INVENTORY_CHANGED" then
		Mailtools:GetListOfInventory()
	end

	Mailtools.needToUpdate = true
end

local function UpdateHandler(self, event)
	if not Mailtools.MainFrame then return end
	if not Mailtools.MainFrame:IsVisible() then return end
	if not MailFrame:IsVisible() then Mailtools:HideWindow() return end

	if Mailtools.ForceInboxRefresh then
		Mailtools.ForceInboxRefresh = false
		Mailtools.checksum = Mailtools:GetInboxChecksum()
		Mailtools:GetListOfInbox()
	end


	if Mailtools.StartRefreshingInbox then
		if time()-Mailtools.LastInboxRefresh > 10 then
			CheckInbox()
			Mailtools.LastInboxRefresh = time()
			Mailtools:CollectEverything()
		end
	end

	local numItems, totalItems = GetInboxNumItems()
	local collectall = Mailtools.MainFrame.Collector_Frame.CollectAllToggle:IsChecked()
	local buttonCollect = ZM_Collector_Frame.CollectButton
	local buttonSend = ZM_Sender_Frame.SendButton
	if totalItems > 0 then
		if collectall then
			buttonCollect.tooltip = "Collect everything from "..totalItems.." mails."
		else
			buttonCollect.tooltip = "Collect selected items."
		end
	else
			buttonCollect.tooltip = "Nothing to collect."
	end

	buttonSend.tooltip = "Send selected items."

	if Mailtools.needToUpdate then
		Mailtools.needToUpdate = false
		Mailtools:Update()
		Mailtools:UpdateStatus()

		local IsEverythingSelectedInbox = Mailtools:IsEverythingSelected(Mailtools.InboxItems)
		local IsEverythingSelectedInventory = Mailtools:IsEverythingSelected(Mailtools.InventoryItems)

		if not IsEverythingSelectedInbox then
			Mailtools.MainFrame.Collector_Frame.CollectAllToggle:SetToggle(false)
			ZGV.db.profile.collectall = false
		end
		Mailtools.MainFrame.Collector_Frame.col_toggle:SetToggle(IsEverythingSelectedInbox, true)
		Mailtools.MainFrame.Sender_Frame.col_toggle:SetToggle(IsEverythingSelectedInventory, true)
	end

end

function Mailtools:UpdateStatus()
	local statustitle = "TOTAL GOLD: "
	local statusdesc = ""
	local goldstring = ZGV.Mailtools.CollectedGold
	for ii,invItem in ipairs(self.InboxItems) do 
		goldstring = goldstring + invItem.gold
	end

	statusdesc = ZGV.GetMoneyString(goldstring)

	local numItems, totalItems = GetInboxNumItems()

	statusdesc = statusdesc .. "   MAILS: "..numItems.."/"..totalItems

	if Mailtools.StartRefreshingInbox then
		statustitle = "COLLECTING"
		statusdesc = " - Waiting for additional mails..."
	elseif Mailtools.RunningCollect then
		statustitle = "COLLECTING"
		statusdesc = " - Mail "..self.ActiveCollectItem.mail.." of "..numItems.."/"..totalItems.." - "..self.ActiveCollectItem.name
	elseif Mailtools.RunningMassCollect then
		statustitle = "COLLECTING"
		statusdesc = " - Mail 1 of "..numItems.."/"..totalItems
	elseif Mailtools.RunningSend then
		statustitle = "SENDING"
		statusdesc = " - Sending mail "..Mailtools.CurrentMailToSend.." of "..Mailtools.TotalMailsToSend
	end

	self.MainFrame.FooterStatus:SetText(statustitle)
	self.MainFrame.FooterStatusDetails:SetText(statusdesc)

end


function Mailtools:CreateTrackerFrame()
	-- Separate frame for events because Mailtools's own frame doesn't exist until it's first shown.
	Mailtools.Events = CreateFrame("Frame")
	Mailtools.Events:RegisterEvent("MAIL_CLOSED")
	Mailtools.Events:RegisterEvent("MAIL_FAILED")
	Mailtools.Events:RegisterEvent("MAIL_INBOX_UPDATE")
	Mailtools.Events:RegisterEvent("MAIL_SUCCESS")
	Mailtools.Events:RegisterEvent("UNIT_INVENTORY_CHANGED")
	Mailtools.Events:RegisterEvent("MAIL_SHOW")
	Mailtools.Events:RegisterEvent("BAG_UPDATE")
	Mailtools.Events:RegisterEvent("BAG_UPDATE_DELAYED")

	Mailtools.Events:SetScript("OnEvent",EventHandler)
	Mailtools.Events:SetScript("OnUpdate",UpdateHandler)

	hooksecurefunc("MailFrameTab_OnClick",function(_, tab)
		if tab == 1 then self:SetCurrentTab("Collector") end
		if tab == 2 then self:SetCurrentTab("Sender") end
	end)
end

tinsert(ZGV.startups,function(self)
	Mailtools:CreateTrackerFrame()
	ZGV.db.profile.Mail = ZGV.db.profile.Mail or {}
	ZGV.db.profile.Mail.previousNames = ZGV.db.profile.Mail.previousNames or {}
	ZGV.db.factionrealm.altNames = ZGV.db.factionrealm.altNames or {}
	ZGV.db.factionrealm.altNames[UnitName("player")]=UnitName("player")

end)