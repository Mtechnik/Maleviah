if not ZGV then return end

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local ACTIVE_ICON_WIDTH = 20

local Appraiser = ZGV.Gold.Appraiser 

local Gratuity = LibStub("LibGratuity-3.0")

function Appraiser.sort_inventory(a,b)
	if not a.price or not b.price then return false end

	local a_statusId = a.statusId + (a.isStagnant and 50 or 0)
	local b_statusId = b.statusId + (b.isStagnant and 50 or 0)

	if ZGV.db.profile.aucmode=="unit" then
		a_price = a.price / a.count
		b_price = b.price / b.count
	else
		a_price = a.price
		b_price = b.price
	end

	if a_statusId == b_statusId then
		if a_price == b_price then
			return a.name<b.name
		else
			return a_price > b_price
		end
	else
		return a_statusId < b_statusId
	end
end

function Appraiser.sort_inventoryAuctions(a,b)
	if a.unit_price == b.unit_price then
		return a.stack_size < b.stack_size
	else
		return a.unit_price < b.unit_price
	end
end

Appraiser.InventoryItems = {}
local BagSlot_LinkCache = {}
local BagSlot_BindCache = {}
Appraiser.BagSlot_LinkCache=BagSlot_LinkCache
Appraiser.BagSlot_BindCache=BagSlot_BindCache
for bag=0, NUM_BAG_SLOTS do BagSlot_LinkCache[bag] = {} end
for bag=0, NUM_BAG_SLOTS do BagSlot_BindCache[bag] = {} end

function Appraiser:GetInventoryItems(refresh)
	if Appraiser.SellingInProgress then return end
	if refresh then
		for bag=0, NUM_BAG_SLOTS do
			table.wipe(BagSlot_LinkCache[bag])
			table.wipe(BagSlot_BindCache[bag])
		end
	end

	table.wipe(Appraiser.InventoryItems)
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, GetContainerNumSlots(bag) do
			self:AddItemToInventory(bag,slot)
		end
	end
end

function Appraiser:GetInventoryAuctions()
	if Appraiser.ActiveSellingItem and Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] then
		Appraiser.InventoryAuctions = {}
		for i,v in pairs(Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid]) do
			Appraiser:AddItemToInventoryAuctions(v)
		end
		Appraiser:Update()
	end	
end

local inventory_cache = {}

local function cached_GetContainerItemLink(bag, slot) 
	local itemid=GetContainerItemID(bag, slot)
	if not itemid then
		-- item is missing, clear this single entry
		BagSlot_LinkCache[bag][slot]=nil
		return nil
	end

	if BagSlot_LinkCache[bag][slot] then return BagSlot_LinkCache[bag][slot] end
	local itemlink = GetContainerItemLink(bag, slot)
	if itemlink then BagSlot_LinkCache[bag][slot] = itemlink end
	return BagSlot_LinkCache[bag][slot]
end

