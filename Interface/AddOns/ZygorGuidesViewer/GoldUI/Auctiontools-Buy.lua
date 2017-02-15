-- Scan.record_unique_links
-- Scan.FoundInScan[self.queried_by_name][link]

if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Appraiser = ZGV.Gold.Appraiser 

local OUTDATED_TIME = 60*3

Appraiser.ShoppingModes = {
	GOLD = 1,
	MANUAL = 2,
	GUIDE = 3,
	QUICK = 4,
	}


function Appraiser.sort_buy(a,b)
	if not a or not b then return false end
	if not a.name or not b.name then return false end
	a,b=a.name,b.name
	return a<b
end

function Appraiser.sort_shoppingAuctions(a,b)
	--if not a.unit_price or not b.unit_price then return false end

	if a.unit_price == b.unit_price then
		if a.stack_size == b.stack_size then
			return a.itemlink < b.itemlink
		else
			return a.stack_size < b.stack_size
		end
	else
		return a.unit_price < b.unit_price
	end
end

function Appraiser.sort_shoppingAddAuctions(a,b)
	if not a.name or not b.name then return false end

	return a.name < b.name

	--[[
	if a.name == b.name then
		if a.quality == b.quality then
		
		else
			return (a.quality or 0) > (b.quality or 0)
		end
	else
		return a.name < b.name
	end
	--]]
end

function Appraiser:GetShoppingAuctions()
	if Appraiser.ActiveShoppingItem and Appraiser.RawDataTable[Appraiser.ActiveShoppingItem.itemid] then
		Appraiser.ShoppingAuctions = {}
		for i,v in pairs(Appraiser.RawDataTable[Appraiser.ActiveShoppingItem.itemid]) do
			if v[5]~="" then Appraiser:AddEntryToShoppingAuctions(i,v) end
		end
		Appraiser:Update()
	end	
end

function Appraiser:AddEntryToShoppingAuctions(index,data)
	local stack_size = tonumber(data[1])
	local stack_price = tonumber(data[2])
	local unit_price = tonumber(data[3])
	local own_auction = tonumber(data[4])
	local itemlink = data[5]
	local icon = select(10,ZGV:GetItemInfo(itemlink))

	local IA = Appraiser.ShoppingAuctions

	local exists = false

	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	if BattlePetId then
		_, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
		local petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
		if result=="OK" then 
			breedid,breedname = ZGV.PetBattle:GetPetBreedByLink(itemlink)
			BattlePetName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"
		end
	end

	for i,v in pairs(IA) do
		if v.unit_price == unit_price and v.stack_size == stack_size and v.own_auction == own_auction and v.itemlink == itemlink then
			IA[i].count = IA[i].count + 1
			exists = true
			break
		end
	end
	if not exists then
		local newitem = {
			itemid=Appraiser.ActiveShoppingItem.itemid,
			count=1, -- amount of auctions found
			stack_size=stack_size,
			stack_price=stack_price,
			unit_price=unit_price,
			own_auction=own_auction,
			itemlink=itemlink,
			icon=icon,
			BattlePetName=BattlePetName,
			item=Appraiser.ActiveShoppingItem -- only shown when ASI is active, so link to ASI
			}
		table.insert(IA,newitem)
	end
end

function Appraiser:AddGuideItemsToBuy()
	self.GuideBuyItems = {}

	for i=1,#ZGV.CurrentStep.goals do
		local goal = ZGV.CurrentStep.goals[i]
		if goal.action == "buy" and goal.status == "incomplete" then
			local itemid = goal.targetid
			local count = goal.count - GetItemCount(itemid)

			Appraiser:AddItemToBuy(itemid,count,Appraiser.ShoppingModes.GUIDE,nil,nil,nil)
		end
	end
	self.needToUpdate = true
end

