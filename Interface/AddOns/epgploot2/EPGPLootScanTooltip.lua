-- This code is copied from the ArkInventory addon. 
-- It is a great addon and I recommend it :-)

local AceOO = AceLibrary( "AceOO-2.0" )

EPGPLoot2ScanTooltip_Class = AceOO.Class()

function EPGPLoot2ScanTooltip_Class.prototype:init( frameName )
	
	EPGPLoot2ScanTooltip_Class.super.prototype.init( self )
	
	self.tooltip = getfenv()[frameName]
	
	assert( self.tooltip, "XML Frame [" .. frameName .. "] not found when initialising class instance" )
	
end

function EPGPLoot2ScanTooltip_Class.prototype:tostring()
	if self.tooltip then
		return self.tooltip:GetName()
	else
		return "nil"
	end
end

function EPGPLoot2ScanTooltip_Class.prototype:NumLines()
	return self.tooltip:NumLines() or 0
end

function EPGPLoot2ScanTooltip_Class.prototype:SetHyperlink( h )

	self.tooltip:ClearLines()
	
	if h ~= nil then
		self.tooltip:SetHyperlink( h )
	end
	
end

function EPGPLoot2ScanTooltip_Class.prototype:SetBagItem( bag_id, slot_id )
	self.tooltip:ClearLines()
	self.tooltip:SetBagItem( bag_id, slot_id )
end

function EPGPLoot2ScanTooltip_Class.prototype:SetInventoryItem( slot )
	self.tooltip:ClearLines()
	self.tooltip:SetInventoryItem( "player", slot )
end

function EPGPLoot2ScanTooltip_Class.prototype:SetGuildBankItem( tab, slot )
	self.tooltip:ClearLines()
	self.tooltip:SetGuildBankItem( tab, slot )
end

function EPGPLoot2ScanTooltip_Class.prototype:SetItem( bag_id, slot_id )
	-- does not work for offline mode, only direct online scanning of the current player
	if bag_id == BANK_CONTAINER then
		self:SetInventoryItem( BankButtonIDToInvSlotID( slot_id ) )
	elseif bag_id == KEYRING_CONTAINER then
		self:SetInventoryItem( KeyRingButtonIDToInvSlotID( slot_id ) )
	else
		self:SetBagItem( bag_id, slot_id )
	end
end

function EPGPLoot2ScanTooltip_Class.prototype:SetCurrencyToken( j )
	self.tooltip:ClearLines()
	self.tooltip:SetCurrencyToken( j )
end

function EPGPLoot2ScanTooltip_Class.prototype:GetMoneyFrame()
	return getfenv()[self.tooltip:GetName() .. "MoneyFrame1"]
end

function EPGPLoot2ScanTooltip_Class.prototype:GetItem()
	local itemName, ItemLink = self.tooltip:GetItem()
	return itemName, ItemLink
end

function EPGPLoot2ScanTooltip_Class.prototype:Find( TextToFind, IgnoreLeft, IgnoreRight, CaseSensitive )

	if not TextToFind or strtrim( TextToFind ) == "" then
		return false
	end
	
	local IgnoreLeft = IgnoreLeft or false
	local IgnoreRight = IgnoreRight or false
	local CaseSensitive = CaseSensitive or false
	
	local obj, txt
	
	for i = 2, self:NumLines() do
	
		if not IgnoreLeft then
			obj = getfenv()[self.tooltip:GetName() .. "TextLeft" .. i]
			if obj and obj:IsShown() then
				txt = obj:GetText()
				if txt then
				
					--ArkInventory.Output( { "L[", i, "] = [", txt, "]" } )
					
					if not CaseSensitive then
						txt = string.lower( txt )
						TextToFind = string.lower( TextToFind )
					end
					if string.find( txt, TextToFind ) then
						return string.find( txt, TextToFind )
					end
				end
			end
		end
		
		if not IgnoreRight then
			obj = getfenv()[self.tooltip:GetName() .. "TextRight" .. i]
			if obj and obj:IsShown() then
				txt = obj:GetText()
				if txt then
				
					--ArkInventory.Output( { "R[", i, "] = [", txt, "]" } )
					
					if not CaseSensitive then
						txt = string.lower( txt )
						TextToFind = string.lower( TextToFind )
					end
					if string.find( txt, TextToFind ) then
						return string.find( txt, TextToFind )
					end
				end
			end
		end

	end

	return nil
	
end

function EPGPLoot2ScanTooltip_Class.prototype:GetLine( i )

	if not i or i < 1 or i > self:NumLines() then
		return
	end
	
	local obj, txt1, txt2
	
	obj = getfenv()[self.tooltip:GetName() .. "TextLeft" .. i]
	if obj and obj:IsShown() then
		txt1 = obj:GetText()
	end
	
	obj = getfenv()[self.tooltip:GetName() .. "TextRight" .. i]
	if obj and obj:IsShown() then
		txt2 = obj:GetText()
	end

	return txt1 or "", txt2 or ""
	
end

function EPGPLoot2ScanTooltip_Class.prototype:Contains( TextToFind, IgnoreLeft, IgnoreRight, CaseSensitive )

	if self:Find( TextToFind, IgnoreLeft, IgnoreRight, CaseSensitive ) then
		return true
	else
		return false
	end

end

function EPGPLoot2ScanTooltip_Class.prototype:CanUse()

	local l = { "TextLeft", "TextRight" }
	
	for i = 2, self:NumLines() do
		for _, v in pairs( l ) do
			local obj = getfenv()[self.tooltip:GetName() .. v .. i]
			if obj and obj:IsShown() then
				local txt = obj:GetText()
				local r, g, b = obj:GetTextColor()
				local c = string.format( "%02x%02x%02x", r * 255, g * 255, b * 255 )
				if c == "fe1f1f" then
					--ArkInventory.Output( { "line[", i, "]=[", txt, "]" } )
					if txt ~= ITEM_DISENCHANT_NOT_DISENCHANTABLE then
						return false
					end
				end
			end
		end
	end

	return true
	
end
