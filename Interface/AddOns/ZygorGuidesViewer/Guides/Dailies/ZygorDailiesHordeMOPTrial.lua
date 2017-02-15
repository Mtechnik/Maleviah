local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies",{
startlevel=90,
description="This guide will take you through The Anglers dailies\nBecoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
},[[
#include "H_Anglers"
]])