function Appraiser:AddItemToBuy(itemid,count,source,priceMax,itemlink,sourcemode)
	if not itemid and not itemlink then return end
	if ZGV.db.char.CurrentDeals[itemid] and source==Appraiser.ShoppingModes.GOLD then return end

	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, icon, vendorPrice = ZGV:GetItemInfo(itemid)

	if itemid>1000000000 then 
		petItem_id = tonumber(string.sub(tostring(itemid),2,5))
		quality = tonumber(string.sub(tostring(itemid),10,11))
		name, icon = C_PetJournal.GetPetInfoBySpeciesID(petItem_id)
	end

	local unit_price = ZGV.Gold.Scan:GetPrice(itemid)

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor
	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,unit_price)
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
	statusIcon = priceStatus.buyicon or priceStatus.icon -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.buycolor

	local existing_count = 0
	local existing_index

	local targetTable

	if source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
		ZGV.db.char.CurrentDeals[itemid] = true
	elseif source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	for index,item in pairs(targetTable) do
		if item.itemid == itemid then
			existing_index = index
			existing_count = item.count
		end
	end

	if existing_index then
		if source==Appraiser.ShoppingModes.GOLD then -- if from gold guide, set to new count
			targetTable[existing_index].count = count
		else -- otherwise add more to existing stuff
			if targetTable[existing_index].count and count then
				targetTable[existing_index].count = targetTable[existing_index].count+count
			end
		end
	else
		local newitem = {
			itemid=itemid or petItem_id,
			name=name,
			displayName=displayName,
			link=link,
			icon=icon,
			count=count, 
			price=unit_price,
			source=source, --guide/gold/manual
			priceMax=priceMax, -- function parameter
			statusText=statusText,
			statusIcon=statusIcon,
			statusId=statusId,
			statusColor=statusColor,
			isStagnant=isStagnant,
			quality=quality,
			sourcemode=sourcemode
		}
		table.insert(targetTable,newitem)
	end

	if name then
		ZGV.NotificationCenter.AddButton(
		    "",
		   "Shopping list",
		    (count or "").." "..name..((count and count>1) and "s" or ""),
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
	end

	-- deactivate current row and remove item from buyout clipboard
	-- prevents wrong row from being highlighted

	if Appraiser.MainFrame then
		for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
			r.active = false
		end
	end
	
	Appraiser.ActiveShoppingItem = nil
	self.needToUpdate = true
	ZGV.Goldguide:Update()
end

function Appraiser:IsDeal(item,price)
	if price==0 then return false end

	local trendprice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[item].p_md
	if not trendprice then
		return false
	end

	if price and price ~= "__orderedIndex" and price<trendprice then
		return true
	else
		return false
	end
end

function Appraiser:GetShoppingItemStatus(invItem)
	local count,price,each,status = Appraiser:FindNextBuyout(invItem)
		
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
		tooltip = "Buy "..count.." for "..ZGV.GetMoneyString(price,3)
		if tonumber(count)>1 then	tooltip = tooltip.." ("..ZGV.GetMoneyString(each,3).." ea)" end

	elseif status=="noresults" then
		text = "No results"
		alpha = 1
	elseif status=="nodeals" then
		text = "No deals"
		alpha = 1
		tooltip = "No deals were found for this item\nDeal threshold: "..ZGV.GetMoneyString(price,3).. " ea"
	end

	if not invItem.updated or (invItem.updated and time()-invItem.updated>OUTDATED_TIME) or status=="old" then
		alpha = 0.2
		tooltip = "Click to update price"
		text = (each>0 and ZGV.GetMoneyString(each,3,true).." ea" or text)
		if invItem.active and time()-invItem.updated>10 then
			invItem.active = false
			Appraiser.SelectedBuyAuction = nil
			Appraiser:WipeBuyoutData()
			Appraiser:WipeBuyoutHistoricalData()
			Appraiser.ShoppingAuctions = {}
			Appraiser.ActiveShoppingItem = nil
			Appraiser:ToggleSearchFrame(true)
		end
	end

	return text,alpha,tooltip
end

function Appraiser:ActivateBuyItem(item)
	-- do not switch items while any scan is running
	if ZGV.Gold.Scan.state~="SS_IDLE" then return end

	if Appraiser.ActiveSearch then return end
	if Appraiser.ActiveSearchName then return end
	if Appraiser.GoToFirstPage then return end

	Appraiser.SelectedBuyAuction = nil

	Appraiser:WipeBuyoutData()
	Appraiser:WipeBuyoutHistoricalData()
	Appraiser.ShoppingAuctions = {}

	currentIndex = 0
	for i,v in pairs(Appraiser.ShoppingItems) do if v~="separator" then 
		if v==item then currentIndex=i end
		v.active = false 
	end end

	if not Appraiser.ActiveShoppingItem or item and item.itemid ~= Appraiser.ActiveShoppingItem.itemid then
		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser.ActiveShoppingItem = item

		Appraiser.Buy_Frame.activeIcon:SetTexture(item.icon)
		Appraiser.Buy_Frame.activeName:SetText(item.name)
		Appraiser.Buy_Frame.auctionslabel:SetText("Auctions for: "..item.name)
		Appraiser.Buy_Frame.buyoutlabel:Show()

		item.active = true

		Appraiser.LastBoughtItem = item.link
		Appraiser.NextBuyingItem = nil
		if Appraiser.ShoppingItems[currentIndex+1] then
			if Appraiser.ShoppingItems[currentIndex+1] ~= "separator" then
				Appraiser.NextBuyingItem = Appraiser.ShoppingItems[currentIndex+1].link
			else
				Appraiser.NextBuyingItem = Appraiser.ShoppingItems[currentIndex+2].link
			end
		elseif Appraiser.ShoppingItems[1] then
			Appraiser.NextBuyingItem = Appraiser.ShoppingItems[1].link
		end


		Appraiser:SetBuyoutHistoricalData()
		Appraiser:SetBuyoutData()

		Appraiser:TryToSearchForItem(item)

		Appraiser:ToggleSearchFrame(false)
	else
		Appraiser.ActiveShoppingItem = nil
		Appraiser:ToggleSearchFrame(true)
	end
	Appraiser:Update()
end

function Appraiser:TryToSearchForItem(object)
	if Appraiser.TryToSearchForItemTimer then ZGV:CancelTimer(Appraiser.TryToSearchForItemTimer) end
	local result = Appraiser:SearchForItem(object)

	if result then return end

	Appraiser.TryToSearchForItemTimer = ZGV:ScheduleTimer(function() 
		Appraiser:TryToSearchForItem(object)
	end, 0.5)
end

function Appraiser:ExecuteBuyout()
	if Appraiser.Buy_Frame.postbutton.soft_disabled then return end

	local item = Appraiser.ActiveShoppingItem
	local itemid = item.itemid
	local buyoutindex = item.buyoutindex-(50*Appraiser.page)

	local expected = Appraiser.RawDataTable[itemid][item.buyoutindex]
	local aName,_,aStack,_,_,_,_,_,_,aBuyout,_,_,_,aOwner,_,_,aId  = GetAuctionItemInfo("list",buyoutindex)
	local genericName = ZGV:GetItemInfo(aId)

	if not aName then
		if not item.rescanned then
			-- first time this auction is not found, so it may have been pushed from outside of current
			-- page, so we requery only this page
			ZGV:Print("Expected auction not found, requerying")
			item.rescanned = true
			QueryAuctionItems(item.name, nil, nil, Appraiser.page, 0, 0, false, true)
			ZGV.Gold.Scan:UpdateDefaultUI(item.name,Appraiser.page)
		else
			-- we already did a quick rescan of current page, and item is still not here.
			-- so, do a full rescan
			ZGV:Print("Expected auction still not found, rescanning")
			Appraiser:SearchForItem(item)
			Appraiser.ActiveSearch = item.itemid
			Appraiser.ActiveSearchName = item.name
			Appraiser:Update()
			item.rescanned = nil
		end
	elseif (aName==item.name or (genericName and genericName~=aName and genericName==item.name)) and tonumber(expected[1])==tonumber(aStack) and tonumber(expected[2])==tonumber(aBuyout) and APPRAISER_PLAYER_NAME~=aOwner then
		--- yes, this is what we were hoping to find, buy it
		ZGV:Debug("Buying out auction")
		Appraiser.AttemptingToBuyout = true
		Appraiser.ActiveShoppingItem.expectedName = aName
		ZGV.Gold.Scan:SetState("SS_BUYING")
		PlaceAuctionBid("list", buyoutindex, aBuyout)
	else
		-- we found something, but it was not what we were expecting, do a full rescan
		ZGV:Print("Unexpected auction found, rescanning")
		Appraiser.AttemptingToBuyout = false
		Appraiser:SearchForItem(item)
		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser:Update()
	end
end

function Appraiser:SetBuyoutHistoricalData()
	if not Appraiser.ActiveShoppingItem then return end
	local itemid = Appraiser.ActiveShoppingItem.itemid
	local countForSellCalc = 1

	local selling_price, unit_price, empty = ZGVG:GetSellPrice(itemid,countForSellCalc)
	local priceStatus = ZGVG:GetPriceStatus(itemid,empty and 0 or unit_price)
	local statusColor = ZGV.ArrayToStringColor(priceStatus.stagnant and priceStatus.stagcolor or priceStatus.buycolor)
	local statusText = priceStatus.name..(priceStatus.stagnant and ", item stagnant" or "")
	if priceStatus.stagnant then
		Appraiser.Buy_Frame.activeStatus:SetFont(FONT,11)
	else
		Appraiser.Buy_Frame.activeStatus:SetFont(FONT,12)
	end
	Appraiser.Buy_Frame.activeStatus:SetText(statusColor..statusText)

	
	if ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemid] then
		trend = ZGV.Gold.servertrends.items[itemid]
		histlow = ZGV.GetMoneyString(trend.p_lo*countForSellCalc,3) or "unknown"
		histmed = ZGV.GetMoneyString(trend.p_md*countForSellCalc,3) or "unknown"
		histhigh = ZGV.GetMoneyString(trend.p_hi*countForSellCalc,3) or "unknown"
		estval = ZGV.GetMoneyString(selling_price) or "unknown"
	else
		p_lo,p_md,p_hi,demand,sell = "unknown","unknown","unknown","unknown","unknown"
	end

	Appraiser.Buy_Frame.estval:SetText(estval)
	Appraiser.Buy_Frame.histhigh:SetText(histhigh)
	Appraiser.Buy_Frame.histlow:SetText(histlow)
	Appraiser.Buy_Frame.histmed:SetText(histmed)
