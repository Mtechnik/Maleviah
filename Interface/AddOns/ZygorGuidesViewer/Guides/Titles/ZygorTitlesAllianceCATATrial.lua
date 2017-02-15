local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Diplomat\\Timbermaw Hold Faction",{
author="support@zygorguides.com",
},[[
#include "A_Timbermaw_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Exploration\\Kalimdor",{
author="support@zygorguides.com",
description="This guide section will walk you through completing\nthe Explorer achievement.",
},[[
leechsteps "Zygor's Alliance Achievements Guides\\Exploration\\Kalimdor\\Explore Kalimdor"
]])
