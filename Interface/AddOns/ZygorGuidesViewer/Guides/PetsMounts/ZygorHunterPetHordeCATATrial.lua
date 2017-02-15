local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("HunterPetH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Sporebats\\Brown Sporebat",{
model={18029},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Sporebats around this area.
|tip They are level 61 - 62.
You can find more around [40.2,53.6].
Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,64.6,55.2
modeldisplay 18029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\White Two Headed Vulture",{
model={20348},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Trachela around this area.
|tip They are level 65.
Use your Tame Beast ability on _Trachela_. |cast Tame Beast##1515 |goto Terokkar Forest,43.2,51.6
modeldisplay 20348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Bicolor Worg",{
class="HUNTER",
model={18063},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ironjaw around the area.
|tip It is level 63 - 64.
Use your Tame Beast ability on _Ironjaw_. |cast Tame Beast##1515 |goto Terokkar Forest,66.6,35.0
modeldisplay 18063
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Green and Red Scarab",{
model={34912},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Emerald Scarab around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Emerald Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,32.6
modeldisplay 34912
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Pink Boss Silithid",{
model={37549},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Ainamiss the Hive Queen around the area.
|tip It is level 48.
Use your Tame Beast ability on _Ainamiss the Hive Queen_. |cast Tame Beast##1515 |goto Tanaris,34.2,46.0
modeldisplay 37549
]])