function Appraiser:AddItemToInventory(bag,slot)
	local itemid=GetContainerItemID(bag,slot)

	if ZGV.db.char.AThiddenitems[itemid] then return end -- item was hidden by player

	local itemlink = cached_GetContainerItemLink(bag, slot) 

	if itemid then
		if not itemlink then -- we did not get the link for this item yet, abort and retry
			Appraiser.needToUpdate = true
			return false
		end

		local isbop = false
		local isboa = false
		local isbound = false
		local price = 0

		if BagSlot_BindCache[bag][slot] then
			local bs = BagSlot_BindCache[bag][slot]
			isbop,isboa,isbound = bs.isbop,bs.isboa,bs.isbound
		else
			if itemid == 82800 then -- Caged pet, if you can cage it, you can sell it
				isbop=false
				isboa=false
				isbound=false
			else
				Gratuity:SetBagItem(bag,slot)
				local n = Gratuity:NumLines()
				if strfind(tostring(Gratuity:GetLine(1)),RETRIEVING_ITEM_INFO) then return false end  -- maybe retry later...

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
			end
			BagSlot_BindCache[bag][slot] = {isbop=isbop,isboa=isboa,isbound=isbound}
		end

		if isbop or isboa or isbound then return false end

		local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemlink)
		local texture, itemCount, locked, quality, readable = GetContainerItemInfo(bag, slot)
		local displayName = nil

		local petItem_id = nil
		local petItemFallback_id = nil

		local BattlePetId,BattlePetName = nil,nil

		if itemid == 82800 then -- Caged pet
			local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

			local result
			petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
			if result~="OK" then return end

			breedid,breedname = ZGV.PetBattle:GetPetBreedBySlot(bag,slot)

			name = BattlePetName
			displayName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"

		end

		local single_locked = false
		if itemid == 82800 or classID==2 or classID==4 then
			-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
			single_locked=true
			maxStack=1
		end
			

		if not name or not texture then return false end

		local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor

		local price,unit_price,empty = ZGVG:GetSellPrice(petItem_id or itemid,itemCount)

		local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
		statusId = priceStatus.statusId
		statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
		statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
		isStagnant = priceStatus.stagnant
		statusColor = isStagnant and priceStatus.stagcolor or priceStatus.sellcolor

		if not (petItem_id or itemid) or not name or not price then
			ZGV:Print("Unable to add item",itemid,"to auctiontools.")
			return
		end

		local active = false
		if Appraiser.ActiveSellingItem and Appraiser.ActiveSellingItem.itemid == (petItem_id or itemid) then active = true end

		local exists = false
		local stripped_link = itemlink
		if not petItem_id then -- strip extra data, including uniqueID
			stripped_link = ZGV.ItemLink.StripBlizzExtras(itemlink)
		end
		for i,v in pairs(self.InventoryItems) do
			--if (petItem_id and v.itemid==petItem_id) or (not petItem_id and v.itemid == itemid) and not exists then
			if v.link==stripped_link and not exists then
				exists = exists or true
				self.InventoryItems[i].count = self.InventoryItems[i].count + itemCount
				self.InventoryItems[i].price = self.InventoryItems[i].price + price
			end
		end
		if not exists then
			local cache_id = petItem_id or itemid
			local stored_stack_count,stored_stack_size
			if not inventory_cache[stripped_link] then 
				inventory_cache[stripped_link] = {}
			else
				stored_stack_count = inventory_cache[stripped_link].stackcount
				stored_stack_size = inventory_cache[stripped_link].stacksize
				customprice_unit_bid = inventory_cache[stripped_link].customprice_unit_bid
				customprice_unit_buy = inventory_cache[stripped_link].customprice_unit_buy
				customprice = inventory_cache[stripped_link].customprice
				auction = inventory_cache[stripped_link].auction
				table.wipe(inventory_cache[stripped_link])
			end

			inventory_cache[stripped_link].itemid=cache_id
			inventory_cache[stripped_link].name=name
			inventory_cache[stripped_link].displayName=displayName
			inventory_cache[stripped_link].link=stripped_link
			inventory_cache[stripped_link].icon=texture
			inventory_cache[stripped_link].count=itemCount
			inventory_cache[stripped_link].price=price
			inventory_cache[stripped_link].bag=bag
			inventory_cache[stripped_link].slot=slot
			inventory_cache[stripped_link].statusText=statusText
			inventory_cache[stripped_link].statusIcon=statusIcon
			inventory_cache[stripped_link].statusId=statusId
			inventory_cache[stripped_link].statusColor=statusColor
			inventory_cache[stripped_link].isStagnant=isStagnant
			inventory_cache[stripped_link].quality=quality
			inventory_cache[stripped_link].active=active
			inventory_cache[stripped_link].maxStack=maxStack
			inventory_cache[stripped_link].single_locked=single_locked

			inventory_cache[stripped_link].stackcount=stored_stack_count
			inventory_cache[stripped_link].stacksize=stored_stack_size
			inventory_cache[stripped_link].customprice_unit_bid=customprice_unit_bid
			inventory_cache[stripped_link].customprice_unit_buy=customprice_unit_buy
			inventory_cache[stripped_link].customprice=customprice
			inventory_cache[stripped_link].auction=auction

			table.insert(self.InventoryItems,inventory_cache[stripped_link])
		end
	end
end

