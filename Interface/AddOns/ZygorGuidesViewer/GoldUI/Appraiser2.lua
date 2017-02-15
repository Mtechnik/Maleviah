local ZGV = ZygorGuidesViewer
if not ZGV then return end

local ZGVG=ZGV.Gold

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Gold.Appraiser then ZGV.Gold.Appraiser = {} end
local Appraiser = ZGV.Gold.Appraiser
local Gratuity = LibStub("LibGratuity-3.0")

local OUTDATED_TIME = 60*3

local ROWCOUNT=14
local GOLD_FORMAT_TYPE=3

local Appraiser_player_name = UnitName("player")

Appraiser.ActivatedItem = {}
Appraiser.Buyout = {}
Appraiser.InventoryItems = {}

function Appraiser.sort_buy(a,b)
	if not a or not b then return false end
	if not a.name or not b.name then return false end
	a,b=a.name,b.name
	return a<b
end

function Appraiser.sort_inventory(a,b)
	if not a.price or not b.price then return false end
	if ZGV.db.profile.inventory_show_single_price  then
		a_price = a.price / a.count
		b_price = b.price / b.count
	else
		a_price = a.price
		b_price = b.price
	end

	if a.statusId == b.statusId then
		if a_price == b_price then
			return a.name<b.name
		else
			return a_price > b_price
		end
	else
		return a.statusId < b.statusId
	end
end


