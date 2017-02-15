local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies",{
completion={"quests",1,2,4},
startlevel=90,
description="This guide will take you through The Anglers dailies\nBecoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
},[[
#include "A_Anglers"
]])