end

function Appraiser:WipeBuyoutHistoricalData()
	Appraiser.Buy_Frame.estval:SetText("n\\a")
	Appraiser.Buy_Frame.histhigh:SetText("n\\a")
	Appraiser.Buy_Frame.histlow:SetText("n\\a")
	Appraiser.Buy_Frame.histmed:SetText("n\\a")

	Appraiser.Buy_Frame.activeStatus:SetText("")
	Appraiser.Buy_Frame.auctionslabel:SetText("")
	Appraiser.Buy_Frame.buyoutlabel:Hide()
	Appraiser.Buy_Frame.activeStatus:SetText("")

	for i,v in pairs(Appraiser.Buy_Frame.ShoppingAuctionList.rows) do if v.item then v.item.active = false end end
end

function Appraiser:SetBuyoutData() 
	if not Appraiser.ActiveShoppingItem then 
		Appraiser.Buy_Frame.nextbuyout:SetText("n\\a")
		return 
	end
	local itemid = Appraiser.ActiveShoppingItem.itemid
	local count = Appraiser.ActiveShoppingItem.count
	local priceMax = Appraiser.ActiveShoppingItem.priceMax
	--local dealPrice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[itemid].p_md

	if count then
		Appraiser.Buy_Frame.amountbuyout:SetText("Amount left to buy: "..count)
	else
		local bought = Appraiser.ActiveShoppingItem.bought or 0
		Appraiser.Buy_Frame.amountbuyout:SetText("Amount bought: "..bought)
	end

	if priceMax then
		Appraiser.Buy_Frame.extrainfolabel:Show()
		Appraiser.Buy_Frame.extrainfolabel:SetText("Defined max price: "..ZGV.GetMoneyString(tonumber(priceMax),3))
	--elseif dealPrice then
	--	Appraiser.Buy_Frame.extrainfolabel:Show()
	--	Appraiser.Buy_Frame.extrainfolabel:SetText("Deal max price: "..ZGV.GetMoneyString(tonumber(dealPrice),3))
	else
		Appraiser.Buy_Frame.extrainfolabel:Hide()
	end

	if not Appraiser.RawDataTable[itemid] then 
		Appraiser.Buy_Frame.nextbuyout:SetText("no data")
		return 
	end
	local itemBuy = Appraiser.RawDataTable[itemid][Appraiser.ActiveShoppingItem.buyoutindex]
	if itemBuy then
		Appraiser.Buy_Frame.nextbuyout:SetText(itemBuy[1].." for "..ZGV.GetMoneyString(tonumber(itemBuy[2]),3))
	else
		Appraiser.Buy_Frame.nextbuyout:SetText("No deals found")
	end