function Appraiser:UpdateItemInInventory(item)
	local truecount = GetItemCount(item.link)
	if item.itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
		truecount = 0
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, GetContainerNumSlots(bag) do
				local _, count, _, _, _, _, baglink = GetContainerItemInfo(bag, slot)
				if item.link == baglink then
					truecount = truecount + count
				end
			end
		end
	end

	item.count = truecount

	
	local price,unit_price,empty = ZGVG:GetSellPrice(item.itemid,item.count)
	item.price = price

	local priceStatus = ZGVG:GetPriceStatus(item.itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	item.statusId = priceStatus.statusId
	item.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
	item.statusIcon = priceStatus.sellicon or priceStatus.icon -- coords
	item.isStagnant = priceStatus.stagnant
	item.statusColor = priceStatus.stagnant and priceStatus.stagcolor or priceStatus.sellcolor
end

function Appraiser:RefreshSellingItem()
	local found = false

	for ii,item in ipairs(self.InventoryItems) do 
		if item.link == Appraiser.LastSoldItem then
			item.active = true
			local truecount = GetItemCount(item.link)
			if item.itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
				truecount = 0
				for bag=0, NUM_BAG_SLOTS do
					for slot=1, GetContainerNumSlots(bag) do
						local _, count, _, _, _, _, baglink = GetContainerItemInfo(bag, slot)
						if item.link == baglink then
							truecount = truecount + count
						end
					end
				end
			end
			if Appraiser.ActiveSellingItem and truecount ~= Appraiser.ActiveSellingItem.count then
				item.count = truecount
				Appraiser.ActiveSellingItem.count = truecount
				Appraiser:SetSellData()
				Appraiser:SetSellHistoricalData()
			end
			found = true
			break
		end
	end
	if not found and not Appraiser.SellManualUnselect then
		Appraiser.ActiveSellingItem = nil
		Appraiser:SelectShoppingRow()
	end
end

function Appraiser:AddItemToInventoryAuctions(data)
	local stack_size = tonumber(data[1])
	local stack_price = tonumber(data[2])
	local unit_price = tonumber(data[3])
	local own_auction = tonumber(data[4])
	local itemlink = ZGV.ItemLink.StripBlizzExtras(data[5],true)
	if Appraiser.ActiveSellingItem.itemid > 1000000000 then itemlink = data[5] end

	local icon = select(10,ZGV:GetItemInfo(itemlink))

	local _,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

	if BattlePetId then
		_, icon = C_PetJournal.GetPetInfoBySpeciesID(BattlePetId)
		local petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink)
		if result=="OK" then 
			breedid,breedname = ZGV.PetBattle:GetPetBreedByLink(itemlink)
			local r, g, b, hex = GetItemQualityColor(BattlePetRarity);
			BattlePetName = "|c"..hex..BattlePetName.." (".." lvl "..BattlePetLevel.." "..breedname..")"
		end
	end

	local IA = Appraiser.InventoryAuctions

	local exists = false

	for i,v in pairs(IA) do
		if v.unit_price == unit_price and v.stack_size == stack_size and v.own_auction == own_auction and v.itemlink == itemlink then
			IA[i].count = IA[i].count + 1
			exists = true
			break
		end
	end
	if not exists then
		local newitem = {
			itemid=Appraiser.ActiveSellingItem.itemid,
			count=1,
			stack_size=stack_size,
			stack_price=stack_price,
			unit_price=unit_price,
			own_auction=own_auction, 
			itemlink=itemlink, 
			icon=icon,
			BattlePetName=BattlePetName
			}
		table.insert(IA,newitem)
	end
end

