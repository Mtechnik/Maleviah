local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Timbermaw Hold Faction",{
author="support@zygorguides.com",
achieveid={944},
},[[
#include "A_Timbermaw_Faction"
]])
