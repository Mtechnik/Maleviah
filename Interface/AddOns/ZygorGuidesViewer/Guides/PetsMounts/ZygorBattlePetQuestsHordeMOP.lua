local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Questline",{
description="Use this guide to unlock the Battle Pet dailies for Eastern Kingdoms, Kalimdor, Outland, Northrend, Cataclysm, and Pandaria.",
},[[
step
#include "H_Battlepet_quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Dailies",{
description="Use this guide to copmlete all of the Battle Pet dailies in Eastern Kingdoms, Kalimdor, Outland, Northrend, Cataclysm, and Pandaria.",
},[[
step
#include "H_Battlepet_dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Quests\\Beasts of Fable",{},[[
step
#include "H_Beasts_of_Fable"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Quests\\Beasts of Fable Dailies",{},[[
step
label "start"
#include "H_Beasts_of_Fable_D"
step
You have completed the Beasts of Fable Dailies for the day.
Click here to return to the beginning of the guide. |confirm |next "start"
]])
