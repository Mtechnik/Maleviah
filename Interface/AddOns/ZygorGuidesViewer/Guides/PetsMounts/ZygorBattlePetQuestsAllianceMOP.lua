local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Questline",{},[[
step
#include "Alliance_Battlepet_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Dailies",{
description="This guide will wilk you through the Classic Battle Pet dailies.",
},[[
step
#include "Alliance_Battlepet_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Quests\\Beasts of Fable",{},[[
step
#include "A_Beasts_of_Fable"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Quests\\Beasts of Fable Dailies",{},[[
step
label "start"
#include "A_Beasts_of_Fable_D"
step
You have completed the Beasts of Fable Dailies for the day.
Click here to return to the beginning of the guide. |confirm |next "start"
]])
