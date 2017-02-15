if not ZygorTalentAdvisor then return end

local ZTA=ZygorTalentAdvisor

--***Example*** Remove all the --
--Capitalization and spelling matters.
--ZTA:RegisterBuild("CLASS","Name","Spec", [[
--	Talent Tier 1
--	Talent Tier 2
--	Talent Tier 3
--	Talent Tier 4
--	Talent Tier 5
--	Talent Tier 6
--]],[[
--	Major Glyph of 1
--	Major Glyph of 2
--	Major Glyph of 3
--	Minor Glyph of 1
--	Minor Glyph of 2
--	Minor Glyph of 3
--]],"PetSpec") --PetSpec only needed if you are a HUNTER

ZTA:RegisterBuild("DEMONHUNTER","Leveling Havoc(Recommended)","Havoc", {1,3,3,1,1,3,2},[[
]])
ZTA:RegisterBuild("DEMONHUNTER","Leveling Vengeance","Vengeance", {2,2,1,1,2,1,1},[[
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Blood(Recommended)","Blood", {1,3,1,1,1,1,2},[[
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Frost","Frost", {2,3,1,1,1,1,2},[[
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Unholy","Unholy", {3,1,3,1,3,1,1},[[
]])
ZTA:RegisterBuild("PRIEST","Leveling Shadow(Recommended)","Shadow", {1,2,2,2,2,3,1},[[
]])
ZTA:RegisterBuild("PRIEST","Leveling Discipline","Discipline", {3,1,2,3,1,3,1},[[
]])
ZTA:RegisterBuild("PRIEST","Leveling Holy","Holy", {2,3,3,1,2,1,3},[[
]])
ZTA:RegisterBuild("MAGE","Leveling Fire","Fire", {1,1,3,2,1,2,3},[[
]])
ZTA:RegisterBuild("MAGE","Leveling Frost(Recommended)","Frost", {2,1,3,2,1,2,2},[[
]])
ZTA:RegisterBuild("MAGE","Leveling Arcane","Arcane", {3,1,3,3,1,1,3},[[
]])
ZTA:RegisterBuild("WARRIOR","Leveling Arms(Recommended)","Arms", {2,1,2,1,3,2,2},[[
]])
ZTA:RegisterBuild("WARRIOR","Leveling Fury","Fury", {2,1,2,1,3,2,2},[[
]])
ZTA:RegisterBuild("WARRIOR","Leveling Protection","Protection", {2,1,1,3,1,1,3},[[
]])
ZTA:RegisterBuild("DRUID","Leveling Feral(Recommended)","Feral", {3,2,1,1,2,2,2},[[
]])
ZTA:RegisterBuild("DRUID","Leveling Guardian","Guardian", {3,1,3,1,1,2,1},[[
]])
ZTA:RegisterBuild("DRUID","Leveling Balance","Balance", {1,1,2,2,3,2,3},[[
]])
ZTA:RegisterBuild("DRUID","Leveling Restoration","Restoration", {1,2,3,3,1,1,3},[[
]])
ZTA:RegisterBuild("SHAMAN","Leveling Elemental","Elemental", {2,1,1,1,2,3,3},[[
]])
ZTA:RegisterBuild("SHAMAN","Leveling Enhancement(Recommended)","Enhancement", {3,2,1,2,1,1,2},[[
]])
ZTA:RegisterBuild("SHAMAN","Leveling Restoration","Restoration", {3,2,1,2,3,2,2},[[
]])
ZTA:RegisterBuild("HUNTER","Leveling Beast Mastery(Recommended)","Beast Mastery", {2,1,2,2,1,1,1},[[
]],"Ferocity")
ZTA:RegisterBuild("HUNTER","Leveling Marksmanship","Marksmanship", {1,1,2,3,1,2,1},[[
]],"Tenacity")
ZTA:RegisterBuild("HUNTER","Leveling Survival","Survival", {1,3,2,2,2,2,2},[[
]],"Tenacity")
ZTA:RegisterBuild("MONK","Leveling Brewmaster","Brewmaster", {1,2,1,3,1,2,3},[[
]])
ZTA:RegisterBuild("MONK","Leveling Mistweaver","Mistweaver", {1,2,1,3,1,2,1},[[
]])
ZTA:RegisterBuild("MONK","Leveling Windwalker(Recommended)","Windwalker", {3,2,1,3,1,3,2},[[
]])
ZTA:RegisterBuild("WARLOCK","Leveling Demonology(Recommended)","Demonology", {2,3,2,2,1,1,1},[[
]])
ZTA:RegisterBuild("WARLOCK","Leveling Destruction","Destruction", {2,3,3,2,3,1,1},[[
]])
ZTA:RegisterBuild("WARLOCK","Leveling Affliction","Affliction", {2,3,3,2,3,1,1},[[
]])
ZTA:RegisterBuild("ROGUE","Leveling Assassination","Assassination", {1,1,3,1,2,3,1},[[
]])
ZTA:RegisterBuild("ROGUE","Leveling Outlaw(Recommended)","Outlaw", {2,3,1,1,3,2,3},[[
]])
ZTA:RegisterBuild("ROGUE","Leveling Subtlety","Subtlety", {1,1,3,1,1,1,2},[[
]])
ZTA:RegisterBuild("PALADIN","Leveling Holy","Holy", {3,1,3,3,3,2,3},[[
]])
ZTA:RegisterBuild("PALADIN","Leveling Protection","Protection", {2,2,3,1,1,2,1},[[
]])
ZTA:RegisterBuild("PALADIN","Leveling Retribution(Recommended)","Retribution", {1,2,3,2,2,1,1},[[
]])