function Appraiser:ActivateSellItem(item,automatic)
	if not automatic then
		-- do not switch items while any scan is running
		if ZGV.Gold.Scan.state~="SS_IDLE" then return end

		Appraiser.SellingInProgress = false
		if Appraiser.ActiveSearch then return end
		if Appraiser.ActiveSearchName then return end
		if Appraiser.GoToFirstPage then return end
	end
	if not item then 
		Appraiser.ActiveSellingItem = nil
		Appraiser:WipeSellHistoricalData()
		Appraiser:WipeSellPricingData()
		Appraiser:ToggleStackSettings(true)
		return 
	end

	Appraiser:WipeSellHistoricalData()
	Appraiser:WipeSellPricingData()
	Appraiser.InventoryAuctions = {}
	Appraiser.Inventory_Frame.aucpostfee:SetText("Deposit: "..ZGV.GetMoneyString(0))

	currentIndex = 0
	for i,v in pairs(Appraiser.InventoryItems) do 
		if v==item then currentIndex=i end
		v.active = false 
	end

	if item and not item.single_locked then
		Appraiser:ToggleStackSettings(true)
	else
		Appraiser:ToggleStackSettings(false)
	end	

	if automatic or (not Appraiser.ActiveSellingItem or item.itemid ~= Appraiser.ActiveSellingItem.itemid) then
		Appraiser.SellManualUnselect = false

		PickupContainerItem(item.bag, item.slot)
		ClickAuctionSellItemButton()
		ClearCursor()

		Appraiser.ActiveSearch = item.itemid
		Appraiser.ActiveSearchName = item.name
		Appraiser.ActiveSellingItem = item

		Appraiser.LastSoldItem = item.link
		Appraiser.NextSellingItem = nil
		if Appraiser.InventoryItems[currentIndex+1] then
			Appraiser.NextSellingItem = Appraiser.InventoryItems[currentIndex+1].link
		elseif Appraiser.InventoryItems[1] then
			Appraiser.NextSellingItem = Appraiser.InventoryItems[1].link
		end

		Appraiser.Inventory_Frame.activeIcon:SetTexture(item.icon)
		Appraiser.Inventory_Frame.activeName:SetText(item.name)
		Appraiser.Inventory_Frame.activeIcon:SetWidth(20)
		Appraiser.Inventory_Frame.activeName:SetWidth(220)
		Appraiser.Inventory_Frame.activeName:SetPoint("TOPLEFT",Appraiser.Inventory_Frame.activeIcon,"TOPRIGHT",8,-2)

		Appraiser.Inventory_Frame.auctionslabel:SetText("Auctions for: "..item.name)
		Appraiser.Inventory_Frame.undercutlabel:Show()

		item.active = true
		Appraiser:SetSellHistoricalData()
		Appraiser:SetSellData()
		Appraiser:SearchForItem(item)
	else
		ClickAuctionSellItemButton()
		ClearCursor()
		Appraiser.LastSoldItem = nil
		Appraiser.LastSoldItemData = nil

		Appraiser.ActiveSellingItem = nil
		Appraiser.SellManualUnselect = true

		item.active = false
	end
	Appraiser:Update()
end

function Appraiser:ToggleStackSettings(enable)
	local inv=Appraiser.Inventory_Frame
	local edit_alpha,button_alpha,text_alpha,text_color
	if enable then
		edit_alpha = 1
		button_alpha = 1
		text_alpha = 1
		text_color = 1
		inv.stacksize:Enable()
		inv.stacksizebutton:Enable()
		inv.stackcount:Enable()
		inv.stackcountbutton:Enable()
	else
		edit_alpha = 0.5
		button_alpha = 0.3
		text_alpha = 0.8
		text_color = 0.5
		inv.stacksize:Disable()
		inv.stacksizebutton:Disable()
		inv.stackcount:Disable()
		inv.stackcountbutton:Disable()
	end


	inv.stacksize:SetBackdropBorderColor(0.5,0.5,0.5,edit_alpha)
	inv.stacksize:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stacksizebutton:SetBackdropBorderColor(0.5,0.5,0.5,button_alpha)
	inv.stacksizebutton:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stackcount:SetBackdropBorderColor(0.5,0.5,0.5,edit_alpha)
	inv.stackcount:SetTextColor(text_color,text_color,text_color,text_alpha)
	inv.stackcountbutton:SetBackdropBorderColor(0.5,0.5,0.5,button_alpha)
	inv.stackcountbutton:SetTextColor(text_color,text_color,text_color,text_alpha)
end

function Appraiser:SellPriceManual()
	if Appraiser.ActiveSellingItem then 
		Appraiser.ActiveSellingItem.customprice = true 
		local countForSellCalc = 1
		if ZGV.db.profile.aucmode == "stack" then
			countForSellCalc = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())
		end
		local g = tonumber(Appraiser.Inventory_Frame.bidgold:GetText()) or 0
		local s = tonumber(Appraiser.Inventory_Frame.bidsilver:GetText()) or 0
		local c = tonumber(Appraiser.Inventory_Frame.bidcopper:GetText()) or 0
		Appraiser.ActiveSellingItem.customprice_unit_bid = (c+s*100+g*100*100)/countForSellCalc

		local g = tonumber(Appraiser.Inventory_Frame.buyoutgold:GetText()) or 0
		local s = tonumber(Appraiser.Inventory_Frame.buyoutsilver:GetText()) or 0
		local c = tonumber(Appraiser.Inventory_Frame.buyoutcopper:GetText()) or 0
		Appraiser.ActiveSellingItem.customprice_unit_buy = (c+s*100+g*100*100)/countForSellCalc
	end 
end

