if UnitFactionGroup("player")~="Neutral" then return end

local name,addon = ...
addon.LibRoverData.neighbourhood={
version = 4, -- [1]
silent = true,
}