end

function Appraiser:SaveSearchItem(item)
	local g = tonumber(Appraiser.Buy_Frame.containerSearch.pricegold:GetText())
	local s = tonumber(Appraiser.Buy_Frame.containerSearch.pricesilver:GetText())
	local c = tonumber(Appraiser.Buy_Frame.containerSearch.pricecopper:GetText())
	local priceMax = (c+s*100+g*100*100)
	if priceMax==0 then priceMax = nil end

	local count = tonumber(Appraiser.Buy_Frame.containerSearch.maxcount:GetText())
	if count==0 then count = nil end

	Appraiser:AddItemToBuy(ZGV.ItemLink.GetItemID(item.itemlink),count,Appraiser.ShoppingModes.MANUAL,priceMax,item.itemlink,nil)
end

function Appraiser:WipeBuyoutData() 
	Appraiser.Buy_Frame.nextbuyout:SetText("n\\a")
	Appraiser.Buy_Frame.amountbuyout:SetText("")
end

function Appraiser:GetScannedItems()
	if Appraiser.ActiveShoppingAddItem and ZGV.Gold.Scan.FoundInScan and ZGV.Gold.Scan.FoundInScan[Appraiser.ActiveShoppingAddItem] then
		Appraiser.ShoppingAddAuctions = {}
		for _,itemlink in pairs(ZGV.Gold.Scan.FoundInScan[Appraiser.ActiveShoppingAddItem]) do
			local name, link, quality, _, _, _, _, _, _, icon = ZGV:GetItemInfo(itemlink)

			local BattlePetId,BattlePetLevel,BattlePetRarity = itemlink:match(".*battlepet:(%d+):(%d+):(%d+):.*")
			if BattlePetId then
				name, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
				quality = BattlePetRarity
			end

			table.insert(Appraiser.ShoppingAddAuctions,{itemlink=itemlink,name=name,quality=quality,icon=icon})
		end
		Appraiser.ActiveShoppingAddItem = nil
		Appraiser:Update()
	end	