function Appraiser:SetUndercutToAuction(row)
	if not row.item then return end
	Appraiser.ActiveSellingItem.auction = row.item
	Appraiser.ActiveSellingItem.customprice = nil
	Appraiser:UpdateSellPrice()
	for i,v in pairs(Appraiser.Inventory_Frame.InventoryAuctionList.rows) do if v.item then v.item.active = false end end
	row.item.active = true
	Appraiser:Update()
end

function Appraiser:UpdateStackSize() 
	if Appraiser.Inventory_Frame.stacksize:HasFocus() and Appraiser.Inventory_Frame.stacksize:GetText()=="" then return end
	local old_stacksize = Appraiser.ActiveSellingItem.stacksize
	local old_stackcount = Appraiser.ActiveSellingItem.stackcount
	local new_stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())
	local _,_,count = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
	if not new_stacksize or new_stacksize == 0 then 
		Appraiser.Inventory_Frame.stacksize:SetText(old_stacksize) 
	else
		if Appraiser.ActiveSellingItem.maxStack then new_stacksize = math.min(new_stacksize,Appraiser.ActiveSellingItem.maxStack) end
		if new_stacksize*old_stackcount>count then -- make sure they are not trying to sell more than they own
			new_stacksize = math.floor(count/old_stackcount)
			Appraiser.Inventory_Frame.stacksize:SetText(new_stacksize) 
		end
		Appraiser.ActiveSellingItem.stacksize = new_stacksize
	end

	Appraiser:UpdateAuctionCost()
	Appraiser:UpdateSellPrice()
end

function Appraiser:UpdateStackCount() 
	if Appraiser.Inventory_Frame.stackcount:HasFocus() and Appraiser.Inventory_Frame.stackcount:GetText()=="" then return end
	local old_stacksize = Appraiser.ActiveSellingItem.stacksize
	local old_stackcount = Appraiser.ActiveSellingItem.stackcount
	local new_stackcount = tonumber(Appraiser.Inventory_Frame.stackcount:GetText())
	local _,_,count = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
	if not new_stackcount or new_stackcount == 0 then 
		Appraiser.Inventory_Frame.stackcount:SetText(old_stackcount) 
	else
		if old_stacksize*new_stackcount>count then -- make sure they are not trying to sell more than they own
			new_stackcount = math.floor(count/old_stacksize)
			Appraiser.Inventory_Frame.stackcount:SetText(new_stackcount) 
		end
		Appraiser.ActiveSellingItem.stackcount = new_stackcount
	end
	Appraiser:UpdateAuctionCost()
	Appraiser:UpdateSellPrice()
end

function Appraiser:SetMaxStackSize()
	local _,_,count = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
	local old_stackcount = tonumber(Appraiser.Inventory_Frame.stackcount:GetText())
	if not old_stackcount then 
		old_stackcount = Appraiser.ActiveSellingItem.stackcount
		Appraiser.Inventory_Frame.stackcount:SetText(old_stackcount)
	end
	new_stacksize = math.floor(count/old_stackcount)
	local new_stacksize = math.min(new_stacksize,Appraiser.ActiveSellingItem.maxStack)
	Appraiser.Inventory_Frame.stacksize:SetText(new_stacksize) 
	Appraiser:UpdateAuctionCost()
	Appraiser:UpdateSellPrice()
end

function Appraiser:SetMaxStackCount()
	local _,_,count = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
	local old_stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())
	if not old_stacksize then 
		old_stacksize = Appraiser.ActiveSellingItem.stacksize
		Appraiser.Inventory_Frame.stacksize:SetText(old_stacksize)
	end
	new_stackcount = math.floor(count/old_stacksize)
	Appraiser.Inventory_Frame.stackcount:SetText(new_stackcount) 
	Appraiser:UpdateAuctionCost()
	Appraiser:UpdateSellPrice()
end

function Appraiser:SetSellAucMode() 
	ZGV.db.profile.aucmode = Appraiser.Inventory_Frame.aucmodelgroup:GetValue()
	Appraiser.Inventory_Frame.bidlabel:SetText("Bid / "..ZGV.db.profile.aucmode)
	Appraiser.Inventory_Frame.buyoutlabel:SetText("Buyout / "..ZGV.db.profile.aucmode)
	if ZGV.db.profile.aucmode=="unit" then
		Appraiser.Inventory_Frame.InventoryAuctionList.col_uprice:SetTextColor(1,1,1,1)
		Appraiser.Inventory_Frame.InventoryAuctionList.col_sprice:SetTextColor(0.5,0.5,0.5,1)
	else
		Appraiser.Inventory_Frame.InventoryAuctionList.col_uprice:SetTextColor(0.5,0.5,0.5,1)
		Appraiser.Inventory_Frame.InventoryAuctionList.col_sprice:SetTextColor(1,1,1,1)
	end
	Appraiser:UpdateSellPrice()
	Appraiser:SetSellHistoricalData()
	Appraiser.needToUpdate = true