function Appraiser:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	self.needToUpdate = false
	self.lastUpdated = time()

	if ZGV.Gold.Appraiser.MainFrame.hideTooltip then
		GameTooltip:Hide()
		ZGV.Gold.Appraiser.MainFrame.hideTooltip = false
	end

	local rownum=0
	local rowoff=0

	self.InventoryItems = {}
	self.FlatSellItems = {}
	self.SellItems = self.SellItems or {}
	self.BuyItems = self.BuyItems or {}
	self.GuideBuyItems = self.GuideBuyItems or {}

	-- Initialise
	if self.ActiveTab == "Inventory" then
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, GetContainerNumSlots(bag) do
				self:AddItemToInventory(bag,slot)
			end
		end
	end
	if self.ActiveTab == "Buy" then
		-- Adding items from guide moved to guide step entry
		for indexBuy,v in pairs(self.BuyItems) do
			if self.BuyItems[indexBuy].count <= 0 then
				table.remove(self.BuyItems,indexBuy)
			end
		end
		for indexGuide,v in pairs(self.GuideBuyItems) do
			if self.GuideBuyItems[indexGuide].count <= 0 then
				table.remove(self.GuideBuyItems,indexGuide)
			end
		end
	end

	-- Sort
	if self.ActiveTab == "Inventory" then
		sort(self.InventoryItems,Appraiser.sort_inventory)
	elseif self.ActiveTab == "Buy" then
		--if next(self.GuideBuyItems) then
		--	sort(self.GuideBuyItems,Appraiser.sort_buy)
		--end
		self.MergedBuyItems = {}
		local indexMerged = 1
		for indexBuy = 1,#self.BuyItems do
			self.MergedBuyItems[indexMerged] = self.BuyItems[indexBuy]
			indexMerged = indexMerged + 1
			local _ = GetItemInfo(self.BuyItems[indexBuy].id)
		end

		if #self.BuyItems>0 and #self.GuideBuyItems>0 then
			self.MergedBuyItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for indexGuide,v in pairs(self.GuideBuyItems) do
			self.MergedBuyItems[indexMerged] = self.GuideBuyItems[indexGuide]
			indexMerged = indexMerged + 1
			local _ = GetItemInfo(self.GuideBuyItems[indexGuide].id)
		end
	end

	-- Display
	if self.ActiveTab == "Inventory" then
		page = self.MainFrame.Inventory_Frame 
		self.MainFrame.offset = max(0,min(self.MainFrame.offset,#self.InventoryItems-ROWCOUNT))
		rowoff=self.MainFrame.offset
		for ii,invItem in ipairs(self.InventoryItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<ROWCOUNT+1 then 
				local row = page.rows[rownum]
				row.icon:SetTexture(invItem.icon)
				color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
				row.name:SetText(invItem.count.." "..color..(invItem.displayName or invItem.name or "..."))
				row.status:SetText(invItem.statusIcon)
				if ZGV.db.profile.inventory_show_single_price then
					row.price:SetText(ZGV.GetMoneyString(invItem.price/invItem.count or 0))
				else
					row.price:SetText(ZGV.GetMoneyString(invItem.price or 0))
				end
				row.item = invItem
				row:Show()
			end
		end

		self.MainFrame.scrollbar:TotalValue(#self.InventoryItems)
		self.MainFrame.scrollbar:SetValue(rowoff)
	elseif self.ActiveTab == "Buy" then
		page = self.MainFrame.Buy_Frame 
		self.MainFrame.offset = max(0,min(self.MainFrame.offset,#self.MergedBuyItems-ROWCOUNT))
		rowoff=self.MainFrame.offset
		for ii,invItem in ipairs(self.MergedBuyItems) do 
			rownum = ii-rowoff
			if rownum>0 and rownum<ROWCOUNT+1 then 
				local row = page.rows[rownum]
				if invItem=="separator" then
					row.icon:SetTexture()
					row.name:SetText()
					row.price:SetText()
					row.back:SetTexture(ZGV.DIR.."\\Skins\\separator")
					row.tooltip = nil
					row:SetNormalBackdropColor(0,0,0,0)
					row:SetBackdropBorderColor(0,0,0,0)
					row.delete:Hide()
					row:Show()
				else
					row.item = invItem
					row.icon:SetTexture(invItem.icon)

					color = ""
					if invItem.quality then
						local _,_,_, hex = GetItemQualityColor(invItem.quality);
						color="|c"..hex
					end

					row.name:SetText(invItem.count.." "..color..(invItem.name or "..."))
					--row.price:SetText(Appraiser:GetShoppingPriceString(row))
					local text,alpha,tooltip = Appraiser:SetShoppingItemDetails(invItem)
					row.price:SetText(text)
					row.price:SetAlpha(alpha)
					row.tooltip = tooltip
					row.delete:Show()
					row.back:SetTexture()
					row:Show()
					if row.active then
						row:SetNormalBackdropColor(1,1,1,0.1)
						row:SetBackdropBorderColor(1,1,1,0.1)
					else
						row:SetNormalBackdropColor(0,0,0,0)
						row:SetBackdropBorderColor(0,0,0,0)
					end
				end
			end
		end
		
		self.MainFrame.scrollbar:TotalValue(#self.MergedBuyItems)
		self.MainFrame.scrollbar:SetValue(rowoff)

		if not next(self.MergedBuyItems) then
			page.message:Show()
			page.message:SetText("Use the Auctions section of the Gold Guide to add items here.")

		else
			page.message:Hide()
		end

	end

	for r=rownum+1,ROWCOUNT do page.rows[r]:Hide() end

end

function Appraiser:UpdateBuyPrices()
	if self.manualBuyScanning then return end
	self.ScanBuyItems = {}
	self.manualBuyScanningTotal = #self.MergedBuyItems
	self.manualBuyScanningDone = 1
	for index = #self.MergedBuyItems,1,-1 do
		table.insert(self.ScanBuyItems,self.MergedBuyItems[index])
	end
	self.manualBuyScanning = true
end

function Appraiser:ShoppingRowOnClick(row)
	-- Do not accept clicks if something is going on in background.
	if Appraiser.BuyOutSearch then return end
	if Appraiser.BuyOutSearchName then return end
	if Appraiser.GoToFirstPage then return end

	Appraiser.AbortEverything = false

	Appraiser.BuyOutSearch = row.item.id
	Appraiser.BuyOutSearchName = row.item.name
	Appraiser.Buyout.item = row.item

	for i,r in pairs(Appraiser.MainFrame.Buy_Frame.rows) do
		r.active = false
	end

	row.active = true
	Appraiser:SearchForItem(row.item)
	Appraiser:Update()
end

function Appraiser:SaveScanTable()
	local itemid = Appraiser.BuyOutSearch
	if not itemid then return end

	local ItemToUpdate = nil
	for indexBuy = #self.BuyItems,1,-1 do
		if self.BuyItems[indexBuy].id == itemid then
			ItemToUpdate = self.BuyItems[indexBuy]
		end
	end
	for indexGuide,v in pairs(self.GuideBuyItems) do
		if self.GuideBuyItems[indexGuide].id == itemid then
			ItemToUpdate = self.GuideBuyItems[indexGuide]
		end
	end

	if not ItemToUpdate then return end

	ItemToUpdate.rawdata = {}
	for i,rawline in pairs(ZGV.Gold.Scan.rawdata) do
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)
		ItemToUpdate.rawdata[i] = {count,buyoutPrice,buyoutPrice/count,is_own}
	end

	Appraiser.page = 0

	if #ItemToUpdate.rawdata>50 then
		ZGV:Debug("More than 50 auctions, moving to page 1")
		Appraiser.GoToFirstPage = true
	else
		ZGV:Debug("Less than 50 auctions, we are here")
		Appraiser.BuyOutSearch = nil
		Appraiser.BuyOutSearchName = nil
	end
	Appraiser:Update()
end

function Appraiser:SetShoppingItemDetails(invItem)
	local count,price,each,status = Appraiser:FindCheapestBuyout(invItem)

	local outdated = false
	local alpha = 1
	local tooltip = nil

	if price > 0 then
		text = ZGV.GetMoneyString(price,3)
	else
		text = "No results"
	end

	if status=="ok" then
		text = count.." for "..ZGV.GetMoneyString(price,3)
		alpha = 1
		tooltip = "Buy "..count.." for "..ZGV.GetMoneyString(price,3).." ("..ZGV.GetMoneyString(each,3).." ea)"

	elseif status=="noresults" then
		text = "No results"
		alpha = 1
	elseif status=="nodeals" then
		text = "No deals"
		alpha = 1
		tooltip = "No deals were found for this item\nDeal threshold: "..ZGV.GetMoneyString(price,3).. " ea"
	end

	if not invItem.updated or (invItem.updated and time()-invItem.updated>OUTDATED_TIME) or status=="old" then
		outdated = true
		alpha = 0.2
		tooltip = "Click to update price"
		text = (price>0 and ZGV.GetMoneyString(price,3,true).." ea" or text)
	end

	return text,alpha,tooltip
end

function Appraiser:ClearShoppingItemDetails()
	Appraiser.BuyOutSearch = nil
	Appraiser.BuyOutSearchName = nil
	Appraiser.Buyout = {}
	Appraiser.WaitingForAuctionData = false
	Appraiser.AbortEverything = true

	for i,r in pairs(Appraiser.MainFrame.Buy_Frame.rows) do
		r.active = false
	end
end

function Appraiser:FindCheapestBuyout(invItem)
	if Appraiser.AbortEverything then return 0,priceMax or trendprice or 0,0,"nodeals" end

	local itemid = invItem.id
	if not invItem.rawdata then
		invItem.buyoutindex = nil
		return 0,ZGVG.Scan:GetPrice(itemid) or 0,0,"old"
	end

	if not next(invItem.rawdata) then
		invItem.buyoutindex = nil
		return 0,0,0,"noresults"
	end

	local minprice = nil
	local minindex = nil
	local priceMax = invItem.priceMax or nil

	for i,row in pairs(invItem.rawdata) do
		if row[3]>0 and row[4]=="0" then -- has buyout and is not our own auction
			if priceMax and row[3]<=(priceMax+1) then
				if not minprice then 
					minprice = row[3]
					minindex = i
				else
					if minprice>row[3] then -- skip non-buyout auctions
						minprice = row[3]
						minindex = i
					end
				end
			elseif not priceMax and Appraiser:IsDeal(itemid,row[3]) then
				if not minprice then 
					minprice = row[3]
					minindex = i
				else
					if minprice>row[3] then -- skip non-buyout auctions
						minprice = row[3]
						minindex = i
					end
				end
			end
		end
	end

	if ZGV.fakeindex then
		minindex = ZGV.fakeindex 
	end

	if minindex then
		debugitem = invItem
		invItem.buyoutindex = minindex

		local preindex = minindex
		local newpage = math.floor((minindex-1)/50)

		if newpage~=Appraiser.page and Appraiser.Buyout.item.id and Appraiser.Buyout.item.id==itemid then
		-- only switch pages if this is the item in active buyout
			if ZGVG.Scan:CanScanByName() then
				Appraiser.page=newpage
				local name = Appraiser.Buyout.item.name
				Appraiser.WaitingForAuctionData = true
				Appraiser.DelayedFindCheapestBuyout = nil
				QueryAuctionItems(name, nil, nil, 0, 0, 0, Appraiser.page, 0, 0, false, true)
				ZGV.Gold.Scan:UpdateDefaultUI(name,Appraiser.page)
			else
				Appraiser.DelayedFindCheapestBuyout = invItem
				Appraiser.WaitingForAuctionData = true
			end
		end

		return invItem.rawdata[minindex][1],tonumber(invItem.rawdata[minindex][2]),tonumber(invItem.rawdata[minindex][3]),"ok"
	else
		local trendprice = ZGV.Gold.servertrends.items[itemid].p_md
		invItem.buyoutindex = nil
		return 0,priceMax or trendprice or 0,0,"nodeals"
	end
end


function Appraiser:ExecuteBuyout()
	if Appraiser.MainFrame.Buy_Frame.FooterBuyButton.soft_disabled then return end
	local item = Appraiser.Buyout.item
	local buyoutindex = item.buyoutindex-(50*Appraiser.page)

	local expected = item.rawdata[item.buyoutindex]
	local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_  = GetAuctionItemInfo("list",buyoutindex)
	if not aName then
		if item.rescanned then
			-- we already did a quick rescan of current page, and item is still not here.
			-- so, do a full rescan
			ZGV:Print("Expected auction still not found, rescanning")
			Appraiser:SearchForItem(item)
			Appraiser.BuyOutSearch = item.id
			Appraiser.BuyOutSearchName = item.name
			Appraiser:Update()
			item.rescanned = nil
		else
			-- first time this auction is not found, so it may have been pushed from outside of current
			-- page, so we requery only this page
			ZGV:Print("Expected auction not found, requerying")
			item.rescanned = true
			QueryAuctionItems(item.name, nil, nil, 0, 0, 0, Appraiser.page, 0, 0, false, true)
			ZGV.Gold.Scan:UpdateDefaultUI(item.name,Appraiser.page)

		end
	elseif aName==item.name and tonumber(expected[1])==tonumber(aStack) and tonumber(expected[2])==tonumber(aBuyout) and Appraiser_player_name~=aOwner then
		--- yes, this is what we were hoping to find, buy it
		ZGV:Debug("Buying out auction")
		Appraiser.AttemptingToBuyout = true
		PlaceAuctionBid("list", buyoutindex, aBuyout)
	else
		-- we found something, but it was not what we were expecting, do a full rescan
		ZGV:Print("Unexpected auction found, rescanning")
		Appraiser.AttemptingToBuyout = false
		Appraiser:SearchForItem(item)
		Appraiser.BuyOutSearch = item.id
		Appraiser.BuyOutSearchName = item.name
		Appraiser:Update()
	end
end


function Appraiser:ToggleInvPriceMode()
	ZGV.db.profile.inventory_show_single_price = not ZGV.db.profile.inventory_show_single_price 
	Appraiser:Update()
end

function Appraiser:InventoryToggleAll(state)
	if not state then
		self.SellItems = nil
	else
		for i,item in pairs(self.InventoryItems) do
			self.SellItems = self.SellItems or {}
			self.SellItems[item.bag] = self.SellItems[item.bag] or {}
			self.SellItems[item.bag][item.slot] = item
		end
	end
	self:Update()
end


function Appraiser:AddGuideItemsToBuy()
	self.GuideBuyItems = {}

	for i=1,#ZGV.CurrentStep.goals do
	--for goalid,goal in pairs(ZGV.CurrentStep.goals) do
		local goal = ZGV.CurrentStep.goals[i]
		if goal.action == "buy" and goal.status == "incomplete" then
			local itemid = goal.targetid
			local count = goal.count - GetItemCount(itemid)
			local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(itemid)

			local newitem = {id=itemid,name=name,link=link,icon=texture,count=itemCount, price=trendprice,count=count, deals=deals, isManual=manual, priceMax=priceMax}
			table.insert(self.GuideBuyItems,newitem)
		end
	end
	self.needToUpdate = true
end

function Appraiser:AddItemToBuy(itemid,count,manual,priceMax)
	if not itemid then return end

	self.BuyItems = self.BuyItems or {}

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice = GetItemInfo(itemid)

	if itemid>1000000000 then 
		petId = tonumber(string.sub(tostring(itemid),2,5))
		quality = tonumber(string.sub(tostring(itemid),10,11))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petId)
	end

	local price = ZGV.Gold.Scan:GetPrice(itemid)

	local deals = 0
	local existing_count = 0
	local existing_index

	for index,item in pairs(self.BuyItems) do
		if item.id == itemid then
			existing_index = index
			existing_count = item.count
		end
	end

	if existing_index then
		self.BuyItems[existing_index].count = self.BuyItems[existing_index].count+count
	else
		local newitem = {id=itemid,name=name,link=link,icon=icon,price=trendprice,count=count, deals=deals, isManual=manual, priceMax=priceMax}
		table.insert(self.BuyItems,newitem)
	end

	ZGV.NotificationCenter.AddButton(
	    "",
	   "Shopping list",
	    count.." "..name..(count>1 and "s" or ""),
	    ZGV.DIR.."\\Skins\\guideicons-big",
	    {0, 0.25, 0.25, 0.50},
	    nil,
	    nil,
	    1,
	    poptime,        -- nil atm
	    removetime,        -- nil atm
	    nil,            -- nil atm
	    nil,            -- nil atm
	    "gold")


	-- deactivate current row and remove item from buyout clipboard
	-- prevents wrong row from being highlighted

	if Appraiser.MainFrame then
		Appraiser:SetCurrentTab("Buy")
		for i,r in pairs(Appraiser.MainFrame.Buy_Frame.rows) do
			r.active = false
		end
	end
	
	Appraiser.Buyout.item = nil
	self.needToUpdate = true
end

function Appraiser:RemoveItemFromBuy(row)
	local itemid = row.item.id
	local count = row.item.count

	for i,v in pairs(self.BuyItems) do
		if v.id == itemid and v.count == count then
			table.remove(self.BuyItems,i)
		end
	end

	for i,v in pairs(self.GuideBuyItems) do
		if v.id == itemid and v.count == count then
			table.remove(self.GuideBuyItems,i)
		end
	end


	for i,r in pairs(Appraiser.MainFrame.Buy_Frame.rows) do
		r.active = false
	end
	Appraiser.Buyout.item = nil
	self.needToUpdate = true
	end

function Appraiser:AddItemToInventory(bag,slot)
	local itemid=GetContainerItemID(bag,slot)
	local CachedPetCages = CachedPetCages or {}
	local itemlink = GetContainerItemLink(bag, slot) 

	if itemid then
		--Gratuity:SetHyperlink("item:"..itemid)
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

		price, statusId, statusText, statusIcon = ZGVG:GetSellPrice(petItem_id or itemid,itemCount)

		if not (petItem_id or itemid) or not name or not price then
			ZGV:Print("Unable to add item",itemid,"to auctiontools.")
			return
		end

		local exists = false
		for i,v in pairs(self.InventoryItems) do
			--if (petItem_id and v.itemid==petItem_id) or (not petItem_id and v.itemid == itemid) and not exists then
			if v.link==itemlink and not exists then
				exists = exists or true
				self.InventoryItems[i].count = self.InventoryItems[i].count + itemCount
				self.InventoryItems[i].price = self.InventoryItems[i].price + price
			end
		end
		if not exists then
local newitem = {itemid=petItem_id or itemid,name=name,displayName=displayName,link=itemlink,icon=texture,count=itemCount,price=price,bag=bag,slot=slot,statusText=statusText,statusIcon=statusIcon,statusId=statusId,BattlePetId=BattlePetId,BattlePetName=BattlePetName,quality=quality}
			table.insert(self.InventoryItems,newitem)
		end
	end
end

function Appraiser:SellItem(item)
	AuctionFrameTab_OnClick(AuctionFrameTab3)
end

function Appraiser:SearchForItem(item)
	if ZGVG.Scan:CanScanByName() then
		AuctionFrameTab_OnClick(AuctionFrameTab1)
		BrowseName:SetText(item.name)
		ZGVG.Scan:ScanByName(item.name,item.id)
		item.updated = time()

		Appraiser.itemForHighlights = item.id
		Appraiser.itemForHighlightsPrice = item.priceMax
	else
		item.updated = time()
		ZGV:ScheduleTimer(function() 
			Appraiser:SearchForItem(item)
		end, 0.5)
	end
end


local function EventHandler(self, event, ...)
	args = {...}
	if event=="AUCTION_HOUSE_SHOW" then
		Appraiser.TrackItem = false
		Appraiser.ActivatedItem = {}
		Appraiser:ShowWindow()
		Appraiser.AttemptingToBuyout = false
		if ZGV.db.profile.autoscan then
			Appraiser:Scan()
		end
	elseif event=="AUCTION_HOUSE_CLOSED" then
		Appraiser:HideWindow()
		if ZGV.Gold.HelpPopup then
			ZGV.Gold.HelpPopup:Hide()
		end
	elseif event=="AUCTION_ITEM_LIST_UPDATE" then
		Appraiser.WaitingForAuctionData = nil
		Appraiser:ClearDeals()
	end

	Appraiser.needToUpdate = true

	if ZGV.Gold.Appraiser.MainFrame then
		if event=="SS_STATE_CHANGE" then
			if ...~="SS_IDLE" and Appraiser.ActiveTab == "Inventory" then
				Appraiser.MainFrame.progressFrame:Show()
				if Appraiser.manualScanningDone then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(Appraiser.manualScanningDone*100/Appraiser.manualScanningTotal)
				elseif Appraiser.manualBuyScanningDone then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(Appraiser.manualBuyScanningDone*100/Appraiser.manualBuyScanningTotal)
				end
			end

			if ...=="SS_IDLE" then
				if not Appraiser.manualScanningTotal or (Appraiser.manualScanningTotal and Appraiser.manualScanningTotal==Appraiser.manualScanningDone)then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(100)
					ZGV.Gold.Appraiser.MainFrame.progressFrame:Hide()
				end
				if Appraiser.BuyOutSearch then
					Appraiser:SaveScanTable()
				end
				if ZGV.Gold.Appraiser.UpdateScanRunning then
					ZGV.Gold.Appraiser.UpdateScanRunning = false
					Appraiser.needToUpdate = true
				end
				Appraiser:SetSellData()
				Appraiser.UpdateScanRunningName = false

			elseif ... =="SS_QUERYING" then
				if not Appraiser.manualScanningTotal then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(40)
				end
			elseif ... =="SS_SCANNING" then
				if not Appraiser.manualScanningTotal then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(60)
				end
			elseif ... =="SS_ANALYZING" then
				if not Appraiser.manualScanningTotal then
					ZGV.Gold.Appraiser.MainFrame.progressFrame:SetPercent(80)
				end
				Appraiser.needToUpdate = true
			end
		end

		if event=="NEW_AUCTION_UPDATE" then
			if #Appraiser.ActivatedItem > 0 then
				Appraiser.PricesReady = false 
				Appraiser:WipePrices()
				ZGV:ScheduleTimer(function() 
					Appraiser.AuctionsStackSizeEntry = AuctionsStackSizeEntry:GetText()
					Appraiser.AuctionsNumStacksEntry = AuctionsNumStacksEntry:GetText()
					Appraiser.AuctionsMode = PriceDropDown.selectedValue
					Appraiser.UpdateScanRunning = Appraiser.ActivatedItem[3]
					Appraiser.PricesReady = true
					ZGV:ScheduleTimer(function() 
						Appraiser:SetSellData(true) 
						Appraiser.UpdateScanRunningName = Appraiser.ActivatedItem[5]
						ZGVG.Scan:ScanByName(Appraiser.ActivatedItem[5],Appraiser.ActivatedItem[3])
						Appraiser.ActivatedItem = {}
					end, 0)
				end, 0.2)
			else
				Appraiser.TrackItem = false
			end
		end

		if event=="CHAT_MSG_SYSTEM" then
			if Appraiser.AttemptingToBuyout and Appraiser.Buyout.item then
				local name = Appraiser.Buyout.item.name
				if args[1] == ERR_AUCTION_WON_S:format(name) then
					Appraiser.AttemptingToBuyout = false
					local buttonBuy = Appraiser.Buyout
					local itemTask = buttonBuy.item
					local itemBuy = buttonBuy.item.rawdata[buttonBuy.item.buyoutindex]
					table.remove(itemTask.rawdata,itemTask.buyoutindex)

					itemTask.count = itemTask.count - itemBuy[1]
					if itemTask.count <= 0 then
						Appraiser:ClearShoppingItemDetails()
					end
					Appraiser:Update()	
				end
			end
		end
	end
end

local function UpdateHandler(self, event)
	if not ZGV.Gold.Appraiser.MainFrame then return end
	if not ZGV.Gold.Appraiser.MainFrame:IsVisible() then return end

	ZGV.Gold.Appraiser.MainFrame:SetFrameLevel(AuctionFrame:GetFrameLevel()+1)

	ZGV.db.profile.inventory_show_single_price = not not ZGV.db.profile.inventory_show_single_price 

	if ZGV.db.profile.inventory_show_single_price then
		Appraiser.MainFrame.Inventory_Frame.col_price:SetText("Price (ea)")
		Appraiser.MainFrame.Inventory_Frame.col_price.tooltip = "Right mouse click: Switch to price per stack."
	else
		Appraiser.MainFrame.Inventory_Frame.col_price:SetText("Price")
		Appraiser.MainFrame.Inventory_Frame.col_price.tooltip = "Right mouse click: Switch to price per unit."
	end

	if Appraiser.manualScanning or Appraiser.manualBuyScanning then 
		Appraiser:ScanNextItem() 
	end

	if Appraiser.itemForHighlights and Appraiser.ActiveTab == "Buy" then
		Appraiser:HighlightDeals()
	end

	if Appraiser.needToUpdate or time()-Appraiser.lastUpdated>5 then
		Appraiser:Update()
	end
	
	Appraiser:UpdateTimeStamp()
	Appraiser:CheckForSellPriceUpdate()

	local buttonScan = ZGV.Gold.Appraiser.MainFrame.Inventory_Frame.FooterScanButton
	local buttonAppr = ZGV.Gold.Appraiser.MainFrame.Inventory_Frame.FooterAppraiseButton
	local buttonReAp = ZGV.Gold.Appraiser.AHUpdateButton
	local buttonBuy = Appraiser.MainFrame.Buy_Frame.FooterBuyButton
	local buttonBuyApp = Appraiser.MainFrame.Buy_Frame.FooterAppraiseBuyButton

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if canscan then
		buttonAppr:SetText("|cFFFFFFFFAppraise all")
		buttonAppr.soft_disabled=false
		buttonAppr.tooltip = "Update prices of inventory items."

		buttonBuyApp:SetText("|cFFFFFFFFAppraise all")
		buttonBuyApp.soft_disabled=false
		buttonBuyApp.tooltip = "Update prices of shopping list items."

	else
		buttonAppr:SetText("|c88888888Appraise all")
		buttonAppr.soft_disabled=true
		buttonAppr.tooltip = ("|cffff0000Auction scan not possible now, please wait ~%d minutes."):format(delay)

		buttonBuyApp:SetText("|c88888888Appraise all")
		buttonBuyApp.soft_disabled=true
		buttonBuyApp.tooltip = ("|cffff0000Auction scan not possible now, please wait ~%d minutes."):format(delay)
	end

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if Appraiser.DelayedFindCheapestBuyout then 
	-- we tried to switch pages when looking for cheapest buyout, but could not. 
	-- waiting for scan to be possible to retry
		if canscan then
			Appraiser:FindCheapestBuyout(Appraiser.DelayedFindCheapestBuyout)
		end
	end

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if Appraiser.GoToFirstPage then
	-- we ended our initial scan on page that was not the first
	-- waiting for scan to be possible to go to first page
		if canscan then
			QueryAuctionItems(Appraiser.BuyOutSearchName, nil, nil, 0, 0, 0, Appraiser.page or 0, 0, 0, false, true)
			ZGV.Gold.Scan:UpdateDefaultUI(Appraiser.BuyOutSearchName,Appraiser.page)
			Appraiser.BuyOutSearch = nil
			Appraiser.BuyOutSearchName = nil
			Appraiser.GoToFirstPage = false
		end
	end

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if canscan then
		local name, texture, count, quality, canUse, price, pricePerUnit, stackCount, totalCount = GetAuctionSellItemInfo();
		if name then
			buttonReAp:SetText("|cFFFFFFFFAppraise")
			buttonReAp.soft_disabled=false
			buttonReAp.tooltip = "Update price of listed item."
		else
			buttonReAp:SetText("|c88888888Appraise")
			buttonReAp.soft_disabled=true
			buttonReAp.tooltip = "|cffff0000No item listed."
		end
	else
		buttonReAp:SetText("|c88888888Appraise")
		buttonReAp.soft_disabled=true
		buttonReAp.tooltip = ("|cffff0000Auction scan not possible now, please wait ~%d minutes."):format(delay)
	end

	local canscan2,delay2 = ZGVG.Scan:CanScanFast()
	if canscan2 and ZGV.Gold.Scan.state=="SS_IDLE" then
		buttonScan.tooltip = "Run a fast auction scan."
		buttonScan:SetText("|cFFFFFFFFScan")
		buttonScan.soft_disabled=false
	else
		local newitems = false
		for i,v in pairs(Appraiser.InventoryItems) do
			if not Appraiser.ScannedItems[v.itemid] then
				newitems = true
				break
			end
		end


		if newitems then
			buttonScan.tooltip = "Run a auction scan to update new items in inventory."
			buttonScan:SetText("|cFFFFFFFFScan new")
			buttonScan.soft_disabled=false
		else
			buttonScan:SetText("|c88888888Scan")
			buttonScan.soft_disabled=true
			buttonScan.tooltip = ("|cffff0000Auction scan not possible now, please wait ~%d minutes."):format(delay2)
		end
	end

	if Appraiser.Buyout.item and time()-Appraiser.Buyout.item.updated>OUTDATED_TIME then
		Appraiser.Buyout.item = nil
	end


	if not Appraiser.Buyout.item then
		buttonBuy:SetText("|c88888888Buy")
		buttonBuy.soft_disabled=true
		buttonBuy.tooltip = ("|cffff0000No item selected for buying out.")
	else
		if Appraiser.AttemptingToBuyout then
			local itemBuy = Appraiser.Buyout.item.rawdata[Appraiser.Buyout.item.buyoutindex]
			buttonBuy:SetText("|c88888888Buying")
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = "Buying "..itemBuy[1].." "..Appraiser.Buyout.item.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
		elseif not Appraiser.Buyout.item.buyoutindex and not Appraiser.WaitingForAuctionData then
			buttonBuy:SetText("|c88888888Buy")
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = ("|cffff0000No recomended buyouts for selected item.")
		elseif not Appraiser.Buyout.item.rawdata or Appraiser.WaitingForAuctionData then
			buttonBuy:SetText("|c88888888Buy")
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = ("|cffff0000Updating auction data for selected item.")
		else
			local itemBuy = Appraiser.Buyout.item.rawdata[Appraiser.Buyout.item.buyoutindex]
			buttonBuy:SetText("|cFFFFFFFFBuy")
			buttonBuy.soft_disabled=false
			buttonBuy.tooltip = "Buy "..itemBuy[1].." "..Appraiser.Buyout.item.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
		end
	end
end

function Appraiser:Scan()
	if ZGVG.Scan:CanScanFast() then
		if self.ActiveTab == "Inventory" then
			self.MainFrame.progressFrame:Show()
		end
		ZGVG.Scan:ScanFast()
		self.MainFrame.progressFrame:SetPercent(20)
		Appraiser:UpdateScannedList()
	else 
		Appraiser:StartNewItemScan()
	end
	self:Update()
end

function Appraiser:StartManualScan()
	if self.manualScanning then return end
	self.ScanItems = {}
	self.manualScanning = true
	self.manualScanningTotal = #self.InventoryItems
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		table.insert(self.ScanItems,v)
	end
	Appraiser:UpdateScannedList()
end

function Appraiser:StartNewItemScan()
	if self.manualScanning then return end
	self.ScanItems = {}
	self.manualScanning = true
	self.manualScanningTotal = 0
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		if not Appraiser.ScannedItems[v.itemid] then
			table.insert(self.ScanItems,v)
			self.manualScanningTotal = self.manualScanningTotal + 1
		end
	end
	Appraiser:UpdateScannedList()
end

function Appraiser:UpdateScannedList()
	self.ScannedItems = {}
	for i,v in pairs(self.InventoryItems) do
		self.ScannedItems[v.itemid] = v.itemid
	end
end


function Appraiser:ScanNextItem()
	if Appraiser.manualScanning then
		if ZGVG.Scan:CanScanByName() and ZGVG.Scan.state=="SS_IDLE" then
			local item = tremove(Appraiser.ScanItems)
			if item then
				Appraiser.pagenum = 0
				Appraiser.manualScanningDone = Appraiser.manualScanningTotal - #Appraiser.ScanItems
				Appraiser.manualScanningName = item.name
				ZGVG.Scan:ScanByName(item.name,item.itemid)
			else
				Appraiser.manualScanning = false
				Appraiser.manualScanningName = false
				Appraiser.manualScanningTotal = false
				Appraiser.manualScanningDone = false
			end
		end
		self:Update()
	elseif Appraiser.manualBuyScanning then
		if ZGVG.Scan:CanScanByName() and ZGVG.Scan.state=="SS_IDLE" then
			local item = tremove(Appraiser.ScanBuyItems)
			if item then
				Appraiser.pagenum = 0
				Appraiser.manualBuyScanningTotal = Appraiser.manualBuyScanningTotal - #Appraiser.ScanBuyItems
				Appraiser.manualBuyScanning = item.name
				Appraiser.BuyOutSearch = item.id
				Appraiser.BuyOutSearchName = item.name
				ZGVG.Scan:ScanByName(item.name,item.id)
				item.updated = time()

			else
				Appraiser.manualBuyScanning = false
				Appraiser.manualBuyScanningTotal = false
				Appraiser.manualBuyScanningDone = false
				Appraiser.BuyOutSearch = nil
				Appraiser.BuyOutSearchName = nil
			end
		end
		self:Update()
	end
end

function Appraiser:IsDeal(item,price)
	if price==0 then return false end

	local trendprice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[item].p_md
	if not trendprice then
		return false
	end

	if price and price ~= "__orderedIndex" and price<trendprice then
		return true
	else
		return false
	end
end

function Appraiser:InventoryDragStart(row)
	PickupContainerItem(row.item.bag, row.item.slot)
	Appraiser.ActivatedItem = {row.item.bag, row.item.slot, row.item.itemid, row.item.count, row.item.name}
	AuctionFrameTab_OnClick(AuctionFrameTab3)
	Appraiser.TrackItem = row.item.itemid
end

function Appraiser:InventoryClick(row)
	if row.item.itemid ~= Appraiser.TrackItem then
		PickupContainerItem(row.item.bag, row.item.slot)
		Appraiser.ActivatedItem = {row.item.bag, row.item.slot, row.item.itemid, row.item.count, row.item.name}
		AuctionFrameTab_OnClick(AuctionFrameTab3)
		ClickAuctionSellItemButton()
		ClearCursor()
		Appraiser.TrackItem = row.item.itemid
	else
		ClickAuctionSellItemButton()
		ClearCursor()
		Appraiser.TrackItem = false
		Appraiser.ActivatedItem = {}
	end
end

function Appraiser:Reappraise(retry)
	Appraiser.TrackItem = true

	local name, texture, count, quality, canUse, price, pricePerUnit, stackCount, totalCount = GetAuctionSellItemInfo();
	if not name then
		self.TrackItem = false
		self.UpdateScanRunning = false
		return 
	end
	local itemName, itemLink = GetItemInfo(name)

	local itemid
	if itemLink then
		itemid = tonumber(itemLink:match("item:(%d+)"))
	else
		-- retry ONCE. Should wait for an ITEM_something event here, but it's a bandaid.
		if not retry then ZGV:ScheduleTimer(function() Appraiser:Reappraise(true) end, 0.5) end
		return
	end

	Appraiser:SetSellDataColor(0.6,0.6,0.6,0.6)
	if name and not itemid then
		-- most likely a pet
		self.UpdateScanRunning = 82800
		self.TrackItem = 82800
		itemid=82800
		-- ~~ What if it's NOT a pet? -sinus
		-- ~~ Pets were	only items that could be added that were not items -shooter
	else
		self.UpdateScanRunning = itemid
		self.UpdateScanRunningName = name
		self.TrackItem = itemid
		itemName = name
	end
	if not itemid then return end  -- do NOT feed nils to ScanByName. It gets gas.
	ZGVG.Scan:ScanByName(itemName,itemid)
end

function Appraiser:InventoryDragStop(row)
end

function Appraiser:WipePrices()
	StartPriceGold:SetText(0)
	StartPriceSilver:SetText(0)
	StartPriceCopper:SetText(0)

	BuyoutPriceGold:SetText(0)
	BuyoutPriceSilver:SetText(0)
	BuyoutPriceCopper:SetText(0)

	Appraiser:SetSellDataColor(0.6,0.6,0.6,0.6)
end

function Appraiser:SetSellData(initial)
	if self.TrackItem then
		local itemid = self.TrackItem 
		local countForSellCalc

		if initial then
			if AuctionsStackSizeEntry:IsShown() then
				local stacksize, stackcount = Appraiser:GetSellStack(itemid)
				AuctionsStackSizeEntry:SetText(stacksize)
				AuctionsNumStacksEntry:SetText(stackcount)
			else
				AuctionsStackSizeEntry:SetText(1)
				AuctionsNumStacksEntry:SetText(1)
			end
		end

		if ZGV.Gold.Appraiser.AuctionsMode == 2 then
			countForSellCalc = self.AuctionsStackSizeEntry
		else
			countForSellCalc = 1
		end

		selling_price = ZGVG:GetSellPrice(itemid,countForSellCalc)

		local selling_price_gold, selling_price_silver, selling_price_copper

		selling_price_gold = floor(selling_price / (COPPER_PER_SILVER * SILVER_PER_GOLD));
		selling_price_silver = floor((selling_price - (selling_price_gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER);
		selling_price_copper = mod(selling_price, COPPER_PER_SILVER);


		StartPriceGold:SetText(selling_price_gold)
		StartPriceSilver:SetText(selling_price_silver)
		StartPriceCopper:SetText(selling_price_copper)

		BuyoutPriceGold:SetText(selling_price_gold)
		BuyoutPriceSilver:SetText(selling_price_silver)
		BuyoutPriceCopper:SetText(selling_price_copper)

		if self.UpdateScanRunning and self.UpdateScanRunning == self.TrackItem then
			Appraiser:SetSellDataColor(0.6,0.6,0.6,0.6)
		else
			Appraiser:SetSellDataColor(0,1,0,1)
			ZGV:ScheduleTimer(function() Appraiser:SetSellDataColor(1,1,1,1) end, 1)
		end
	end

	
	-- clean up
	--ZGV.Gold.Appraiser.ActivatedItem[1] = nil
	--ZGV.Gold.Appraiser.ActivatedItem[2] = nil
end

function Appraiser:SetSellDataColor(r,b,g,a)
	StartPriceGold:SetTextColor(r,b,g,a)
	StartPriceSilver:SetTextColor(r,b,g,a)
	StartPriceCopper:SetTextColor(r,b,g,a)
	BuyoutPriceGold:SetTextColor(r,b,g,a)
	BuyoutPriceSilver:SetTextColor(r,b,g,a)
	BuyoutPriceCopper:SetTextColor(r,b,g,a)
	AuctionsStackSizeEntry:SetTextColor(r,b,g,a)
	AuctionsNumStacksEntry:SetTextColor(r,b,g,a)
end

function Appraiser:GetSellStack(itemid)
	local _, _, _, _, _, class, subclass, maxStack, _, _, _ = GetItemInfo(itemid)

	local itemCountTotal = 0
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			local ItemIdInBag=GetContainerItemID(bag,slot)
			if ItemIdInBag and ItemIdInBag==itemid then
				local texture, itemCount, locked, quality, readable = GetContainerItemInfo(bag, slot)
				itemCountTotal = itemCountTotal + itemCount
			end
		end
	end

	if class==L['type_trade_goods'] then
		stacksize = math.min(maxStack/4,itemCountTotal)
		stackcount = math.floor(itemCountTotal/stacksize)
	else
		stacksize = 1
		stackcount = itemCountTotal
	end

	return stacksize, stackcount
end

function Appraiser:CheckForSellPriceUpdate()
	if not Appraiser.PricesReady then return end
	if not AuctionFrameAuctions then return end 
	if not Appraiser.TrackItem then return end

	local reSetPrices = false
	if self.AuctionsUndercut ~= ZGV.db.profile.appraiser_undercut then
		self.AuctionsUndercut = ZGV.db.profile.appraiser_undercut
		reSetPrices = true
	end
	if self.AuctionsStackSizeEntry ~= AuctionsStackSizeEntry:GetText() then
		self.AuctionsStackSizeEntry = AuctionsStackSizeEntry:GetText()
		reSetPrices = true
	end
	if self.AuctionsNumStacksEntry ~= AuctionsNumStacksEntry:GetText() then
		self.AuctionsNumStacksEntry = AuctionsNumStacksEntry:GetText()
		reSetPrices = true
	end
	if PriceDropDown.selectedValue and self.AuctionsMode ~= PriceDropDown.selectedValue then
		self.AuctionsMode = PriceDropDown.selectedValue
		reSetPrices = true
	end
	if reSetPrices then 
		self:SetSellData()
	end
end

local function Appraiser_SetTooltipData(tooltip, itemLink)
	local function OldColor(timestamp,red,yellow)
		local age=time()-timestamp
		if age>red then
			return "ffff0000"
		elseif age>yellow then
			return "ffffee00"
		else
			return "ffffffff"
		end
	end


	-- Decide what detail level we're showing.

		if not ZGV.db.profile.gold_tooltips_show then return end
		
		local tooltip_context = "out"
		if AuctionFrame and AuctionFrame:IsShown() then tooltip_context="ah" end
		
		local tooltip_detail = ZGV.db.profile['gold_tooltips_' .. tooltip_context]   -- gold_tooltips_ah or gold_tooltips_out
		if not tooltip_detail or tooltip_detail==0 then return end
		if IsShiftKeyDown() and ZGV.db.profile.gold_tooltips_shift then tooltip_detail=3 end
	--


	if not Appraiser.TooltipPatched then
		if not itemLink then _,itemLink = tooltip:GetItem() end

		if not itemLink then
			Appraiser.TooltipPatched  = true
			return
		end


		local itemId = tonumber(itemLink:match("item:(%d+)"))

		if not itemId or itemId==0 or itemId==82800 then -- no item, or caged pet
			Appraiser.TooltipPatched  = true
			return 
		end

		local tooltipnamestring = tooltip:GetName()

		local isboundable = false
		for i=1,tooltip:NumLines() do
			local line=_G[tooltipnamestring.."TextLeft"..i]:GetText()
			if line then
				isboundable = isboundable or strfind(line, ITEM_SOULBOUND)
				isboundable = isboundable or strfind(line, ITEM_BIND_ON_PICKUP)
				isboundable = isboundable or strfind(line, ITEM_BIND_TO_BNETACCOUNT)
				isboundable = isboundable or strfind(line, ITEM_BNETACCOUNTBOUND)
				isboundable = isboundable or strfind(line, ITEM_BIND_QUEST)
				isboundable = isboundable or strfind(line, ITEM_CONJURED)

				-- if we found use clause, we are past possible points of binding, stop looking
				if strfind(line, USE_COLON) then break end 
			end
		end

		local p_lo, p_md, p_hi, demand
		local trends_known
		
		local trend
		if ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemId] then
			trend = ZGV.Gold.servertrends.items[itemId]

			p_lo = ZGV.GetMoneyString(trend.p_lo,3) or "unknown"
			p_md = ZGV.GetMoneyString(trend.p_md,3) or "unknown"
			p_hi = ZGV.GetMoneyString(trend.p_hi,3) or "unknown"
			demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2
			
			trends_known = true
		else 
			trends_known = false
		end

		local globaltrend = not trends_known and ZGVG.servertrends_global and ZGVG.servertrends_global.items and ZGVG.servertrends_global.items[itemId]

		
		tooltip:AddLine("|cffffffff |r")
		tooltip:AddLine("|cfffe6100Zygor Gold Data:|r")
		if isboundable then
			tooltip:AddLine("  |cffeeeeeeItem is soulbound|r ")
			tooltip:Show()
			return
		end

		local price, statusId, statusText, statusIcon = ZGVG:GetSellPrice(itemId,1)
		local price_g = (price>0 and ZGV.GetMoneyString(price,3)) or "n/a"
		local minprice = ZGVG.Scan:GetPrice(itemId) or 0
		local minprice_g = (minprice>0 and ZGV.GetMoneyString(minprice,3)) or "n/a"

		
		tooltip:AddDoubleLine("  |cffeeeeeeCurrent lowest price:|r ",minprice_g)

		--local vendor = ZGV.GetMoneyString(select(11,GetItemInfo(itemLink)))
		--tooltip:AddDoubleLine("  |cffeeeeeeVendor sell price:|r ",vendor)

		-- explained:
		--tooltip:AddDoubleLine("  STATUSID:",statusId)

		tooltip:AddDoubleLine("  |cffeeeeeeSuggested sell price:|r ",price_g)

		if tooltip_detail==2 then -- dynamic
			
			local undercut = ZGV.db.profile.appraiser_undercut
			if undercut>10000 then undercut = ZGV.GetMoneyString(undercut-10000)  else undercut=undercut.."%" end
			local overpricemargin_perc = floor(ZGVG.OVERPRICE*100-100).."%"
			local gouged_perc = trends_known and floor((minprice-trend.p_hi)/trend.p_hi - 1) * 100 .. "%"

			if statusId==ZGVG.PRICESTATUS.PRICESTATUS_EMPTY then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouging by:|r",overpricemargin_perc)
			elseif statusId==ZGVG.PRICESTATUS.PRICESTATUS_GOUGED or statusId==ZGVG.PRICESTATUS.PRICESTATUS_UP then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				--tooltip:AddDoubleLine("    |cffeeeeeeGouged by over "..overpricemargin_perc..":|r ",gouge_perc)
				tooltip:AddDoubleLine("    |cffeeeeeeGouge setting:|r",overpricemargin_perc)
			--[[
			elseif false and statusId==ZGVG.PRICESTATUS.PRICESTATUS_UP then
				local overpricemargin_perc = floor(ZGVG.OVERPRICE-1*100).."%"
				local gouge_perc = floor((minprice-trend.p_hi)/trend.p_hi - 1) * 100 .. "%"
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeOverpriced under "..overpricemargin_perc..":|r ",gouge_perc)
				--tooltip:AddDoubleLine("    |cffeeeeeeUndercutting by:|r",ZGV.GetMoneyString(minprice-price))
			elseif false then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
			--]]
			elseif statusId==ZGVG.PRICESTATUS.PRICESTATUS_DOWN then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)
				--tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusId==ZGVG.PRICESTATUS.PRICESTATUS_STAGNANT or statusId==ZGVG.PRICESTATUS.PRICESTATUS_NORMAL then
				--[[
				if minprice<=trend.p_md then
					tooltip:AddDoubleLine("    |cffeeeeeeBetween historical low and median:|r ",p_lo.." - "..p_md)
				else
					tooltip:AddDoubleLine("    |cffeeeeeeBetween historical median and high:|r ",p_md.." - "..p_hi)
				end
				--]]
				if minprice<trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)  end
				if minprice>=trend.p_lo and minprice<=trend.p_hi then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)  end
				if minprice>trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)  end

				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusId==ZGVG.PRICESTATUS.PRICESTATUS_NODATA then
				tooltip:AddDoubleLine("    |cffeeeeeeGlobal median:|r ",globaltrend and ZGV.GetMoneyString(globaltrend.p_md) or "n/a")
			end
		end

		if tooltip_detail==3 then -- full
			if trends_known then
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical high:|r ",p_hi)
				--tooltip:AddDoubleLine("  |cffeeeeeeHistorical prices:|r ",p_lo.." < "..p_md.." < "..p_hi)
			end
			if globaltrend then
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal low:|r ",ZGV.GetMoneyString(globaltrend.p_lo))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal median:|r ",ZGV.GetMoneyString(globaltrend.p_md))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal high:|r ",ZGV.GetMoneyString(globaltrend.p_hi))
			end
		end

		tooltip:AddDoubleLine("  |cffeeeeeeDemand (est. sold):|r ",trends_known and demand or "n/a")

		tooltip:AddDoubleLine("  |cffeeeeeeStatus:|r ",string.sub(statusIcon,1,10)..statusText)

		if ZGV.Gold.Scan and ZGV.db.realm.LastScan then
			tooltip:AddDoubleLine("  |cffeeeeeeLast updated:|r ",("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ZGV.UI.GetTimeStamp(ZGV.db.realm.LastScan)))
		end
		tooltip:AddLine("|cffffffff |r")
		tooltip:Show()
		
		Appraiser.TooltipPatched  = true
	end
end

local function Appraiser_ClearTooltipData(tooltip, ...)
	Appraiser.TooltipPatched = false
end

local function Appraiser_SetBagItem(tip, whichbag, whichslot)
	local _, StackSize = GetContainerItemInfo(whichbag, whichslot);
	Appraiser.TooltipStackSize = StackSize
end

function Appraiser:CreateTrackerFrame()
	-- Separate frame for events because Appraiser's own frame doesn't exist until it's first shown.
	Appraiser.Events = CreateFrame("Frame")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_SHOW")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_CLOSED")
	Appraiser.Events:RegisterEvent("AUCTION_OWNED_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("ITEM_LOCKED")
	Appraiser.Events:RegisterEvent("ITEM_UNLOCKED")
	Appraiser.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Appraiser.Events:RegisterEvent("UNIT_INVENTORY_CHANGED")
	Appraiser.Events:RegisterEvent("AUCTION_ITEM_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("NEW_AUCTION_UPDATE")
	Appraiser.Events:RegisterEvent("CHAT_MSG_SYSTEM")
	ZGV:AddMessage("SS_STATE_CHANGE",EventHandler)
	Appraiser.Events:SetScript("OnEvent",EventHandler)
	Appraiser.Events:SetScript("OnUpdate",UpdateHandler)

	hooksecurefunc (GameTooltip, "SetMerchantItem", function(tip, index) Appraiser_SetTooltipData(tip, GetMerchantItemLink(index)) end )
	hooksecurefunc (GameTooltip, "SetBuybackItem", function(tip, index) Appraiser_SetTooltipData(tip, GetBuybackItemLink(index)) end )
	hooksecurefunc (GameTooltip, "SetBagItem", function(tip, bag, slot) Appraiser_SetTooltipData(tip, GetContainerItemLink(bag, slot)) end )
	hooksecurefunc (GameTooltip, "SetAuctionItem", function (tip, type, index) Appraiser_SetTooltipData(tip, GetAuctionItemLink(type, index)) end )
	hooksecurefunc (GameTooltip, "SetLootRollItem", function (tip, slot) Appraiser_SetTooltipData(tip, GetLootRollItemLink(slot)) end )
	hooksecurefunc (GameTooltip, "SetInventoryItem", function (tip, unit, slot) Appraiser_SetTooltipData(tip, GetInventoryItemLink(unit, slot)) end )
	hooksecurefunc (GameTooltip, "SetGuildBankItem", function (tip, tab, slot) Appraiser_SetTooltipData(tip, GetGuildBankItemLink(tab, slot)) end )
	hooksecurefunc (GameTooltip, "SetTradePlayerItem", function (tip, id) Appraiser_SetTooltipData(tip, GetTradePlayerItemLink(id)) end )
	hooksecurefunc (GameTooltip, "SetTradeTargetItem", function (tip, id) Appraiser_SetTooltipData(tip, GetTradeTargetItemLink(id)) end )
	hooksecurefunc (GameTooltip, "SetQuestItem", function (tip, type, index) Appraiser_SetTooltipData(tip, GetQuestItemLink(type, index)) end )
	hooksecurefunc (GameTooltip, "SetQuestLogItem", function (tip, type, index) Appraiser_SetTooltipData(tip, GetQuestLogItemLink(type, index)) end )
	hooksecurefunc (GameTooltip, "SetInboxItem", function (tip, index, attachIndex) Appraiser_SetTooltipData(tip, GetInboxItemLink(index, attachIndex)) end )
	hooksecurefunc (GameTooltip, "SetItemByID", function (tip, itemstring) Appraiser_SetTooltipData(tip) end )

	hooksecurefunc (GameTooltip, "SetAuctionSellItem", function (tip)
		local name, _, count = GetAuctionSellItemInfo()
		local __, link = GetItemInfo(name)
		Appraiser_SetTooltipData(tip, link)
	end)

	hooksecurefunc (ItemRefTooltip, "SetHyperlink", function(tip, itemstring)
		local name, link = GetItemInfo (itemstring)
		Appraiser_SetTooltipData(tip, link)
	end)

	hooksecurefunc (GameTooltip, "SetHyperlink", function(tip, itemstring)
		local name, link = GetItemInfo (itemstring)
		Appraiser_SetTooltipData(tip, link)
	end)

	hooksecurefunc (GameTooltip, "SetLootItem", function(tip, slot)
		if LootSlotHasItem(slot) then
			local link, _, num = GetLootSlotLink(slot)
			Appraiser_SetTooltipData(tip, link)
		end
	end)


	hooksecurefunc (GameTooltip, "SetTradeSkillItem", function(tip, skill, id)
		local link = GetTradeSkillItemLink(skill)
		if id then link = GetTradeSkillReagentItemLink(skill, id) end
		Appraiser_SetTooltipData(tip, link)
	end)


	hooksecurefunc (GameTooltip, "SetSendMailItem", function(tip, id)
		local name, _, num = GetSendMailItem(id)
		local name, link = GetItemInfo(name)
		Appraiser_SetTooltipData(tip, link)
	end)



	GameTooltip:HookScript("OnTooltipCleared", Appraiser_ClearTooltipData)
end

tinsert(ZGV.startups,function(self)
	Appraiser:CreateTrackerFrame()
	Appraiser.ScannedItems = {}
end)