end

function Appraiser:FindMatchingAuctions()
	ZGV.Gold.Scan.record_unique_links = true
	local name = Appraiser.Buy_Frame.containerSearch.searchname:GetText()
	Appraiser.Buy_Frame.containerSearch.searchname:ClearFocus()

	if name:match("item:(%d+)") then
		-- we got itemlink
		ZGV.Gold.Scan:ScanByLink(name)
	else
		ZGV.Gold.Scan:ScanByPartialName(name)
	end
	Appraiser.ActiveShoppingAddItem=name
end

function Appraiser:InsertSearchLink(text)
	if not Appraiser.Buy_Frame then return end

	local editbox = Appraiser.Buy_Frame.containerSearch.searchname
	if editbox and editbox:IsVisible() then
		editbox:SetText("")
		editbox:Insert(text)
		return true
	end
	return false
end

function Appraiser:SetBuyoutToAuction(row) 
	if not row.item then return end

	for i,v in pairs(Appraiser.Buy_Frame.ShoppingAuctionList.rows) do if v.item then v.item.active = false end end

	row.item.active = true

	Appraiser.SelectedBuyAuction = {}

	for i,v in pairs(row.item) do Appraiser.SelectedBuyAuction[i]=v end
	Appraiser.needToUpdate = true
	Appraiser:FindNextBuyout(row.item,true)
end

function Appraiser:ResetBuyoutToAuction() 
	Appraiser.SelectedBuyAuction = nil
	Appraiser:FindNextBuyout(Appraiser.ActiveShoppingItem,true)
	Appraiser.needToUpdate = true
end

function Appraiser:RemoveItemFromBuy(row)
	local targetTable
	if row.item.source==Appraiser.ShoppingModes.GOLD then  -- item from gold guide
		targetTable = ZGV.db.char.GGbuyitems
	elseif row.item.source==Appraiser.ShoppingModes.MANUAL then  -- item added by player
		targetTable = self.ManualBuyItems
	elseif row.item.source==Appraiser.ShoppingModes.GUIDE then  -- item added from guide
		targetTable = self.GuideBuyItems
	end

	local itemid = row.item.itemid
	local count = row.item.count	

	for i,v in pairs(targetTable) do
		if v.itemid == itemid then
			table.remove(targetTable,i)
		end
	end

	ZGV.db.char.CurrentDeals[row.item.itemid] = nil

	for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
		r.active = false
	end
	ZGV.Goldguide:Update()