end

function Appraiser:GetSellStack(item)
	if not item.maxStack then
		local _, _, _, _, _, class, subclass, maxStack, _, _, _ = ZGV:GetItemInfo(item.itemid)
		item.maxStack = maxStack
	end

	local itemCountTotal = item.count

	if (item.maxStack or 0)>4 then
		stacksize = math.min(item.maxStack/4,itemCountTotal)
		stackcount = math.max(math.floor(itemCountTotal/stacksize),1)
	else
		stacksize = 1
		stackcount = math.max(itemCountTotal,1)
	end

	if item.single_locked then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		stacksize=1
		stackcount=1
		itemCountTotal=1
		item.maxStack=1
	end

	return stacksize, stackcount, itemCountTotal
end


function Appraiser:WipeSellHistoricalData()
	Appraiser.Inventory_Frame.demand:SetText("n\\a")
	Appraiser.Inventory_Frame.estval:SetText("n\\a")
	Appraiser.Inventory_Frame.histhigh:SetText("n\\a")
	Appraiser.Inventory_Frame.histlow:SetText("n\\a")
	Appraiser.Inventory_Frame.histmed:SetText("n\\a")

	Appraiser.Inventory_Frame.activeStatus:SetText("")
	Appraiser.Inventory_Frame.auctionslabel:SetText("")
	Appraiser.Inventory_Frame.undercutlabel:Hide()
	Appraiser.Inventory_Frame.activeStatus:SetText("")

	for i,v in pairs(Appraiser.Inventory_Frame.InventoryAuctionList.rows) do if v.item then v.item.active = false end end
end

function Appraiser:SetSellHistoricalData()
	if not Appraiser.ActiveSellingItem then return end
	local itemid = Appraiser.ActiveSellingItem.itemid
	local countForSellCalc = 1
	if ZGV.db.profile.aucmode == "stack" then
		countForSellCalc = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())
		if countForSellCalc == 0 then
			countForSellCalc = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
		end
	end

	local selling_price, unit_price, empty = ZGVG:GetSellPrice(itemid,countForSellCalc)
	local priceStatus = ZGVG:GetPriceStatus(itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	local statusColor = ZGV.ArrayToStringColor(priceStatus.stagnant and priceStatus.stagcolor or priceStatus.sellcolor)
	local statusText = priceStatus.name..(priceStatus.stagnant and ", item stagnant" or "")
	if priceStatus.stagnant then
		Appraiser.Inventory_Frame.activeStatus:SetFont(FONT,11)
	else
		Appraiser.Inventory_Frame.activeStatus:SetFont(FONT,12)
	end
	Appraiser.Inventory_Frame.activeStatus:SetText(statusColor..statusText)

	
	if ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemid] then
		trend = ZGV.Gold.servertrends.items[itemid]
		histlow = ZGV.GetMoneyString(trend.p_lo*countForSellCalc,3) or "unknown"
		histmed = ZGV.GetMoneyString(trend.p_md*countForSellCalc,3) or "unknown"
		histhigh = ZGV.GetMoneyString(trend.p_hi*countForSellCalc,3) or "unknown"
		demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2
		estval = ZGV.GetMoneyString(selling_price) or "unknown"
	else
		p_lo,p_md,p_hi,demand,sell = "unknown","unknown","unknown","unknown","unknown"
	end

	Appraiser.Inventory_Frame.demand:SetText(demand.." / day")
	Appraiser.Inventory_Frame.estval:SetText(estval)
	Appraiser.Inventory_Frame.histhigh:SetText(histhigh)
	Appraiser.Inventory_Frame.histlow:SetText(histlow)
	Appraiser.Inventory_Frame.histmed:SetText(histmed)
end

