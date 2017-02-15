local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHWOD") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "TRI"