end

function Appraiser:UpdateBuyPrices()
	if self.manualBuyScanning then return end
	self.ScanBuyItems = {}
	self.manualBuyScanningTotal = #self.ShoppingItems
	self.manualBuyScanningDone = 1
	for index = #self.ShoppingItems,1,-1 do
		if self.ShoppingItems[index].itemid then -- skip separators
			table.insert(self.ScanBuyItems,self.ShoppingItems[index])
		end
	end
	self.manualBuyScanning = true
end

function Appraiser:ClearShoppingItemDetails()
	Appraiser.ActiveSearch = nil
	Appraiser.ActiveSearchName = nil
	Appraiser.ActiveShoppingItem = {}
	Appraiser.WaitingForAuctionData = false
	--Appraiser.AbortEverything = true

	Appraiser:WipeBuyoutData()
	Appraiser:WipeBuyoutHistoricalData()

	for i,r in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do
		r.active = false
	end
end

function Appraiser:FindNextBuyout(invItem,setdata)
	--if Appraiser.AbortEverything then return 0,priceMax or trendprice or 0,0,"nodeals" end	
	local itemid = invItem.itemid

	if not Appraiser.RawDataTable[itemid] then
		if Appraiser.ActiveShoppingItem == invItem then Appraiser.ActiveShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil
		if setdata then Appraiser:SetBuyoutData() end
		return 0,ZGVG.Scan:GetPrice(itemid) or 0,0,"old"
	end

	if not next(Appraiser.RawDataTable[itemid]) then
		if Appraiser.ActiveShoppingItem == invItem then Appraiser.ActiveShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil
		if setdata then Appraiser:SetBuyoutData() end
		return 0,0,0,"noresults"
	end

	local minprice = nil
	local minindex = nil
	local priceMax = invItem.priceMax or nil

	if Appraiser.ActiveShoppingItem and Appraiser.SelectedBuyAuction and invItem.itemid==Appraiser.ActiveShoppingItem.itemid then
		setdata = true
		for i=1,#Appraiser.RawDataTable[itemid] do
			local row=Appraiser.RawDataTable[itemid][i]
			if row[3]>0 and row[4]=="0" then -- has buyout and is not our own auction
				if tonumber(Appraiser.SelectedBuyAuction.stack_size) == tonumber(row[1]) and tonumber(Appraiser.SelectedBuyAuction.stack_price) == tonumber(row[2]) then
					minindex = i
				end
			end
		end
	else
		for i=1,#Appraiser.RawDataTable[itemid] do
			local row=Appraiser.RawDataTable[itemid][i]
			if row[3]>0 and row[4]=="0" then -- has buyout and is not our own auction
				if (priceMax and math.floor(row[3])<=priceMax) or (not priceMax and Appraiser:IsDeal(itemid,math.floor(row[3]))) then
					if not minprice or minprice>=math.floor(row[3]) then
						minprice = math.floor(row[3])
						minindex = i
					end
				end
			end
		end
	end

	if minindex then
		if Appraiser.ActiveShoppingItem == invItem then Appraiser.ActiveShoppingItem.buyoutindex = minindex end
		invItem.buyoutindex = minindex

		local preindex = minindex
		local newpage = math.floor((minindex-1)/50)

		if newpage~=Appraiser.page and Appraiser.ActiveShoppingItem and Appraiser.ActiveShoppingItem.itemid==itemid then
		-- only switch pages if this is the item in active buyout
			if ZGVG.Scan:CanScanByName() then
				Appraiser.page=newpage
				local name = Appraiser.ActiveShoppingItem.name
				Appraiser.WaitingForAuctionData = true
				Appraiser.DelayedFindNextBuyout = nil
				QueryAuctionItems(name, nil, nil, Appraiser.page, 0, 0, false, true)
				ZGV.Gold.Scan:UpdateDefaultUI(name,Appraiser.page)
			else
				Appraiser.DelayedFindNextBuyout = invItem
				Appraiser.WaitingForAuctionData = true
			end
		end

		if setdata then Appraiser:SetBuyoutData() end
		return Appraiser.RawDataTable[itemid][minindex][1],tonumber(Appraiser.RawDataTable[itemid][minindex][2]),tonumber(Appraiser.RawDataTable[itemid][minindex][3]),"ok"
	else
		local trendprice = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items and ZGV.Gold.servertrends.items[itemid].p_md
		if Appraiser.ActiveShoppingItem == invItem then Appraiser.ActiveShoppingItem.buyoutindex = nil end
		invItem.buyoutindex = nil
		if setdata then Appraiser:SetBuyoutData() end

		return 0,priceMax or trendprice or 0,0,"nodeals"
	end
