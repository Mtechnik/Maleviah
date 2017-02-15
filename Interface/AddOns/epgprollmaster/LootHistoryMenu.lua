local _, L = ...;
local GPLib = LibStub:GetLibrary("LibGearPoints-1.2")
local LootMod = EPGP:GetModule("loot")

local realm = string.gsub(GetRealmName(), ' ', "")
local i18n_2HandWeapons = {}

-- region gear and gp handling

local function EnableLootMod()
    LootMod.Enable(LootMod)
end

local function FreezeLootMod()
    -- disable loot mod temporarily to avoid dialog
    if (LootMod.IsEnabled(LootMod)) then
        LootMod.Disable(LootMod)

        -- reenable loot mod after 1 seconds
        C_Timer.After(1, EnableLootMod)
    end
end

local function GiveGearAndGP(self)

    FreezeLootMod()

    -- give gp directly
    -- pragmatic approach with LibLootNotify doesn't work, because of out-of-range bug.
    local _, itemLink = C_LootHistory.GetItem(LootHistoryDropDown.itemIdx)
    local name = C_LootHistory.GetPlayerInfo(LootHistoryDropDown.itemIdx, LootHistoryDropDown.playerIdx)
    local gp = tonumber(self.value)
    if EPGP:CanIncGPBy(itemLink, gp) then
        if (not string.find(name,'-') and not EPGP:GetEPGP(name)) then
            name = name .. '-' ..  realm
        end
        EPGP:IncGPBy(name, itemLink, gp)
    end

    -- give loot
    LootHistoryDropDown_GiveMasterLoot()
end

local function BankItem(self)

    FreezeLootMod()

    -- bank item
    local _, itemLink = C_LootHistory.GetItem(LootHistoryDropDown.itemIdx)
    EPGP:BankItem(itemLink)

    -- give loot
    LootHistoryDropDown_GiveMasterLoot()
end

-- endregion

local function loadOffspeccModifier()

    local info = GetGuildInfoText()
    local value = info:match("@OFFSPEC_P:(%d+)")
    local result = 1
    if (value) then
        value = tonumber(value)
        if (value) then
            result = value / 100
        end
    end
    return result
end

-- region item analysis

local function loadWeaponCLasses()
    i18n_2HandWeapons[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON, LE_ITEM_WEAPON_AXE2H)] = 1
    i18n_2HandWeapons[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON, LE_ITEM_WEAPON_MACE2H)] = 1
    i18n_2HandWeapons[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON, LE_ITEM_WEAPON_POLEARM)] = 1
    i18n_2HandWeapons[GetItemSubClassInfo(LE_ITEM_CLASS_WEAPON, LE_ITEM_WEAPON_SWORD2H)] = 1
end
loadWeaponCLasses()

local function isTwoHandWeapon(itemLink)
    local _, _, _, _, _, _, subclass = GetItemInfo(itemLink)
    if (i18n_2HandWeapons[subclass]) then
        return true
    end

    return false
end

-- endregion

-- region build menu

local function getName(name, class)
    local classColor = RAID_CLASS_COLORS[class]
    local colorCode = string.format("|cFF%02x%02x%02x",  classColor.r*255,  classColor.g*255,  classColor.b*255)
    return colorCode..name.."|r"
end

local function getMenuText(name, gp)
    local text = L["MenuItem"]
    text = string.gsub(text, "#NAME#", name)
    text = string.gsub(text, "#GP#", gp)
    return text
end

local function buildMenu(text, handler, value)
    local info = UIDropDownMenu_CreateInfo()
    info.notCheckable = 1
    info.text = text
    info.value = value
    info.func = handler
    UIDropDownMenu_AddButton(info)
end

local function InitDropDown(self)
    LootHistoryDropDown_Initialize(self)

    local itemIdx = LootHistoryDropDown.itemIdx
    local playerIdx = LootHistoryDropDown.playerIdx

    local _, itemLink = C_LootHistory.GetItem(itemIdx)

    if ( itemLink and GPLib and CanEditOfficerNote()) then

        local name, class, rollType = C_LootHistory.GetPlayerInfo(itemIdx, playerIdx);

        if (rollType == LOOT_ROLL_TYPE_NEED or rollType == LOOT_ROLL_TYPE_GREED) then
            local gp1, gp2 = GPLib:GetValue(itemLink)
            local gp3 = gp1
            local modifier = 1
            name = getName(name, class)
            if (rollType == LOOT_ROLL_TYPE_GREED) then
                modifier = loadOffspeccModifier()
            end

            if ( gp1 ) then
                gp1 = math.floor(gp1 * modifier)
                buildMenu(getMenuText(name, gp1), GiveGearAndGP, gp1)
            end
            if ( gp2 ) then
                -- add third option for warriors with 2hand-weapon (TG)
                if class == "WARRIOR" and isTwoHandWeapon(itemLink) then
                    gp3 = math.floor(gp3 * modifier * 0.75)
                    buildMenu(getMenuText(name, gp3), GiveGearAndGP, gp3)
                end

                gp2 = math.floor(gp2 * modifier)
                buildMenu(getMenuText(name, gp2), GiveGearAndGP, gp2)
            end
        elseif (rollType == LOOT_ROLL_TYPE_DISENCHANT) then
            buildMenu(L["BankItem"], BankItem)
        end
    end
end

LootHistoryDropDown.initialize = InitDropDown;

-- endregion