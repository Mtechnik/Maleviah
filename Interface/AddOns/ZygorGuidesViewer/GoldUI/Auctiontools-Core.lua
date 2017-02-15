-- TODO Poprawić gold.lua 1705 na użycie ZGV.db.char.GGbuyitems

local ZGV = ZygorGuidesViewer
if not ZGV then return end

local ZGVG=ZGV.Gold

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Gold.Appraiser then ZGV.Gold.Appraiser = {} end
local Appraiser = ZGV.Gold.Appraiser
LibStub("AceHook-3.0"):Embed(Appraiser)

local OUTDATED_TIME = 60*3
local GOLD_FORMAT_TYPE=3
local APPRAISER_PLAYER_NAME = UnitName("player")

Appraiser.RawDataTable = {}

Appraiser.FlatSellItems = {}

function Appraiser:Update()
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	local InventoryList = Appraiser.Inventory_Frame.InventoryList
	local InventoryAuctionList = Appraiser.Inventory_Frame.InventoryAuctionList
	local ShoppingList = Appraiser.Buy_Frame.ShoppingList
	local ShoppingAuctionList = Appraiser.Buy_Frame.ShoppingAuctionList
	local SearchResultList = Appraiser.Buy_Frame.containerSearch.SearchResultList

	self.needToUpdate = false
	self.lastUpdated = debugprofilestop()

	if Appraiser.MainFrame.hideTooltip then
		GameTooltip:Hide()
		Appraiser.MainFrame.hideTooltip = false
	end

	local rowoff=0

	table.wipe(self.FlatSellItems)
	self.SellItems = self.SellItems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	-- Initialise
	if self.ActiveTab == "Inventory" then
		
		Appraiser:GetInventoryItems()

		-- Auctions are added when item in inventory list is clicked
		self.InventoryAuctions = self.InventoryAuctions or {}

		for ii,invItem in ipairs(self.InventoryItems) do
			if invItem.count <= 0 or ZGV.db.char.AThiddenitems[invItem.itemid] then 
				table.remove(self.InventoryItems,ii)
			else
				Appraiser:UpdateItemInInventory(invItem)
			end
		end
	end
	if self.ActiveTab == "Buy" then
		-- Adding items from guide moved to guide step entry

		-- Remove items that were bought out
		for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
			if ZGV.db.char.GGbuyitems[indexBuy].count <= 0 then
				table.remove(ZGV.db.char.GGbuyitems,indexBuy)
			end
		end
		for indexGuide,v in pairs(self.GuideBuyItems) do
			if self.GuideBuyItems[indexGuide].count <= 0 then
				table.remove(self.GuideBuyItems,indexGuide)
			end
		end
		for indexManual,v in pairs(self.ManualBuyItems) do
			if self.ManualBuyItems[indexManual].count and self.ManualBuyItems[indexManual].count <= 0 then
				table.remove(self.ManualBuyItems,indexManual)
			end
		end
		
		self.ShoppingAuctions = self.ShoppingAuctions or {}

		-- Merge into single table, maintaining order in which items were added
		self.ShoppingItems = {}
		local indexMerged = 1
		for indexBuy = 1,#ZGV.db.char.GGbuyitems do
			self.ShoppingItems[indexMerged] = ZGV.db.char.GGbuyitems[indexBuy]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #ZGV.db.char.GGbuyitems>0 and (#self.ManualBuyItems>0 or #self.GuideBuyItems>0) then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for indexGuide,v in pairs(self.GuideBuyItems) do
			self.ShoppingItems[indexMerged] = self.GuideBuyItems[indexGuide]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #self.ManualBuyItems>0 and #self.GuideBuyItems>0 then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for itemlink,itemdata in pairs(self.ManualBuyItems) do
			self.ShoppingItems[indexMerged] = itemdata
			local unit_price = ZGV.Gold.Scan:GetPrice(itemdata.itemid)
			local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemdata.itemid,unit_price)
			itemdata.statusId = priceStatus.statusId
			itemdata.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
			itemdata.statusIcon = priceStatus.buyicon or priceStatus.icon -- coords
			itemdata.isStagnant = priceStatus.stagnant
			itemdata.statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor
			indexMerged = indexMerged + 1
		end

		self.ShoppingAddAuctions = self.ShoppingAddAuctions or {}
	end

	-- Sort
	if self.ActiveTab == "Inventory" then
		if not Appraiser.SellingInProgress then 
			sort(self.InventoryItems,Appraiser.sort_inventory)
		end
		sort(self.InventoryAuctions,Appraiser.sort_inventoryAuctions)
		Appraiser:RefreshSellingItem()
	elseif self.ActiveTab == "Buy" then
		sort(self.ShoppingAuctions,Appraiser.sort_shoppingAuctions)
		sort(self.ShoppingAddAuctions,Appraiser.sort_shoppingAddAuctions)
	end

	-- Display
	if self.ActiveTab == "Inventory" then
		local IL_RowNum=0
		local IA_RowNum=0

		local INVENTORY_ROW_COUNT = InventoryList:CountRows()
		local INVENTORY_AUCTION_ROW_COUNT = InventoryAuctionList:CountRows()

		Appraiser.InventoryOffset = max(0,min(Appraiser.InventoryOffset,#self.InventoryItems-INVENTORY_ROW_COUNT))
		IL_RowOff=Appraiser.InventoryOffset
		for ii,invItem in ipairs(self.InventoryItems) do 
			IL_RowNum = ii-IL_RowOff
			if IL_RowNum>0 and IL_RowNum<INVENTORY_ROW_COUNT+1 then 
				local row = InventoryList.rows[IL_RowNum]
				row.icon:SetTexture(invItem.icon)
				color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
				row.name:SetText(invItem.count.." "..color..(invItem.displayName or invItem.name or "..."))
				row.status:SetTexCoord(unpack(invItem.statusIcon))
				row.status:SetVertexColor(unpack(invItem.statusColor))

				if invItem.count > 0 then
					if ZGV.db.profile.aucmode == "unit" then
						row.price:SetText(ZGV.GetMoneyString(invItem.price/invItem.count or 0))
					else
						row.price:SetText(ZGV.GetMoneyString(invItem.price or 0))
					end
				end
				if invItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = invItem
				row:Show()
			end
		end
		InventoryList.scrollbar:TotalValue(#self.InventoryItems)
		InventoryList.scrollbar:SetValue(IL_RowOff)

		Appraiser.InventoryAuctionOffset = max(0,min(Appraiser.InventoryAuctionOffset,#self.InventoryAuctions-INVENTORY_AUCTION_ROW_COUNT))
		IA_RowOff=Appraiser.InventoryAuctionOffset
		for ii,aucItem in ipairs(self.InventoryAuctions) do 
			IA_RowNum = ii-IA_RowOff
			if IA_RowNum>0 and IA_RowNum<INVENTORY_AUCTION_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = InventoryAuctionList.rows[IA_RowNum]
				color = ZGV.ArrayToStringColor(aucItem.stack_price > 0 and ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).sellcolor or ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).stagcolor)
				unitcolor,unitcolormode = (ZGV.db.profile.aucmode == "stack" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "stack" and 5 -- mode for GetMoneyString
				stackcolor,stackcolormode = (ZGV.db.profile.aucmode == "unit" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "unit" and 5 -- mode for GetMoneyString
				own = (aucItem.own_auction==1 and "your ") or ""
				row.icon:SetTexture(aucItem.icon)
				row.name:SetText(own..color..aucItem.count.." stacks of "..aucItem.stack_size)
				row.sprice:SetText(stackcolor..(aucItem.stack_price > 0 and ZGV.GetMoneyString(aucItem.stack_price,stackcolormode) or "no buyout"))
				row.uprice:SetText(unitcolor..(aucItem.unit_price > 0 and ZGV.GetMoneyString(aucItem.unit_price,unitcolormode) or "no buyout"))
				if aucItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = aucItem
				row:Show()
			end
		end

		InventoryAuctionList.scrollbar:TotalValue(#self.InventoryAuctions)
		InventoryAuctionList.scrollbar:SetValue(IA_RowOff)
	
		for r=IL_RowNum+1,INVENTORY_ROW_COUNT do InventoryList.rows[r]:Hide() InventoryList.rows[r].item=nil end
		for r=IA_RowNum+1,INVENTORY_AUCTION_ROW_COUNT do InventoryAuctionList.rows[r]:Hide() InventoryAuctionList.rows[r].item=nil end
	
	elseif self.ActiveTab == "Buy" then
		local SL_RowNum=0
		local SA_RowNum=0
		local SR_RowNum=0

		local SHOPPING_ROW_COUNT = ShoppingList:CountRows()
		local SHOPPING_AUCTION_ROW_COUNT = ShoppingAuctionList:CountRows()
		local SHOPPING_SEARCH_ROW_COUNT = SearchResultList:CountRows()

		--- Shopping section ---------------------------------------------------------------------------------
		Appraiser.ShoppingOffset = max(0,min(Appraiser.ShoppingOffset,#self.ShoppingItems-SHOPPING_ROW_COUNT))
		IL_RowOff=Appraiser.ShoppingOffset
		for ii,invItem in ipairs(self.ShoppingItems) do 
			SL_RowNum = ii-IL_RowOff
			if SL_RowNum>0 and SL_RowNum<SHOPPING_ROW_COUNT+1 then 
				local row = ShoppingList.rows[SL_RowNum]
				if invItem=="separator" then
					row.icon:SetTexture()
					row.name:SetText()
					row.price:SetText()
					row.tooltip = nil
					row:SetNormalBackdropColor(0,0,0,0)
					row:SetBackdropBorderColor(0,0,0,0)
					row.back:SetTexture(ZGV.DIR.."\\Skins\\separator")
					row.status:Hide()
					--row.remove:Hide()
				else
					row.back:SetTexture()
					row.status:Show()
					--row.remove:Show()

					row.icon:SetTexture(invItem.icon)
					color = ""
					if invItem.quality then
						local _,_,_, hex = GetItemQualityColor(invItem.quality);
						color="|c"..hex
					end
					local pricetext,pricealpha,tooltip = Appraiser:GetShoppingItemStatus(invItem)
					row.price:SetText(pricetext)
					row.price:SetAlpha(pricealpha)
					row.tooltip = tooltip
					
					row.name:SetText((invItem.count or "").." "..color..(invItem.displayName or invItem.name or "..."))
					row.status:SetTexCoord(unpack(invItem.statusIcon))
					row.status:SetVertexColor(unpack(invItem.statusColor))

					if invItem.active then
						row:SetNormalBackdropColor(0.3,0.3,0.3,1)
					else
						row:SetNormalBackdropColor(0,0,0,0)
					end

					row.item = invItem
				end
				row:Show()
			end
		end
		ShoppingList.scrollbar:TotalValue(#self.ShoppingItems)
		ShoppingList.scrollbar:SetValue(IL_RowOff)

		Appraiser.ShoppingAuctionOffset = max(0,min(Appraiser.ShoppingAuctionOffset,#self.ShoppingAuctions-SHOPPING_AUCTION_ROW_COUNT))
		IA_RowOff=Appraiser.ShoppingAuctionOffset
		for ii,aucItem in ipairs(self.ShoppingAuctions) do 
			SA_RowNum = ii-IA_RowOff
			if SA_RowNum>0 and SA_RowNum<SHOPPING_AUCTION_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = ShoppingAuctionList.rows[SA_RowNum]
				color = ZGV.ArrayToStringColor(aucItem.stack_price > 0 and ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).buycolor or ZGVG:GetPriceStatus(aucItem.itemid,aucItem.unit_price).stagcolor)
				unitcolor,unitcolormode = (ZGV.db.profile.aucmode == "stack" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "stack" and 5
				stackcolor,stackcolormode = (ZGV.db.profile.aucmode == "unit" and "|cff7f7f7f") or "", ZGV.db.profile.aucmode == "unit" and 5
				own = (aucItem.own_auction==1 and "your ") or ""
				row.icon:SetTexture(aucItem.icon)
				row.name:SetText(own..color..aucItem.count.." stacks of "..aucItem.stack_size)
				row.sprice:SetText(stackcolor..(aucItem.stack_price > 0 and ZGV.GetMoneyString(aucItem.stack_price,stackcolormode) or "no buyout"))
				row.uprice:SetText(unitcolor..(aucItem.unit_price > 0 and ZGV.GetMoneyString(aucItem.unit_price,unitcolormode) or "no buyout"))
				if aucItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = aucItem
				row:Show()
			end
		end

		ShoppingAuctionList.scrollbar:TotalValue(#self.ShoppingAuctions)
		ShoppingAuctionList.scrollbar:SetValue(IA_RowOff)

	
		--- Search section ---------------------------------------------------------------------------------
		Appraiser.SearchResultsOffset = max(0,min(Appraiser.SearchResultsOffset,#self.ShoppingAddAuctions-SHOPPING_SEARCH_ROW_COUNT))
		SR_RowOff=Appraiser.SearchResultsOffset
		for ii,addItem in ipairs(self.ShoppingAddAuctions) do 
			SR_RowNum = ii-SR_RowOff
			if SR_RowNum>0 and SR_RowNum<SHOPPING_SEARCH_ROW_COUNT+1 then 
				local row, color, own, desc, unitcolor, stackcolor, unitcolormode, stackcolormode
				row = SearchResultList.rows[SR_RowNum]
				row.icon:SetTexture(addItem.icon)
				row.name:SetText(addItem.itemlink)
				if addItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = addItem
				row:Show()
			end
		end

		SearchResultList.scrollbar:TotalValue(#self.ShoppingAddAuctions)
		SearchResultList.scrollbar:SetValue(SR_RowOff)

		for r=SL_RowNum+1,SHOPPING_ROW_COUNT do ShoppingList.rows[r]:Hide() end
		for r=SA_RowNum+1,SHOPPING_AUCTION_ROW_COUNT do ShoppingAuctionList.rows[r]:Hide() end
		for r=SR_RowNum+1,SHOPPING_SEARCH_ROW_COUNT do SearchResultList.rows[r]:Hide() end
	end
end

function Appraiser:Scan()
	if ZGVG.Scan.state~="SS_IDLE" then return end
	Appraiser.SellingInProgress = false
	Appraiser.InventoryItems = Appraiser.InventoryItems or {}

	if ZGVG.Scan:CanScanFast() then
		if self.ActiveTab == "Inventory" then
			self.MainFrame.progressFrame:Show()
		end
		ZGVG.Scan:ScanFast()
		self.MainFrame.progressFrame:SetPercent(20)
		Appraiser:UpdateScannedList()
		Appraiser.DoneDeals = {}
	else 
		Appraiser:GetInventoryItems()
		Appraiser:StartNewItemScan()
	end
	self:Update()
end

function Appraiser:StartManualScan()
	if ZGVG.Scan.state~="SS_IDLE" then return end

	Appraiser.SellingInProgress = false

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
			local options = nil
			if item then
				Appraiser.pagenum = 0
				Appraiser.manualBuyScanningTotal = Appraiser.manualBuyScanningTotal - #Appraiser.ScanBuyItems
				Appraiser.manualBuyScanning = item.name
				Appraiser.ActiveSearch = item.itemid
				Appraiser.ActiveSearchName = item.name
				if item.sourcemode == 1 or item.sourcemode == 4 then options="forcePartial" end -- equipment and pets
				ZGVG.Scan:ScanByName(item.name,item.itemid,options)
				item.updated = time()
			else
				Appraiser.manualBuyScanning = false
				Appraiser.manualBuyScanningTotal = false
				Appraiser.manualBuyScanningDone = false
				Appraiser.ActiveSearch = nil
				Appraiser.ActiveSearchName = nil
			end
		end
		self:Update()
	end
end

function Appraiser:AbortManualScan()
	Appraiser.ScanBuyItems = {}
	Appraiser.manualBuyScanning = false
	Appraiser.ScanItems = {}
	Appraiser.manualScanning = false

	Appraiser.MainFrame.progressFrame:SetPercent(0)
	Appraiser.MainFrame.progressFrame:Hide()
	Appraiser:Update()
end

function Appraiser:UpdateScannedList()
	self.ScannedItems = {}
	for i,v in pairs(self.InventoryItems) do
		self.ScannedItems[v.itemid] = v.itemid
	end
end

function Appraiser:SaveScanTable()
	local itemid = Appraiser.ActiveSearch

	if not itemid then return end

	Appraiser.RawDataTable[itemid] = {}
	for i,rawline in pairs(ZGV.Gold.Scan.rawdata) do
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)
		Appraiser.RawDataTable[itemid][i] = {count,buyoutPrice,buyoutPrice/count,is_own,link}
	end

	Appraiser.page = 0

	if #Appraiser.RawDataTable[itemid]>50 then
		ZGV:Debug("More than 50 auctions, moving to page 1")
		Appraiser.GoToFirstPage = true
	else
		ZGV:Debug("Less than 50 auctions, we are here")
		Appraiser.ActiveSearch = nil
		Appraiser.ActiveSearchName = nil
	end
	Appraiser:Update()
end

function Appraiser:SearchForItem(item)
	local options = nil
	if ZGVG.Scan:CanScanByName() then
		Appraiser.PendingScanTimer = nil
		Appraiser.ScanIsRunning = true
		BrowseName:SetText(item.name)
		if item.sourcemode == 1 or item.sourcemode == 4 then options="forcePartial" end -- equipment and pets
		local result = ZGVG.Scan:ScanByName(item.name,item.itemid,options)
		item.updated = time()
		return result
	else
		item.updated = time()
		if Appraiser.PendingScanTimer then ZGV:CancelTimer(Appraiser.PendingScanTimer) end
		Appraiser.PendingScanTimer = ZGV:ScheduleTimer(function() 
			Appraiser:SearchForItem(item,options)
		end, 0.5)
		return "delay"
	end
end

local function Appraiser_SetTooltipData(tooltip, itemLink)
	local name,link=GameTooltip:GetItem()
	itemLink = itemLink or link
	if not itemLink then return end -- blizz is no longer guaranteed to provide itemlinks on time

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
		local _
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

		local price,_,empty = ZGVG:GetSellPrice(itemId)
		local price_g = (price>0 and ZGV.GetMoneyString(price,3)) or "n/a"
		local minprice = ZGVG.Scan:GetPrice(itemId) or 0
		local minprice_g = (minprice>0 and ZGV.GetMoneyString(minprice,3)) or "n/a"

		local priceStatus = ZGVG:GetPriceStatus(itemId,empty and 0 or price)
		local statusName = priceStatus.statusName
		local statusText = priceStatus.name.." "..priceStatus.sellsuggestion
		local statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
		local statusColor = priceStatus.sellcolor -- array
		
		tooltip:AddDoubleLine("  |cffeeeeeeCurrent lowest price:|r ",minprice_g)

		if ZGV.DEV then
			tooltip:AddDoubleLine("  STATUSNAME:",statusName)
			tooltip:AddDoubleLine("  ITEMID:",itemId)
			tooltip:AddDoubleLine("  STAG:",(priceStatus.stagnant and "yes" or "no"))
		end

		tooltip:AddDoubleLine("  |cffeeeeeeSuggested sell price:|r ",price_g)

		if tooltip_detail==2 then -- dynamic
			
			local undercut = ZGV.db.profile.appraiser_undercut
			if undercut>10000 then undercut = ZGV.GetMoneyString(undercut-10000)  else undercut=undercut.."%" end
			local overpricemargin_perc = floor(ZGVG.OVERPRICE*100-100).."%"
			local gouged_perc = trends_known and floor((minprice-trend.p_hi)/trend.p_hi - 1) * 100 .. "%"

			if statusName=="PRICESTATUS_EMPTY" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouging by:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_GOUGED" or statusName=="PRICESTATUS_UP" or statusName=="PRICESTATUS_RISING" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouge setting:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_DOWN" or statusName=="PRICESTATUS_FALLING" or statusName=="PRICESTATUS_DUMPED" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusName=="PRICESTATUS_NORMAL" then
				if minprice<trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)  end
				if minprice>=trend.p_lo and minprice<=trend.p_hi then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)  end
				if minprice>trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)  end
				tooltip:AddDoubleLine("    |cffeeeeeeUndercut setting:|r",undercut)
			elseif statusName=="PRICESTATUS_NODATA" then
				tooltip:AddDoubleLine("    |cffeeeeeeGlobal median:|r ",globaltrend and ZGV.GetMoneyString(globaltrend.p_md) or "n/a")
			end
		end

		if tooltip_detail==3 then -- full
			if trends_known then
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical high:|r ",p_hi)
			end
			if globaltrend then
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal low:|r ",ZGV.GetMoneyString(globaltrend.p_lo))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal median:|r ",ZGV.GetMoneyString(globaltrend.p_md))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal high:|r ",ZGV.GetMoneyString(globaltrend.p_hi))
			end
		end

		tooltip:AddDoubleLine("  |cffeeeeeeDemand (est. sold):|r ",trends_known and demand or "n/a")

		tooltip:AddDoubleLine("  |cffeeeeeeStatus:|r ",ZGV.ArrayToStringColor(statusColor)..statusText)

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

function Appraiser.EventHandler(self, event, ...)
	args = {...}
	if not ZGV.db.profile.auction_enable then return end
	if event=="AUCTION_HOUSE_SHOW" then
		AuctionFrameTab_OnClick(AuctionFrameTab3)
		AuctionFrameTab_OnClick(AuctionFrameTab1)
		Appraiser.InventoryAuctions = nil
		Appraiser:ShowWindow()
		Appraiser.AttemptingToBuyout = false
		Appraiser:GetInventoryItems("clearcache")
		Appraiser:WipeSellHistoricalData()
		Appraiser:WipeSellPricingData()
		Appraiser.ActiveSearch = nil
		Appraiser.ActiveSearchName = nil
		Appraiser.ActiveSellingItem = nil
		Appraiser.ActiveShoppingItem = nil
		Appraiser.SellingInProgress  = false
		Appraiser.InventoryOffset = 0
		Appraiser.LastBoughtItemData = nil
		Appraiser.LastSoldItem = nil
		Appraiser.SelectedBuyAuction = nil
		Appraiser.Autoscanned = false
	end

	if not Appraiser.MainFrame or not Appraiser.MainFrame:IsVisible() then return end

	if event=="AUCTION_HOUSE_CLOSED" then
		Appraiser:HideWindow()
		if ZGV.Gold.HelpPopup then
			ZGV.Gold.HelpPopup:Hide()
		end
	elseif event=="AUCTION_ITEM_LIST_UPDATE" then
		Appraiser.WaitingForAuctionData = nil
	elseif event=="BAG_UPDATE_DELAYED" then
		Appraiser:GetInventoryItems("clearcache")
		ZGV:ScheduleTimer(function() Appraiser:SelectShoppingRow() end,0)
	elseif event=="AUCTION_OWNED_LIST_UPDATE" then
		--Appraiser.InventoryAuctions = {}
		--Appraiser.ActiveSellingItem = nil
		--Appraiser:WipeSellHistoricalData()
		--Appraiser:WipeSellPricingData()
		Appraiser:GetInventoryItems("clearcache")
		ZGV:ScheduleTimer(function() Appraiser:SelectShoppingRow() end,0)
	end

	Appraiser.needToUpdate = true

	if Appraiser.MainFrame then
		if event=="SS_STATE_CHANGE" then
			--if ...~="SS_IDLE" and Appraiser.ActiveTab == "Inventory" then
			if ...~="SS_IDLE"  and ...~="SS_BUYING" then
				Appraiser.MainFrame.progressFrame:Show()
				if Appraiser.manualScanningDone then
					Appraiser.MainFrame.progressFrame:SetPercent(Appraiser.manualScanningDone*100/Appraiser.manualScanningTotal)
				elseif Appraiser.manualBuyScanningDone then
					Appraiser.MainFrame.progressFrame:SetPercent(Appraiser.manualBuyScanningDone*100/Appraiser.manualBuyScanningTotal)
				else
					local total_pages = math.ceil((ZGV.Gold.Scan.total_count or 0)/50)
					if total_pages and total_pages>0 then
						local current_page = ZGV.Gold.Scan.scan_page or 0
						Appraiser.MainFrame.progressFrame:SetPercent(current_page*100/total_pages)
					end
				end

			end
		end

		if event=="GOLD_SCANNED" then
			if not (Appraiser.ScanItems and next(Appraiser.ScanItems)) then
				Appraiser.MainFrame.progressFrame:Hide()
			end
			Appraiser.ScanIsRunning = false
			Appraiser:SaveScanTable()

			if Appraiser.ActiveSellingItem then
				Appraiser:SelectShoppingRow()
				Appraiser:GetInventoryAuctions()
				Appraiser:SetSellData()
			end

			if Appraiser.ActiveShoppingItem then
				Appraiser:GetShoppingAuctions()
				Appraiser:FindNextBuyout(Appraiser.ActiveShoppingItem)
				Appraiser:SetBuyoutData()
			end

			if Appraiser.ActiveShoppingAddItem then
				Appraiser:GetScannedItems()
				ZGV.Gold.Scan.record_unique_links = false
			end
		end


		if event=="CHAT_MSG_SYSTEM" then
			if Appraiser.AttemptingToBuyout and Appraiser.ActiveShoppingItem then
				local name = Appraiser.ActiveShoppingItem.expectedName
				if args[1] == ERR_AUCTION_WON_S:format(name) then
					Appraiser.AttemptingToBuyout = false

					local itemid = Appraiser.ActiveShoppingItem.itemid
					local buyitem = Appraiser.ActiveShoppingItem
					local buyindex = Appraiser.ActiveShoppingItem.buyoutindex
					local buyauction = table.remove(Appraiser.RawDataTable[buyitem.itemid],buyindex)

					if buyitem.count then
						buyitem.count = buyitem.count - buyauction[1]
					else
						buyitem.bought = (buyitem.bought or 0) + buyauction[1]
					end

					if buyitem.count and buyitem.count <= 0 then
						ZGV.Gold.Appraiser.DoneDeals[itemid]=true -- hide this item from gold guide, until next fullscan is completed
						Appraiser:ClearShoppingItemDetails()
						Appraiser.ShoppingAuctions = {}
						Appraiser.Buy_Frame.activeName:SetText("No item selected")
						Appraiser.Buy_Frame.activeIcon:SetTexture()
						--Appraiser:SelectBuyoutRow()
						ZGV:ScheduleTimer(function() Appraiser:SelectBuyoutRow() end,0)
					else
						Appraiser:FindNextBuyout(Appraiser.ActiveShoppingItem)
						Appraiser:GetShoppingAuctions()
						Appraiser:SetBuyoutData()
					end
				end
			end
		end
		if event=="UI_ERROR_MESSAGE" then
			if ... == ERR_ITEM_NOT_FOUND or
				... == ERR_NOT_ENOUGH_MONEY or
				... == ERR_AUCTION_BID_OWN or
				... == ERR_AUCTION_HIGHER_BID or
				... == ERR_ITEM_MAX_COUNT then
					Appraiser:GetShoppingAuctions()
					Appraiser:SetBuyoutData()
			end
		end
	end
end

local function UpdateHandler(self, event)
	if not Appraiser.MainFrame then return end
	if not Appraiser.MainFrame:IsVisible() then return end

	Appraiser.MainFrame:SetFrameLevel(AuctionFrame:GetFrameLevel()+1)

	if Appraiser.manualScanning or Appraiser.manualBuyScanning then 
		Appraiser:ScanNextItem() 
	end

	local now = debugprofilestop()
	local refreshRate = (Appraiser.SellingInProgress and 100 or 5000)
	if Appraiser.needToUpdate or now-Appraiser.lastUpdated>refreshRate then
		Appraiser:Update()
	end
	
	Appraiser:UpdateTimeStamp()

	if Appraiser.Inventory_Frame:IsVisible() then
		if Appraiser.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()~=Appraiser.LastAuctionTime then
			Appraiser:UpdateAuctionCost()
		end
	end

	local buttonScan = Appraiser.Inventory_Frame.InventoryScanButton
	local buttonAppr = Appraiser.Inventory_Frame.InventoryAppraiseButton
	local buttonBuy = Appraiser.Buy_Frame.postbutton
	local buttonBuyApp = Appraiser.Buy_Frame.ShoppingAppraiseButton

	local buttonAbortScan = Appraiser.Inventory_Frame.InventoryScanAbortButton
	local buttonAbortAppr = Appraiser.Inventory_Frame.InventoryAppraiseAbortButton
	local buttonAbortBuyApp = Appraiser.Buy_Frame.ShoppingAppraiseAbortButton

	--local buttonReAp = Appraiser.AHUpdateButton

	local canscan,delay = ZGVG.Scan:CanScanByName()
	if canscan and not Appraiser.manualScanning and not Appraiser.manualBuyScanning then
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

	if Appraiser.DelayedFindNextBuyout then 
	-- we tried to switch pages when looking for cheapest buyout, but could not. 
	-- waiting for scan to be possible to retry
		if canscan then
			Appraiser:FindNextBuyout(Appraiser.DelayedFindNextBuyout)
		end
	end

	if Appraiser.manualScanning or Appraiser.manualBuyScanning then
		buttonScan:Hide()
		buttonAppr:Hide()
		buttonBuyApp:Hide()

		buttonAbortScan:Show()
		buttonAbortAppr:Show()
		buttonAbortBuyApp:Show()
	else
		buttonScan:Show()
		buttonAppr:Show()
		buttonBuyApp:Show()

		buttonAbortScan:Hide()
		buttonAbortAppr:Hide()
		buttonAbortBuyApp:Hide()
	end


	local canscan,delay = ZGVG.Scan:CanScanByName()
	if Appraiser.GoToFirstPage and not Appraiser.manualBuyScanning then
	-- we ended our initial scan on page that was not the first
	-- waiting for scan to be possible to go to first page
		if canscan then
			QueryAuctionItems(Appraiser.ActiveSearchName, nil, nil, Appraiser.page or 0, 0, 0, false, true)
			ZGV.Gold.Scan:UpdateDefaultUI(Appraiser.ActiveSearchName,Appraiser.page)
			Appraiser.ActiveSearch = nil
			Appraiser.ActiveSearchName = nil
			Appraiser.GoToFirstPage = false
		end
	end

	--[[
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
	--]]

	local canscan2,delay2 = ZGVG.Scan:CanScanFast()
	if canscan2 and ZGV.Gold.Scan.state=="SS_IDLE" and not Appraiser.manualScanning then
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

	if Appraiser.ActiveShoppingItem and Appraiser.ActiveShoppingItem.updated and time()-Appraiser.ActiveShoppingItem.updated>OUTDATED_TIME then
		Appraiser.ActiveShoppingItem = nil
	end


	if not Appraiser.ActiveShoppingItem then
		buttonBuy:SetText("Buy")
		buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
		buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
		buttonBuy.soft_disabled=true
		buttonBuy.tooltip = ("|cffff0000No item selected for buying out.")
	else
		local itemid = Appraiser.ActiveShoppingItem.itemid
		if Appraiser.AttemptingToBuyout then
			local itemBuy = Appraiser.RawDataTable[itemid][Appraiser.ActiveShoppingItem.buyoutindex]
			buttonBuy:SetText("Buying")
			buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
			buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = "Buying "..itemBuy[1].." "..Appraiser.ActiveShoppingItem.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
		elseif not Appraiser.ActiveShoppingItem.buyoutindex and not Appraiser.WaitingForAuctionData then
			buttonBuy:SetText("Buy")
			buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
			buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = ("|cffff0000No recomended buyouts for selected item.")
		elseif not Appraiser.RawDataTable[itemid] or Appraiser.WaitingForAuctionData then
			buttonBuy:SetText("Buy")
			buttonBuy:SetNormalBackdropColor(0.43,0.43,0.43,1)
			buttonBuy:SetHighlightBackdropColor(0.53,0.53,0.53,1)
			buttonBuy.soft_disabled=true
			buttonBuy.tooltip = ("|cffff0000Updating auction data for selected item.")
		else
			local itemBuy = Appraiser.RawDataTable[itemid][Appraiser.ActiveShoppingItem.buyoutindex]
			if itemBuy then
				buttonBuy:SetText("Buy")
				buttonBuy:SetNormalBackdropColor(unpack(ZGV.UI.SkinData("ButtonColor2")))
				buttonBuy:SetHighlightBackdropColor(unpack(ZGV.UI.SkinData("ButtonHighlightColor2")))
				buttonBuy.soft_disabled=false
				buttonBuy.tooltip = "Buy "..itemBuy[1].." "..Appraiser.ActiveShoppingItem.name.." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3).." ("..ZGV.GetMoneyString(tonumber(itemBuy[3]),3).." ea)"
			end
		end
	end

	Appraiser.Buy_Frame.playergold:SetText("Player gold: "..ZGV.GetMoneyString(GetMoney()))
end

function Appraiser:CreateTrackerFrame()
	-- Separate frame for events because Appraiser's own frame doesn't exist until it's first shown.
	Appraiser.Events = CreateFrame("Frame")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_SHOW")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_CLOSED")
	Appraiser.Events:RegisterEvent("AUCTION_ITEM_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("AUCTION_OWNED_LIST_UPDATE")
	Appraiser.Events:RegisterEvent("NEW_AUCTION_UPDATE")
	Appraiser.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Appraiser.Events:RegisterEvent("CHAT_MSG_SYSTEM")
	Appraiser.Events:RegisterEvent("UI_ERROR_MESSAGE")
	ZGV:AddMessage("GOLD_SCANNED",Appraiser.EventHandler)
	ZGV:AddMessage("SS_STATE_CHANGE",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnEvent",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnUpdate",UpdateHandler)

	hooksecurefunc (GameTooltip, "SetMerchantItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBuybackItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBagItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetAuctionItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootRollItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInventoryItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetGuildBankItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradePlayerItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradeTargetItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestLogItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInboxItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetItemByID",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetAuctionSellItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (ItemRefTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetSendMailItem",		function(tip) Appraiser_SetTooltipData(tip) end)


	-- LEGION TEMP FIX, SetTradeSkillItem no longer exists
	-- possible replacements: SetRecipeResultItem / SetRecipeReagentItem

	GameTooltip:HookScript("OnTooltipCleared", Appraiser_ClearTooltipData)

	hooksecurefunc("ChatEdit_InsertLink", function(...) return Appraiser:InsertSearchLink(...) end)
end

tinsert(ZGV.startups,{"Auctiontools core",function(self)
	Appraiser:CreateTrackerFrame()
	Appraiser.ScannedItems = {}
	ZGV.Gold.Appraiser.DoneDeals = {}
	ZGV.db.char.CurrentDeals = ZGV.db.char.CurrentDeals or {}
	ZGV.db.char.AThiddenitems = ZGV.db.char.AThiddenitems or {}
	ZGV.db.char.ATsearchitems = ZGV.db.char.ATsearchitems or {}
	Appraiser.GuideBuyItems = Appraiser.GuideBuyItems or {}
	Appraiser.ManualBuyItems = ZGV.db.char.ATsearchitems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}
	Appraiser.Loaded = true	
	ZGV.db.profile.aucmode = ZGV.db.profile.aucmode or "unit"
end})
