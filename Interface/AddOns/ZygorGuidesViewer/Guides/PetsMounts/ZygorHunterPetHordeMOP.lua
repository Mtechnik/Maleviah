local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("HunterPetHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Purple Cataclysm Crocolisk",{
model={40269},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
kill Manglemaw##58754 |goto Valley of the Four Winds/0 57.3,26.2
|tip Once Manglemaw is killed Manglemaw's Mother will appear.
|tip This beast is level 86 with about 30k hp.
Use your Tame Beast ability on _Manglemaw's Mother_. |cast Tame Beast##1515 |goto Valley of the Four Winds/0 57.3,26.2
modeldisplay 40269
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Black and Blue Basilisk",{
model={46055},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Ironeye the Invincible around the area.
|tip It is a level 45 beast.
Use your Tame Beast ability on _Ironeye the Invincible_. |cast Tame Beast##1515 |goto Thousand Needles 61.2,67.6
modeldisplay 46055
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Black and Jade Basilisk",{
model={45950},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Greystone Basilisks around the area.
|tip They are level 11-12.
Use your Tame Beast ability on a _Greystone Basilisk_. |cast Tame Beast##1515 |goto Azshara 24.6,68.6
modeldisplay 45950
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Black and Purple Basilisk",{
model={45445},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Hissperak_ around the area.
|tip It is a level 32 Rare Spawn.
Use your Tame Beast ability on _Hissperak_. |cast Tame Beast##1515 |goto Desolace 43.6,61.2
modeldisplay 45445
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Black and Orange Basilisk",{
model={46058},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Chomper_ around the area.
|tip It is level 27 Elite.
Use your Tame Beast ability on _Chomper_. |cast Tame Beast##1515 |goto Gnomeregan 76.6,65.0
modeldisplay 46058
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Blue Basilisk",{
model={8797},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Cold Eye Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Cold Eye Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 44.6,10.4
modeldisplay 8797
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Blue and Jade Basilisk",{
model={45446},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ironjaw Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Ironjaw Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.2,24.6
modeldisplay 45446
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Blue and Orange Basilisk",{
model={45947},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ironjaw Behemoths_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Ironjaw Behemoth_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 66.2,26.4
modeldisplay 45947
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Blue and Purple Basilisk",{
model={45945},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Scale Belly_ around the area.
|tip It is a level 31 Rare Spawn
Use your Tame Beast ability on _Scale Belly_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.6,25.2
modeldisplay 45945
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Burgandy and Blue Basilisk",{
model={7345},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Sul'lithuz Sandcrawlers_ around the area.
|tip They are level 47-48 Elite.
Use your Tame Beast ability on a _Sul'lithuz Sandcrawler_. |cast Tame Beast##1515 |goto Zul'Farrak 64.6,26.4
modeldisplay 7345
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Burgandy and Orange Basilisk",{
model={44843},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Amberscale Basilisks_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Amberscale Basilisk_. |cast Tame Beast##1515 |goto Dread Wastes 65.2,43.0
modeldisplay 44843
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Burgandy and Purple Basilisk",{
model={46053},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Deatheye_ around the area.
|tip It is a level 56 Rare Spawn.
Use your Tame Beast ability on _Deatheye_. |cast Tame Beast##1515 |goto Blasted Lands 53.6,27.6
modeldisplay 46053
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Green and Blue Basilisk",{
model={45449},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Thrashtail Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Thrashtail Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 60.6,30.6
modeldisplay 45449
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Green and Jade Basilisk",{
model={4486},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Jadespine Basilisks_ around the area.
|tip They are level 37-38 Elite.
Use your Tame Beast ability on a _Jadespine Basilisk_. |cast Tame Beast##1515 |goto Uldaman 44.8,54.8
modeldisplay 4486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Green and Orange Basilisk",{
model={45450},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Stone Maw Basilisks_ around the area.
|tip They are level 24-25.
Use your Tame Beast ability on a _Stone Maw Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 42.6,16.2
modeldisplay 45450
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Green and Purple Basilisk",{
model={45451},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Lurking Basilisks_ around the area.
|tip They are level 75-76.
Use your Tame Beast ability on a _Lurking Basilisk_. |cast Tame Beast##1515 |goto Zul'Drak 44.8,62.6
modeldisplay 45451
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Orange-Purple and Blue Basilisk",{
model={1075},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Sul'lithuz Broodlings_ around the area.
|tip They are level 47-48 Elite.
Use your Tame Beast ability on a _Sul'lithuz Broodling_. |cast Tame Beast##1515 |goto Zul'Farrak 64.6,26.4
modeldisplay 1075
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Orange-Purple and Jade Basilisk",{
model={46056},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Crystal Spine Basilisks_ around the area.
|tip They are level 25-26.
Use your Tame Beast ability on a _Crystal Spine Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 63.0,24.0
modeldisplay 46056
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Orange-Purple and Orange Basilisk",{
model={45462},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ambereye Reavers_ around the area.
|tip They are level 34-35 Elite.
Use your Tame Beast ability on a _Ambereye Reaver_. |cast Tame Beast##1515 |goto Maraudon 34.6,62.6
modeldisplay 45462
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Orange-Purple and Purple Basilisk",{
model={45505},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Veiled Basilisks_ around the area.
|tip They are level 88.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Townlong Steppes 34.6,64.8
modeldisplay 45505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Purple and Blue Basilisk",{
startlevel=89,
model={45464},
description="This guide will walk you through obtaining\nRockhide the Immovable, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Townlong Steppes
path follow loose;loop off;ants straight
path 56.4,45.8	57.5,48.5	59.6,52.2
path 60.2,54.7	63.3,55.0	64.2,55.8
path 64.5,58.8	65.2,61.1	66.0,64.1
path 65.7,68.3	63.8,65.9	62.5,66.1
path 61.9,67.7	62.6,71.4	63.8,75.0
path 62.3,76.2	60.6,77.1	59.7,79.4
path 58.1,82.5	55.6,81.3	57.2,78.5
path 57.1,76.9	55.3,73.8	53.7,72.3
path 51.8,72.4	50.7,75.6	49.8,77.2
path 49.4,79.8	51.5,84.0	50.9,86.5
path 49.8,88.9	48.5,90.0	46.7,89.2
path 46.0,88.4	44.5,87.8	43.2,88.8
path 41.8,86.6	40.1,86.5	40.6,85.0
Follow the provided path, searching for _Worn Tracks_.
Once you find the Worn Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new worn track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Rockhide the Immovable_. |cast Tame Beast##1515
modeldisplay 45464
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Red and Blue Basilisk",{
model={2743},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Redstone Basilisks_ around the area.
|tip They are level 55-56.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Blasted Lands 53.0,28.6
modeldisplay 2743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Red and Orange Basilisk",{
model={46059},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ambereye Basilisks_ around the area.
|tip They are level 34 Elite.
Use your Tame Beast ability on a _Ambereye Basilisk_. |cast Tame Beast##1515 |goto Maraudon 35.2,63.8
modeldisplay 46059
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\White and Blue Basilisk",{
model={31939},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Glasshide Gazers_ around the area.
|tip They are level 46-47.
Use your Tame Beast ability on a _Glasshide Gazer_. |cast Tame Beast##1515 |goto Tanaris 55.2,55.8
modeldisplay 31939
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\White and Jade Basilisk",{
model={45474},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Jadecrest Basilisks_ around the area.
|tip They are level 81-82.
Use your Tame Beast ability on a _Jadecrest Basilisk_. |cast Tame Beast##1515 |goto Deepholm 56.6,85.4
modeldisplay 45474
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\White and Orange Basilisk",{
model={45455},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Gorgonite_ around the area.
|tip It is a level 83 quest mob.
Use your Tame Beast ability on _Gorgonite_. |cast Tame Beast##1515 |goto Deepholm 48.6,25.8
modeldisplay 45455
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\White and Purple Basilisk",{
model={45456},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Crystal Gorged Basilisks_ around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Crystal Gorged Basilisk_. |cast Tame Beast##1515 |goto Deepholm 70.6,31.2
modeldisplay 45456
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Yellow and Blue Basilisk",{
model={7345},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Glasshide Basilisks_ around the area.
|tip They are level 44-45.
Use your Tame Beast ability on a _Glasshide Basilisk_. |cast Tame Beast##1515 |goto Tanaris 49.0,32.8
modeldisplay 7345
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Yellow and Jade Basilisk",{
model={45475},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Gritjaw Basilisks_ around the area.
|tip They are level 30-31.
Use your Tame Beast ability on a _Gritjaw Basilisk_. |cast Tame Beast##1515 |goto Desolace 67.2,23.6
modeldisplay 45475
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Yellow and Orange Basilisk",{
model={45458},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Stoneskin Basilisks_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Stoneskin Basilisk_. |cast Tame Beast##1515 |goto The Jade Forest 61.8,76.6
modeldisplay 45458
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Yellow and Purple Basilisk",{
model={45946},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Hellgazer_ around the area.
|tip It is a level 46 Rare Spawn.
Use your Tame Beast ability on _Hellgazer_. |cast Tame Beast##1515 |goto Tanaris 40.8,41.2
modeldisplay 45946
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Green Basilisk",{
model={16876},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Dampscale Basilisks_ around the area.
|tip They are level 62-63.
Use your Tame Beast ability on a _Dampscale Basilisk_. |cast Tame Beast##1515 |goto Terokkar Forest 38.6,12.8
modeldisplay 16876
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Purple Basilisk",{
model={16878},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ironspine Petrifiers_ around the area.
|tip They are level 62.
Use your Tame Beast ability on a _Ironspine Petrifier_. |cast Tame Beast##1515 |goto Terokkar Forest 46.2,35.4
modeldisplay 16878
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Red Basilisk",{
model={16877},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Scalded Basilisks_ around the area.
|tip They are level 67-68.
Use your Tame Beast ability on a _Scalded Basilisk_. |cast Tame Beast##1515 |goto Blade's Edge Mountains 72.2,23.8
modeldisplay 16877
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Basilisks\\Yellow Basilisk",{
model={16879},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Marshrock Threshalisks_ around the area.
|tip They are level 61-62.
Use your Tame Beast ability on a _Marshrock Threshalisk_. |cast Tame Beast##1515 |goto Zangarmarsh 83.6,28.6
modeldisplay 16879
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Brown Dragon Turtle",{
model={44778},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Seadragons_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 72.6,32.4
modeldisplay 44778
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Camo Dragon Turtle",{
model={42233},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Pearly Tortoises_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Pearly Tortoise_. |cast Tame Beast##1515 |goto The Jade Forest 59.8,81.0
modeldisplay 42233
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Gold Dragon Turtle",{
model={42658},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Wyrmhorn Turtles_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Wyrmhorn Turtle_. |cast Tame Beast##1515 |goto Valley of the Four Winds 67.8,31.4
modeldisplay 42658
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Green Dragon Turtle",{
model={42234},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Jade Snapping Turtles_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Jade Snapping Turtle_. |cast Tame Beast##1515 |goto The Jade Forest 33.2,10.2
modeldisplay 42234
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Black Spiked Dragon Turtle",{
startlevel=87,
model={45487},
description="This guide will walk you through obtaining\nBloodtooth, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 87.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Krasarang Wilds
path follow loose;loop off;ants straight
path 70.0,42.2	68.2,42.4	65.6,41.8
path 64.2,43.6	63.8,42.4	64.2,39.4
path 61.4,39.2	60.0,40.8	59.6,44.2
path 60.0,46.6	59.2,49.0	59.0,49.8
path 57.0,48.2	56.8,44.0	55.2,43.2
path 52.2,45.6	53.8,49.2	53.6,51.8
path 52.6,54.2	50.0,54.0	48.0,53.4
path 47.2,58.0	46.4,61.6	46.2,64.0
path 48.6,66.8	50.6,70.0	49.4,71.2
path 39.8,74.0	38.8,72.0	39.2,69.2
path 35.8.61.0	33.8,60.0	31.4,60.8
path 26.6,57.2	25.8,59.8	23.8,61.6
path 19.8,53.0	16.2,56.6	16.0,53.0
path 8.6,40.8
Follow the provided path, searching for _Muddy Tracks_.
Once you find the Muddy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new muddy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Bloodtooth_. |cast Flare##1543
Use your Tame Beast ability on _Bloodtooth_. |cast Tame Beast##1515
modeldisplay 45487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Brown Spiked Dragon Turtle",{
model={46045},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Elder Shoreshell Snappers_ around the area.
|tip They are level 86 Elite.
Use your Tame Beast ability on a _Elder Shoreshell Snapper_. |cast Tame Beast##1515 |goto Kun-Lai Summit 75.1,33.5
modeldisplay 46045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Gold Spiked Dragon Turtle",{
model={44784},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Elder Seadragons_ around the area.
|tip They are level 86 Elite.
Use your Tame Beast ability on an _Elder Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 71.6,33.0
modeldisplay 44784
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Green Spiked Dragon Turtle",{
model={46046},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Krosh_ around the area.
|tip It is a level 86.
Use your Tame Beast ability on _Krosh_. |cast Tame Beast##1515 |goto Valley of the Four Winds 65.2,26.0
modeldisplay 46046
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Fen Striders\\Black Fen Strider",{
model={18194},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Coilfang Striders_ around the area.
|tip They are level 70 Elite.
Use your Tame Beast ability on a _Coilfang Strider_. |cast Tame Beast##1515 |goto Serpentshrine Cavern 70.6,56.4
modeldisplay 18194
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Fen Striders\\Blue Fen Strider",{
model={17781},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Fen Striders_ around the area.
|tip They are level 61-62.
Use your Tame Beast ability on a _Fen Strider_. |cast Tame Beast##1515 |goto Zangarmarsh 63.4,53.4
modeldisplay 17781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Fen Striders\\Green Fen Strider",{
model={18615},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Marsh Walkers_ around the area.
|tip They are level 63.
Use your Tame Beast ability on a _Marsh Walker_. |cast Tame Beast##1515 |goto Zangarmarsh 28.0,29.0
modeldisplay 18615
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Fen Striders\\White Fen Strider",{
startlevel=90,
model={20917},
description="This guide will walk you through obtaining\nHexapos, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Dread Wastes
path follow loose;loop off;ants straight
path 65.4,41.2	64.2,16.6	49.8,22.4
path 32.6,23.4	30.2,52.0	44.2,53.6
path 51.8,67.6	59.5,68.8
Follow the provided path, searching for _Flooded Tracks_.
A new flooded track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Hexapos_. |cast Tame Beast##1515
modeldisplay 20917
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Blue Water Strider",{
model={40000},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Stream Striders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Stream Strider_. |cast Tame Beast##1515 |goto The Jade Forest 33.0,46.2
modeldisplay 40000
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Green Water Strider",{
model={40001},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Fallstriders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Fallstrider_. |cast Tame Beast##1515 |goto Krasarang Wilds 35.2,36.6
modeldisplay 40001
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Yellow Water Strider",{
model={39999},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _River Striders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _River Strider_. |cast Tame Beast##1515 |goto Valley of the Four Winds 81.8,38.6
modeldisplay 39999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Green Armored Water Strider",{
model={40001},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Jungle Skitterers_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Jungle Skitterer_. |cast Tame Beast##1515 |goto Krasarang Wilds 62.0,23.6
modeldisplay 40001
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Orange Armored Water Strider",{
model={42243},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Lightfooted Snapclaws_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Lightfooted Snapclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 59.0,26.8
modeldisplay 42243
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Yellow Armored Water Strider",{
model={42272},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Vale Striders_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Vale Strider_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 22.6,19.2
modeldisplay 42272
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Water Strider\\Red Armored Water Strider",{
startlevel=85,
model={42271},
description="This guide will walk you through obtaining\nGlimmer, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map The Jade Forest
path follow loose;loop off;ants straight
path 40.0,66.6	46.4,72.2	52.8,69.2
path 50.6,55.2	51.4,53.8	52.6,52.0
path 54.2,48.8	54.4,42.6	57.2,41.6
Follow the provided path, searching for _Flooded Tracks_.
Once you find the Flooded Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new worn track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Glimmer_. |cast Tame Beast##1515
modeldisplay 42271
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Crabs\\Blue and Blue Deep Sea Crab",{
model={45062},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Snapclaw_ around the area.
|tip It is a level 90 Elite.
Use your Tame Beast ability on _Snapclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 73.6,38.6
modeldisplay 45062
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Crabs\\Metallic Blue Crab",{
model={45167},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _King Spineclaw_ around the area.
|tip It is a level 88 Elite.
Use your Tame Beast ability on _King Spineclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 55.2,21.6
modeldisplay 45167
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Crabs\\Orange and Blue Deep Sea Crab",{
model={42974},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Spineclaw Scuttlers_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Spineclaw Scuttler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 56.4,21.0
modeldisplay 42974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Crabs\\Orange and Purple Deep Sea Crab",{
model={46050},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Amberglass Crabs_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on an _Amberglass Crab_. |cast Tame Beast##1515 |goto The Jade Forest 59.6,80.6
modeldisplay 46050
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Crabs\\Red and Blue Deep Sea Crab",{
model={45058},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Elder Viseclaws_ around the area.
|tip They are level 87 Elite.
Use your Tame Beast ability on an _Elder Viseclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 57.0,47.4
modeldisplay 45058
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Birds of Prey\\Brown Parrot",{
model={45321},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Dusky Lory_ around the area.
|tip It is level 87.
Use your Tame Beast ability on a _Dusky Lory_. |cast Tame Beast##1515 |goto Krasarang Wilds 48.2,66.8
modeldisplay 45321
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Birds of Prey\\Raven",{
model={44480},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Upland Ravens_ around the area.
|tip They are level 87.
Use your Tame Beast ability on an _Upland Raven_. |cast Tame Beast##1515 |goto Kun-Lai Summit 54.4,46.6
modeldisplay 44480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Moths\\Blue and Beige Moth",{
model={44605},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Fluttering Swallowtails_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Fluttering Swallowtails_. |cast Tame Beast##1515 |goto Krasarang Wilds 36.2,33.0
modeldisplay 44605
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Moths\\Green and Beige Moth",{
model={44605},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Fluttering Swallowtails_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Fluttering Swallowtails_. |cast Tame Beast##1515 |goto Krasarang Wilds 26.8,37.4
modeldisplay 44605
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\Black Crane",{
model={40347},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Great Cranes_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Great Crane_. |cast Tame Beast##1515 |goto Krasarang Wilds 64.6,47.8
modeldisplay 40347
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\Blue Crane",{
model={39726},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Lotus Cranes_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Lotus Crane_. |cast Tame Beast##1515 |goto The Jade Forest 57.6,70.6
modeldisplay 39726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\Brown Crane",{
model={39727},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Sunrise Cranes_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Sunrise Crane_. |cast Tame Beast##1515 |goto The Jade Forest 46.0,37.4
modeldisplay 39727
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\Green Crane",{
model={39728},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Carp Hunters_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Carp Hunter_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.6,29.6
modeldisplay 39728
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\Pink Crane",{
startlevel=86,
model={39729},
description="This guide will walk you through obtaining\nPatrannache, a rarespawn hunter pet.",
},[[
step "start"
With the addition of Warlords of Draenor the _Rare Patrannache no longer has any special abilities that differ from a basic Pink Crane_
It is _much faster to tame_ a Brilliant Windfeather on Timeless Isle that _shares the same appearance and abilities_
In case this changes again in the future _please choose which spot_ you would rather hunt this pet
_Click here_ to farm the level 86 Elite Patrannache |confirm |next
_Click here_ to tame the level 90 Elite Brilliant Windfeather on Timeless Isle |confirm |next "isle"
step
The new Pandaria rare spawns require that you _locate their tracks_ in an certain zone
_Follow the path_ and look for the _Barely Visible Tracks_
map Valley of the Four Winds
path follow smart;loop off;ants straight
path	80.8,48.9	79.7,46.4	77.9,47.5
path	73.9,59.0	68.1,53.5	69.1,48.1
path	66.4,45.6	66.5,42.3	64.7,39.4
path	61.1,41.9	59.0,39.2	57.6,33.3
path	56.4,30.2	55.4,33.2	51.6,34.5
path	52.3,40.3	50.1,45.6	49.3,50.8
path	51.0,55.3	52.4,57.0	54.6,54.5
path	57.9,57.6	59.0,53.3	62.3,52.6
path	66.1,55.5	66.5,59.2	62.1,65.2
path	58.4,67.7	57.1,75.9	49.4,75.7
path	38.8,77.0	31.0,79.8	26.4,81.9
path	24.4,77.2	22.9,69.3	21.8,68.5
path	16.7,70.6	15.4,68.3	19.8,60.5
path	22.0,57.4	20.2,51.2	22.1,39.4
path	24.0,39.4	26.2,42.3	24.2,44.8
path	26.8,48.5	25.1,52.6	28.4,55.7
path	33.1,64.6	34.9,59.2	37.9,61.7
path	39.1,56.3	41.8,57.6	45.2,55.1
Once you find the Barely Visible Tracks you will want to _search for more and follow_ the way they are facing
A new barely visible track will appear about every 10 seconds
|tip Follow them until they stop appearing
_Use_ Flare and search for Patrannache |cast Flare##1543
_Use_ your Tame Beast ability on Patrannache |cast Tame Beast##1515
modelnpc Patrannache##50885
confirm |next "start"
step "isle"
_Search for_ Brilliant Windfeather around the area
|tip They are level 90 Elite
_Use_ your Tame Beast ability on Brilliant Windfeather |cast Tame Beast##1515
modelnpc Brilliant Windfeather##72762
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Cranes\\White Crane",{
model={39553},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Ink-Tipped Cranes_ around the area.
|tip They are level 85.
Use your Tame Beast ability on an _Ink-Tipped Crane_. |cast Tame Beast##1515 |goto The Jade Forest 56.0,47.0
modeldisplay 39553
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Crawler Pets\\Blue Silkworm",{
model={43324},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Mottled Caterpillars_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Mottled Caterpillar_. |cast Tame Beast##1515 |goto The Jade Forest 50.8,71.6
modeldisplay 43324
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Crawler Pets\\Green Silkworm",{
model={45081},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Bookworms_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Bookworms_. |cast Tame Beast##1515 |goto The Jade Forest 56.8,60.6
modeldisplay 45081
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Crawler Pets\\Red Silkworm",{
model={40520},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Mutated Silkworms_ around the area.
|tip They are level 85. =
Use your Tame Beast ability on a _Mutated Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.0,56.0
modeldisplay 40520
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Crawler Pets\\Yellow Silkworm",{
model={40225},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Hungry Silkworms_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Hungry Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.0,56.0
modeldisplay 40225
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Hunched Jade Cat",{
model={39179},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Jade Guardians_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Jade Guardian_. |cast Tame Beast##1515 |goto The Jade Forest 39.4,43.2
modeldisplay 39179
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Black Pandaren Tiger",{
model={40718},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Wild Stalkers_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Wild Stalker_. |cast Tame Beast##1515 |goto The Jade Forest 63.0,76.6
modeldisplay 40718
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Brown Pandaren Tiger",{
model={40358},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Wary Forest Prowlers_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Wary Forest Prowler_. |cast Tame Beast##1515 |goto The Jade Forest 31.6,10.6
modeldisplay 40358
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Green Pandaren Tiger",{
model={44662},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Gorge Stalkers_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gorge Stalker_. |cast Tame Beast##1515 |goto Valley of the Four Winds 13.6,71.6
modeldisplay 44662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Grey Pandaren Tiger",{
model={41445},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Summit Prowlers_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Summit Prowler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 64.2,63.4
modeldisplay 41445
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Orange Pandaren Tiger",{
model={39579},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Waxwood Hunters_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Waxwood Hunter_. |cast Tame Beast##1515 |goto The Jade Forest 34.8,22.8
modeldisplay 39579
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\Red Pandaren Tiger",{
model={40848},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Krasari Huntress_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Krasari Huntress_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.0,29.6
modeldisplay 40848
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Cats\\White Pandaren Tiger",{
startlevel=85,
model={44486},
description="This guide will walk you through obtaining\nSavage, a rare spawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map The Jade Forest
path follow loose;loop off;ants straight
path 37.8,64.2	36.8,59.8	35.6,57.0
path 37.0,54.6	37.6,51.8	37.7,47.8
path 38.0,42.0	40.6,40.8	42.6,36.8
path 44.6,39.0	46.8,38.2	47.2,29.4
path 49.6,30.2	53.0,31.2	55.0,34.6
path 54.4,37.6	56.2,38.2	57.4,37.4
path 56.2,32.6	54.8,28.2	53.2,24.0
Follow the provided path, searching for _Bloody Tracks_.
Once you find the Bloody Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new bloody track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Savage_. |cast Flare##1543
Use your Tame Beast ability on _Savage_. |cast Tame Beast##1515
modeldisplay 44486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\Black Goat",{
model={41073},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Battle Goats_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Battle Goat_. |cast Tame Beast##1515 |goto Kun-Lai Summit 51.4,66.0
modeldisplay 41073
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\Black Spotted Goat",{
model={45149},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Black Bengal Goats_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Black Bengal Goat_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 58.0,58.8
modeldisplay 45149
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\Brown Goat",{
model={40020},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Wild Staghorns_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Wild Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 27.8,55.0
modeldisplay 40020
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\Brown Spotted Goat",{
model={45138},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Stout Staghorns_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Stout Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 28.0,36.4
modeldisplay 45138
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\Grey Goat",{
startlevel=88,
model={40022},
description="This guide will walk you through obtaining\nStompy, a rare spawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 88.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path 35.2,53.8	35.4,51.6	37.2,50.0
path 39.4,51.6	39.8,47.8	41.0,45.7
path 42.6,45.2	44.8,45.2	45.8,46.4
path 46.8,48.4	45.2,47.6	42.8,49.4
path 42.4,51.2	43.6,52.0	43.4,52.4
path 50.6,53.2	51.4,55.8	53.4,55.2
path 53.8,58.2	50.8,59.0	51.6,60.2
Follow the provided path, searching for _Heavy Tracks_.
Once you find the Heavy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new heavy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Stompy_. |cast Tame Beast##1515
modeldisplay 40022
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Goats\\White Goat",{
model={40024},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Wild Mountain Goats_ around the area.
|tip They are level 88.
Use your Tame Beast ability on a _Wild Mountain Goat_. |cast Tame Beast##1515 |goto The Veiled Stair 56.6,62.0
modeldisplay 40024
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Porcupines\\Blue Porcupine",{
startlevel=89,
model={41003},
description="This guide will walk you through obtaining\nBristlespine, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 88.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path	75.4,71.2	75.0,68.0	74.5,68.0
path	72.8,71.2	71.6,72.8	67.8,75.8
path	67.0,76.0	66.2,77.6	57.2,86.8
path	49.4,85.2	45.2,81.6	45.0,78.0
path	59.4,62.8	60.8,62.2	62.8,63.8
path	67.8,62.4	69.2,59.6	70.6,59.6
path	73.8,55.6
Follow the provided path, searching for _Puzzling Tracks_.
Once you find the Puzzling Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new puzzling track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Bristlespine_. |cast Tame Beast##1515
modeldisplay 41003
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Porcupines\\Red Porcupine",{
model={44620},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Razorquill Porcupines_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Razorquill Porcupine_. |cast Tame Beast##1515 |goto Kun-Lai Summit 61.2,83.4
modeldisplay 44620
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Porcupines\\White Porcupine",{
model={43647},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Lowland Porcupines_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Lowland Porcupine_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.8,26.6
modeldisplay 43647
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Porcupines\\Yellow Porcupine",{
model={45410},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Docile Porcupines_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Docile Porcupine_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 47.0,55.4
modeldisplay 45410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Red Quilen",{
model={43333},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Stonebound Quilen_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Stonebound Quilen_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 33.0,71.4
modeldisplay 43333
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\White Quilen",{
model={40155},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Yachi_ around the area.
|tip It is level 87.
Use your Tame Beast ability on _Yachi_. |cast Tame Beast##1515 |goto Kun-Lai Summit 43.6,51.2
modeldisplay 40155
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Purple Stone Quilen",{
model={45432},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Terracota Defenders_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Terracota Defender_. |cast Tame Beast##1515 |goto Kun-Lai Summit 61.0,73.4
modeldisplay 45432
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Stone Quilen",{
model={40217},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Sleeping Guardians_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Terracota Defender_. |cast Tame Beast##1515 |goto Krasarang Wilds 52.0,32.8
modeldisplay 40217
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Raptors\\Orange Riding Raptor",{
model={14342},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Gurubashi Riding Raptors_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gurubashi Riding Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 77.0,12.2
modeldisplay 14342
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Raptors\\Red Riding Raptor",{
model={14341},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Gurubashi Raptors_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gurubashi Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.0,31.4
modeldisplay 14341
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Worgs\\Ghost Saber Worg",{
model={41238},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Spirit Worgs_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Spirit Worg_. |cast Tame Beast##1515 |goto Kun-Lai Summit 48.8,76.8
modeldisplay 41238
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Worgs\\Medium Lightning Saber Worg",{
model={44452},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Thundermaw_ around the area.
|tip It is level 90.
Use your Tame Beast ability on _Thundermaw_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 29.4,67.4
modeldisplay 44452
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Flying Pets\\Wasps\\Florawing Hive Queen",{
model={37906},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for the _Florawing Hive Queen_ around the area.
|tip It is level 85 Elite.
Use your Tame Beast ability on _Florawing Hive Queen_. |cast Tame Beast##1515 |goto Zul'Gurub 33.2,37.8
modeldisplay 37906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Crawler Pets\\Orange Armored Scorpid",{
model={43351},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for _Kor'thik Scorpids_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Kor'thik Scorpid_. |cast Tame Beast##1515 |goto Dread Wastes 46.6,14.2
modeldisplay 43351
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Blue Armored Stone Quilen",{
model={45427},
description="This guide will walk you through obtaining\nPortent, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
modeldisplay 45427
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Green Armored Stone Quilen",{
model={45427},
description="This guide will walk you through obtaining\nPortent, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
modeldisplay 45427
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Purple Armored Stone Quilen",{
model={45427},
description="This guide will walk you through obtaining\nPortent, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
modeldisplay 45427
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Quilen\\Red Armored Stone Quilen",{
model={45427},
description="This guide will walk you through obtaining\nPortent, a rarespawn hunter pet.",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
modeldisplay 45427
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaurs\\Orange Zandalari Devilsaur",{
model={47573},
description="This guide will walk you through obtaining\nthe Orange Zandalari Devilsaur pet.",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 73.2,68.0
|tip The Young Primal Devilsaurs in this area are level 90.
modeldisplay 47573
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaurs\\Red Zandalari Devilsaur",{
model={47577},
description="This guide will walk you through obtaining\nthe Red Zandalari Devilsaur pet.",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 24.1,58.9
|tip The Young Primal Devilsaurs in this area are level 90.
modeldisplay 47577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaurs\\Yellow Zandalari Devilsaur",{
model={47574},
description="This guide will walk you through obtaining\nthe Yellow Zandalari Devilsaur pet.",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 32.9,58.6
|tip The Young Primal Devilsaurs in this area are level 90.
modeldisplay 47574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaurs\\Blue Zandalari Devilsaur",{
model={47811},
description="This guide will walk you through obtaining\nthe Blue Zandalari Devilsaur pet.",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 71.0,55.2
|tip The Young Primal Devilsaurs in this area are level 90.
modeldisplay 47811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaurs\\White Zandalari Devilsaur",{
model={47355},
description="This guide will walk you through obtaining\nthe White Zandalari Devilsaur pet.",
},[[
step
Use your Tame Beast ability on _Kroshik_. |cast Tame Beast##1515 |goto Isle of Thunder/0 51.0,74.5
|tip Kroshik is a level 90 elite that wanders around this area.
|tip This NPC goes through 4 life phases over several days, so you will need to come back another time if he is not in his adult phase.
modeldisplay 47355
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Blue Dragon Turtle",{
model={47800},
description="This guide will walk you through obtaining\nthe Blue Dragon Turtle",
},[[
step
Search for _Slateshell Wanderers_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Slateshell Wanderer_. |cast Tame Beast##1515 |goto Isle of Thunder 54.2,57.1
modeldisplay 47800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Water Pets\\Dragon Turtles\\Spiked Blue Dragon Turtle",{
model={47804},
description="This guide will walk you through obtaining\nthe Spiked Blue Dragon Turtle",
},[[
step
Search for _Slateshell Ancients_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Slateshell Ancient_. |cast Tame Beast##1515 |goto Isle of Thunder 54.2,57.1
modeldisplay 47804
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Raptors\\Red Raptor (Anklebiter)",{
model={47428},
description="This guide will walk you through obtaining\nthe Red Raptor (Anklebiter)",
},[[
step
Search for _Fierce Anklebiters_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Fierce Anklebiter_. |cast Tame Beast##1515 |goto Isle of Thunder 35.6,69.3
You can also find Fierce Anklebiters around [34.2,75.4]
modeldisplay 47428
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Mystical Pets\\Spectral Porcupines\\Red Spectral Porcupine",{
model={47778},
description="This guide will walk you through obtaining\nthe Red Spectral Porcupine",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep Aspect of the Cheetah enabled, and use your extra speed to kite this mob around the area.
|tip Beware of his Barbed Needle, which he casts if you stray too far away from him. The only way to interrupt this spell is by approaching him within his "dead zone".
confirm
step
Search for _Degu_ around the area. It is level 90.
Use your Tame Beast ability on _Degu_ when it is below 20% health. |cast Tame Beast##1515 |goto Valley of the Four Winds 50.6,77.3
modeldisplay 47778
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Mystical Pets\\Spectral Porcupines\\Green Spectral Porcupine",{
model={47777},
description="This guide will walk you through obtaining\nthe Green Spectral Porcupine",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep Aspect of the Cheetah enabled, and use your extra speed to kite this mob around the area.
|tip She has a heal that she uses periodically, so make sure to use Scatter shot or any other abilities to interrupt this.
confirm
step
Search for _Hutia_ around the area. It is level 90.
Use your Tame Beast ability on _Hutia_ when it is below 20% health. |cast Tame Beast##1515 |goto The Jade Forest 48.2,27.8
modeldisplay 47777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Mastery-Exotic\\Mystical Pets\\Spectral Porcupines\\Blue Spectral Porcupine",{
model={47776},
description="This guide will walk you through obtaining\nthe Blue Spectral Porcupine",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep Aspect of the Cheetah enabled, and use your extra speed to kite this mob around the area.
|tip This mob has additional passive speed, so be sure to keep Concussive Shot on him and don't let him get too close!
confirm
step
Search for _Gumi_ around the area. It is level 90.
Use your Tame Beast ability on _Gumi_ when it is below 20% health. |cast Tame Beast##1515 |goto Kun-Lai Summit 54.7,57.3
modeldisplay 47776
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Direhorns\\Orange Direhorn",{
model={47236},
description="This guide will walk you through obtaining\nthe Orange Direhorn pet.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
modeldisplay 47236
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Direhorns\\Red Direhorn",{
model={47234},
description="This guide will walk you through obtaining\nthe Red Direhorn pet.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 65.0,61.2
|tip The Primal Direhorn Hatchlings in this area are level 90.
modeldisplay 47234
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Direhorns\\Blue Direhorn",{
model={46565},
description="This guide will walk you through obtaining\nthe Blue Direhorn pet.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
|tip The Primal Direhorn Hatchlings in this area are level 90.
modeldisplay 46565
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Direhorns\\White Direhorn",{
model={47235},
description="This guide will walk you through obtaining\nthe White Direhorn pet.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90. |goto Isle of Giants 48.7,72.5
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515
modeldisplay 47235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mists of Pandaria Pets\\Beast Pets\\Direhorns\\Green Direhorn",{
model={47233},
description="This guide will walk you through obtaining\nthe Green Direhorn pet.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
|tip The Primal Direhorn Hatchlings in this area are level 90.
modeldisplay 47233
]])
