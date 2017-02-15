local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Bats\\Brown Bat",{
model={4732},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Greater Duskbats around this area.
|tip They are level 6-7.
Use your Tame Beast ability on a _Greater Duskbat_. |cast Tame Beast##1515 |goto Tirisfal Glades,66.8,54.2
Click here to see another location for this pet |next |confirm
modeldisplay 4732
step
Search for Mistbats around this area.
|tip They are level 9-10.
Use Tame Beast ability on a _Mistbat_. |cast Tame Beast##1515 |goto Ghostlands,50.8,15.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Bats\\Red Bat",{
model={8808},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Vampiric Duskbat around this area.
|tip They are level 8-9.
Use your Tame Beast ability on a _Vampiric Duskbat_. |cast Tame Beast##1515 |goto Tirisfal Glades,73.4,63.4
Click here to see another location for this pet |next |confirm
modeldisplay 8808
step
Search for Plaguebats around this area.
|tip They are level 40-41.
Use your Tame Beast ability on a _Plaugebat_. |cast Tame Beast##1515 |goto Eastern Plaguelands,39.8,75.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 8808
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Bats\\Tan Bat",{
model={1954},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Greater Kraul Bats around this area.
|tip They are level 26 elites.
|tip Kraul Bat's also work for this.
Use your Tame Beast ability on a _Greater Kraul Bat_. |cast Tame Beast##1515 |goto Razorfen Kraul,10.6,49.6
Click here to see another location for this pet |next |confirm
modeldisplay 1954
step
Search for Noxious Plaguebats around this area.
|tip They are level 41-42.
Use your Tame Beast ability on a _Noxious Plaguebat_. |cast Tame Beast##1515 |goto Eastern Plaguelands,62.8,58.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Bats\\White Bat",{
model={16053},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Zul'drak bats around this area.
|tip They are level 75-76.
Use your Tame Beast ability on a _Zul'Drak Bat_. |cast Tame Beast##1515 |goto Zul'Drak,38.2,50.4
modeldisplay 16053
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Black Owl",{
model={18933},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Barn owls around this area.
|tip They are around 23-24.
Use your Tame Beast ability on a _Barn Owl_. |cast Tame Beast##1515 |goto Duskwood,20.8,76.6
modeldisplay 18933
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Brown Owl",{
model={18375},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Vale Owls around this area.
|tip They are level 35.
Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515 |goto Feralas,46.0,9.8
modeldisplay 18375
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Dark Brown Owl",{
model={20725},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for an Avian Darkhawk in this area.
|tip They are level 65-70 elites.
Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515 |goto Sethekk Halls,73.6,30.4
You can find more around [51.4,52.6]
Click here to see another location for this pet |next |confirm
modeldisplay 20725
step
Search for Akkarai Hatchlings in this area.
|tip They are level 70 and can be found all around this lake.
Use your Tame Beast ability on a _Akkarai Hatchling_. |cast Tame Beast##1515 |goto Terokkar Forest,70.0,79.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 20725
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Birds of Prey\\Ghostly Green Owl",{
model={29505},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Emerald Spirits around this area.
|tip They are level 25-26.
Use your Tame Beast ability on an _Emerald Spirit_. |cast Tame Beast##1515 |goto Stonetalon Mountains,48.8,75.8
Click here to see another location for this pet |next |confirm
modeldisplay 29505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Gray Owl",{
model={10832},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Strigid Screechers around this area.
|tip They are level 7-8.
Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515 |goto Teldrassil,42.8,43.2
Click here to see another location for this pet |next |confirm
modeldisplay 10832
step
Search for Strigid Screechers around this area.
|tip They are level 44-45.
Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515 |goto Felwood,51.6,84.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 10832
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Purple Owl",{
model={37567},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Hell-Hoot around this area.
|tip He is level 53.
|tip He patrols up and down the mountain here.  Some searching may be required.
Use your Tame Beast ability on _Hell-Hoot_. |cast Tame Beast##1515 |goto Winterspring 53.0,36.4
modeldisplay 37567
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Red and Purple Owl",{
model={20729},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Skettis kaliri around this area.
|tip They are level 70.
Use your Tame Beast ability on a _Skettis Kaliri_. |cast Tame Beast##1515 |goto Terokkar Forest,70.6,82.6
modeldisplay 20729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Red Owl",{
model={20730},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Montrous Kaliri around this area.
|tip They are level 70.
|tip They fly overhead most of the time.
Use your Tame Beast ability on a _Monstrous Kaliri_. |cast Tame Beast##1515 |goto Terokkar Forest,69.2,78.2
modeldisplay 20730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\White Owl",{
model={10833},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Winterspring Screechers around this area.
|tip They are level 52-53.
Use your Tame Beast ability on a _Winterspring Screecher_. |cast Tame Beast##1515 |goto Winterspring,55.4,32.8
modeldisplay 10833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Eagles\\Bald Eagle",{
model={22106},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Fjord Hawk Matriarchs around this area.
|tip They are level 71.
Use your Tame Beast ability on a _Fjord Hawk Matriarch_. |cast Tame Beast##1515 |goto Howling Fjord,77.8,67.6
modeldisplay 22106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Eagles\\Brown Eagle",{
model={22255},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Kalimdor Eagles around this area.
|tip They are level 25-26.
You can find more around [56.8,66.4]
As well as [56.0,45.6].
Use your Tame Beast ability on a _Kalimdor Eagle_. |cast Tame Beast##1515 |goto Stonetalon Mountains,52.4,49.0
modeldisplay 22255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Eagles\\Light Brown Eagle",{
model={34007},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Golden Eagles around this area.
|tip They are level 16-17.
Use your Tame Beast ability on a _Golden Eagle_. |cast Tame Beast##1515 |goto Loch Modan,78.2,65.6
modeldisplay 34007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Eagles\\White Eagle",{
model={25925},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Goretalon Matriarchs around the ledges here.
|tip They are level 78.
Use your Tame Beast ability on a _Goretalon Matriarch_. |cast Tame Beast##1515 |goto Sholazar Basin,59.6,23.6
Click here to see another location for this pet |next |confirm
modeldisplay 25925
stepww
Search for Hyjal Huntress around this area.
|tip They are level 80.
|tip These birds are generally flying around.
Use your Tame Beast ability on a _Goretalon Matriarch_. |cast Tame Beast##1515 |goto Mount Hyjal,42.4,43.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 25925
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Eagles\\Undead Eagle",{
model={25630},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
The Diseased Hawk can only be accessed from doing the quest 'A Different Approach'.
|tip They are level 37-38.
Use your Tame Beast ability on a _Diseased Hawk_. |cast Tame Beast##1515 |goto Western Plaguelands,53.8,53.6
Click here to see another location for this pet |next |confirm
modeldisplay 25630
step
Search for Vargul Plaguetalons around this area. They are level 74-75.
Use your Tame Beast ability on a _Vargul Plaguetalon_. |cast Tame Beast##1515 |goto Zul'Drak,18.4,57.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 25630
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Dark Red Parrot",{
model={5505},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Monstrous Macaws around this area.
|tip They are level 42-43.
Use your Tame Beast ability on a _Monstrous Macaw_. |cast Tame Beast##1515 |goto Thousand Needles,92.0,73.8
modeldisplay 5505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Green and Red Parrot",{
model={36150},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Sunwing Squawkers around this area.
|tip They are level 14-16, or level 85 on heroic mode.
Use your Tame Beast ability on a _Sunwing Squawker_. |cast Tame Beast##1515 |goto The Deadmines/2,41.0,47.4
modeldisplay 36150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Green and Yellow Parrot",{
model={36006},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Brilliant Clayscraper around this area.
|tip They are level 40-43.
Use your Tame Beast ability on a _Brilliant Clayscraper_. |cast Tame Beast##1515 |goto Thousand Needles,92.0,73.8
modeldisplay 36006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Gray Parrot",{
model={36152},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Ol' Beaky will be on a little island on the side of the ship.
|tip He is level 14 (normal) or level 85 (heroic).
Use your Tame Beast ability on _Ol' Beaky_. |cast Tame Beast##1515 |goto The Deadmines/2,50.4,60.4
modeldisplay 36152
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Purple and White Parrot",{
model={36151},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Brilliant Macaws around this area.
|tip They are level 14-16, or level 85 on heroic mode.
Use your Tame Beast ability on a _Brilliant Macaw_. |cast Tame Beast##1515 |goto The Deadmines/2,41.0,47.4
modeldisplay 36151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Red Parrot",{
model={36148},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Monstrous Parrots around this area.
|tip They are level 14-16, or level 85 on heroic mode.
Use your Tame Beast ability on a _Monstrous Parrot_. |cast Tame Beast##1515 |goto The Deadmines/2,41.0,47.4
modeldisplay 36148
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\White Parrot",{
model={36153},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Albino Eyegougers around this area.
|tip They are level 14-16, or level 85 on heroic mode.
Use your Tame Beast ability on a _Albino Eyegouger_. |cast Tame Beast##1515 |goto The Deadmines/2,41.0,47.4
modeldisplay 36153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Hawks\\Black Hawk",{
model={20857},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Daggercap Hawks around this area.
|tip They are level 5-7.
Use your Tame Beast ability on a _Daggercap Hawk_. |cast Tame Beast##1515 |goto Howling Fjord,58.6,50.6
modeldisplay 20857
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Hawks\\Brown Hawk",{
model={22633},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Fjord Hawks around this area.
|tip They are level 68-70.
Use your Tame Beast ability on a _Fjord Hawk_. |cast Tame Beast##1515 |goto Howling Fjord,74.6,66.2
modeldisplay 22633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Seagull",{
model={34160},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Rustberg Gulls around this area.
|tip They are level 1-5.
|tip They are around the docks and ledges.
Use your Tame Beast ability on a _Rustberg Gull_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,69.8,25.4
modeldisplay 34160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\Beige Chimaera",{
model={37570},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Mistwing Ravagers around this area.
|tip They are level 17-19.
Use your Tame Beast ability on a _Mistwing Ravage_. |cast Tame Beast##1515 |goto Azshara,67.4,21.8
modeldisplay 37570
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\Brown Chimaera",{
model={28646},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Mistwing Cliffdwellers around this area.
|tip They are level 12-13.
Use your Tame Beast ability on a _Mistwing Cliffdweller_. |cast Tame Beast##1515 |goto Azshara,40.0,79.4
modeldisplay 28646
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\White Chimaera",{
model={10808},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Chillwind Chimaeras around this area.
|tip They are level 52-53.
Use your Tame Beast ability on a _Chillwind Chimaera_. |cast Tame Beast##1515 |goto Winterspring,57.6,23.2
modeldisplay 10808
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\Green Armored Chimaera",{
model={20571},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Vilewing Chimaera around this area.
|tip They are level 68.
Use your Tame Beast ability on a _Vilewing Chimaera_. |cast Tame Beast##1515 |goto Shadowmoon Valley,37.0,40.6
modeldisplay 20571
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\Yellow Chimaera",{
model={17094},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Bladewing Bloodletters around this area.
|tip They are level 65-66.
Use your Tame Beast ability on a _Bladewing Bloodletter_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,50.2,69.2
modeldisplay 17094
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Dragonhawks\\Purple Dragonhawk",{
model={19663},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for the Sunblade Dragonhawks around this area.
|tip They are level 70 elites found in the Sunwell Plateau raid.
Use your Tame Beast ability on a _Sunblade Dragonhawk_. |cast Tame Beast##1515 |goto Sunwell Plateau,34.6,56.0
modeldisplay 19663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Dragonhawks\\Orange and Red Dragonhawk",{
model={17545},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for the Crazed Dragonhawks around this area.
|tip They are level 7-8.
Use your Tame Beast ability on a _Crazed Dragonhawk_. |cast Tame Beast##1515 |goto Eversong Woods,40.0,69.8
modeldisplay 17545
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Dragonhawks\\Red Dragonhawk",{
model={19685},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
The Bloodfalcon will be before and after a bridge.
|tip They are level 69-70 elites.
Use your Tame Beast ability on a _Bloodfalcon_. |cast Tame Beast##1515 |goto The Botanica,49.8,56.6
modeldisplay 19685
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Dragonhawks\\Violet Dragonhawk",{
model={20263},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Eclipsion Dragonhawks around this area.
|tip They are level 67-68.
Use your Tame Beast ability on a _Eclipsion Dragonhawk_. |cast Tame Beast##1515 |goto Shadowmoon Valley,47.6,68.4
modeldisplay 20263
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Dragonhawks\\Yellow Dragonhawk",{
model={37573},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Amani Dragonhawks around this area.
|tip They are level 84-85 elites.
Use your Tame Beast ability on a _Amani Dragonhawk_. |cast Tame Beast##1515 |goto Zul'Aman,46.4,90.8
Click here to see another location for this pet |next |confirm
modeldisplay 37573
step
The Amani Dragonhawk Hatchlings spawn during the boss encounter.
|tip They are level 85.
Use your Tame Beast ability on a _Amani Dragonhawk Hatchling_. |cast Tame Beast##1515 |goto Zul'Aman,56.4,71.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 37573
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Monkeys\\Black Monkey",{
model={30180},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 9 or level 85, depending on the difficulty.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
Click here to see another location for this pet |next |confirm
modeldisplay 30180
step
Search for Skymane Bonobos around this area.
|tip They are level 31-32.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,62.8,77.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Monkeys\\Brown Monkey",{
model={30186},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 9 or level 85, depending on the difficulty.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
modeldisplay 30186
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Monkeys\\Gray Monkey",{
model={30185},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
The Mining Monkey will be alone the walls mining with a chain against the wall.
|tip They are level 9 or level 85, depending on the difficulty.
|tip There are several colors that can be found here.
Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515 |goto The Deadmines,47.0,60.4
modeldisplay 30185
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Monkeys\\Color Changing Monkey",{
model={30186, 30184, 30185, 30180},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
|tip The Vale Howler will occasionally change between black, grey, brown and blue
Search for Vale Howlers around this area.
|tip They are level 26-27.
Use your Tame Beast ability on a _Vale Howler_. |cast Tame Beast##1515 |goto Northern Stranglethorn,53.6,25.6
modeldisplay 30186, 30184, 30185, 30180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Nether Rays\\Blue Nether Ray",{
model={19404},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Marshfang Rippers around this area.
|tip They are level 60-61.
Use your Tame Beast ability on a _Marshfang Ripper_. |cast Tame Beast##1515 |goto Zangarmarsh,74.8,49.0
Click here to see another location for this pet |next |confirm
modeldisplay 19404
step
Search for Marshfang Slicers around this area.
|tip They are level 62-63.
Use your Tame Beast ability on a _Marshfang Slicer_. |cast Tame Beast##1515 |goto Zangarmarsh,35.0,59.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 19404
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Nether Rays\\Gold Nether Ray",{
model={21282},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Aether Rays around this area.
|tip They are level 70-71.
You can find more between the above coordinates and [30.4,64.4].
Use your Tame Beast ability on a _Aether Ray_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,30.6,51.4
modeldisplay 21282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Nether Rays\\Green Nether Ray",{
model={19405},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Bloodthirsty Marshfang around this area.
|tip They are level 61-62.
You can find around [41.4,59.6].
Use your Tame Beast ability on a _Bloodthirsty Marshfang_. |cast Tame Beast##1515 |goto Zangarmarsh,53.8,67.2
modeldisplay 19405
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Nether Rays\\Purple Nether Ray",{
model={19400},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for "Count" Ungula around this area.
|tip He is level 63 - 64.
Use your Tame Beast ability on a _"Count" Ungula_. |cast Tame Beast##1515 |goto Zangarmarsh,32.4,59.6
Click here to see another location for this pet |next |confirm
modeldisplay 19400
step
Search for Nether Rays around this area.
|tip They are level 67 - 68.
Use your Tame Beast ability on a _Nether Ray_. |cast Tame Beast##1515 |goto Netherstorm,45.4,71.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 19400
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Nether Rays\\Red Nether Ray",{
model={20596},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Netherskates around this area.
|tip They are level 69-70.
Use your Tame Beast ability on a _Netherskate_. |cast Tame Beast##1515 |goto Shadowmoon Valley,69.2,67.6
modeldisplay 20596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Blue and Purple Ravager",{
model={20068},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Nethermine Ravagers inside of the mine here.
|tip They are level 70.
Use your Tame Beast ability on a _Nethermine Ravager_. |cast Tame Beast##1515 |goto Shadowmoon Valley,74.0,88.0
modeldisplay 20068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Green and Blue Ravager",{
model={20066},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Death Ravager is spawned from the Warrior quest "Strength of One" (Alliance only).
|tip He is level 10.
Use your Tame Beast ability on a _Death Ravager_. |cast Tame Beast##1515 |goto Azuremyst Isle,54.0,9.6
modeldisplay 20066
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Purple and Orange Ravager",{
model={19845},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Lost Ravagers inside the cave here.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Lost Ravager_. |cast Tame Beast##1515 |goto Winterspring,52.0,68.8
modeldisplay 19845
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Green and Purple Ravager",{
model={20062},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Lost Ravagers inside the cave here.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Lost Ravager_. |cast Tame Beast##1515 |goto Winterspring,52.0,68.8
modeldisplay 20062
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Green Ravager",{
model={17062},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Enraged Ravagers around this area.
|tip They are level 16 - 17.
Use your Tame Beast ability on a _Enraged Ravager_. |cast Tame Beast##1515 |goto Bloodmyst Isle,31.8,54.6
modeldisplay 17062
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Orange and Purple Ravager",{
model={19845},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Gore-Scythe Ravagers around this area.
|tip They are level 63.
Use your Tame Beast ability on a _Gore-Scythe Ravager_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,60.4,69.0
modeldisplay 19845
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Orange Ravager",{
model={16885},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ravager Specimen around this area.
|tip They are level 9 - 10.
Use your Tame Beast ability on a _Ravager Specimen_. |cast Tame Beast##1515 |goto Azuremyst Isle,55.6,18.0
modeldisplay 16885
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Red and Black Ravager",{
model={20063},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Thornfang Venomspitters around this area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Thornfang Venomspitter_. |cast Tame Beast##1515 |goto Hellfire Peninsula,12.8,53.2
modeldisplay 20063
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Red and Green Ravager",{
model={37560},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Bloodmyst Hatchlings around this area.
|tip They are level 10 - 11.
Use your Tame Beast ability on a _Bloodmyst Hatchling_. |cast Tame Beast##1515 |goto Bloodmyst Isle,59.8,89.4
modeldisplay 37560
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Red and Purple Ravager",{
model={17086},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Rip-Blade Ravagers around this area.
|tip They are level 63.
Use your Tame Beast ability on a _Rip-Blade Ravager_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,59.6,65.2
modeldisplay 17086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Dark Green Extra Spiky Ravager",{
model={20297},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Quillfang Ravagers around this area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Quillfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,22.4,67.0
modeldisplay 20297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Purple Extra Spiky Ravager",{
model={20308},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Thornfang Ravagers around this area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Thornfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,8.2,49.6
modeldisplay 20308
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Ravagers\\Red Extra Spiky Ravager",{
model={20309},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Razorfang Ravagers around this area.
|tip They are level 61.
Use your Tame Beast ability on a _Razorfang Ravager_. |cast Tame Beast##1515 |goto Hellfire Peninsula,39.0,88.6
modeldisplay 20309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Blue Snake",{
model={4317},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Deviate Adders around this area.
|tip They are level 18 - 19.
You can find more around [14.2,23.8],
As well as [15.6,53.8].
Use your Tame Beast ability on a _Deviate Adder_. |cast Tame Beast##1515 |goto Wailing Caverns,30.6,43.8
modeldisplay 4317
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Blue-Green Snake",{
model={4768},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Murk Spitters around this area.
|tip They are 51 - 52.
Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515 |goto The Temple of Atal'Hakkar,77.8,41.4
modeldisplay 4768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Brown Snake",{
model={33990},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Murk Spitters around this area.
|tip They are 51 - 52.
Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515 |goto The Temple of Atal'Hakkar,77.8,41.4
modeldisplay 33990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Green Snake",{
model={14557},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Needlespine Cobras around this area.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Needlespine Cobra_. |cast Tame Beast##1515 |goto Thousand Needles,66.0,67.6
modeldisplay 14557
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Purple Snake",{
model={4312},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Deviate Vipers around this area.
|tip They are level 19 elites.
Use your Tame Beast ability on a _Deviate Viper_. |cast Tame Beast##1515 |goto Wailing Caverns,30.6,43.6
Click here to see another location for this pet |next |confirm
modeldisplay 4312
step
Search for Venomtip.
|tip He is a level 77 quest mob.
Use your Tame Beast ability on a _Venomtip_. |cast Tame Beast##1515 |goto Sholazar Basin,58.4,53.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4312
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Red Snake",{
model={26522},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Sunburst Adder around this area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Sunburst Adder_. |cast Tame Beast##1515 |goto Tanaris,40.4,65.4
modeldisplay 26522
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\Violet Snake",{
model={36273},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Needlespine Shimmerbacks around this area.
|tip They are 40 - 41.
You can find more around [67.0,74.8].
Use your Tame Beast ability on a _Needlespine Shimmerback_. |cast Tame Beast##1515 |goto Thousand Needles,66.0,67.2
modeldisplay 36273
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Serpents\\White Snake",{
model={4305},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Deviate Moccasin around this area.
|tip They are level 19.
Use your Tame Beast ability on a _Deviate Moccasin_. |cast Tame Beast##1515 |goto Wailing Caverns,34.8,15.8
Click here to see another location for this pet |next |confirm
modeldisplay 4305
step
Search for Coilskar Cobras around this area.
|tip They are level 68.
Use your Tame Beast ability on a _Coilskar Cobra_. |cast Tame Beast##1515 |goto Shadowmoon Valley,54.6,21.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red Green Spider (Rare Spawn)",{
model={36505},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mother Fang around the area.
|tip She is level 9.
Use your Tame Beast ability on _Mother Fang_. |cast Tame Beast##1515 |goto Elwynn Forest,61.8,47.8
Click here to see another location for this pet |next |confirm
modeldisplay 36505
step
Search for Naraxis around the area.
|tip It is level 21.
Use your Tame Beast ability on _Naraxis_. |cast Tame Beast##1515 |goto Duskwood,86.4,48.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 36505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Green Fire Spider (Rare Spawn)",{
model={38453},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Kirix around the area.
|tip It can be found along this western ridge. It is a level 85 Elite. |macro /target Kirix
Use _Aspect of the Wild_
Make sure when you aggro Kirix, it is at max range.
When you get hit with _Bouncing Charge_, cast _Disengage_ at the height of it.
Once you're back on the ground, use _Deterrence_ to block _Magmatoxin_.
_Immediately_ use your Tame Beast ability on _Kirix_ afterwards. |cast Tame Beast##1515 |goto Molten Front 31.0,56.2
modeldisplay 38453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Fire Spider (Rare Spawn)",{
model={38780},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for _Solix_ around the area.
|tip It can be found in lava pools inside of the Igneous Depths.
|tip In order to tame this pet, you will have to kite him around until its _Energy_ is low.  _DO NOT_ kite it until its energy reaches 0, or it will die.
Open with _Concussion Shot_ and kite him around until it has _20 to 30 Energy_. Use _Concussion Shot_ whenever it is off cooldown.
If you are having trouble kiting, you can also use _Aspect of the Cheetah_.
Use your Tame Beast ability on _Solix_ when it is at _20 to 30 Energy_. |cast Tame Beast##1515 |goto Molten Front 60.4,50.8
modeldisplay 38780
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Yellow Fire Spider (Rare Spawn)",{
model={38426},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for _Anthriss_ around the area.
|tip In order to tame this pet, you will have to run into the lava pools when he casts his web on you.
Open with _Concussion Shot_ and _Deterrence_ to avoid failure.
Use your Tame Beast ability on _Anthriss_. |cast Tame Beast##1515 |goto Molten Front 54.8,41.8
modeldisplay 38426
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Purple Fire Spider (Rare Spawn)",{
model={38424},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Deth'tilac around the area.
|tip It is level 85.
|tip Note that this will be much easier as Survival, with talents into Entrapment, Trap Mastery and Resourcefulness.
You will need to use a pet with a snare effect in order to tame this, as well as beat him down to _20%_.  We suggest using a spider pet.
Start with laying down a _Snake Trap_, followed by an _Ice Trap_ behind it.
Send your pet in, sacrificing it.  Once Deth'tilac kills it, he'll trigger your _Snake Trap_.
While Deth'tilac is attacking the snakes, cast _Revive Pet_.  Once the snakes are all dead and Deth'tilac has triggered _Ice Trap_, sacrifice your pet again.
Repeat the above steps until Deth'tilac is at _20%_ health. Be sure to _Dismiss your pet_ at this point.
Use your Tame Beast ability on _Deth'tilac_. |cast Tame Beast##1515 |goto Molten Front,66.6,72.7
modeldisplay 38424
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Light Gray Spider (Rare Spawn)",{
model={27973},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Terror Spinner around the area. It is level 76.
You can find Terror Spinner at the locations below:
[53.0,31.6]
[71.8,24.2]
[72.2,28.4]
[81.6,34.6]
[77.6,42.8]
[74.4,66.6]
Use your Tame Beast ability on _Terror Spinner_. |cast Tame Beast##1515 |goto Zul'Drak,61.6,36.8
modeldisplay 27973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Sporebats\\Blue Sporebat",{
model={17751},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Sporebats around this area.
|tip They are level 61 - 62.
You can find more around [40.2,53.6].
Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,64.6,55.2
modeldisplay 17751
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Sporebats\\Brown Sporebat",{
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Sporebats\\Green Sporebat",{
model={17753},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Serch for Young Sporebats around this area.
|tip They are level 60 - 61.
Use your Tame Beast ability on a _Young Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,74.0,42.0
Click here to see another location for this pet |next |confirm
modeldisplay 17753
step
Search for Greater Sporebats around this area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Greater Sporebat_. |cast Tame Beast##1515 |goto Zangarmarsh,16.2,31.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 17753
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Wind Serpents\\Black Wind Serpent",{
model={3006},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Deviate Dreadfang around this area.
|tip They are level 19 elites. |
Use your Tame Beast ability on a _Deviate Dreadfang_. |cast Tame Beast##1515 goto Wailing Caverns,53.6,66.6
Click here to see another location for this pet |next |confirm
modeldisplay 3006
step
Search for Thunderhawk Cloudscrapers around this area.
|tip They are level 33 - 34.
Use your Tame Beast ability on a _Thunderhawk Cloudscraper_. |cast Tame Beast##1515 |goto Southern Barrens,46.4,78.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 3006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Wind Serpents\\Green Wind Serpent",{
model={4091},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Noxious Shredders around the area.
|tip They are level 36 -37.
Use your Tame Beast ability on a _Noxious Shredder_. |cast Tame Beast##1515 |goto Dustwallow Marsh,41.4,54.4
Click here to see another location for this pet |next |confirm
modeldisplay 4091
step
Search for Venomous Cloud Serpents around the area.
|tip They are level 40.
Use your Tame Beast ability on a _Venomous Cloud Serpent_. |cast Tame Beast##1515 |goto Thousand Needles94.2,57.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Wind Serpents\\Orange Wind Serpent",{
model={2699},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Vale Screechers around this area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Vale Screecher_. |cast Tame Beast##1515 |goto Feralas,43.6,36.4
modeldisplay 2699
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Green Silithid",{
model={481},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Silithid Ravagers around this area.
|tip They are level 40 - 41.
|tip They will be underwater.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,70.6,88.6
Click here to see another location for this pet |next |confirm
modeldisplay 481
step
Search for Hazzali Sandreavers around this area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Hazzali Sandreaver_. |cast Tame Beast##1515 |goto Tanaris,55.8,67.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 481
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Purple Silithid",{
model={91},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Silithid Ravagers around this area.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,67.0,83.6
Click here to see another location for this pet |next |confirm
modeldisplay 91
step
Search for Centipaar Sandreavers around this area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Centipaar Sandreaver_. |cast Tame Beast##1515 |goto Tanaris,36.8,41.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 91
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Tan Silithid",{
model={35577},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Silithid Ravagers underwater.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Thousand Needles,69.6,84.4
modeldisplay 35577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Yellow Silithid",{
model={11087},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Gorishi Reavers underwater.
|tip They are level 51 - 53.
Use your Tame Beast ability on a _Gorishi Reaver_. |cast Tame Beast##1515 |goto Un'Goro Crater,46.8,82.6
Click here to see another location for this pet |next |confirm
modeldisplay 11087
step
Search for Hive'Zora Reavers around this area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Hive'Zora Reaver_. |cast Tame Beast##1515 |goto Silithus,33.0,53.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Brown Ant Silithid",{
model={11091},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Gorishi Workers around this area.
|tip They are level 51 - 52.
Use your Tame Beast ability on a _Gorishi Worker_. |cast Tame Beast##1515 |goto Un'Goro Crater,51.6,77.4
Click here to see another location for this pet |next |confirm
modeldisplay 11091
step
Search Hive'Zora Hive Sisters around this area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Hive'Zora Hive Sister_. |cast Tame Beast##1515 |goto Silithus,30.6,58.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Green Ant Silithid",{
model={11095},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Hazzali Workers around this area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Hazzali Worker_. |cast Tame Beast##1515 |goto Tanaris,54.2,64.8
Click here to see another location for this pet |next |confirm
modeldisplay 11095
step
Search for Hive'Ashi Defenders around this area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Hive'Ashi Defender_. |cast Tame Beast##1515 |goto Silithus,51.8,26.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11095
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Purple Ant Silithid",{
model={2592},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Zukk'ash Tunnelers around this area.
|tip They are level 38 - 39.
Use your Tame Beast ability on a _Zukk'ash Tunneler_. |cast Tame Beast##1515 |goto Feralas,74.2,62.4
Click here to see another location for this pet |next |confirm
modeldisplay 2592
step
Search for Centipaar Workers around this area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Centipaar Worker_. |cast Tame Beast##1515 |goto Tanaris,37.2,46.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2592
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Tan Ant Silithid",{
model={30904},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Silithid Swarmer around this area.
|tip They are level 31 - 32.
Use your Tame Beast ability on a _Silithid Swarmer_. |cast Tame Beast##1515 |goto Southern Barrens 41.6,6.8
modeldisplay 30904
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Black Widow Spider",{
model={539},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Black Widows around this area.
|tip They are level 22 - 24.
Use your Tame Beast ability on a _Black Window_. |cast Tame Beast##1515 |goto Duskwood,33.6,44.4
Click here to see another location for this pet |next |confirm
modeldisplay 539
step
Search for Vicious Night Web Spiders around this area.
|tip They are level 9 - 10.
Use your Tame Beast ability on a _Vicious Night Web Spider_. |cast Tame Beast##1515 |goto Tirisfal Glades,86.4,53.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 539
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Crystal Spider",{
model={4456},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Glassweb Spiders around this area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515 |goto Searing Gorge,56.2,69.4
Click here to see another location for this pet |next |confirm
modeldisplay 4456
step
Search for Dreadfang Widows around this area.
|tip They are level 64 - 65.
Use your Tame Beast ability on a _Dreadfang Widow_. |cast Tame Beast##1515 |goto Terokkar Forest,53.0,78.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4456
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Green Spider",{
model={283},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Darkmist Silkspinners around this area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Darkmist Silkspinner_. |cast Tame Beast##1515 |goto Dustwallow Marsh,35.4,22.6
modeldisplay 283
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Gray Spider",{
model={955},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Spindleweb Spiders around this area.
|tip They are level 10 - 11.
Use your Tame Beast ability on a _Spindleweb Spider_. |cast Tame Beast##1515 |goto Ghostlands,30.6,27.6
Click here to see another location for this pet |next |confirm
modeldisplay 955
step
Search for Cave Stalkers around this area.
|tip They are level 20 - 21.
Use your Tame Beast ability on a _Cave Stalker_. |cast Tame Beast##1515 |goto Wetlands,50.2,60.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Jungle Spider",{
model={34278},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Darkmist Recluse around this area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Darkmist Recluse_. |cast Tame Beast##1515 |goto Dustwallow Marsh,35.0,22.6
modeldisplay 34278
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Olive Spider",{
model={513},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Plauge Lurkers around this area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515 |goto Western Plaguelands,56.0,60.6
modeldisplay 513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Purple Spider",{
model={15937},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Plauge Lurkers around this area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515 |goto Western Plaguelands,56.0,60.6
modeldisplay 15937
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red Spider",{
model={36505},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Use your Tame Beast ability on a _Terokkarantula_. |cast Tame Beast##1515 |goto Terokkar Forest,54,81.6
|tip Terokkarantula is a huge level 65 elite tucked away in the corner here.
modeldisplay 36505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Tan Spider",{
model={711},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Leech Stalkers around this area.
|tip They are level 20 - 21.
Use your Tame Beast ability on a _Leech Stalker_. |cast Tame Beast##1515 |goto Wetlands,56.4,63.2
modeldisplay 711
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Green Fire Spider",{
model={38543},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Use your Tame Beast ability on a _Cinderweb Broodling_. |cast Tame Beast##1515 |goto Molten Front,65.6,49.2
|tip Cinderweb Broodlings spawn and move quickly through the area. They will despawn shortly after, so if you see one that isn't moving, you likely won't be able to tame it.
modeldisplay 38543
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Orange and Black Spiked Spider",{
model={18043},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Myst Leechers around this area.
|tip They are level 17-18.
Use your Tame Beast ability on a _Myst Leecher_. |cast Tame Beast##1515 |goto Bloodmyst Isle,22.8,36.2
Click here to see another location for this pet |next |confirm
modeldisplay 18043
step
Search for Deathskitter around this area. He patrols to [53.6,64.6]
|tip It's a level 64 elite.
Use your Tame Beast ability on _Deathskitter_. |cast Tame Beast##1515 |goto Terokkar Forest,53.8,57.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 18043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red and Black Spiked Spider",{
model={17180},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Zarakh around this area.
|tip It is level 19.
Use your Tame Beast ability on _Zarakh_. |cast Tame Beast##1515 |goto Bloodmyst Isle,18.2,37.6
Click here to see another location for this pet |next |confirm
modeldisplay 17180
step
Search for the Black Recluse around this area.
|tip It is level 81 - 85.
Use your Tame Beast ability on a _Black Recluse_. |cast Tame Beast##1515 |goto Twilight Highlands,45.8,31.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 17180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red and Yellow Spiked Spider",{
model={17346},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for the Myst Spinner around this area.
|tip They are level 16 - 17.
Use your Tame Beast ability on a _Myst Spinner_. |cast Tame Beast##1515 |goto Bloodmyst Isle,23.6,40.4
Click here to see another location for this pet |next |confirm
modeldisplay 17346
step
Search for Ridgespine Stalkers around this area.
|tip They are level 66 - 67.
Use your Tame Beast ability on a _Ridgespine Stalker_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,67.8,52.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 17346
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Black Bone Spider",{
model={26760},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Tainted Nightstalkers around this area.
|tip They are level 57 - 58.
Use your Tame Beast ability on a _Tainted Nightstalker_. |cast Tame Beast##1515 |goto Blasted Lands,35.6,59.2
modeldisplay 26760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Brown Bone Spider",{
model={26773},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Skitterweb Lurkers around this area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Skitterweb Lurker_. |cast Tame Beast##1515 |goto Silverpine Forest,36.6,14.8
Click here to see another location for this pet |next |confirm
modeldisplay 26773
step
_Only Alliance Players_ can tame this spider. Search for Domesticated Mine Creepers inside the mine.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Domesticated Mine Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,34.6,72.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 26773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Dark Gray Bone Spider",{
model={34168},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for the Skitterweb Matriarch. She may be hanging on the roof.
|tip She is level 13.
Use your Tame Beast ability on a _Skitterweb matriarch_. |cast Tame Beast##1515 |goto Silverpine Forest,36.0,8.8
Click here to see another location for this pet |next |confirm
modeldisplay 34168
step
label "location2"
Search for Battle Creepers around this area.
|tip They are level 21 - 22.
_Only Alliance Players_ can tame this pet.
Use your Tame Beast ability on a _Battle Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,46.4,68.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 34168
step
Search for Darkwood Broodmothers in the area.
|tip They are level 85.
Use your Tame Beast ability on a _Darkwood Broodmother_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,54.6,52.8
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 34168
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Light Gray Bone Spider",{
model={27973},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Necrotic Webspinners.
|tip They are level 79 - 80.
You will not be able to see them if you have an Argent Tournament daily quest.
Use your Tame Beast ability on a _Necrotic Webspinner_. |cast Tame Beast##1515 |goto Icecrown,53.6,75.2
Click here to see another location for this pet |next |confirm
modeldisplay 27973
step
Search for Carrion Fleshstrippers around this area.
|tip They are level 76 - 77
If you've done the quest hub here, they will be phased out.
Use your Tame Beast ability on a _Carrion Fleshstripper_. |cast Tame Beast##1515 |goto Icecrown,85.8,73.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 27973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red Bone Spider",{
model={34167},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Darkwood Lurkers around this area.
|tip They are level 84 - 85.
Use your Tame Beast ability on a _Darkwood Lurker_. |cast Tame Beast##1515 |goto Tol Barad Peninsula,55.0,55.4
modeldisplay 34167
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Green Tarantula",{
model={709},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Webwood Venomfangs around this area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Webwood Venomfang_. |cast Tame Beast##1515 |goto Teldrassil,42.4,53.6
Click here to see another location for this pet |next |confirm
modeldisplay 709
step
Search for Forest Creepers around this area.
|tip They are level 20 - 21.
Use your Tame Beast ability on a _Forest Creeper_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,34.2,58.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Gray Tarantula",{
model={6214},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Wildthorn Lurkers around this area.
|tip They are level 23 - 24.
Use your Tame Beast ability on a _Wildthorn Lurker_. |cast Tame Beast##1515 |goto Ashenvale,72.2,82.2
modeldisplay 6214
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Lava Tarantula",{
model={7510},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Greater Lava Spiders around this area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Greater Lava Spider_. |cast Tame Beast##1515 |goto Searing Gorge,30.8,43.6
modeldisplay 7510
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Orange Tarantula",{
model={382},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Tarantulas around this area.
|tip They are level 14 - 15.
Use your Tame Beast ability on a _Tarantula_. |cast Tame Beast##1515 |goto Redridge Mountains,19.6,65.8
Click here to see another location for this pet |next |confirm
modeldisplay 382
step
Search for Darkfang Creepers around this area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Darkfang Creeper_. |cast Tame Beast##1515 |goto Dustwallow Marsh,43.0,48.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 382
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Spiders\\Red Tarantula",{
model={827},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Forest Lurkers around this area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Forest Lurker_. |cast Tame Beast##1515 |goto Loch Modan,33.8,31.0
Click here to see another location for this pet |next |confirm
modeldisplay 827
step
Search for Sand Skitterers around this area.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Sand Skitterer_. |cast Tame Beast##1515 |goto Silithus,60.6,31.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 827
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Vultures\\Blue Vulture",{
model={507},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dread Swoops around this area.
|tip They are level 30 -31.
Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515 |goto Desolace,65.0,27.6
Click here to see another location for this pet |next |confirm
modeldisplay 507
step
Search for Sky Shadows along the roads in this area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515 |goto Deadwind Pass,38.0,41.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Vultures\\Brown Vulture",{
model={410},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dread Swoops around this area.
|tip They are level 30 -31.
Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515 |goto Desolace,65.0,27.6
Click here to see another location for this pet |next |confirm
modeldisplay 410
step
Search for Sky Shadows along the roads in this area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515 |goto Deadwind Pass,38.0,41.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Vultures\\Red Vulture",{
model={7348},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Fire Rocs around this area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Fire Roc_. |cast Tame Beast##1515 |goto Tanaris,45.0,40.6
modeldisplay 7348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Vultures\\Black Vulture",{
model={1229},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Taloned Swoops around this area.
|tip They are level 8 -9.
Use your Tame Beast ability on a _Taloned Swoop_. |cast Tame Beast##1515 |goto Mulgore,52.8,21.4
Click here to see another location for this pet |next |confirm
modeldisplay 1229
step
Search for Greater Fleshrippers around this area.
|tip They are level 12 - 13.
Use your Tame Beast ability on a _Greater Fleshripper_. |cast Tame Beast##1515 |goto Westfall,59.8,60.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1229
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Condor\\Blue Condor",{
model={23962},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dragonbone Condors around this area.
|tip They are level 71 - 72.
Use your Tame Beast ability on a _Dragonbone Condor_. |cast Tame Beast##1515 |goto Dragonblight,51.6,26.6
modeldisplay 23962
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Condor\\Brown Condor",{
model={23482},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Loch Buzzards around this area.
|tip They are level 13 - 14.
Use your Tame Beast ability on a _Loch Buzzard_. |cast Tame Beast##1515 |goto Loch Modan,52.4,63.2
Click here to see another location for this pet |next |confirm
modeldisplay 23482
step
Search for Dire Condors around this area.
|tip They are level 15 - 16.
Use your Tame Beast ability on a _Dire Condor_. |cast Tame Beast##1515 |goto Redridge Mountains,20.0,65.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 23482
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Condor\\White Condor",{
model={25868},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Carion Condors around this area.
|tip They are level 70 - 71.
Use your Tame Beast ability on a _Carrion Condor_. |cast Tame Beast##1515 |goto Borean Tundra,85.6,35.8
Click here to see another location for this pet |next |confirm
modeldisplay 25868
step
Search for Dreadtalon flying around this area.
|tip It is a level 74 elite.
Use your Tame Beast ability on _Dreadtalon_. |cast Tame Beast##1515 |goto Dragonblight,46.6,44.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 25868
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\Blue Two Headed Vulture",{
model={37578},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
kill Trachela##21515
collect Trachela's Carcass##30618 |goto Terokkar Forest,43,51
Click here to see another location for this pet |next |confirm
step
Use Trachela's Carcass at the Scarecrow here. |goto Terokkar Forest,27,55 |use Trachela's Carcass##30618
Torgos will fly down.
Use your Tame Beast ability on _Torgos_. |cast Tame Beast##1515
modeldisplay 37578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\Green Two Headed Vulture",{
model={16882},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Bonepicker Felfeeders around this area.
|tip They are level 55, flying overhead.
Use your Tame Beast ability on a _Bonepicker Felfeeder_. |cast Tame Beast##1515 |goto Blasted Lands,58.4,33.4
modeldisplay 16882
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\Red Two Headed Vulture",{
model={34048},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Searing Rocs around this area.
|tip They are level 47 - 48
Use your Tame Beast ability on a _Searing Roc_. |cast Tame Beast##1515 |goto Tanaris,41.4,62.4
modeldisplay 34048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\White Two Headed Vulture",{
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\Red-Fiery Two Headed Vulture (Rare Spawn)",{
model={34048},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Emberwing around the area.
|tip It is level 45.
Emberwing can also be found around [44.6,40.6]
Use your Tame Beast ability on _Emberwing_. |cast Tame Beast##1515 |goto Tanaris,48.2,45.6
modeldisplay 34048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Two Headed Vulture\\Yellow Two Headed Vulture (Rare Spawn)",{
model={37536},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Spiteflayer around the area.
|tip It is level 56.
Use your Tame Beast ability on _Spiteflayer_. |cast Tame Beast##1515 |goto Blasted Lands,62.6,36.6
modeldisplay 37536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Black Cat",{
model={599},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Kurzen War Panthers around this area.
|tip They are level 24 - 25.
Use your Tame Beast ability on a _Kurzen War Panther_. |cast Tame Beast##1515 |goto Northern Stranglethorn,59.6,21.0
Click here to see another location for this pet |next |confirm
modeldisplay 599
step
Search for Elder Shadowmaw Panthers around this area.
|tip They are level 28 - 30.
You can find more around [49.0,43.2].
Use your Tame Beast ability on a _Elder Shadowmaw Panther_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,56.6,38.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 599
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Black Spotted Cat",{
model={11448},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Twilight Runners around this area.
|tip They are level 23 - 24.
Use your Tame Beast ability on a _Twilight Runner_. |cast Tame Beast##1515 |goto Stonetalon Mountains,39.0,21.2
modeldisplay 11448
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Black Striped Cat",{
model={321},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Moonstalkers around this area.
|tip They are level 12 -13.
Use your Tame Beast ability on a _Moonstalker_. |cast Tame Beast##1515 |goto Darkshore,41.8,37.0
Click here to see another location for this pet |next |confirm
modeldisplay 321
step
Search for Blackwind Sabercats around this area.
|tip They are level 70 - 71.
Use your Tame Beast ability on a _Blackwind Sabercat_. |cast Tame Beast##1515 |goto Terokkar Forest,73.4,71.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 321
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Brown Cat",{
model={1059},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Savannah Huntress' around this area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Savannah Huntress_. |cast Tame Beast##1515 |goto Northern Barrens,45.6,54.8
Click here to see another location for this pet |next |confirm
modeldisplay 1059
step
Search for Foothill Stalkers around the area.
|tip They are level 22 - 23.
Use your Tame Beast ability on a _Foothill Stalker_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,47.4,56.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1059
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Dark Striped Cat",{
model={11454},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Moonstalker Matriarchs around the area.
|tip They are level 18 - 19.
Use your Tame Beast ability on a _Moonstalker Matriarch_. |cast Tame Beast##1515 |goto Darkshore,43.0,63.0
modeldisplay 11454
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Green Striped Cat",{
model={35951},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Winna's Kitten here.
|tip It's level 47.
Use your Tame Beast ability on a _Winna's Kitten_. |cast Tame Beast##1515 |goto Felwood,38.6,53.6
modeldisplay 35951
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Orange Spotted Cat",{
model={1043},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Ridge Stalkers around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Ridge Stalker_. |cast Tame Beast##1515 |goto Badlands,70.6,29.6
Click here to see another location for this pet |next |confirm
modeldisplay 1043
step
label "location"
Search for Ridge Huntresses around the area.
|tip They are level 45 - 46.
Use your Tame Beast ability on a _Ridge Huntress_. |cast Tame Beast##1515 |goto Badlands,54.6,46.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1043
step
Search for Ridge Stalker Patriarchs around the area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Ridge Stalker Patriarch_. |cast Tame Beast##1515 |goto Badlands,19.2,55.4
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 1043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Orange Striped Cat",{
model={320},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Kurzen War Tigers around the area.
|tip They are level 24 - 25.
Use your Tame Beast ability on a _Kurzen War Tiger_. |cast Tame Beast##1515 |goto Northern Stranglethorn,59.6,21.0
Click here to see another location for this pet |next |confirm
modeldisplay 320
step
Search for Stranglethorn Tigress around the area.
|tip They are level 29 - 30.
Use your Tame Beast ability on a _Stranglethorn Tigress_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,41.8,28.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 320
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\White Cat",{
model={9958},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Young Frostsabers around the area.
|tip They are level 51.
Use your Tame Beast ability on a _Young Frostsaber_. |cast Tame Beast##1515 |goto Winterspring,46.6,16.6
modeldisplay 9958
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\White Spotted Cat",{
model={32764},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Snow Leopards around the area.
Use your Tame Beast ability on a _Snow Leopard_. |cast Tame Beast##1515 |goto Dun Morogh,78.4,50.8
Click here to see another location for this pet |next |confirm
modeldisplay 32764
step
Search for Frost Leopards around the area.
Use your Tame Beast ability on a _Frost Leopard_. |cast Tame Beast##1515 |goto Zul'Drak 61.8,61.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 32764
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\White Striped Cat",{
model={616},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
King Bangalash patrols around on top of this plataue.
|tip He is level 29.
Use your Tame Beast ability on _King Bangalash_. |cast Tame Beast##1515 |goto Northern Stranglethorn,47.8,59.2
modeldisplay 616
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Aqua Saber",{
model={10054},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Shy-Rotam around this area.
|tip She is level 53.
Use your Tame Beast ability on _Shy-Rotam_. |cast Tame Beast##1515 |goto Winterspring,46.2,17.6
modeldisplay 10054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Black Saber",{
model={35503},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Duskfang around this area.
|tip It is level 55.
Use your Tame Beast ability on _Duskfang_. |cast Tame Beast##1515 |goto Swamp of Sorrows,10.8,33.8
modeldisplay 35503
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Ice Saber",{
model={38005},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Frostsaber Stalkers around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Frostsaber Stalker_. |cast Tame Beast##1515 |goto Winterspring,53.0,23.0
modeldisplay 38005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Lavendar Saber Cat",{
model={9954},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Frostsaber Pride Watchers around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Ffrostsaber Pride Watcher_. |cast Tame Beast##1515 |goto Winterspring,46.0,19.0
modeldisplay 9954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Orange Spotted Saber",{
model={25005},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Dreadsabers around the area.
|tip They are level 75 - 76.
Use your Tame Beast ability on a _Dreadsaber_. |cast Tame Beast##1515 |goto Sholazar Basin,26.2,67.8
modeldisplay 25005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Orange Striped Saber",{
model={37546},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Shango here.
|tip It's a level 76.
Use your Tame Beast ability on _Shango_. |cast Tame Beast##1515 |goto Sholazar Basin,34.0,34.2
modeldisplay 37546
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\White Saber",{
model={38004},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Frostsaber Huntresses around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Frostsaber Huntress_. |cast Tame Beast##1515 |goto Winterspring,49.8,24.6
modeldisplay 38004
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\White Striped Frostsaber",{
model={37545},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Frostsabers around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Frostsaber_. |cast Tame Beast##1515 |goto Winterspring,52.8,21.6
modeldisplay 37545
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lynxes\\Brown Lynxes",{
model={30963},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Elder Springpaw around the area.
|tip They are level 8 - 9.
Use your Tame Beast ability on an _Elder Springpaw_. |cast Tame Beast##1515 |goto Eversong Woods,65.6,59.4
Click here to see another location for this pet |next |confirm
modeldisplay 30963
step
Search for Bobcats around the area.
|tip They are level 16 - 17.
Use your Tame Beast ability on a _Bobcat_. |cast Tame Beast##1515 |goto Loch Modan,69.8,73.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30963
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lynxes\\Red Lynxes",{
model={15507},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Springpaw Stalkers around the area.
|tip They are level 4 - 7.
Use your Tame Beast ability on a _Springpaw Stalker_. |cast Tame Beast##1515 |goto Eversong Woods,44.0,65.8
modeldisplay 15507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lions\\Black Lion",{
model={26618},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Pitch here.
|tip It is level 76.
Use your Tame Beast ability on _Pitch_. |cast Tame Beast##1515 |goto Sholazar Basin,50.6,76.8
modeldisplay 26618
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lions\\Gold Lions",{
model={1973},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Savannah Highmanes around this area.
|tip They are level 12 - 13.
Search grassy patches nearby if you are having trouble finding them.
Use your Tame Beast ability on a _Savannah Highmane_. |cast Tame Beast##1515 |goto Northern Barrens,44.2,58.0
Click here to see another location for this pet |next |confirm
modeldisplay 1973
step
label "location2"
Search for Savannah Prowlers around this area.
|tip They are level 14 - 15.
Use your Tame Beast ability on a _Savannah Prowler_. |cast Tame Beast##1515 |goto Northern Barrens,54.8,31.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1973
step
Search for Plains Pridemane around this area. They are level 33.
Use your Tame Beast ability on a _Plains Pridemane_. |cast Tame Beast##1515 |goto Southern Barrens,46.8,47.6
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 1973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\Black Hunched Cat",{
model={29042},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Pride of Bethekk in this area.
|tip They are level 84 - 85 Elites.
|tip Keep in mind that you should frost trap this before attempting to tame.
Use your Tame Beast ability on a _Pride of Bethekk_. |cast Tame Beast##1515 |goto Zul'Gurub,47.8,21.6
modeldisplay 29042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\Black Spotted Hunched Cat",{
model={25708},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Cursed Offspring of Har'koa around the area.
|tip They are level 76 - 77.
Use your Tame Beast ability on a _Cursed Offspring of Har'koa_. |cast Tame Beast##1515 |goto Zul'Drak,65.2,68.0
modeldisplay 25708
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\Orange Striped Hunched Cat",{
model={34248},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Tamed Tol'vir Prowlers in the area.
|tip They are level 85.
Use your Tame Beast ability on a _Tamed Tol'vir Prowler_. |cast Tame Beast##1515 |goto Lost City of the Tol'vir,33.6,22.8
Click here to see another location for this pet |next |confirm
modeldisplay 34248
step
Search for Tigers around this area.
|tip They are level 85.
Use your Tame Beast ability on a _Tiger_. |cast Tame Beast##1515 |goto Uldum,51.2,78.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 34248
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Core Hounds\\Green Core Hounds",{
model={20521},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Spawn of Uvuros around this area.
|tip It is level 69.
Use your Tame Beast ability on _Spawn of Uvuros_. |cast Tame Beast##1515 |goto Shadowmoon Valley,54.2,52.8
modeldisplay 20521
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Core Hounds\\Gray Core Hounds",{
model={17028},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for The Kurken around this area.
|tip It is level 12.
|tip It's inside the cave at Stillpine Hold.
Use your Tame Beast ability on _The Kurken_. |cast Tame Beast##1515 |goto Azuremyst Isle,49.6,13.0
modeldisplay 17028
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Core Hounds\\Red Core Hounds",{
model={12189},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Core Hounds around this area.
|tip They are level 80.
Note that if you have unlocked the Firelands Daily Quests, you won't be able to tame this pet.
Use your Tame Beast ability on a _Core Hound_. |cast Tame Beast##1515 |goto Mount Hyjal,34.8,55.6
Click here to see another location for this pet |next |confirm
modeldisplay 12189
step
label "location2"
Search for Smolderos the Carbonizer.
|tip He patrols around the area. He is a level 82 elite.
Use your Tame Beast ability on _Smolderos the Carbonizer_. |cast Tame Beast##1515 |goto Mount Hyjal,83.6,62.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 12189
step
Search for Core Hounds around this area.
|tip They are level 59 - 62 elites.
Use your Tame Beast ability on a _Core Hound_. |cast Tame Beast##1515 |goto Molten Core,49.6,30.6
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 12189
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Core Hounds\\Yellow and Green Core Hounds",{
model={37559},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Gomegaz around this area.
|tip He is level 57.
Use your Tame Beast ability on _Gomegaz_. |cast Tame Beast##1515 |goto Blasted Lands,51.6,42.6
Click here to see another location for this pet |next |confirm
modeldisplay 37559
step
Search for Svarnos around this area.
|tip He is level 85.
Use your Tame Beast ability on _Svarnos_. |cast Tame Beast##1515 |goto Tol Barad,48.4,31.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 37559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Devilsaur\\Black Devilsaur",{
model={5238},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
He patrols down to [39.0,48.6].
Search for an Ironhide Devilsaur around this area.
Use your Tame Beast ability on an _Ironhide Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,34.8,28.0
Click here to see another location for this pet |next |confirm
modeldisplay 5238
step
Search for Tyrantus around this area. He patrols and is level 71.
Use your Tame Beast ability on _Tyrantus_. |cast Tame Beast##1515 |goto Netherstorm,45.4,10.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 5238
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Devilsaur\\Red Devilsaur",{
model={5240},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
He patrols down to [75.4,43.6].
Search for a Tyrant Devilsaur around this area.
Use your Tame Beast ability on a _Tyrant Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,57.6,72.8
Click here to see another location for this pet |next |confirm
modeldisplay 5240
step
She can also be found at [38.0,64.4].
Search for the Devilsaur Queen around this area.
|tip She is a level 54 elite.
Use your Tame Beast ability on the _Devilsaur Queen_. |cast Tame Beast##1515 |goto Un'Goro Crater,34.2,80.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 5240
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Devilsaur\\White Devilsaur",{
model={5239},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
It patrols to [58.0,42.4].
Search for the Devilsaur around this area.
Use your Tame Beast ability on the _Devilsaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,58.0,74.6
modeldisplay 5239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Mastiffs\\Black Mastiff",{
model={35355},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Onslaught Bloodhounds around the area.
|tip They are level 71 - 72.
Use your Tame Beast ability on a _Onslaught Bloodhound_. |cast Tame Beast##1515 |goto Dragonblight,87.6,38.0
modeldisplay 35355
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Mastiffs\\Brown Mastiff",{
model={33998},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Blighthounds around the area.
|tip They are level 40 - 41.
|tip Note that when you aggro one, the others will come.
Use your Tame Beast ability on a _Blighthound_. |cast Tame Beast##1515 |goto Eastern Plaguelands,22.6,68.2
modeldisplay 33998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Mastiffs\\Gray Mastiff",{
model={30213},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Dragonflayer Hunting Hounds around this area.
|tip They are level 68.
Use your Tame Beast ability on a _Dragonflayer Hunting Hound_. |cast Tame Beast##1515 |goto Howling Fjord,69.2,56.0
modeldisplay 30213
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Mastiffs\\Red Mastiff",{
model={35353},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for the Scarlet Tracking Hound.
|tip They are level 32 elites.
Note that there will be several later inside of the instance.
Use your Tame Beast ability on a _Scarlet Tracking Hound_. |cast Tame Beast##1515 |goto Scarlet Monastery/2,20.6,34.6
modeldisplay 35353
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Blue Demon Dog",{
model={9021},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ravenous Darkhounds around the area.
|tip They are level 9 - 10.
Use your Tame Beast ability on a _Ravenous Darkhound_. |cast Tame Beast##1515 |goto Tirisfal Glades,83.8,44.0
modeldisplay 9021
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Ghostly Gray Demon Dog",{
model={16052},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Shadowbeasts around this area.
|tip They are level 69 - 70 elites.
Use your Tame Beast ability on a _Shadowbeast_. |cast Tame Beast##1515  |goto Karazhan,61.4,19.6
modeldisplay 16052
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Ghostly White Demon Dog",{
model={16049},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Phase Hounds around this area.
|tip They are level 70 elites.
Use your Tame Beast ability on a _Phase Hound_. |cast Tame Beast##1515 |goto Karazhan,61.4,19.6
modeldisplay 16049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Gray Demon Dog",{
model={6195},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Deathshadow Hounds around the area.
|tip They are level 70 - 71.
Use your Tame Beast ability on a _Deathshadow Hound_. |cast Tame Beast##1515 |goto Nagrand,10.6,39.0
modeldisplay 6195
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Purple Demon Dog",{
model={37773},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Dreadbeasts around the area.
|tip They are level 71 elites.
Use your Tame Beast ability on a _Dreadbeast_. |cast Tame Beast##1515 |goto Karazhan,61.4,19.6
modeldisplay 37773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Demon Dogs\\Red Demon Dog",{
model={8181},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Rokad the Ravager around the area.
|tip He is a level 73 elite.
Use your Tame Beast ability on _Rokad the Ravager_. |cast Tame Beast##1515 |goto Karazhan,74.6,21.6
Click here to see another location for this pet |next |confirm
modeldisplay 8181
step
Search for Bloodhound Mastiff around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Bloodhound Mastiff_. |cast Tame Beast##1515 |goto Blackrock Depths,55.8,69.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 8181
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Runed Demon Dogs\\Blue Runed Demon Dog",{
model={24906},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Coldarra Mage Slayers around the area.
|tip They are level 69.
Use your Tame Beast ability on a _Coldarra Mage Slayer_. |cast Tame Beast##1515 |goto Borean Tundra,33.8,28.8
modeldisplay 24906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Runed Demon Dogs\\Green Runed Demon Dog",{
model={37408},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Plaguehounds around the area.
|tip They are level 41.
Use your Tame Beast ability on a _Plaguehound_. |cast Tame Beast##1515 |goto Eastern Plaguelands,51.2,54.2
modeldisplay 37408
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Dogs\\Runed Demon Dogs\\Red Runed Demon Dog",{
model={25785},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Vargul Blighthounds around the area.
|tip They are level 74 - 75.
Use your Tame Beast ability on a _Vargul Blighthound_. |cast Tame Beast##1515 |goto Zul'Drak,19.4,61.6
modeldisplay 25785
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Foxes\\Black Fox",{
model={30255},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Forest Stalkers around the area.
|tip They are level 18 - 19.
Use your Tame Beast ability on a _Forest Stalker_. |cast Tame Beast##1515 |goto Redridge Mountains 63.4,41.2
modeldisplay 30255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Foxes\\Brown Fox",{
model={30302},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Redridge Fox around the area.
|tip They are level 15 - 16.
You can find more around [43.6,70.4].
Use your Tame Beast ability on a _Redridge Fox_. |cast Tame Beast##1515 |goto Redridge Mountains,21.6,64.8
Click here to see another location for this pet |next |confirm
modeldisplay 30302
step
Search for a Rabid Fox around the area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Rabid Fox_. |cast Tame Beast##1515 |goto Western Plaguelands,48.8,30.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30302
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Foxes\\Gray Fox",{
model={30239},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for an Ashtail around the area.
|tip They are level 16.
Use your Tame Beast ability on an _Ashtail_. |cast Tame Beast##1515 |goto Loch Modan,73.6,44.0
modeldisplay 30239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Foxes\\Red Foxes",{
model={30301},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Hill Fox around the area.
|tip They are level 16.
Use your Tame Beast ability on a _Hill Fox_. |cast Tame Beast##1515 |goto Loch Modan,74.4,38.6
Click here to see another location for this pet |next |confirm
modeldisplay 30301
step
Search for a Whitetail Fox around the area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Whitetail Fox_. |cast Tame Beast##1515 |goto Western Plaguelands,40.2,60.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Foxes\\White Fox",{
model={30254},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Highlands Fox around the area.
|tip They are level 13 - 14.
Use your Tame Beast ability on a _Highlands Fox_. |cast Tame Beast##1515 |goto Ruins of Gilneas,61.8,32.2
Click here to see another location for this pet |next |confirm
modeldisplay 30254
step
Search for a Snowfrolic Fox around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Snowfrolic Fox_. |cast Tame Beast##1515 |goto Winterspring,62.6,26.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30254
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Brown Hyena",{
model={2726},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Starving Bonepaw around the area.
|tip They are level 30 - 31.
Use your Tame Beast ability on a _Starving Bonepaw_. |cast Tame Beast##1515 |goto Desolace,70.8,25.6
Click here to see another location for this pet |next |confirm
modeldisplay 2726
step
Search for a Tundra Scavenger around the area.
|tip They are level 72 - 73.
Use your Tame Beast ability on a _Tundra Scavenger_. |cast Tame Beast##1515 |goto Dragonblight,41.2,45.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Gray Hyena",{
model={2714},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Snickeringfang Hyena around the area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Snickerfang Hyena_. |cast Tame Beast##1515 |goto Blasted Lands,50.2,34.6
modeldisplay 2714
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Orange Hyena",{
model={1536},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Blisterpaw Hyena around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Blisterpaw Hyena_. |cast Tame Beast##1515 |goto Tanaris,48.0,27.2
modeldisplay 1536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Orange Hyena Lighter",{
model={1535},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Kolkar Packhounds around the area.
|tip They are level 13.
Use your Tame Beast ability on a _Kolkar Packhound_. |cast Tame Beast##1515 |goto Northern Barrens,52.8,76.4
Click here to see another location for this pet |next |confirm
modeldisplay 1535
step
Search for Hecklefang Scavengers around the area.
|tip They are level 30 - 31.
Use your Tame Beast ability on a _Hecklefang Scavenger_. |cast Tame Beast##1515 |goto Southern Barrens,45.8,43.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1535
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Purple Hyena",{
model={10903},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Rabid Blisterpaw around this area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Rabid Blisterpaw_. |cast Tame Beast##1515 |goto Tanaris,56.2,56.6
modeldisplay 10903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Red Hyena",{
model={31352},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Bloodsnarl Hyena around this area.
|tip They are level 82 - 83.
Use your Tame Beast ability on a _Bloodsnarl Hyena_. |cast Tame Beast##1515 |goto Uldum,55.6,58.4
modeldisplay 31352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Hyenas\\Yellow Hyena",{
model={2710},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Hecklefang Hyena around this area.
|tip They are level 15 - 16.
Use your Tame Beast ability on a _Hecklefang Hyena_. |cast Tame Beast##1515 |goto Northern Barrens,54.4,27.0
modeldisplay 2710
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Beige Moth",{
model={17574},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Teromoths around the area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.4,31.6
modeldisplay 17574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Blue and Yellow Moth",{
model={17798},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Teromoths around the area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.4,31.6
modeldisplay 17798
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Blue Moth",{
model={17709},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Royal Blue Flutterers around the area.
|tip They are level 14 - 16.
Use your Tame Beast ability on a _Royal Blue Flutterer_. |cast Tame Beast##1515 |goto Bloodmyst Isle,44.6,56.2
Click here to see another location for this pet |next |confirm
modeldisplay 17709
step
Search for Shimmerwing Moths around the area.
|tip They are level 68 - 69.
Use your Tame Beast ability on a _Shimmerwing Moth_. |cast Tame Beast##1515 |goto Netherstorm,44.6,55.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 17709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Green Moth",{
model={17795},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Vicious Termoth around the area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Vicious Teromoth_. |cast Tame Beast##1515 |goto Terokkar Forest,45.0,22.6
modeldisplay 17795
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Gray Moth",{
model={37566},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Vale Moth around this area.
|tip They are level 1.
Note that if you are Horde you will likely die trying to attain this pet.
Use your Tame Beast ability on a _Vale Moth_. |cast Tame Beast##1515 |goto Azuremyst Isle,80.6,42.6
modeldisplay 37566
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\Tan Moth",{
model={23316},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Bloodspore Moth around the area.
|tip They are level 68 - 69.
Use your Tame Beast ability on a _Bloodspore Moth_. |cast Tame Beast##1515 |goto Borean Tundra,52.8,53.8
modeldisplay 23316
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Moth\\White Moth",{
model={23237},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Aspatha the Broodmother here.
|tip She is level 71.
Use your Tame Beast ability on _Aspatha the Broodmother_. |cast Tame Beast##1515 |goto Borean Tundra,48.6,59.0
modeldisplay 23237
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Black Raptor",{
model={21825},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Goreclaw the Ravenous here.
|tip He is level 38.
Use your Tame Beast ability on a _Goreclaw the Ravenous_. |cast Tame Beast##1515 |goto Dustwallow Marsh,32.6,65.2
Click here to see another location for this pet |next |confirm
modeldisplay 21825
step
Search for Venomhide Ravasaurs around the area.
|tip They are level 50 - 51.
Use your Tame Beast ability on a _Venomhide Ravasaur_. |cast Tame Beast##1515 |goto Un'Goro Crater,69.4,53.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 21825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Blue Raptor",{
model={949},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mottled Screechers around the area.
|tip They are level 22.
Use your Tame Beast ability on a _Mottled Screecher_. |cast Tame Beast##1515 |goto Wetlands,29.6,45.6
Click here to see another location for this pet |next |confirm
modeldisplay 949
step
Search for Tethis around this area.
|tip He is level 28.
Use your Tame Beast ability on a _Tethis_. |cast Tame Beast##1515 |goto Northern Stranglethorn,63.0,62.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 949
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Green Raptor",{
model={676},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Highland Scytheclaws around the area.
|tip They are level 22 - 23.
Use your Tame Beast ability on a _Highland Scytheclaw_. |cast Tame Beast##1515 |goto Wetlands,35.4,18.6
modeldisplay 676
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Gray Raptor",{
model={1337},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Screamslash here.
|tip It is level 9.
Use your Tame Beast ability on a _Screamlash_. |cast Tame Beast##1515 |goto Durotar,36.0,32.4
Click here to see another location for this pet |next |confirm
modeldisplay 1337
step
Search for King Reaperclaw here. He is level 18.
Use your Tame Beast ability on a _King Reaperclaw_. |cast Tame Beast##1515 |goto Northern Barrens,65.2,58.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1337
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Orange Raptor",{
model={787},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Highland Razormaw around the area.
|tip They are level 22 - 23.
Use your Tame Beast ability on a _Highland Razormaw_. |cast Tame Beast##1515 |goto Wetlands,32.8,21.0
Click here to see another location for this pet |next |confirm
modeldisplay 787
step
Search for Terrortooth Scytheclaw around the area.
|tip They are level 30 - 31.
Use your Tame Beast ability on a _Terrortooth Scytheclaw_. |cast Tame Beast##1515 |goto Southern Barrens,41.2,24.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 787
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Purple Raptor",{
model={1747},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Sunscale Raptors around the area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Sunscale Raptor_. |cast Tame Beast##1515 |goto Northern Barrens,51.4,35.0
Click here to see another location for this pet |next |confirm
modeldisplay 1747
step
Search for Mottled Raptors around the area.
|tip They are level 22.
Use your Tame Beast ability on a _Mottled Raptor_. |cast Tame Beast##1515 |goto Wetlands,23.2,49.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Red Raptor",{
model={1960},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Bloodtalon Taillashers around the area.
|tip They are level 6 - 7.
Use your Tame Beast ability on a _Bloodtalon Taillasher_. |cast Tame Beast##1515 |goto Durotar,44.6,32.6
Click here to see another location for this pet |next |confirm
modeldisplay 1960
step
label "location2"
Search for Terrortooth Runners around the area.
|tip They are level 29 - 30.
Use your Tame Beast ability on a _Terrortooth Runner_. |cast Tame Beast##1515 |goto Southern Barrens,42.2,22.0
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1960
step
Search for Bloodfen Raptors around the area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Bloodfen Raptor_. |cast Tame Beast##1515 |goto Dustwallow Marsh,47.6,17.6
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 1960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Yellow Raptor",{
model={11316},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Highland Striders around the area.
|tip They are level 25 - 26.
Use your Tame Beast ability on a _Highland Strider_. |cast Tame Beast##1515 |goto Arathi Highlands,20.8,20.6
modeldisplay 11316
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Black Spiked Raptor",{
model={19770},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Daggermaw Blackhide around this area.
|tip They are level 65 - 66.
Use your Tame Beast ability on a _Daggermaw Blackhide_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,48.8,46.6
modeldisplay 19770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Blue Spiked Raptor",{
model={19770},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Drakuru Raptor around the area.
|tip They are level 74 - 75.
Use your Tame Beast ability on a _Drakuru Raptor_. |cast Tame Beast##1515 |goto Zul'Drak,29.2,70.8
modeldisplay 19770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Brown Spiked Raptor",{
model={19736},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Deviate Terrortooth around the area.
|tip They are level 31 - 32.
Use your Tame Beast ability on a _Deviate Terrortooth_. |cast Tame Beast##1515 |goto Southern Barrens,52.2,39.6
Click here to see another location for this pet |next |confirm
modeldisplay 19736
step
Search for a Bladespire Raptor around the area.
|tip They are level 65 - 66.
Use your Tame Beast ability on a _Bladespire Raptor_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,42.6,53.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 19736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Green Spiked Raptor",{
model={19742},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Felsworn Daggermaw around the area.
|tip They are level 67 - 68.
Use your Tame Beast ability on a _Felsworn Daggermaw_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,70.6,32.6
modeldisplay 19742
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Raptors\\Red Spiked Raptor",{
model={30847},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Corrupted Bloodtalons around the area.
|tip They are level 2 - 3.
Use your Tame Beast ability on a _Corrupted Bloodtalon_. |cast Tame Beast##1515 |goto Durotar,61.6,91.8
Click here to see another location for this pet |next |confirm
modeldisplay 30847
step
Search for Daggermaw Lashtail around the area.
|tip They are level 66 - 67.
Use your Tame Beast ability on a _Daggermaw Lashtail_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,64.8,54.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\Brown Tallstrider",{
model={1219},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Greater Plainstriders around the area.
|tip They are level 10 - 12.
Use your Tame Beast ability on a _Greater Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,66.6,38.6
Click here to see another location for this pet |next |confirm
modeldisplay 1219
step
Search for a Foreststrider Fledgling around the area.
|tip They are level 12.
Use your Tame Beast ability on a _Foreststrider Fledgling_. |cast Tame Beast##1515 |goto Darkshore,40.8,48.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1219
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\Gray Tallstrider",{
model={1220},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for an Ornery Plainstrider around this area.
|tip They are level 16 - 17.
Use your Tame Beast ability on a _Ornery Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,64.6,60.0
modeldisplay 1220
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\Pink Tallstrider",{
model={1961},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Deviate Plainstrider around this area.
|tip They are level 31 - 32.
Use your Tame Beast ability on a _Deviate Plainstrider_. |cast Tame Beast##1515 |goto Southern Barrens,50.8,41.2
modeldisplay 1961
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\Purple Tallstrider",{
model={21087},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Lost Torranche around this area.
|tip They are level 70.
You will need a flying mount to have access to these.
Use your Tame Beast ability on a _Lost Torranche_. |cast Tame Beast##1515 |goto Terokkar Forest,45.2,94.2
modeldisplay 21087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\Turqouise Tallstrider",{
model={38},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Swampstider around the area.
|tip They are level 49 - 52.
Use your Tame Beast ability on a _Swampstrider_. |cast Tame Beast##1515 |goto Swamp of Sorrows,83.6,30.0
modeldisplay 38
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Tallstriders\\White Tallstrider",{
model={1221},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for an Elder Plainstrider around the area.
|tip They are level 8 - 9.
Use your Tame Beast ability on a _Elder Plainstrider_. |cast Tame Beast##1515 |goto Mulgore,57.8,56.4
Click here to see another location for this pet |next |confirm
modeldisplay 1221
step
Search for a Fleeting Plainstrider around the area.
|tip They are level 12 - 13.
Use your Tame Beast ability on a _Fleeting Plainstrider_. |cast Tame Beast##1515 |goto Northern Barrens,39.8,55.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1221
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Blue and Red Wasp",{
model={29113},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Sapphire Hive Drone around the area.
|tip They are level 75 - 77.
Use your Tame Beast ability on a _Sapphire Hive Drone_. |cast Tame Beast##1515 |goto Sholazar Basin,61.6,79.6
modeldisplay 29113
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Blue and Purple Wasp",{
model={37861},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Florawing Needler around the area.
|tip They are level 84 - 85.
You can find more around [44.0,51.2].
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub,33.0,49.2
modeldisplay 37861
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Green and Red Wasp",{
model={37743},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Ferndweller Wasp around the area.
|tip They are level 83 - 84.
Use your Tame Beast ability on a _Ferndweller Wasp_. |cast Tame Beast##1515 |goto Uldum,57.8,47.6
Click here to see another location for this pet |next |confirm
modeldisplay 37743
step
Search for a Florawing Needlers around the area.
|tip They are level 84 - 85.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub,32.0,47.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 37743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Green Wasp",{
model={482},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Zukk'ash Wasps around the area.
|tip They are level 38 - 39.
Use your Tame Beast ability on a _Zukk'ash Wasp_. |cast Tame Beast##1515 |goto Feralas,75.6,62.8
modeldisplay 482
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Orange Wasp",{
model={37859},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Florawing Needlers around the area.
|tip They are level 84 - 85.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub 32.8,49.2
modeldisplay 37859
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Purple Wasp",{
model={37860},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Florawing Needlers around the area.
|tip They are level 84 - 85.
Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515 |goto Zul'Gurub 32.8,49.2
modeldisplay 37860
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Red Wasp",{
model={92},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Zukk'ash Stingers around the area.
|tip They are level 38 - 39.
Use your Tame Beast ability on a _Zukk'ash Stinger_. |cast Tame Beast##1515 |goto Feralas,78.8,64.6
modeldisplay 92
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Tan Wasp",{
model={36034},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Silithid Wasps around the area.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Silithid Wasp_. |cast Tame Beast##1515 |goto Thousand Needles,70.4,86.4
modeldisplay 36034
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Yellow Wasp",{
model={11090},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Gorishi Wasps around the area.
|tip They are level 51 - 52.
Use your Tame Beast ability on a _Gorishi Wasp_. |cast Tame Beast##1515 |goto Un'Goro Crater,53.4,76.8
modeldisplay 11090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Purple Flame Fly",{
model={19252},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Marshlight Bleeder around the area.
|tip They are level 62 - 63.
Use your Tame Beast ability on a _Marshlight Bleeder_. |cast Tame Beast##1515 |goto Zangarmarsh,25.8,33.2
modeldisplay 19252
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Red Flame Fly",{
model={18724},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Blacksting around the area.
|tip It is level 62.
Use your Tame Beast ability on _Blacksting_. |cast Tame Beast##1515 |goto Zangarmarsh,49.8,59.6
modeldisplay 18724
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Yellow Flame Fly",{
model={18723},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Bogflare Needler around the area.
|tip They are level 62.
Use your Tame Beast ability on a _Bogflare Needler_. |cast Tame Beast##1515 |goto Zangarmarsh,39.6,34.2
modeldisplay 18723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Black Wolf",{
class="HUNTER",
model={780},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Blackrock Battle Worg in the area.
|tip They are level 16.
Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515 |goto Redridge Mountains,48.8,37.4
Click here to see another location for this pet |next |confirm
modeldisplay 780
step
Search for Vilebranch Raiding Wolves around the area. They are level 32 - 33.
Use your Tame Beast ability on a _Vilebranch Raiding Wolf_. |cast Tame Beast##1515 |goto The Hinterlands,58.6,64.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 780
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Diseased Wolf",{
class="HUNTER",
model={4124},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Rabid Worgs around the area.
|tip They are level 11.
Use your Tame Beast ability on a _Rabid Worg_. |cast Tame Beast##1515 |goto Silverpine Forest,43.0,19.8
Click here to see another location for this pet |next |confirm
modeldisplay 4124
step
Search for Felpaw Wolves around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Felpaw Wolf_. |cast Tame Beast##1515 |goto Felwood,53.2,83.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 4124
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Gray Wolf",{
class="HUNTER",
model={18156},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Gray Forest Wolves around the area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Gray Forest Wolf_. |cast Tame Beast##1515 |goto Elwynn Forest,61.0,64.6
Click here to see another location for this pet |next |confirm
modeldisplay 18156
step
Search for Longtooth Runners around the area.
|tip They are level 36.
Use your Tame Beast ability on a _Longtooth Runner_. |cast Tame Beast##1515 |goto Feralas,57.8,47.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 18156
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Tan Wolf",{
class="HUNTER",
model={1100},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Coyote around the area.
|tip They are level 10 - 11.
Use your Tame Beast ability on a _Coyote_. |cast Tame Beast##1515 |goto Westfall,51.6,23.6
Click here to see another location for this pet |next |confirm
modeldisplay 1100
step
Search for Feral Crag Coyotes around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Feral Crag Coyote_. |cast Tame Beast##1515 |goto Badlands,70.8,29.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1100
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\White Wolf",{
class="HUNTER",
model={11416},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Winter Wolves around the area.
|tip They are level 4 - 5.
Use your Tame Beast ability on a _Winter Wolf_. |cast Tame Beast##1515 |goto Dun Morogh,45.2,39.8
Click here to see another location for this pet |next |confirm
modeldisplay 11416
step
Search for Ghostpaw Runners around the area.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Ghostpaw Runner_. |cast Tame Beast##1515 |goto Ashenvale,27.6,28.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11416
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Bicolor Worg",{
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Black Worg",{
class="HUNTER",
model={741},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Worgs around the area.
|tip It is level 9 - 10.
Use your Tame Beast ability on a _Worg_. |cast Tame Beast##1515 |goto Silverpine Forest,60.6,16.0
Click here to see another location for this pet |next |confirm
modeldisplay 741
step
Search for Black Ravagers around the area.
|tip They are level 22 - 23.
Use your Tame Beast ability on a _Black Ravager_. |cast Tame Beast##1515 |goto Duskwood,27.6,67.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Brown Worg",{
class="HUNTER",
model={37576},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ripp around the area.
|tip They are level 58 - 59.
Use your Tame Beast ability on _Ripp_. |cast Tame Beast##1515 |goto Hellfire Peninsula,68.6,73.6
modeldisplay 37576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Ghost Worg",{
class="HUNTER",
model={34508},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for The Lone Hunter around the area.
|tip They are level 41.
Use your Tame Beast ability on _The Lone Hunter_. |cast Tame Beast##1515 |goto Eastern Plaguelands,40.0,83.6
modeldisplay 34508
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Gray Worg",{
class="HUNTER",
model={11415},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Prowlers around the area.
|tip They are level 9 - 10.
Use your Tame Beast ability on a _Prowler_. |cast Tame Beast##1515 |goto Elwynn Forest,79.8,60.6
Click here to see another location for this pet |next |confirm
modeldisplay 11415
step
Search for Silvermane Stalkers around the area.
|tip They are level 31 - 32.
Use your Tame Beast ability on a _Silvermane Stalker_. |cast Tame Beast##1515 |goto The Hinterlands,72.0,57.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11415
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Red Worg",{
class="HUNTER",
model={9372},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Ember Worgs around the area.
|tip They are level 49 - 50.
Use your Tame Beast ability on a _Ember Worg_. |cast Tame Beast##1515 |goto Burning Steppes,19.0,54.6
Click here to see another location for this pet |next |confirm
modeldisplay 9372
step
Search for Thunderlord Dire Wolves around the area.
|tip They are level 65 - 66.
Use your Tame Beast ability on a _Thunderlord Dire Wolf_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,52.8,67.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 9372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\White Worg",{
class="HUNTER",
model={10278},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ghost Howl around the area.
|tip They are level 8.
Use your Tame Beast ability on _Ghost Howl_. |cast Tame Beast##1515 |goto Mulgore,44.6,16.8
modeldisplay 10278
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Black Saber Worg",{
class="HUNTER",
model={40147},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Serch for Blackrock Battle Worgs around the area.
|tip They are level 1.
Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515 |goto Elwynn Forest,47.6,40.6
Click here to see another location for this pet |next |confirm
modeldisplay 40147
step
Search for Bloodthirsty Worgs around the area.
|tip They are level 68 -69.
Use your Tame Beast ability on a _Bloodthirsty Worg_. |cast Tame Beast##1515 |goto Howling Fjord,56.8,53.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 40147
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Brown Saber Worg",{
class="HUNTER",
model={22502},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Bjomolf around this area.
|tip He is level 72.
Use your Tame Beast ability on _Bjomolf_. |cast Tame Beast##1515 |goto Howling Fjord,28.8,22.8
modeldisplay 22502
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Gray Saber Worg",{
class="HUNTER",
model={22044},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dragonflayer Worg around the area.
|tip They are level 67.
Use your Tame Beast ability on a _Dragonflayer Worg_. |cast Tame Beast##1515 |goto Howling Fjord,59.0,59.8
Click here to see another location for this pet |next |confirm
modeldisplay 22044
step
Search for Tundra Wolves around the area.
|tip They are level 68.
Use your Tame Beast ability on a _Tundra Wolf_. |cast Tame Beast##1515 |goto Borean Tundra,49.2,48.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 22044
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\White Saber Worg",{
class="HUNTER",
model={22089},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Serch for Winterskorn Worgs around the area.
|tip They are level 68 - 69.
Use your Tame Beast ability on a _Winterskorn Worg_. |cast Tame Beast##1515 |goto Howling Fjord,45.6,30.2
Click here to see another location for this pet |next |confirm
modeldisplay 22089
step
Search for Frostworgs around the area.
|tip They are level 79 - 80.
Use your Tame Beast ability on a _Frostworg_. |cast Tame Beast##1515 |goto The Storm Peaks,56.6,65.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 22089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Black Armored Worg",{
class="HUNTER",
model={14334},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Shattered Hand Warhounds around the area.
|tip They will be more deeper in. They are level 55 - 69.
Use your Tame Beast ability on a _Shattered Hand Warhound_. |cast Tame Beast##1515 |goto Hellfire Ramparts,47.8,51.4
modeldisplay 14334
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Black Bear",{
model={23992},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Black Bears around the area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Black Bear_. |cast Tame Beast##1515 |goto Loch Modan,28.8,51.6
Click here to see another location for this pet |next |confirm
modeldisplay 23992
step
Search for Vicious Black Bear around the area.
|tip They are level 23 - 24.
Use your Tame Beast ability on a _Vicious Black Bear_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,59.6,68.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 23992
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Brown Bear",{
model={1006},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Young Forest Bears around the area.
|tip They are level 8 - 9.
Use your Tame Beast ability on a _Young Forest Bear_. |cast Tame Beast##1515 |goto Elwynn Forest,44.6,78.0
Click here to see another location for this pet |next |confirm
modeldisplay 1006
step
Search for Corrupted Thistle Bears around the area.
|tip They are level 10 - 11.
Use your Tame Beast ability on a _Corrupted Thistle Bear_. |cast Tame Beast##1515 |goto Darkshore,54.6,28.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Dark Brown Bear",{
model={1990},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ashenvale Bears around the area.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Ashenvale Bear_. |cast Tame Beast##1515 |goto Ashenvale,45.8,51.8
modeldisplay 1990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Gray Bear",{
model={8840},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Ice Claw Bears around the area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Ice Claw Bears_. |cast Tame Beast##1515 |goto Dun Morogh,69.2,56.2
Click here to see another location for this pet |next |confirm
modeldisplay 8840
step
Search for Elder Gray Bears around the area.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Elder Gray Bear_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,33.6,63.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 8840
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\White Bear",{
model={913},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mangeclaw around the area.
|tip It is level 11.
Use your Tame Beast ability on _Mangeclaw_. |cast Tame Beast##1515 |goto Dun Morogh,87.6,50.0
Click here to see another location for this pet |next |confirm
modeldisplay 913
step
Search for Shardtooth Bears around the area.
|tip It is level 49 - 50.
You can find more around [53.2,30.4].
Use your Tame Beast ability on a _Shardtooth Bear_. |cast Tame Beast##1515 |goto Winterspring,29.2,59.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 913
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Black Diseased Bear",{
model={1082},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Giant Rabid Bears around the area.
|tip They are level 11 - 12.
Use your Tame Beast ability on a _Giant Rabid Bear_. |cast Tame Beast##1515 |goto Silverpine Forest,43.0,19.8
Click here to see another location for this pet |next |confirm
modeldisplay 1082
step
Search for Diseased Black Bears around the area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Diseased Black Bear_. |cast Tame Beast##1515 |goto Western Plaguelands,34.8,66.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1082
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Dark Brown Diseased Bear",{
model={37737},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Plagued Bruins around the area.
|tip They are level 8 - 9.
Use your Tame Beast ability on a _Plagued Bruin_. |cast Tame Beast##1515 |goto Tirisfal Glades,72.0,57.2
Click here to see another location for this pet |next |confirm
modeldisplay 37737
step
Search for Consumed Thistle Bear around the area.
|tip They are level 18 - 19.
Use your Tame Beast ability on a _Consumed Thistle Bear_. |cast Tame Beast##1515 |goto Darkshore,4.4,79.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 37737
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\Gray Diseased Bear",{
model={31588},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Infested Bears around the area.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Infested Bear_. |cast Tame Beast##1515 |goto Hillsbrad Foothills,32.8,69.6
modeldisplay 31588
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Bears\\White Diseased Bear",{
model={23966},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Rabid Grizzlys around the area.
|tip They are level 71 - 72.
Use your Tame Beast ability on a _Rabid Grizzly_. |cast Tame Beast##1515 |goto Dragonblight,29.8,49.6
Click here to see another location for this pet |next |confirm
modeldisplay 23966
step
Search for Tirisfal Bears around the area.
|tip They are level 80 - 84.
Use your Tame Beast ability on a _Tirisfal Bear_. |cast Tame Beast##1515 |goto Silverpine Forest,37.4,7.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 23966
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Black Beetle",{
model={7470},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Scarabs on the ground.
|tip They are level 46 - 47.
You will be able to find more around [55.0,25.0].
Use your Tame Beast ability on a _Scarab_. |cast Tame Beast##1515 |goto Zul'Farrak,57.6,58.0
modeldisplay 7470
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Blue Beetle",{
model={11093},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Hazzali Swarmers around the area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Hazzali Swarmer_. |cast Tame Beast##1515 |goto Tanaris,55.4,66.6
Click here to see another location for this pet |next |confirm
modeldisplay 11093
step
Search for Hive'Ashi Workers around the area.
|tip They are level 55 - 56.
Use your Tame Beast ability on a _Hive'Ashi Worker_. |cast Tame Beast##1515 |goto Silithus,54.4,25.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11093
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Brown Beetle",{
model={11144},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Silithid Defender around the area.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Silithid Defender_. |cast Tame Beast##1515 |goto Thousand Needles,65.4,86.6
modeldisplay 11144
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Purple Beetle",{
model={11108},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Centipaar Tunneler around the area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Centipaar Tunneler_. |cast Tame Beast##1515 |goto Tanaris,33.0,45.4
modeldisplay 11108
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Red Beetle",{
model={10031},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Crypt Horrors and Nerubian Sycophants around the area.
|tip As you fight them they spawn Carrion Scarabs. They are level 39 - 40.
Use your Tame Beast ability on a _Carrion Scarab_. |cast Tame Beast##1515 |goto Eastern Plaguelands,8.4,29.4
modeldisplay 10031
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Yellow Beetle",{
model={11089},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Gorishi Tunnelers around the area.
|tip They are level 52 - 53.
Use your Tame Beast ability on a _Gorishi Tunneler_. |cast Tame Beast##1515 |goto Un'Goro Crater,49.6,82.6
modeldisplay 11089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Blue-Green Scarab",{
model={34911},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Sapphire Scarab around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Sapphire Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,28.0
modeldisplay 34911
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Brown Scarab",{
model={37580},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Temple Scarabs around the area.
|tip They are level 83 - 84.
Use your Tame Beast ability on a _Temple Scarab_. |cast Tame Beast##1515 |goto Uldum,65.2,32.6
modeldisplay 37580
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Dark Blue Scarab",{
model={34908},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Amethyst Scarabs around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Amethyst Scarab_. |cast Tame Beast##1515 |goto Uldum,64.2,27.2
modeldisplay 34908
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Green and Red Scarab",{
model={34912},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Emerald Scarab around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Emerald Scarab_. |cast Tame Beast##1515 |goto Uldum,65.6,32.6
modeldisplay 34912
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Beetles\\Turquoise Scarab",{
model={34913},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Turquoise Scarabs around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Turquoise Scarab_. |cast Tame Beast##1515 |goto Uldum,63.2,31.4
modeldisplay 34913
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Black Boar",{
model={607},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Crag Boars around the area.
|tip They are level 1 - 6.
Use your Tame Beast ability on a _Crag Boar_. |cast Tame Beast##1515 |goto Dun Morogh,54.6,42.0
Click here to see another location for this pet |next |confirm
modeldisplay 607
step
Search for Dire Mottled Boar around the area.
|tip They are level 6 - 7.
Use your Tame Beast ability on a _Dire Mottled Boar_. |cast Tame Beast##1515 |goto Durotar,54.8,33.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 607
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Brown Boar",{
model={703},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mudbelly Boar around the area.
|tip They are level 16.
Use your Tame Beast ability on a _Mudbelly Boar_. |cast Tame Beast##1515 |goto Loch Modan,55.6,37.8
Click here to see another location for this pet |next |confirm
modeldisplay 703
step
Search for Bellygrub around the area.
|tip They are level 16.
Use your Tame Beast ability on _Bellygrub_. |cast Tame Beast##1515 |goto Redridge Mountains,17.4,45.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 703
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Gray Boar",{
model={503},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Stonetusk Boar around the area.
|tip They are level 4 - 6.
Use your Tame Beast ability on a _Stonetusk Boar_. |cast Tame Beast##1515 |goto Elwynn Forest,42.8,86.6
Click here to see another location for this pet |next |confirm
modeldisplay 503
step
Search for Elder Mottled Boar around the area.
|tip They are level 5 - 9.
Use your Tame Beast ability on a _Elder Mottled Boar_. |cast Tame Beast##1515 |goto Durotar,43.8,15.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 503
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Red Boar",{
model={30964},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for a Docile Island Boars around the area.
|tip They are level 2.
Use your Tame Beast ability on a _Docile Island Boar_. |cast Tame Beast##1515 |goto Durotar,65.4,80.2
Click here to see another location for this pet |next |confirm
modeldisplay 30964
step
Search for Thistle Boars around the area.
|tip They are level 2 - 3.
Use your Tame Beast ability on a _Thistle Boar_. |cast Tame Beast##1515 |goto Teldrassil,59.0,34.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 30964
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Undead Boar",{
model={6121},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Plagued Swine around the area.
|tip They are level 43 - 44.
Use your Tame Beast ability on a _Plagued Swine_. |cast Tame Beast##1515 |goto Eastern Plaguelands,14.8,28.4
modeldisplay 6121
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Yellow Boar",{
model={8869},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Young Thistle Boar around the area.
|tip They are level 1 -2.
Use your Tame Beast ability on a _Young Thistle Boar_. |cast Tame Beast##1515 |goto Teldrassil,59.8,40.0
Click here to see another location for this pet |next |confirm
modeldisplay 8869
step
label "location2"
Search for Young Goretusk around the area.
|tip They are level 10 - 11.
Use your Tame Beast ability on a _Young Goretusk_. |cast Tame Beast##1515 |goto Westfall,53.8,25.0
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 8869
step
Search for Young Battleboar around the area.
|tip They are level 1 - 2.
Use your Tame Beast ability on a _Young Battleboar_. |cast Tame Beast##1515 |goto Mulgore,53.4,82.0
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 8869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Black Armored Boar",{
model={4714},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for a Rotting Agam'ar around the area.
|tip They are level 34 elites.
Use your Tame Beast ability on a _Rotting Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,58.2,59.0
modeldisplay 4714
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Brown Armored Boar",{
model={26685},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Agam'ar around the area.
|tip They are level 32 -33 elites.
Use your Tame Beast ability on a _Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,58.2,59.0
Click here to see another location for this pet |next |confirm
modeldisplay 26685
step
Search for Armored Battleboar around the area.
|tip They are level 3 - 4.
Use your Tame Beast ability on a _Armored Battleboar_. |cast Tame Beast##1515 |goto Mulgore,45.6,88.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 26685
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Ghost Armored Boar",{
model={4716},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Boar Spirits around the area.
|tip They are level 24 - 28.
Use your Tame Beast ability on a _Boar Spirit_. |cast Tame Beast##1515 |goto Razorfen Kraul,82.6,52
modeldisplay 4716
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Gray Armored Boar",{
model={2453},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Raging Agam'ar around the area.
|tip They are level 33 elite.
Use your Tame Beast ability on a _Raging Agam'ar_. |cast Tame Beast##1515 |goto Razorfen Kraul,56.6,58.0
modeldisplay 2453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Black and Green Felboar",{
model={19249},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Felboar around the area.
|tip They are level 67 - 68.
Use your Tame Beast ability on a _Felboar_. |cast Tame Beast##1515 |goto Shadowmoon Valley,34.0,44.6
modeldisplay 19249
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Blue and White Felboar",{
model={20831},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Shard-Hide Boar around the area.
|tip They are level 70 - 71.
Use your Tame Beast ability on a _Shard-Hide Boar_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,30.6,71.6
modeldisplay 20831
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Gray and Orange Felboar",{
model={18701},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Deranged Helboars around the area.
|tip They are level 60 - 61.
Use your Tame Beast ability on a _Deranged Helboar_. |cast Tame Beast##1515 |goto Hellfire Peninsula,48.8,63.8
modeldisplay 18701
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Red and Black Felboar",{
model={11410},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Starving Helboar around the area.
|tip They are level 57 - 59.
Use your Tame Beast ability on a _Starving Helboar_. |cast Tame Beast##1515 |goto Hellfire Peninsula,62.8,42.8
modeldisplay 11410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Boars\\Yellow and Black Felboar",{
model={24741},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Domesticated Felboars around the area.
|tip They are level 65 - 66.
Use your Tame Beast ability on a _Domesticated Felboar_. |cast Tame Beast##1515 |goto Shadowmoon Valley,53.4,17.8
modeldisplay 24741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Blue Crab",{
model={979},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Sea Crawler around the area.
|tip They are level 11 -12.
Use your Tame Beast ability on a _Sea Crawler_. |cast Tame Beast##1515 |goto Westfall,31.8,22.2
Click here to see another location for this pet |next |confirm
modeldisplay 979
step
Search for Clattering Crawler around the area.
|tip They are level 19 - 20.
Use your Tame Beast ability on a _Clattering Crawler_. |cast Tame Beast##1515 |goto Ashenvale,15.2,22.8
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 979
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Bronze Crab",{
model={28827},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Barbed Crawler around the area.
|tip They are level 7 - 9.
Use your Tame Beast ability on a _Barbed Crawler_. |cast Tame Beast##1515 |goto Azuremyst Isle,22.8,73.2
Click here to see another location for this pet |next |confirm
modeldisplay 28827
step
label "location2"
Search for Desert Crawler around the area.
|tip They are level 45.
Use your Tame Beast ability on a _Desert Crawler_. |cast Tame Beast##1515 |goto Tanaris,53.4,34.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 28827
step
Search for Silt Crawlers around the area.
|tip They are level 51 - 52.
Use your Tame Beast ability on a _Silt Crawler_. |cast Tame Beast##1515 |goto Swamp of Sorrows,81.6,17.2
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 28827
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Red Crab",{
model={31269},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mature Surf Crawlers around the area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Mature Surf Crawler_. |cast Tame Beast##1515 |goto Durotar,59.6,23.8
Click here to see another location for this pet |next |confirm
modeldisplay 31269
step
Search for Harbor Crawlers around the area.
|tip They are level 20 - 21.
Use your Tame Beast ability on a _Harbor Crawler_. |cast Tame Beast##1515 |goto Wetlands,18.2,53.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 31269
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\White Crab",{
model={999},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Encrusted Surf Crawler around the area.
|tip They are level 9 - 10.
Use your Tame Beast ability on a _Encrusted Surf Crawler_. |cast Tame Beast##1515 |goto Durotar,57.4,11.2
Click here to see another location for this pet |next |confirm
modeldisplay 999
step
Search for Spined Crawler around the area.
|tip They are level 20 - 21.
Use your Tame Beast ability on a _Spined Crawler_. |cast Tame Beast##1515 |goto Ashenvale,14.8,16.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Black Spiked Crab",{
model={32143},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Spiny Rock Crab around the area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Spiny Rock Crab_. |cast Tame Beast##1515 |goto Dustwallow Marsh,68.4,45.6
modeldisplay 32143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Green Spiked Crab",{
model={32023},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Felscale Crawlers around the area.
|tip They are level 58.
Use your Tame Beast ability on a _Felscale Crawler_. |cast Tame Beast##1515 |goto Blasted Lands,71.0,75.0
modeldisplay 32023
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Green and Blue Spiked Crab",{
model={32112},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Enormous Sand Crabs around the area.
|tip They are level 80.
Use your Tame Beast ability on a _Enormous Sand Crab_. |cast Tame Beast##1515 |goto Shimmering Expanse,42.6,35.0
modeldisplay 32112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Orange Spiked Crab",{
model={32025},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Silversand Burrowers around the area.
|tip They are level 80.
Use your Tame Beast ability on a _Silversand Burrower_. |cast Tame Beast##1515 |goto Shimmering Expanse,54.2,83.6
modeldisplay 32025
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Red Spiked Crab",{
model={32075},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Spineshell Pincers around the area.
|tip They are level 80.
Use your Tame Beast ability on a _Spineshell Pincer_. |cast Tame Beast##1515 |goto Shimmering Expanse,46.8,52.6
modeldisplay 32075
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\Green Crocolisk",{
model={1035},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dreadmaw Toothgnashers around the area.
|tip They are level 8 - 9.
Use your Tame Beast ability on a _Dreadmaw Toothgnasher_. |cast Tame Beast##1515 |goto Durotar,40.2,33.6
Click here to see another location for this pet |next |confirm
modeldisplay 1035
step
Search for Wetlands Crocolisk around the area.
|tip They are level 22 - 23.
Use your Tame Beast ability on a _Wetlands Crocolisk_. |cast Tame Beast##1515 |goto Wetlands,27.6,32.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1035
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\Gray Crocolisk",{
model={1250},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dreadmaw Crocolisk around the area.
|tip They are level 10.
Use your Tame Beast ability on a _Dreadmaw Crocolisk_. |cast Tame Beast##1515 |goto Durotar,37.0,20.8
Click here to see another location for this pet |next |confirm
modeldisplay 1250
step
Search for River Crocolisks around the area. They are level 25 - 26.
Use your Tame Beast ability on a _River Crocolisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn,43.8,18.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\White Crocolisk",{
model={2996},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Horrorjaw around the area.
|tip It is level 22 - 23.
Use your Tame Beast ability on a _Horrorjaw_. |cast Tame Beast##1515 |goto Wetlands,31.0,22.6
Click here to see another location for this pet |next |confirm
modeldisplay 2996
step
Search for Barbscale Crocolisks around the area.
|tip They are level 68 - 69.
Use your Tame Beast ability on a _Barbscale Crocolisk_. |cast Tame Beast##1515 |goto Netherstorm,46.6,51.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\Yellow Crocolisk",{
model={1080},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Loch Crocolisk around the area.
|tip They are level 14 - 15.
Use your Tame Beast ability on a _Loch Crocolisk_. |cast Tame Beast##1515 |goto Loch Modan,51.8,63.6
Click here to see another location for this pet |next |confirm
modeldisplay 1080
step
Search for Drywallow Snapper around the area.
|tip They are level 35 - 36.
Use your Tame Beast ability on a _Drywallow Snapper_. |cast Tame Beast##1515 |goto Dustwallow Marsh,41.0,37.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 1080
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\Blue Spiked Crocolisk",{
model={37613},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Baradin Crocolisks around the area.
|tip They are level 83 - 85.
Use your Tame Beast ability on a _Baradin Crocolisk_. |cast Tame Beast##1515 |goto Tol Barad,39.4,42.6
modeldisplay 37613
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\Brown Spiked Crocolisk",{
model={32812},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Riverbed Crocolisks around the area.
|tip They are level 80 - 83.
Use your Tame Beast ability on a _Riverbed Crocolisk_. |cast Tame Beast##1515 |goto Uldum,57.6,50.6
modeldisplay 32812
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crocolisks\\White Spiked Crocolisk",{
model={37748},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Neferset Crocolisks around the area.
|tip They are level 82 - 83.
Use your Tame Beast ability on a _Neferset Crocolisk_. |cast Tame Beast##1515 |goto Uldum,63.6,79.2
modeldisplay 37748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Gorillas\\Black Gorilla",{
model={839},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Skymane Gorillas around the area.
|tip They are level 32.
Use your Tame Beast ability on a _Skymane Gorilla_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,62.6,77.6
modeldisplay 839
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Gorillas\\Dark Gray Gorilla",{
model={844},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Silverback Patriarchs around the area.
|tip They are level 32 - 33.
Use your Tame Beast ability on a _Silverback Patriarch_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn,56.2,52.6
Click here to see another location for this pet |next |confirm
modeldisplay 844
step
Search for Un'Goro Gorillas around the area. They are level 52 - 53.
Use your Tame Beast ability on a _Un'Goro Gorilla_. |cast Tame Beast##1515 |goto Un'Goro Crater,62.4,19.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 844
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Gorillas\\Gray Gorilla",{
model={838},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Elder Mistvale Gorilla around the area.
|tip They are level 31 - 32.
Use your Tame Beast ability on a _Elder Mistvale Gorilla_. |cast Tame Beast##1515 |goto Un'Goro Crater,52.6,56.6
modeldisplay 838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Gorillas\\Red Gorilla",{
model={3188},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Groddoc Apes around the area.
|tip They are level 36 - 37.
Use your Tame Beast ability on a _Groddoc Ape_. |cast Tame Beast##1515 |goto Feralas,72.8,49.4
Click here to see another location for this pet |next |confirm
modeldisplay 3188
step
Search for U'cha around the area.
|tip They are level 53.
Use your Tame Beast ability on a _U'cha_. |cast Tame Beast##1515 |goto Un'Goro Crater,68.6,13.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 3188
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Rhinos\\Blue Rhino",{
model={26265},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Shardhorn Rhinos around the area.
|tip They are level 75 - 76.
Use your Tame Beast ability on a _Shardhorn Rhino_. |cast Tame Beast##1515 |goto Sholazar Basin,39.4,53.6
modeldisplay 26265
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Rhinos\\Brown Rhino",{
model={26296},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Wooly Rhino Calf around the area.
|tip They are level 67.
Use your Tame Beast ability on a _Wooly Rhino Calf_. |cast Tame Beast##1515 |goto Borean Tundra,45.0,43.2
Click here to see another location for this pet |next |confirm
modeldisplay 26296
step
Search for Wooly Rhino Matriarchs around the area.
|tip They are level 68.
Use your Tame Beast ability on a _Wooly Rhino Matriarch_. |cast Tame Beast##1515 |goto Borean Tundra,45.6,46.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 26296
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Rhinos\\Gray Rhino",{
model={26268},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Wooly Rhino Bulls around the area.
|tip They are level 69.
Use your Tame Beast ability on a _Wooly Rhino Bull_. |cast Tame Beast##1515 |goto Borean Tundra,46.6,44.6
Click here to see another location for this pet |next |confirm
modeldisplay 26268
step
Search for Farunn around the area.
|tip It is level 76.
Use your Tame Beast ability on a _Farunn_. |cast Tame Beast##1515 |goto Sholazar Basin,48.0,44.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 26268
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Rhinos\\White Rhino",{
model={26286},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Ice Steppe Rhinos around the area.
|tip They are level 78 - 79.
Use your Tame Beast ability on a _Ice Steppe Rhino_. |cast Tame Beast##1515 |goto The Storm Peaks,46.6,60.8
modeldisplay 26286
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Black Scorpid",{
model={6068},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Duneclaw Stalkers around the area.
|tip They are level 46 - 47.
Use your Tame Beast ability on a _Duneclaw Stalker_. |cast Tame Beast##1515 |goto Tanaris 54.6,54.0
modeldisplay 6068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Bronze Scorpid",{
model={2487},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Armored Scorpid around the area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Armored Scorpid_. |cast Tame Beast##1515 |goto Durotar,40.2,41.6
Click here to see another location for this pet |next |confirm
modeldisplay 2487
step
Search for Venomtail Scorpid around the area.
|tip They are level 9.
Use your Tame Beast ability on a _Venomtail Scorpid_. |cast Tame Beast##1515 |goto Durotar,42.0,19.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2487
step
Search for Venomtip Scorpids around the area.
|tip They are level 49 - 50.
Use your Tame Beast ability on a _Venomtip Scorpid_. |cast Tame Beast##1515 |goto Burning Steppes,10.6,55.4
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 2487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Brown Scorpid",{
model={2485},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Scorpid Workers around the area.
|tip They are level 3.
Use your Tame Beast ability on a _Scorpid Worker_. |cast Tame Beast##1515 |goto Durotar,42.0,64.8
Click here to see another location for this pet |next |confirm
modeldisplay 2485
step
Search for Clattering Scorpids around the area.
|tip They are level 6.
Use your Tame Beast ability on a _Clattering Scorpid_. |cast Tame Beast##1515 |goto Durotar,52.4,75.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Green Scorpid",{
model={2730},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Scorpid Cliffcrawlers around the area.
|tip They are level 40 - 41.
Use your Tame Beast ability on a _Scorpid Cliffcrawler_. |cast Tame Beast##1515 |goto Thousand Needles,65.4,74.2
modeldisplay 2730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Gray Scorpid",{
model={33995},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Duneclaw Broodlord around the area.
|tip They are level 47 - 48.
Use your Tame Beast ability on a _Duneclaw Broodlord_. |cast Tame Beast##1515 |goto Tanaris,40.4,65.6
modeldisplay 33995
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Pink Scorpid",{
model={10987},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Duneclaw Lasher around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Duneclaw Lasher_. |cast Tame Beast##1515 |goto Tanaris,43.0,26.6
Click here to see another location for this pet |next |confirm
modeldisplay 10987
step
Search for Scorpid Bonecrawler around the area.
|tip They are level 64 - 65.
Use your Tame Beast ability on a _Scorpid Bonecrawler_. |cast Tame Beast##1515 |goto Terokkar Forest,32.4,56.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 10987
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Red Scorpid",{
model={5985},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Duneclaw Burrowers around the area.
|tip They are level 44 - 45.
Use your Tame Beast ability on a _Duneclaw Burrower_. |cast Tame Beast##1515 |goto Tanaris,52.8,41.0
modeldisplay 5985
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\White Scorpid",{
model={10988},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Stonelash Flayer around the area.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Stonelash Flayer_. |cast Tame Beast##1515 |goto Silithus,42.6,63.8
modeldisplay 10988
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Yellow Scorpid",{
model={2729},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Scorpashi Snappers around the area.
|tip They are level 30 - 31.
Use your Tame Beast ability on a _Scorpashi Snapper_. |cast Tame Beast##1515 |goto Desolace,62.2,27.4
Click here to see another location for this pet |next |confirm
modeldisplay 2729
step
Search for Duneclaw Matriarchs around the area.
|tip They are level 45.
Use your Tame Beast ability on a _Duneclaw Matrarch_. |cast Tame Beast##1515 |goto Tanaris,42.8,30.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 2729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Shale Spiders\\Orange Shale Spider",{
model={36634},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Deep Spiders around the area.
|tip They are level 83 and underground.
Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515 |goto Deepholm,61.8,26.6
modeldisplay 36634
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Shale Spiders\\Purple Shale Spider",{
model={35152},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Purple Shale Spiders around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515 |goto Deepholm,64.8,19.0
modeldisplay 35152
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Shale Spiders\\Red Shale Spider",{
model={33863},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Crimson Shale Spiders around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Crimson Shale Spider_. |cast Tame Beast##1515 |goto Deepholm,72.6,41.6
modeldisplay 33863
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Blue Turtle",{
model={6368},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Oasis Snapjaws around the area.
|tip They are level 14 - 15.
There are more around [56.6,81.6].
Use your Tame Beast ability on a _Oasis Snapjaw_. |cast Tame Beast##1515 |goto Northern Barrens,41.8,74.8
Click here to see another location for this pet |next |confirm
modeldisplay 6368
step
Search for Gammerita around the area.
|tip It is level 31.
Use your Tame Beast ability on a _Gammerita_. |cast Tame Beast##1515 |goto The Hinterlands,79.6,70.2
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 6368
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Green Turtle",{
model={28819},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Lake Snappers around the area.
|tip They are level 7 - 8.
Use your Tame Beast ability on a _Lake Snapper_. |cast Tame Beast##1515 |goto Eversong Woods,65.6,76.8
modeldisplay 28819
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Gray Turtle",{
model={37770},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Mudrock Spikeshell around the area. They are level 35 - 36.
Use your Tame Beast ability on a _Mudrock Spikeshell_. |cast Tame Beast##1515 |goto Dustwallow Marsh 65.6,38.8
modeldisplay 37770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Orange Turtle",{
model={5026},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Saltwater Snapjaws around the area.
|tip They are level 30 - 31.
Use your Tame Beast ability on a _Saltwater Snapjaw_. |cast Tame Beast##1515 |goto The Hinterlands,78.0,65.6
Click here to see another location for this pet |next |confirm
modeldisplay 5026
step
Search for Sorrowmurk Snapjaws around the area.
|tip They are level 50.
Use your Tame Beast ability on a _Sorrowmurk Snapjaw_. |cast Tame Beast##1515 |goto Swamp of Sorrows,75.6,72.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 5026
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\White Turtle",{
model={28820},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Plagued Snappers around the area.
|tip They are level 12 - 13.
Use your Tame Beast ability on a _Plagued Snapper_. |cast Tame Beast##1515 |goto Ghostlands,62.8,57.6
Click here to see another location for this pet |next |confirm
modeldisplay 28820
step
label "location2"
Search for Stranded Sparkleshells around the area.
|tip They are level 43 - 44.
Use your Tame Beast ability on a _Stranded Sparkshell_. |cast Tame Beast##1515 |goto Thousand Needles,65.2,51.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 28820
step
Search for Sand Turtles around the area.
|tip They are level 70.
Use your Tame Beast ability on a _Sand Turtle_. |cast Tame Beast##1515 |goto Borean Tundra,32.4,54.6
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 28820
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Green Ancient Turtle",{
model={37143},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ghamoo-ra around the area.
|tip It is a level 24 elite.
Use your Tame Beast ability on _Ghamoo-Ra_. |cast Tame Beast##1515 |goto Blackfathom Deeps 33.3,58.7
modeldisplay 37143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Warp Stalkers\\Blue Warp Stalker",{
model={19369},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Chasm Stalker around the area.
|tip They are level 82.
Use your Tame Beast ability on a _Chasm Stalker_. |cast Tame Beast##1515 |goto Abyssal Depths,41.2,41.4
modeldisplay 19369
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Warp Stalkers\\Blue Green Warp Stalker",{
model={19979},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Warp Chasers around the area.
|tip They are level 67 - 68.
Use your Tame Beast ability on a _Warp Chaser_. |cast Tame Beast##1515 |goto Netherstorm,62.4,60.0
modeldisplay 19979
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Warp Stalkers\\Green Warp Stalker",{
model={29740},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Displaced Warp Stalkers around the area (Inside the cave).
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Displaced Warp Stalker_. |cast Tame Beast##1515 |goto Winterspring,53.2,63.6
modeldisplay 29740
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Warp Stalkers\\Red Warp Stalker",{
model={20901},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Daggertail Lizards around the area.
|tip They are level 71 - 73.
There are more around [71.0,11.6].
Use your Tame Beast ability on a _Daggertail Lizard_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,54.6,14.6
modeldisplay 20901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Warp Stalkers\\White Warp Stalker",{
model={20025},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Warp Stalkers around the area.
|tip They are level 63 - 64.
Use your Tame Beast ability on a _Warp Stalker_. |cast Tame Beast##1515 |goto Terokkar Forest,57.2,42.6
Click here to see another location for this pet |next |confirm
modeldisplay 20025
step
label "location2"
Search for Warp Hunters around the area.
|tip They are level 64 - 65.
Use your Tame Beast ability on a _Warp Hunter_. |cast Tame Beast##1515 |goto Terokkar Forest,20.0,72.8
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 20025
step
Search for Blackwind Warp Chasers around the area.
|tip They are level 69 - 70.
Use your Tame Beast ability on a _Blackwind Warp Chaser_. |cast Tame Beast##1515 |goto Terokkar Forest,62.4,84.6
Click here to see the previous location for this pet |next "-location2" |confirm
modeldisplay 20025
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Blue Worm",{
model={12333},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Deep Borers around the area.
|tip They are level 37 - 38.
Use your Tame Beast ability on a _Deep Borer_. |cast Tame Beast##1515 |goto Maraudon,45.2,88.4
modeldisplay 12333
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Brown Worm",{
model={11010},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Earthborers around the area.
|tip They are level 13 - 14 elites.
Use your Tame Beast ability on an _Earthborer_. |cast Tame Beast##1515 |goto Ragefire Chasm,65.4,16.6
Click here to see another location for this pet |next |confirm
modeldisplay 11010
step
Search for Young Crust Bursters around the area.
|tip They are level 66 - 67.
Use your Tame Beast ability on a _Young Crust Burster_. |cast Tame Beast##1515 |goto Blade's Edge Mountains,49.2,44.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 11010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Green Worm",{
model={12335},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Rock Borers around the area.
|tip They are level 33 - 34.
Use your Tame Beast ability on a _Rock Borer_. |cast Tame Beast##151 |goto Maraudon,39.6,57.4
modeldisplay 12335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Gray Worm",{
model={14524},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Dredge Crushers around the area.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Dredge Crusher_. |cast Tame Beast##1515 |goto Silithus,48.6,49.6
Click here to see another location for this pet |next |confirm
modeldisplay 14524
step
Search for Dredge Strikers around the area.
|tip They are level 54 - 55.
Use your Tame Beast ability on a _Dredge Striker_. |cast Tame Beast##1515 |goto Silithus,47.0,34.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 14524
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Pink Worm",{
model={37540},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Coldlurk Burrowers around the area.
|tip They are level 51 - 52.
Use your Tame Beast ability on a _Coldlurk Burrower_. |cast Tame Beast##1515 |goto Winterspring,48.4,40.8
modeldisplay 37540
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\White Worm",{
model={34636},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Kill Undead in the area. They Spawn Flesh Eating Worms upon death.
|tip The Flesh Eating Worms are level 23.
Use your Tame Beast ability on a _Flesh Eating Worm_. |cast Tame Beast##1515 |goto Duskwood,18.2,34.6
modeldisplay 34636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Black Jormungar",{
model={37554},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Rattlebore around the area.
|tip They are level 74.
Use your Tame Beast ability on _Rattlebore_. |cast Tame Beast##1515 |goto Dragonblight,50.6,17.8
modeldisplay 37554
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Blue Jormungar",{
model={37550},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ravenous Jormungar around the area.
|tip They are level 79 - 80.
Use your Tame Beast ability on _Ravenous Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks 55.6,61.8
modeldisplay 37550
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Ghost Jormungar",{
model={27014},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ravenous Jormungars around the area. When they are near death, use _Arngrim's Tooth_. |use Arngrim's Tooth##42774
|tip You will need to be Revered with the Sons of Hodir and have the Feeding Arngrim daily quest in order to tame this.
Use your Tame Beast ability on a _Disembodied Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks,55.8,63.8
modeldisplay 27014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Green Jormungar",{
model={37553},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ice Heart Jormungar Feeders around the area.
|tip They are level 72.
Use your Tame Beast ability on a _Ice Heart Jormungar Feeder_. |cast Tame Beast##1515 |goto Dragonblight,60.0,15.8
modeldisplay 37553
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Purple Jormungar",{
model={24564},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Tundra Crawlers around the area.
|tip They are level 70.
Use your Tame Beast ability on a _Tundra Crawler_. |cast Tame Beast##1515 |goto Borean Tundra,79.8,24.8
Click here to see another location for this pet |next |confirm
modeldisplay 24564
step
Search for Roaming Jormungar around the area.
|tip They are level 79 - 80.
Use your Tame Beast ability on a _Roaming Jormungar_. |cast Tame Beast##1515 |goto The Storm Peaks,58.8,62.0
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 24564
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\White Jormungar",{
model={37551},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Ice Heart Jormungar Spawn around the area.
|tip They are level 72.
Use your Tame Beast ability on a _Ice Heart Jormungar Spawn_. |cast Tame Beast##1515 |goto Dragonblight,29.0,86.8
modeldisplay 37551
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Bats\\Pale Bat (Rare Spawn)",{
model={16053},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Ressan the Needler around the area.
|tip It is level 9.
Use your Tame Beast ability on _Ressan the Needler_. |cast Tame Beast##1515 |goto Tirisfal Glades,53.2,58.6
Click here to see another location for this pet |next |confirm
modeldisplay 16053
step
Search for Blind Hunter around the area.
|tip It is a level 35 Rare Elite.
Use your Tame Beast ability on _Blind Hunter_. |cast Tame Beast##1515 |goto Razorfen Kraul,11.4,32.6
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 16053
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Owls\\Ghost Owl (Rare Spawn)",{
model={37568},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Olm the Wise around the area.
|tip It is level 48 Rare.
It can also spawn at [54.6,27.6]
As well as [57.6,19.8]
Use your Tame Beast ability on _Olm the Wise_. |cast Tame Beast##1515 |goto Felwood,56.2,23.6
modeldisplay 37568
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Birds of Prey\\Parrots\\Blue Parrot (Rare Spawn)",{
model={27975},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Aotana around the area.
|tip It is level 75.
Aotona has several spawning points, listed below:
[42.6,51.0]
[40.6,58.6]
[41.8,69.6]
[42.6,73.8]
[52.6,73.0]
[57.8,65.6]
[54.8,52.6]
Use your Tame Beast ability on _Aotana_. |cast Tame Beast##1515 |goto Sholazar Basin,48.0,55.0
modeldisplay 27975
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\Green 2-Headed Chimaera (Rare Spawn)",{
model={37569},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for The Evalcharr around the area.
|tip It is level 19.
The Evalcharr also spawns at [14.0,50.8].
Use your Tame Beast ability on _The Evalcharr_. |cast Tame Beast##1515 |goto Azshara,14.8,58.8
modeldisplay 37569
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Chimaeras\\White 2-Headed Chimaera (Rare Spawn)",{
model={37571},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for The Razza around the area.
|tip It is level 40.
Use your Tame Beast ability on _The Razza_. |cast Tame Beast##1515 |goto Feralas,84.5,49.7
modeldisplay 37571
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Purple Silithid (Rare Spawn)",{
model={37593},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Lapress around the area.
|tip It is level 56.
Use your Tame Beast ability on _Lapress_. |cast Tame Beast##1515 |goto Silithus,57.6,71.0
modeldisplay 37593
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Tan Silithid (Rare Spawn)",{
model={37583},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Krkk'kx around the area.
|tip It is level 42.
Use your Tame Beast ability on _krkk'kx_. |cast Tame Beast##1515 |goto Thousand Needles,70.0,85.4
modeldisplay 37583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Yellow Silithid (Rare Spawn)",{
model={11084},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Clutchmother Zavas around the area.
|tip She is level 54.
Use your Tame Beast ability on __. |cast Tame Beast##1515 |goto Un'Goro Crater,48.8,85.6
modeldisplay 11084
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Wind Serpents\\Red Windserpent (Rare Spawn)",{
model={2702},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Azzere the Skyblade around the area.
|tip It is level 30.
Use your Tame Beast ability on _Azzere the Skyblade_. |cast Tame Beast##1515 |goto Southern Barrens,43.88,57.2
modeldisplay 2702
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Cunning Pets\\Wind Serpents\\White Windserpent (Rare Spawn)",{
model={7569},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
label "start"
Search for Arash-ethis around the area.
|tip It is level 36.
Use your Tame Beast ability on _Arash-ethis_. |cast Tame Beast##1515 |goto Feralas,38.8,24.6
Click here to see another location for this pet |next |confirm
modeldisplay 7569
step
Search for Hayoc around the area.
|tip It is level 37.
Use your Tame Beast ability on _Hayoc_. |cast Tame Beast##1515 |goto Dustwallow Marsh,47.8,61.4
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 7569
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Carrion Birds\\Vultures\\White Vulture (Rare Spawn)",{
model={37577},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Zaricotl around the area.
|tip It is level 48.
Use your Tame Beast ability on _Zaricotl_. |cast Tame Beast##1515 |goto Badlands,57.0,42.4
modeldisplay 37577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lions\\Lioness (Rare Spawn)",{
model={21192},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Broken Tooth around the area.
|tip It is level 47.
Use your Tame Beast ability on _Broken Tooth_. |cast Tame Beast##1515 |goto Badlands,22.8,61.6
modeldisplay 21192
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Leopard (Rare Spawn)",{
model={1043},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Dishu around the area.
|tip It is level 13
You can also find it at the below locations:
[48.8,51.8]
[45.2,52.8]
Use your Tame Beast ability on _Dishu_. |cast Tame Beast##1515 |goto Northern Barrens,45.4,32.8
modeldisplay 1043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\White Tiger (Rare Spawn)",{
model={20425},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Hawkbane around the area.
|tip It is level 70.
Use your Tame Beast ability on _Hawkbane_. |cast Tame Beast##1515 |goto Terokkar Forest,76.2,81.2
modeldisplay 20425
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Saber Cats\\Blue Saber (Rare Spawn)",{
model={10054},
description="This guide will walk you through obtaining miscellaneous hunter pets.",
},[[
step
Search for Rak'shiri around the area.
|tip It is level 53.
Use your Tame Beast ability on _Rak'shiri_. |cast Tame Beast##1515 |goto Winterspring,47.8,18.8
modeldisplay 10054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\Black Hunched (Rare Spawn)",{
model={37555},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Shadowclaw around the area.
|tip It is level 13.
Use your Tame Beast ability on _Shadowclaw_. |cast Tame Beast##1515 |goto Darkshore,41.6,36.0
modeldisplay 37555
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\White Spots Hunched (Rare Spawn)",{
model={37558},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Duskstalker around the area.
|tip It is level 8.
Use your Tame Beast ability on _Duskstalker_. |cast Tame Beast##1515 |goto Teldrassil,52.4,67.6
modeldisplay 37558
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lions\\Maned Lion (Rare Spawn)",{
model={37169},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Sambas around the area.
|tip It is level 85.
You can also find Sambas at the spots below:
[49.6,23.0]
[45.8,29.4]
[42.6,38.6]
[38.2,53.2]
Use your Tame Beast ability on _Sambas_. |cast Tame Beast##1515 |goto Twilight Highlands,68.8,25.4
modeldisplay 37169
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Lions\\White Lion (Rare Spawn)",{
model={10114},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Sian-Rotam around the area.
|tip It is level 53.
Use your Tame Beast ability on _Sian-Rotam_. |cast Tame Beast##1515 |goto Winterspring,45.8,17.6
modeldisplay 10114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Cats\\Hunched Cat\\Hunched Cat w/ Red Eyes (Rare Spawn)",{
model={37615},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Pogeyan around the area.
|tip It is level 28.
Use your Tame Beast ability on _Pogeyan_. |cast Tame Beast##1515 |goto Northern Stranglethorn,36.8,28.4
modeldisplay 37615
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Devilsaur\\Green Devilsaur (Rare Spawn)",{
model={28052},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
label "start"
map Sholazar Basin
path follow strict;loop off;ants straight
path	25.8,48.8	30.0,40.2	34.0,32.6
path	37.6,28.8
Search for King Krush around the area.
|tip He is level 75.
Use your Tame Beast ability on _King Krush_. |cast Tame Beast##1515
Click here to see another location for this pet |next |confirm
modeldisplay 28052
step
label "location"
map Sholazar Basin
path follow strict;loop off;ants straight
path	52.8,41.6	48.8,44.6	46.4,41.6
Click here to see another location for this pet |next |confirm
Click here to see the previous location for this pet |next "-start" |confirm
modeldisplay 28052
step
map Sholazar Basin
path follow strict;loop off;ants straight
path	66.6,78.4	63.6,83.4	58.8,82.0
path	53.8,84.2	50.8,82.0
Click here to see the previous location for this pet |next "-location" |confirm
modeldisplay 28052
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\\Ferocity Pets\\Hyenas\\Black Hyena (Rare Spawn)",{
model={2726},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Galak Packhound around the area.
|tip It is level 40.
Use your Tame Beast ability on a _Galak Packhound_. |cast Tame Beast##1515 |goto Thousand Needles,69.8,50.0
modeldisplay 2726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Birds of Prey\\Spectral Owl",{
model={38634},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Ban'thalos high up in the sky.
There will be a tree near _Cenarius_ that you will need to get on top of.
You will need to set an _Ice Trap_ on top of the tree.
_Fly directly upwards_ and use _Concussion Shot_ on _Ban'thalos_
Use _Deterrence_ to avoid getting hit by him while taming.
Use your Tame Beast ability on _Ban'thalos_. |cast Tame Beast##1515 |goto Mount Hyjal,27.3,64.3
modeldisplay 38634
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Bears\\Spectral Bear (Rare Spawn)",{
model={31094},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Arcturis around the area.
|tip It is level 74.
Use your Tame Beast ability on _Arcturis_. |cast Tame Beast##1515 |goto Grizzly Hills,31.2,55.4
Note that this pet requires you to have the _Beast Mastery_ talent
modeldisplay 31094
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Crabs\\Ghost Crab (Rare Spawn)",{
model={37396},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Abyssal Depths
path follow strict;loop off;ants straight
path	27.6,76.6	32.6,72.4	31.8,75.8
path	31.6,80.6	29.4,82.2	25.6,82.6
path	23.2,75.8	24.6,71.2	23.6,62.6
path	20.4,69.8	18.6,76.8	18.0,81.6
path	20.4,84.4	15.0,87.4	13.4,81.2
path	17.0,72.2	18.6,65.6	18.6,53.0
path	20.6,48.4	23.2,47.8
Search for Ghostcrawler around the area. It is level 85.
Use your Tame Beast ability on _Ghostcrawler_. |cast Tame Beast##1515
modeldisplay 37396
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Cats\\Blue Spectral Saber (Rare Spawn)",{
model={38749},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Your character must not be wearing any weapons or armor in order to obtain this pet.
confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
Search for Magria around the area.
|tip It is level 85.
Use your Tame Beast ability on _Magria_. |cast Tame Beast##1515
modeldisplay 38749
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Cats\\Green Spectral Saber (Rare Spawn)",{
model={38748},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Your character must not be wearing any weapons or armor in order to obtain this pet.
confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
Search for Ankha around the area.
|tip It is level 85.
Use your Tame Beast ability on _Ankha_. |cast Tame Beast##1515
modeldisplay 38748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Cats\\Striped Ghost Saber w/ Green Eyes (Rare Spawn)",{
model={28871},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Zul'Drak
path follow strict;loop;ants straight
path	61.6,62.6	63.2,42.4	69.6,48.6
path	74.4,46.6	77.8,69.4	68.0,77.4
Search for Gondria at the points shown.
|tip It is level 77.
Use your Tame Beast ability on _Gondria_. |cast Tame Beast##1515
modeldisplay 28871
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Cats\\White Spotted Cat w/ Blue Eyes (Rare Spawn)",{
model={28010},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Sholazar Basin
path follow strict;loop;ants straight
path	58.6,22.2	36.6,31.0	20.4,44.2
path	21.8,70.4	31.0,66.6	51.0,81.6
path	66.6,78.8	71.6,72.0
Search for Loque'nahak at each point on your map.
|tip It is level 76.
Use your Tame Beast ability on a _Loque'nahak_. |cast Tame Beast##1515
modeldisplay 28010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Wolves\\Blue Spirit Wolf (Rare Spawn)",{
class="HUNTER",
spec="Beast Mastery",
model={29673},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Skoll around the area. It is level 80.
You can also find Skoll at the points below:
[30.2,64.6]
[27.8,50.8]
Use your Tame Beast ability on a _Skoll_. |cast Tame Beast##1515 |goto The Storm Peaks,46.2,65.0
modeldisplay 29673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Ferocity Pets\\Wolves\\Ghost Wolf (Rare Spawn)",{
class="HUNTER",
spec="Beast Mastery",
model={36726},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Twilight Highlands
path follow strict;loop;ants straight
path	59.6,42.4	54.2,53.8	49.6,74.8
path	54.4,75.0	58.6,63.6	65.8,60.8
Search for Karoma at the points on the map.
|tip It is level 85.
Use your Tame Beast ability on _Karoma_. |cast Tame Beast##1515
modeldisplay 36726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Dark Purple Wasp (Rare Spawn)",{
model={37579},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Rex Ashil around the area.
|tip It is level 56.
Use your Tame Beast ability on _Rex Ashil_. |cast Tame Beast##1515 |goto Silithus,52.2,24.2
modeldisplay 37579
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Orange Wasp (Rare Spawn)",{
model={37548},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Silithus
path follow strict;loop off;ants straight
path	33.8,53.0	32.0,56.2	28.6,53.4
path	26.4,62.2	31.4,63.2
Search for Zora around the area.
|tip It is level 55.
Use your Tame Beast ability on _Zora_. |cast Tame Beast##1515
modeldisplay 37548
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wasps\\Gray Wasp (Rare Spawn)",{
model={11142},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Qirot around the area.
|tip It is level 39.
Use your Tame Beast ability on _Qirot_. |cast Tame Beast##1515 |goto Feralas,76.6,61.4
modeldisplay 11142
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Unique Gray Wolf (Rare Spawn)",{
class="HUNTER",
model={11414},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Old Cliff Jumper around the area.
|tip It is level 30.
Use your Tame Beast ability on _Old Cliff Jumper_. |cast Tame Beast##1515 |goto The Hinterlands,13.6,53.8
modeldisplay 11414
step
You should tame one of the following:
learnpet Mist Howler##8211
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Ferocity Pets\\Wolves\\Brown Wolf (Rare Spawn)",{
class="HUNTER",
model={9372},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Barnabus around the area.
|tip It is level 46.
Use your Tame Beast ability on _Barnabus_. |cast Tame Beast##1515 |goto Badlands,39.8,60.6
modeldisplay 9372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Crabs\\Metallic Silver Crab (Rare Spawn)",{
model={38825},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
We suggest that you are _Marksman_ with the _Silencing Shot_ talent.
Search for Karkin around the area.
|tip It is level 85.
You can also find [33.6,52.8].
For Karkin, you will want to open with _Tame Beast_.
Once you start, immidiate interrupt the spell, followed by a _Silencing Shot_ on _Fieroclast Barrage_.
Immidiately after, use _Deterrence_ followed by _Tame Beast_.
Use your Tame Beast ability on _Karkin_. |cast Tame Beast##1515 |goto Molten Front,37.8,35.6
modeldisplay 38825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Gorillas\\White Gorilla (Rare Spawn)",{
model={10133},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Tsul'Kalu around the area.
|tip It is level 28.
Use your Tame Beast ability on _Tsul'Kalu_. |cast Tame Beast##1515 |goto Northern Stranglethorn,47.8,31.4
modeldisplay 10133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Purple and Orange Scorpid (Rare Spawn)",{
model={15433},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Clack the Reaver around the area.
|tip It is level 55.
Use your Tame Beast ability on _Clack the Reaver_. |cast Tame Beast##1515 |goto Blasted Lands,47.6,13.8
modeldisplay 15433
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Red Scorpid (Rare Spawn)",{
model={31351},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Scorpitar around the area.
|tip It is level 47.
Use your Tame Beast ability on _Scorpitar_. |cast Tame Beast##1515 |goto Tanaris,49.6,58.6
modeldisplay 31351
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Green Scorpid (Rare Spawn)",{
model={10988},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Vile Sting around the area.
|tip It is level 45.
Use your Tame Beast ability on _Vile Sting_. |cast Tame Beast##1515 |goto Thousand Needles,6.0,42.0
modeldisplay 10988
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Scorpids\\Blue Scorpid (Rare Spawn)",{
model={37361},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Uldum
path follow strict;loop;ants straight
path	50.6,23.0	50.6,20.2	54.0,19.4
path	47.6,18.4	44.6,10.4	44.6,21.8
Search for Madexx at the points on your map. It is level 84.
|tip Note that there are 5 different skins for Madexx that all share the very same spawn point.
Use your Tame Beast ability on _Madexx_. |cast Tame Beast##1515
modeldisplay 37361
modeldisplay 37359
modeldisplay 37362
modeldisplay 37360
modeldisplay 36728
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Shale Spiders\\Green Glowing Shale Spider (Rare Spawn)",{
model={36636},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
If you would like to use a leveling guide to do the prequests click here |confirm
|tip In order to get this pet, you must have unlocked the Therazane Dailies by completing the quest "The Stone Throne", as well as have the quest Underground Economy.
If you would like to skip the prequests click here |confirm |next "noprequest"
step
#include "A_Therazane_PreQuest"
step
label	"noprequest"
talk Ricket##44968
accept Underground Economy##27048 |goto 61.3,26.2
|tip You need the bombs from this daily quest to reach Jadefang's spawn point.
Note that if the daily isn't available _you won't be able to reach Jadefang_.
step
map Deepholm
path follow strict;loop off;ants straight
path	62.0,27.4	63.0,27.2	63.9,28.0
path	65.2,27.6	65.2,26.3	63.8,24.6
path	64.3,22.3	64.8,19.8	63.6,19.3
path	63.0,20.8
Once you reach the end of the path, use _Ricket's Tickers_. |use Ricket's Tickers##65514
Face the ledge across from you, moving forward only a little in front of the bomb so that it will knock you over there.
Launch yourself over to [62.5,22.0]
confirm
step
Search for Jadefang who is at the end of the tunnel.
|tip It is level 85.
Use your Tame Beast ability on _Jadefang__. |cast Tame Beast##1515 |goto 61.3,22.5
modeldisplay 36636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Blue Turtle (Rare Spawn)",{
model={7046},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Scalebeard along the shoreline here.
|tip It is level 16.
Use your Tame Beast ability on _Scalebeard_. |cast Tame Beast##1515 |goto Azshara,43.0,51.6
modeldisplay 7046
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Purple Turtle (Rare Spawn)",{
model={37770},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Ironback around the area.
|tip It is level 31.
Use your Tame Beast ability on _Ironback_. |cast Tame Beast##1515 |goto The Hinterlands,80.6,56.6
modeldisplay 37770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Tenacity Pets\\Turtles\\Fiery Turtle (Rare Spawn)",{
model={37282},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	51.8,84.0	54.0,80.6	55.8,75.6
path	53.2,73.8	52.0,72.2	48.8,72.0
Search for Terrorpene in the lava at along the waypoints.
|tip It is level 81.
Use your Tame Beast ability on _Terrorpene_. |cast Tame Beast##1515
modeldisplay 37282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Golden Worm (Rare Spawn)",{
model={12336},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Oozeworm around the area.
|tip It is level 38.
Use your Tame Beast ability on _Oozeworm_. |cast Tame Beast##1515 |goto Dustwallow Marsh,37.2,62.6
modeldisplay 12336
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Tenacity Pets\\Worms\\Orange Worm (Rare Spawn)",{
model={14523},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Silithus
path follow strict;loop off;ants straight
path	50.6,63.6	49.6,73.6	35.2,73.6
path	41.6,65.6
Search for Grubthor at the waypoints.
|tip It is level 56.
Use your Tame Beast ability on _Grubthor_. |cast Tame Beast##1515
modeldisplay 14523
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Blue Boss Silithid",{
model={15657},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
map Tanaris
path follow strict;loop;ants straight
path	55.8,64.6	56.6,68.8	53.0,70.4
path	50.6,72.6	52.6,65.8
Search for Harakiss the Infestor around the area.
|tip It is level 47.
Use your Tame Beast ability on _Harakiss the Infestor_. |cast Tame Beast##1515
modeldisplay 15657
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Damaged Boss Silithid",{
model={35578},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for the Hive Controller around the area.
|tip It is level 42.
Use your Tame Beast ability on the _Hive Controller_. |cast Tame Beast##1515 |goto Thousand Needles,64.0,86.0
modeldisplay 35578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Pink Boss Silithid",{
model={37549},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Ainamiss the Hive Queen around the area.
|tip It is level 48.
Use your Tame Beast ability on _Ainamiss the Hive Queen_. |cast Tame Beast##1515 |goto Tanaris,34.2,46.0
modeldisplay 37549
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Cunning Pets\\Silithids\\Purple Boss Silithid (Rare Spawn)",{
model={31045},
description="This guide will walk you through obtaining\nmiscellaneous hunter pets",
},[[
step
Search for Gorishi Fledgling Colossus around the area.
|tip It is level 53 Elite.
Use your Tame Beast ability on _Gorishi Fledgling Colossus_. |cast Tame Beast##1515 |goto Un'Goro Crater,47.6,86.8
modeldisplay 31045
]])