end

function Appraiser:ToggleSearchFrame(state)
	if state==nil then state = not Appraiser.Buy_Frame.containerSearch:IsVisible() end
	if not Appraiser.ActiveShoppingItem then state=true end

	if state then
		Appraiser.Buy_Frame.containerDetails:Hide()
		Appraiser.Buy_Frame.containerSearch:Show()
		Appraiser.Buy_Frame.containerSearch.searchname:SetFocus()
	else
		Appraiser.Buy_Frame.containerDetails:Show()
		Appraiser.Buy_Frame.containerSearch:Hide()
	end
end

function Appraiser:ShoppingRowMenu(row)
	if not row.item then return end

	if not Appraiser.Buy_Frame.ShoppingMenu then Appraiser.Buy_Frame.ShoppingMenu = CreateFrame("FRAME","AT_Shopping_Menu",Appraiser.Buy_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Buy_Frame.ShoppingMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Remove this item",
			tooltipText = "Remove selected item from this list",
			tooltipOnButton=1,
			func = function() 
				Appraiser:RemoveItemFromBuy(row)
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Buy_Frame.ShoppingMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Buy_Frame.ShoppingMenu, 300)
end

function Appraiser:ClearSearchData()
	Appraiser.ShoppingAddAuctions = {}
	Appraiser.Buy_Frame.containerSearch.searchname:SetText("")
	Appraiser.Buy_Frame.containerSearch.pricegold :SetText("0")
	Appraiser.Buy_Frame.containerSearch.pricesilver :SetText("0")
	Appraiser.Buy_Frame.containerSearch.pricecopper :SetText("0")
	Appraiser.Buy_Frame.containerSearch.maxcount :SetText("")
	Appraiser:Update()
end

function Appraiser:ShowSearchItem(item)
	if Appraiser.ActiveSearch then return end
	if Appraiser.ActiveSearchName then return end
	if Appraiser.GoToFirstPage then return end


	local newitem = {
		itemid=ZGV.ItemLink.GetItemID(item.itemlink),
		name=item.name,
		displayName=item.name,
		link=item.itemlink,
		icon=item.icon,
		source=Appraiser.ShoppingModes.QUICK, --guide/gold/manual
		quality=item.quality
	}



	Appraiser:WipeBuyoutData()
	Appraiser:WipeBuyoutHistoricalData()
	Appraiser.ShoppingAuctions = {}

	for i,v in pairs(Appraiser.Buy_Frame.ShoppingList.rows) do if v.item then v.item.active = false end end

	Appraiser.ActiveSearch = newitem.itemid
	Appraiser.ActiveSearchName = newitem.name
	Appraiser.ActiveShoppingItem = newitem

	Appraiser.Buy_Frame.activeIcon:SetTexture(newitem.icon)
	Appraiser.Buy_Frame.activeName:SetText(newitem.name)
	Appraiser.Buy_Frame.auctionslabel:SetText("Auctions for: "..newitem.name)
	Appraiser.Buy_Frame.buyoutlabel:Show()

	Appraiser:SetBuyoutHistoricalData()
	Appraiser:SetBuyoutData()
	Appraiser:SearchForItem(newitem)
	Appraiser:ToggleSearchFrame(false)
	Appraiser:Update()
end

function Appraiser:SelectBuyoutRow()
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	if not Appraiser.LastBoughtItem then
		index = 1
		refresh = true
	else
		for i,item in pairs(Appraiser.ShoppingItems) do 
			if item.link == Appraiser.LastSoldItem and (item.count or 0)>0 and not FORCE_NEXT_BUY then index = i end
			if Appraiser.NextBuyingItem and item.link == Appraiser.NextBuyingItem then nextindex = i end
		end

		if not index then
			if nextindex then 
				index=nextindex 
			else
				index=1
			end
			refresh = true
		end
	end

	if refresh then
		Appraiser:ActivateBuyItem(Appraiser.ShoppingItems[index],true)
	end
end