function Appraiser:WipeSellPricingData()
	Appraiser.Inventory_Frame.bidgold:SetText(0)
	Appraiser.Inventory_Frame.bidsilver:SetText(0)
	Appraiser.Inventory_Frame.bidcopper:SetText(0)

	Appraiser.Inventory_Frame.buyoutgold:SetText(0)
	Appraiser.Inventory_Frame.buyoutsilver:SetText(0)
	Appraiser.Inventory_Frame.buyoutcopper:SetText(0)

	Appraiser.Inventory_Frame.stacksize:SetText(0)
	Appraiser.Inventory_Frame.stackcount:SetText(0)

	Appraiser.Inventory_Frame.activeIcon:SetTexture("")
	Appraiser.Inventory_Frame.activeName:SetText("No item selected")
	Appraiser.Inventory_Frame.activeIcon:SetWidth(0)
	Appraiser.Inventory_Frame.activeName:SetWidth(240)
	Appraiser.Inventory_Frame.activeName:SetPoint("TOPLEFT",Appraiser.Inventory_Frame,"TOPLEFT",385,-10)
end


function Appraiser:SetSellData()
	if not Appraiser.ActiveSellingItem then return end

	local itemid = self.ActiveSellingItem.itemid
	local stacksize, stackcount 

	stacksize, stackcount = Appraiser:GetSellStack(Appraiser.ActiveSellingItem)
	Appraiser.Inventory_Frame.stacksize:SetText(stacksize)
	Appraiser.Inventory_Frame.stackcount:SetText(stackcount)
	Appraiser.ActiveSellingItem.stacksize = stacksize
	Appraiser.ActiveSellingItem.stackcount = stackcount

	Appraiser:UpdateSellPrice()
	Appraiser:UpdateAuctionCost(stacksize,stackcount)
end

function Appraiser:ResetSellData()
	Appraiser.ActiveSellingItem.customprice=nil 
	Appraiser.ActiveSellingItem.auction=nil
	Appraiser:SetSellData()
end


function Appraiser:UpdateSellPrice()
	if not Appraiser.ActiveSellingItem then return end

	local bid_price_gold,bid_price_silver,bid_price_copper,selling_price_bid
	local buy_price_gold,buy_price_silver,buy_price_copper,selling_price_buy

	
	selling_price_buy,selling_price_bid = Appraiser:GetSellPriceForStacksize(ZGV.db.profile.aucmode)

	bid_price_gold =   selling_price_bid:sub(0, -5)
	bid_price_silver = selling_price_bid:sub(-4, -3)
	bid_price_copper = selling_price_bid:sub(-2, -1)

	buy_price_gold =   selling_price_buy:sub(0, -5)
	buy_price_silver = selling_price_buy:sub(-4, -3)
	buy_price_copper = selling_price_buy:sub(-2, -1)

	Appraiser.Inventory_Frame.bidgold:SetText(bid_price_gold or 0)
	Appraiser.Inventory_Frame.bidsilver:SetText(bid_price_silver or 0)
	Appraiser.Inventory_Frame.bidcopper:SetText(bid_price_copper or 0)

	Appraiser.Inventory_Frame.buyoutgold:SetText(buy_price_gold or 0)
	Appraiser.Inventory_Frame.buyoutsilver:SetText(buy_price_silver or 0)
	Appraiser.Inventory_Frame.buyoutcopper:SetText(buy_price_copper or 0)
end

function Appraiser:GetSellPriceForStacksize(mode)
	local stacksize, countForSellCalc, selling_price, auction_price, selling_price_buy, selling_price_bid
	local stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())

	if mode == "stack" then
		countForSellCalc = stacksize
	else
		countForSellCalc = 1
	end

	if Appraiser.ActiveSellingItem.customprice then
		selling_price_bid = Appraiser.ActiveSellingItem.customprice_unit_bid
		selling_price_buy = Appraiser.ActiveSellingItem.customprice_unit_buy
	elseif Appraiser.ActiveSellingItem.auction then
		auction_price = Appraiser.ActiveSellingItem.auction.unit_price

		if Appraiser.ActiveSellingItem.auction.own_auction==1 then -- don't undercut own auctions
			selling_price_buy = auction_price
			selling_price_bid = auction_price
		else
			if ZGV.db.profile.appraiser_undercut == 0 then
				selling_price = (auction_price or 0)
			elseif ZGV.db.profile.appraiser_undercut > 10000 then  -- gold value
				selling_price = max(1,(auction_price or 0) - (ZGV.db.profile.appraiser_undercut-10000))
			else -- percent
				selling_price = (auction_price or 0) * (1-(ZGV.db.profile.appraiser_undercut/100))
			end
			selling_price_buy = math.floor(selling_price)
			selling_price_bid = selling_price_buy
		end
	else
		selling_price_buy = math.floor(ZGVG:GetSellPrice(Appraiser.ActiveSellingItem.itemid,1))
		selling_price_bid = selling_price_buy
	end

	selling_price_buy = tostring(math.floor(selling_price_buy)*countForSellCalc)
	selling_price_bid = tostring(math.floor(selling_price_bid)*countForSellCalc)

	return selling_price_buy,selling_price_bid
end

function Appraiser:StartAuction()
	-- do not switch items while any scan is running
	if ZGV.Gold.Scan.state~="SS_IDLE" then return end

	if not Appraiser.ActiveSellingItem then return end
	Appraiser.SellingInProgress = true

	local selling_price_buy,selling_price_bid = Appraiser:GetSellPriceForStacksize("stack")
	local stack_size = tonumber(Appraiser.Inventory_Frame.stacksize:GetText())
	local stack_count = tonumber(Appraiser.Inventory_Frame.stackcount:GetText())
	local auction_time = Appraiser.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()

	ZGV.db.char.CurrentDeals[Appraiser.ActiveSellingItem.itemid] = nil

	StartAuction(selling_price_bid, selling_price_buy, auction_time, stack_size, stack_count)

	ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] = ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid] or {}

	for count=1, (stack_count or 0) do
		table.insert(ZGV.Gold.Appraiser.RawDataTable[Appraiser.ActiveSellingItem.itemid],{stack_size,selling_price_buy,selling_price_buy/stack_size,"1",Appraiser.ActiveSellingItem.link})
	end
	ZGV.Gold.Appraiser:GetInventoryAuctions()
end

function Appraiser:InventoryRowMenu(row)
	if not row.item then return end

	Appraiser.ActiveSearch = row.item.itemid

	if not Appraiser.Inventory_Frame.InventoryMenu then Appraiser.Inventory_Frame.InventoryMenu = CreateFrame("FRAME","AT_Inventory_Menu",Appraiser.Inventory_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Inventory_Frame.InventoryMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Hide this item",
			tooltipText = "No longer show this item in Selling lists",
			tooltipOnButton=1,
			func = function() 
				ZGV.db.char.AThiddenitems[row.item.itemid]=true
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Inventory_Frame.InventoryMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Inventory_Frame.InventoryMenu, 300)
end

function Appraiser:UpdateAuctionCost(stacksize,stackcount)
	if not Appraiser.ActiveSellingItem then return end

	if not stacksize then stacksize = tonumber(Appraiser.Inventory_Frame.stacksize:GetText()) end
	if not stackcount then stackcount = tonumber(Appraiser.Inventory_Frame.stackcount:GetText()) end
	local auction_time = Appraiser.Inventory_Frame.durationdropdown:GetCurrentSelectedItemValue()

	AuctionsStackSizeEntry:SetText(stacksize or 0)
	AuctionsNumStacksEntry:SetText(stackcount or 0)
	local deposit = CalculateAuctionDeposit(auction_time)

	Appraiser.Inventory_Frame.aucpostfee:SetText("Deposit: "..ZGV.GetMoneyString(deposit or 0))

	Appraiser.LastAuctionTime = auction_time
end

function Appraiser:SelectShoppingRow()
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	if not Appraiser.LastSoldItem then
		index = 1
		refresh = true
	else
		for i,item in pairs(Appraiser.InventoryItems) do 
			if item.link == Appraiser.LastSoldItem and item.count>0 then index = i end
			if Appraiser.NextSellingItem and item.link == Appraiser.NextSellingItem then nextindex = i end
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

	if not refresh and not GetAuctionSellItemInfo() then
		local itemid=GetContainerItemID(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)

		if not itemid then
			-- sigh, item is not there, most likely pet that we had more than one of, and one got sold.
			-- find where the other one is
			for bag=0, NUM_BAG_SLOTS do
				for slot=1, GetContainerNumSlots(bag) do
					local itemlink = cached_GetContainerItemLink(bag, slot) 
					if itemlink and itemlink==Appraiser.LastSoldItem then
						Appraiser.InventoryItems[index].bag=bag
						Appraiser.InventoryItems[index].slot=slot
						break
					end
				end
			end
		end

		PickupContainerItem(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)
		ClickAuctionSellItemButton()
		ClearCursor()
	end

	if refresh then
		Appraiser.SellingInProgress = false
		Appraiser:ActivateSellItem(Appraiser.InventoryItems[index],true)
	end
end
