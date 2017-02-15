local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHWOD") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mud Jumper",{
pet=1441,
description="This guide will walk you through obtaining the Aquatic pet: Mud Jumper.",
},[[
step
The _Mud Jumpers_ are level 25
|tip It's a brown frog that jumps around the outskirts of the rivers and lakes of Nagrand.
Challenge one to a pet battle and capture it.
learnpet Mud Jumper##83642 |goto Nagrand D 69.4,20.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Leatherhide Runt",{
pet=1435,
description="This guide will walk you through obtaining the Beast pet: Leatherhide Runt.",
},[[
step
The _Leatherhide Runts_ are level 25
|tip These pets can be found inside cages in huts in Hallvalor.
Challenge one to a pet battle and capture it.
learnpet Leatherhide Runt##89198 |goto Nagrand D 80.0,56.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Flat-Tooth Calf",{
pet=1595,
description="This guide will walk you through obtaining the Beast pet: Flat-Tooth Calf.",
},[[
step
The _Flat-Tooth Calves_ are level 25 |goto Talador 70.8,53.4
|tip This pet is somewhat rare and has the same model as other river calfs and mudbacks.
Challenge one to a pet battle and capture it.
learnpet Flat-Tooth Calf##88572 |goto Talador 70.8,53.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mudback Calf",{
pet=1594,
description="This guide will walk you through obtaining the Beast pet: Mudback Calf.",
},[[
step
The _Mudback Calves_ are level 25
|tip This pet is a pinkish color and may be hard to battle, try to find one that out of the water or in shallow water.
Challenge one to a pet battle and capture it.
learnpet Mudback Calf##88571 |goto Gorgrond 47.6,88.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Frostshell Pincher",{
pet=1578,
description="This guide will walk you through obtaining the Aquatic pet: Frostshell Pincher.",
},[[
step
The _Frostshell Pinchers_ are level 25
|tip This pet is a blueish colored crab.
Challenge one to a pet battle and capture it.
learnpet Frostshell Pincher##88480 |goto Frostfire Ridge 54.2,59.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ironclaw Scuttler",{
pet=1579,
description="This guide will walk you through obtaining the Aquatic pet: Ironclaw Scuttler.",
},[[
step
The _Ironclaw Scuttlers_ are level 25
|tip This pet is a red and brown crab.
Challenge one to a pet battle and capture it.
learnpet Ironclaw Scuttler##88474 |goto Frostfire Ridge 54.0,37.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Kelp Scuttler",{
pet=1583,
description="This guide will walk you through obtaining the Aquatic pet: Kelp Scuttler.",
},[[
step
The _Kelp Scuttlers_ are level 25
|tip This pet can be find very frequently on the coastlines of Talador.
Challenge one to a pet battle and capture it.
learnpet Kelp Scuttler##88465 |goto Talador/0 54.0,16.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Moonshell Crab",{
pet=1447,
description="This guide will walk you through obtaining the Aquatic pet: Moonshell Crab.",
},[[
step
The _Moonshell Crabs_ are level 25
|tip This pet is a snow blue crab.
Challenge one to a pet battle and capture it.
learnpet Moonshell Crab##82045 |goto Shadowmoon Valley D 67.6,32.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Zangar Crawler",{
pet=1582,
description="This guide will walk you through obtaining the Aquatic pet: Zangar Crawler.",
},[[
step
The _Zangar Crawlers_ are level 25
|tip This pet is a dark green colored crab.
Challenge one to a pet battle and capture it.
learnpet Zangar Crawler##88466 |goto Shadowmoon Valley D 41.2,16.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Icespine Hatchling",{
pet=1457,
description="This guide will walk you through obtaining the Beast pet: Icespine Hatchling.",
},[[
step
The _Icespine Hatchlings_ are level 25
|tip This pet spawns in large groups and is a snowy blue color.
Challenge one to a pet battle and capture it.
learnpet Icespine Hatchling##85003 |goto Frostfire Ridge 54.8,37.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mossbite Skitterer",{
pet=1455,
description="This guide will walk you through obtaining the Beast pet: Mossbite Skitterer.",
},[[
step
The _Mossbite Skitterers_ are level 25
|tip This pet as a little bit more detailed model then most other wild pets, it's green and black colored.
Challenge one to a pet battle and capture it.
learnpet Mossbite Skitterer##85005 |goto Shadowmoon Valley D 48.2,82.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Thicket Skitterer",{
pet=1456,
description="This guide will walk you through obtaining the Beast pet: Thicket Skitterer.",
},[[
step
The _Thicket Skitterers_ are level 25
|tip This pet can come in different colors, a light tan, and a bright yellow color.
Challenge one to a pet battle and capture it.
learnpet Thicket Skitterer##85007 |goto Spires of Arak/0 45.0,47.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Brilliant Bloodfeather",{
pet=1572,
description="This guide will walk you through obtaining the Flying pet: Brilliant Bloodfeather.",
},[[
step
The _Brilliant Bloodfeathers_ are level 25
|tip This pet is a very bright pink colored bird.
Challenge one to a pet battle and capture it.
learnpet Brilliant Bloodfeather##88385 |goto Talador 65.6,31.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Swamplighter Firefly",{
pet=1590,
description="This guide will walk you through obtaining the Flying pet: Swamplighter Firefly.",
},[[
step
The _Swamplighter Fireflies_ are level 25
|tip Firefly found in the swampy beaches of Spire of Arakk.
Challenge one to a pet battle and capture it.
learnpet Swamplighter Firefly##88359 |goto Spires of Arak/0 54.5,87.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Golden Dawnfeather",{
pet=1573,
description="This guide will walk you through obtaining the Flying pet: Golden Dawnfeather.",
},[[
step
The _Golden Dawnfeathers_ are level 25
|tip This pet is a purple feathered peacock bird.
Challenge one to a pet battle and capture it.
learnpet Golden Dawnfeather##85798 |goto Spires of Arak 41.2,57.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Royal Moth",{
pet=1587,
description="This guide will walk you through obtaining the Flying pet: Royal Moth.",
},[[
step
The _Royal Moths_ are level 25
|tip This pet is a very common blue moth.
Challenge one to a pet battle and capture it.
learnpet Royal Moth##88417 |goto Shadowmoon Valley D 39.2,39.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Wood Wasp",{
pet=1463,
description="This guide will walk you through obtaining the Flying pet: Wood Wasp.",
},[[
step
The _Wood Wasps_ are level 25
|tip This is a green wasp flying pet and is found in a small area where a bonus objective is.
Challenge one to a pet battle and capture it.
learnpet Wood Wasp##85254 |goto Gorgrond/0 49.2,80.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bloodsting Wasp",{
pet=1462,
description="This guide will walk you through obtaining the Flying pet: Bloodsting Wasp.",
},[[
step
The _Bloodsting Wasps_ are level 25
|tip This pet is a red flying wasp.
Challenge one to a pet battle and capture it.
learnpet Bloodsting Wasp##85255 |goto Spires of Arak 44.2,49.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Twilight Wasp",{
pet=1464,
description="This guide will walk you through obtaining the Flying pet: Twilight Wasp.",
},[[
step
The _Twilight Wasps_ are level 25
|tip This pet is a snow colored wasp.
Challenge one to a pet battle and capture it.
learnpet Twilight Wasp##85253 |goto Frostfire Ridge/0 51.8,20.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Veilwatcher Hatchling",{
pet=1596,
description="This guide will walk you through obtaining the Flying pet: Veilwatcher Hatchling.",
},[[
step
talk Vesharr##87123 |goto Spires of Arak 45.2,46.2
|tip This pet costs 1,000 gold.
buy Veilwatcher Hatchling##120050
learnpet Veilwatcher Hatchling##88573 |use Veilwatcher Hatchling##120050
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Shadow Sporebat",{
pet=1599,
description="This guide will walk you through obtaining the Flying pet: Shadow Sporebat.",
},[[
step
The _Shadow Sporebats_ are level 25
|tip This pet is a rare spawn pet and can only be found in Zangarra.
Challenge one to a pet battle and capture it.
learnpet Shadow Sporebat##88576 |goto Talador/0 84.9,29.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Axebeak Hatchling",{
pet=1470,
description="This guide will walk you through obtaining the Flying pet: Axebeak Hatchling.",
},[[
step
The _Axebeak Hatchlings_ are level 25
|tip This bird has razor sharp teeth and silver tipped wings.
Challenge one to a pet battle and capture it.
learnpet Axebeak Hatchling##85389 |goto Gorgrond 59.2,52.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Junglebeak",{
pet=1469,
description="This guide will walk you through obtaining the Flying pet: Junglebeak.",
},[[
step
The _Junglebeaks_ are level 25
|tip This pet is very common around the jungle parts of Gorgrond, it is a green winged bird.
Challenge one to a pet battle and capture it.
learnpet Junglebeak##85192 |goto Gorgrond 42.4,73.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Doom Bloom",{
pet=1564,
description="This guide will walk you through obtaining the Elemental pet: Doom Bloom.",
},[[
step
kill Mandrakor##84406 |goto Gorgrond 50.6,53.2
collect Doom Bloom##118709
learnpet Doom Bloom##88103 |use Doom Bloom##118709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Brilliant Spore",{
pet=1540,
description="This guide will walk you through obtaining the Flying pet: Brilliant Spore.",
},[[
step
kill Rotcap##85504 |goto Spires of Arak 38.4,27.8
collect Brilliant Spore##118107
learnpet Brilliant Spore##86719 |use Brilliant Spore##118107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Forest Sproutling",{
pet=1430,
description="This guide will walk you through obtaining the Elemental pet: Forest Sproutling.",
},[[
step
This pet requires you to be Revered with Steamwheedle "Preservation Society"
|tip To gain reputation with this faction you will need to collect turn in items.
|tip These items can be found by killing level 100 mobs in Nagrand, from chests in the level 100 areas in Nagrand, or killing the level 100 rare spawns in Nagrand.
confirm
step
talk Mimi Wizzlebub##88493 |goto Warspear 54.2,60.7
buy Captured Forest Sproutling##119149
learnpet Forest Sproutling##83583 |use Captured Forest Sproutling##119149
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hydraling",{
pet=1541,
description="This guide will walk you through obtaining the Aquatic pet: Hydraling.",
},[[
step
talk Bron Skyhorn##79407 |goto Frostwall 45.8,50.9
Fly to _Apexis Excavation, Spires of Arak_. |goto Spires of Arak/0 36.9,24.7<20
click Varasha's Egg## |goto Spires of Arak/0 29.4,41.6
kill Varasha##82050
click Varasha's Egg## |goto Spires of Arak/0 29.4,41.6
collect Hydraling##118207
learnpet Hydraling##86879 |use Hydraling##118207
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ore Eater",{
pet=1495,
description="This guide will walk you through obtaining the Humanoid pet: Ore Eater.",
},[[
step
This pet will drop from a Goren Protector spawned while mining in Shadowmoon Valley
|tip Keep mining in Shadowmoon Valley until the Goren Protector spawns.
kill Goren Protector##85294
collect Red Goren Egg##118919
learnpet Ore Eater##85667 |use Red Goren Egg##118919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Eye of Observation",{
pet=1576,
description="This guide will walk you through obtaining the Magic pet: Eye of Observation.",
},[[
step
This pet requires you to kill a 100 Rare Elite called Orumo the Observer
|tip The mechanics and difficulty of this fight require at least three players to complete.
|tip This pet does not have a 100 percent chance to drop.
kill Orumo the Observer##87668 |goto Talador 31.4,47.5
collect Eye of Observation##119170
learnpet Eye of Observation##88490 |use Eye of Observation##119170
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Albino River Calf",{
pet=1571,
description="This guide will walk you through obtaining the Beast pet: Albino River Calf.",
},[[
step
This pet requires you to be Revered with Steamwheedle "Preservation Society"
|tip To gain reputation with this faction you will need to collect turn in items.
|tip These items can be found by killing level 100 mobs in Nagrand, from chests in the level 100 areas in Nagrand, or killing the level 100 rare spawns in Nagrand.
confirm
step
talk Mimi Wizzlebub##88493 |goto Warspear 54.2,60.7
buy Indentured Albino River Calf##119148
learnpet Albino River Calf##85281 |use Indentured Albino River Calf##119148
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Zomstrok",{
pet=1428,
description="This guide will walk you through obtaining the Undead pet: Zomstrok",
},[[
step
kill Darktide Husk##84406+, Darktide Boneshell##82261+ |goto Shadowmoon Valley D 38.8,78.6
|tip You may have to kill multiple Darktide mobs before the pet drops.
collect Zomstrok##113554
learnpet Zomstrok##83562 |use Zomstrok##113554
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Netherspawn, Spawn of Netherspawn",{
pet=1524,
description="This guide will walk you through obtaining the Magic pet: Netherspawn, Spawn of Netherspawn",
},[[
step
kill Netherspawn##83401 |goto Nagrand 47.6,70.8
collect Netherspawn, Spawn of Netherspawn##116815
learnpet Netherspawn, Spawn of Netherspawn##86081 |use Netherspawn, Spawn of Netherspawn##116815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Servant of Demidos",{
pet=1601,
description="This guide will walk you through obtaining the Magic pet: Servant of Demidos",
},[[
step
Demidos is a 100 Rare Elite and will require a group
|tip This pet does not have a 100 percent chance to drop.
confirm
step
kill Demidos##84911 |goto Shadowmoon Valley 46.0,71.6
collect Servant of Demidos##119431
learnpet Servant of Demidos##88692 |use Servant of Demidos##119431
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Trunks",{
pet=1605,
description="This guide will walk you through obtaining the Magic pet: Trunks",
},[[
step
To earn Trunks, you must complete the An Awfully Big Adventure achievement
|tip Defeat the trainers with an Elekk Plushie on your team. |achieve 9069
|tip This achievement will require many different max level pets.
step
|tip Trunks should be delivered via in game mail.
collect Trunks##120121
learnpet Trunks##88830 |use Trunks##120121
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Land Shark",{
pet=115,
description="This guide will walk you through obtaining the Aquatic pet: Land Shark",
},[[
step
talk Nat Pagle##85984 |goto Frostwall 38.1,75.8
|tip Purchasing this pet requires fishing skill at 700 and "Good Friends" reputation with Nat Pagle.
collect 50 Nat's Lucky Coin##117397
buy Land Shark##117404
learnpet Land Shark##86445 |use Land Shark##117404
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sea Calf",{
pet=1448,
description="This guide will walk you through obtaining the Aquatic pet: Sea Calf",
},[[
step
talk Nat Pagle##85984 |goto Frostwall 38.1,75.8
|tip Purchasing this pet requires fishing skill at 700 and "Good Friends" reputation with Nat Pagle.
collect 50 Nat's Lucky Coin##117397
buy Sea Calf##114919
learnpet Sea Calf##84441 |use Sea Calf##114919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Meadowstomper Calf",{
pet=1446,
description="This guide will walk you through obtaining the Beast pet: Meadowstomper Calf",
},[[
step
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto Nagrand D 79.20,52.63
step
kill 10 Ravenous Windroc##79851 |q Tastes Like Chicken##34869/1 |goto 73.99,59.26
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.22,52.66
accept Fruitful Ventures##34819 |goto 79.22,52.66
step
click Nagrand Cherry##60424
collect 15 Nagrand Cherry##113083 |q Fruitful Ventures##34819/1 |goto Nagrand D 69.8,54.4
|tip These can be found all around this area, mostly around trees.
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto Nagrand D/0 79.2,52.6
accept New Babies##34900 |goto 79.21,52.66
step
clicknpc Tenderhoof Meadowstomper##78459
Coax Tenderhoof Meadowstompers |q New Babies##34900/1 |goto 69.90,65.77
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.22,52.66
learnpet Meadowstomper Calf##84330
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Nightshade Sproutling",{
pet=1432,
description="This guide will walk you through obtaining the Elemental pet: Nightshade Sproutling",
},[[
step
Click here to farm the pet yourself. |confirm |next "nightshade"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "nightshade"
This pet will drop from a Disturbed Podling while picking herbs in Frostfire Ridge.
|tip Keep picking herbs in Frostfire Ridge while searching for Disturbed Podling.
|tip This pet can also drop from the sproutlings that can spawn while picking the herbs from your herb garden in your garrison, but is much less likely as one can only pick these herbs once a day per character.
clicknpc Disturbed Podling##85408
collect Nightshade Sproutling##118595
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Nightshade Sproutling##118595
step
label "done"
learnpet Nightshade Sproutling##83594 |use Nightshade Sproutling##118595
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sun Sproutling",{
pet=1434,
description="This guide will walk you through obtaining the Elemental pet: Sun Sproutling",
},[[
step
Click here to farm the pet yourself. |confirm |next "sproutling"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "sproutling"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Sun Sproutling##118598 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Sun Sproutling##118598
step
label "done"
learnpet Sun Sproutling##83588 |use Sun Sproutling##118598
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Deathwatch Hatchling",{
pet=1449,
description="This guide will walk you through obtaining the Beast pet: Deathwatch Hatchling",
},[[
step
Your guild needs have the achievement "Challenge Warlords: Gold - Guild Edition"
|tip Complete the Challenge Warlords: Gold - Guild Edition achievement. |achieve 9651
step
talk Shay Pressler##46602 |goto Stormwind City 64.6,76.8
buy 1 Deathwatch Hatchling##114968
learnpet Deathwatch Hatchling##84521 |use Deathwatch Hatchling##114968
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Albino Chimaeraling",{
pet=1385,
description="This guide will walk you through obtaining the Dragonkin pet: Albino Chimaeraling",
},[[
step
Click here to farm the pet yourself. |confirm |next "farmalbinoc"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmalbinoc"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Albino Chimaeraling##119434 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Albino Chimaeraling##119434
step
label "done"
learnpet Albino Chimaeraling##77021 |use Albino Chimaeraling##119434
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Puddle Terror",{
pet=1568,
description="This guide will walk you through obtaining the Aquatic pet: Puddle Terror",
},[[
step
Click here to farm the pet yourself. |confirm |next "farmpuddle"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmpuddle"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Puddle Terror##119467 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Puddle Terror##119467
step
label "done"
learnpet Puddle Terror##88300 |use Puddle Terror##119467
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Argi",{
pet=1603,
description="This guide will walk you through obtaining the Beast pet: Argi",
},[[
step
This pet can only be purchased in the official Blizzard Store
|tip This pet costs 10 US dollars.
|tip After purchasing, check your in-game mailbox.
collect Argi##118516
learnpet Argi##88807 |use Argi##118516
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bush Chicken",{
pet=1516,
description="This guide will walk you through obtaining the Critter pet: Bush Chicken",
},[[
step
This pet requires the copmletion of the world event "Pilgrim's Bounty"
|tip Complete the Pilgrim's Bounty world event. |achieve 3478
step
After completing, check your in-game mailbox.
collect Frightened Bush Chicken##116403
learnpet Bush Chicken##85846 |use Frightened Bush Chicken##116403
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lovebird Hatchling",{
pet=1511,
description="This guide will walk you through obtaining the Critter pet: Lovebird Hatchling",
},[[
step
This pet is sold by Lovely Merchants during the Love is in the Air Holiday
|tip The merchants are in the captial cities.
To earn tokens, _click here_. |next "Zygor's Horde Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies" |confirm |only if ZGV.guidesets["DailiesACATA"]
collect 40 Love Token##49927
confirm
step
talk Lovely Merchant##37674
buy 1 Lovebird Hatchling##116155
learnpet Lovebird Hatchling##85710 |use Lovebird Hatchling##116155
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pygmy Cow",{
pet=1543,
description="This guide will walk you through obtaining the Critter pet: Pygmy Cow",
},[[
step
This pet requires Requires Barn Level 3 and the copmletion of the achievement "Trapper's Delight"
|tip Complete the Trapper's Delight achievement. |achieve 9451
step
After completing, check your in-game mailbox.
collect Glass of Warm Milk##120309
learnpet Pygmy Cow##87257 |use Glass of Warm Milk##120309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bronze Whelpling",{
pet=1563,
description="This guide will walk you through obtaining the Dragonkin pet: Bronze Whelpling",
},[[
step
kill Ironmarch Scout##76886+, Ironmarch Grunt##76189+, Ironmarch Leadspitter##76651+, Ironmarch Executioner##82774+, Ironmarch Forager##77090+ |goto Blasted Lands/0 61.0,32.9
|tip Drops off of Iron Horde mobs in the Blasted Lands only during the pre-launch invasion event.
collect Time-Locked Box##118675
learnpet Bronze Whelpling##7546 |use Time-Locked Box##118675
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lanticore Spawnling",{
pet=1533,
description="This guide will walk you through obtaining the Dragonkin pet: Lanticore Spawnling",
},[[
step
Drops from the 100 Rare Elite The Lanticore in the Upper Blackrock Spire 5-man dungeon
|tip The Lanticore is not a guaranteed spawn, and will require a 5-man group to complete.
kill The Lanticore##77081
|tip He is located just to the right of the second boss, Kyrak.
|tip He is located just to the right of the second boss, Kyrak.
collect Lanticore Spawnling##117528
learnpet Lanticore Spawnling##86532 |use Lanticore Spawnling##117528
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Blazing Cindercrawler",{
pet=1517,
description="This guide will walk you through obtaining the Elemental pet: Blazing Cindercrawler",
},[[
step
This pet is sold by Midsummer Merchant during the Midsummer Fire Festival Holiday
|tip The merchants are in the captial cities.
To earn tokens, _click here_. |next "Zygor's Horde Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
collect 350 Burning Blossom##23247
confirm
step
talk Midsummer Merchant##26124
buy 1 Blazing Cindercrawler##116439
learnpet Lovebird Hatchling##85710 |use Blazing Cindercrawler##116439
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Crazy Carrot",{
pet=1396,
description="This guide will walk you through obtaining the Elemental pet: Crazy Carrot",
},[[
step
collect 1000 Draenic Seeds##116053
talk Tarnon##81981 |goto Frostwall 44.0,83.6
buy 1 Crazy Carrot##110721
learnpet Crazy Carrot##79039 |use Crazy Carrot##110721
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Forest Sproutling",{
pet=1430,
description="This guide will walk you through obtaining the Elemental pet: Forest Sproutling",
},[[
step
This pet requires you to be Revered with Steamwheedle "Preservation Society"
|tip To gain reputation with this faction you will need to collect turn in items.
|tip These items can be found by killing level 100 mobs in Nagrand, from chests in the level 100 areas in Nagrand, or killing the level 100 rare spawns in Nagrand.
confirm
step
talk Mimi Wizzlebub##88493 |goto Warspear 54.2,60.7
buy 1 Captured Forest Sproutling##119149
learnpet Forest Sproutling##83583 |use Captured Forest Sproutling##119149
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Molten Corgi",{
pet=1451,
description="This guide will walk you through obtaining the Elemental pet: Molten Corgi",
},[[
step
This pet is only attainable during WoW's 10th Anniversary (November 21, 2014 to January 6, 2015)
|tip Complete the WoW's 10th Anniversary event. |achieve 8820
step
After completing, check your in-game mailbox.
collect Molten Corgi##115301
learnpet Molten Corgi##84915 |use Molten Corgi##115301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Soul of the Forge",{
pet=1569,
description="This guide will walk you through obtaining the Elemental pet: Soul of the Forge",
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Blacksmithing, or purchase it from the Auction House.
step
label "create"
collect 1000 True Iron Ore##109119
collect 500 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Truesteel Ingots_. |collect 50 Truesteel Ingot##108257
collect 10 Sorcerous Fire##113261
step
Create 1 _Soul of the Forge_. |collect Soul of the Forge##177169
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Soul of the Forge##177169
step
label "done"
learnpet Soul of the Forge##84853 |use Soul of the Forge##177169
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Stout Alemental",{
pet=1518,
description="This guide will walk you through obtaining the Elemental pet: Stout Alemental",
},[[
step
This pet is only availiable during the Brewfest Holiday
|tip You will need to complete the quests, then do the dailies to amass brewest tokens.
collect 200 Brewfest Prize Tokens##37829
step
_Click here_ if you need to do the quests leading up to the dailies. |next "Zygor's Horde Events Guides\\Brewfest\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
_Click here_ if you have completed the quests and only need the dailies. |next "Zygor's Horde Events Guides\\Brewfest\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
step
talk Blix Fixwidget##24495 |goto Durotar 40.4,17.8
buy 1 Stout Alemental##116756
learnpet Stout Alemental##85994 |use Stout Alemental##116756
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Crimson Spore",{
pet=1537,
description="This guide will walk you through obtaining the Flying pet: Crimson Spore",
},[[
step
click Strange Spore##237511 |goto Gorgrond/0 57.1,65.3
collect Crimson Spore##118106
learnpet Crimson Spore##86716 |use Crimson Spore##118106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Everbloom Peachick",{
pet=1566,
description="This guide will walk you through obtaining the Flying pet: Everbloom Peachick",
},[[
step
This quest is completed in The Everbloom, and will require a 5-man group to complete
confirm
step
talk Mylune##88025
accept For the Birds##37150 |goto Frostwall 33.76,50.72
step
Queue up for _The Everbloom_.
click Rustling Peachick Nest## |goto The Everbloom 55.8,22.1
collect Tiny Peachick Hatchling##118652
step
talk Mylune##88025
turnin For the Birds##37150 |goto 33.76,50.72
learnpet Everbloom Peachick##88222 |use Everbloom Peachick##118921
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Firewing",{
pet=1545,
description="This guide will walk you through obtaining the Flying pet: Firewing",
},[[
step
Click here to farm the pet yourself. |confirm |next "farming"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farmwing"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Firewing##118578 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Firewing##118578
step
label "done"
learnpet Firewing##87704 |use Firewing##118578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sunfire Kaliri",{
pet=1570,
description="This guide will walk you through obtaining the Flying pet: Sunfire Kaliri",
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Sunfire Kaliri##119468 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy FSunfire Kaliri##119468
step
label "done"
learnpet Sunfire Kaliri##88367 |use Sunfire Kaliri##119468
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Weebomination",{
pet=1394,
description="This guide will walk you through obtaining the Undead pet: Weebomination",
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Weebomination##113558 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Weebomination##113558
step
label "done"
learnpet Weebomination##78421 |use Weebomination##113558
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fruit Hunter",{
pet=1471,
description="This guide will walk you through obtaining the Flying pet: Fruit Hunter",
},[[
step
This pet hatches after 3 days from Mysterious Egg.
|tip The egg is looted from a Rylak nest on top of a roof in Grom'gar, Frostfire Ridge.
|tip To reach the nest, reach the top of the snowy hill, then jump down onto the roof of the main building.
|tip You can see a platform with rylaks, their handlers, and nests.
collect Cracked Egg##112108
step
collect Fruit Hunter##117564 |use Cracked Egg##112108
learnpet Fruit Hunter##85387 |use Fruit Hunter##117564
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Kaliri Hatchling",{
pet=1597,
description="This guide will walk you through obtaining the Flying pet: Kaliri Hatchling",
},[[
step
talk Vesharr##87123 |goto Spires of Arak/0 46.2,45.4
buy 1 Kaliri Hatchling##120051
learnpet Kaliri Hatchling##88574 |use Kaliri Hatchling##120051
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Veilwatcher Hatchling",{
pet=1596,
description="This guide will walk you through obtaining the Flying pet: Veilwatcher Hatchling",
},[[
step
talk Vesharr##87123 |goto Spires of Arak/0 46.2,45.4
buy 1 Veilwatcher Hatchling##120050
learnpet Veilwatcher Hatchling##88573 |use Veilwatcher Hatchling##120050
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mechanical Axebeak",{
pet=1403,
description="This guide will walk you through obtaining the Flying pet: Mechanical Axebeak",
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 130 True Iron Ore##109119
collect 130 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Gearspring Parts_. |collect 50 Gearspring Parts##111366
step
Create 1 _Mechanical Axebeak_. |collect Mechanical Axebeak##111402
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Mechanical Axebeak##111402
step
label "done"
learnpet Mechanical Axebeak##79410 |use Mechanical Axebeak##111402
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ikky",{
pet=1532,
description="This guide will walk you through obtaining the Flying pet: Ikky",
},[[
step
clicknpc Kaliri Egg##80470
accept Ikky's Egg##34838 |goto Spires of Arak/0 45.4,36.6
turnin Ikky's Egg##34838 |goto Spires of Arak/0 45.4,36.6
learnpet Ikky##86447
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Amberbarb Wasp",{
pet=1465,
description="This guide will walk you through obtaining the Flying pet: Amberbarb Wasp",
},[[
step
The _Amberbarb Wasps_ are level 25
|tip This pet is a yellow wasp and is found very commonly around Gorgrond.
Challenge one to a pet battle and capture it.
learnpet Amberbarb Wasp##85257 |goto Gorgrond 51.6,70.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Royal Peacock",{
pet=1411,
description="This guide will walk you through obtaining the Flying pet: Royal Peacock",
},[[
step
You need to have earned the achievement "Draenor Safari"
|tip Complete the achievement Draenor Safari. |achieve 9685
step
After completing, check your in-game mailbox.
collect Royal Peacock##111866
learnpet Royal Peacock##80101 |use Royal Peacock##111866
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Stormwing",{
pet=1546,
description="This guide will walk you through obtaining the Flying pet: Stormwing",
},[[
step
You need to have earned the achievement "So. Many. Pets."
|tip Complete the achievement So. Many. Pets. |achieve 9643
step
After completing, check your in-game mailbox.
collect Stormwing##118577
learnpet Stormwing##87705 |use Stormwing##118577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sentinel's Companion",{
pet=1567,
description="This guide will walk you through obtaining the Flying pet: Sentinel's Companion",
},[[
step
This pet can only be earned as an Alliance character,
|tip This pet can be bought in the auction house
confirm
step
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Sentinel's Companion##118923
learnpet Sentinel's Companion##88225
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Teroclaw Hatchling",{
pet=1416,
description="This guide will walk you through obtaining the Flying pet: Teroclaw Hatchling",
},[[
step
click the Teroclaw Nests##230643 |goto Talador 72.8,35.6
collect Teroclaw Hatchling##112699
learnpet Teroclaw Hatchling##81431 |use Teroclaw Hatchling##112699
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Elekk Plushie",{
pet=1426,
description="This guide will walk you through obtaining the Magic pet: Elekk Plushie",
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 600 Tailoring, or purchase it from the Auction House.
step
label "create"
collect 1000 Sumptuous Fur##111557
collect 500 Gorgrond Flytrap##109126
step
Create 50 _Hexweave Cloth_. |collect 50 Hexweave Cloth##111556
collect 10 Sorcerous Earth##113263
step
create 1 Elekk Plushie##168849,Tailoring,1 total
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Elekk Plushie##113216
step
label "done"
learnpet Elekk Plushie##82464 |use Elekk Plushie##113216
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Syd the Squid",{
pet=1478,
description="This guide will walk you through obtaining the Magic pet: Syd the Squid",
},[[
step
This pet is a reward from Greater Darkmoon Pet Supplies gathered from the pet daily on Darkmoon Island
|tip It is not a guaranteed drop, and may take several attempts.
confirm
step
talk Christoph VonFeasel##85519
accept A New Darkmoon Challenger!##36471 |goto Darkmoon Island 47.4,62.2
turnin A New Darkmoon Challenger!##36471 |goto Darkmoon Island 47.4,62.2
collect Greater Darkmoon Pet Supplies##116062
step
collect Syd the Squid##116064 |use Greater Darkmoon Pet Supplies##116062
learnpet Syd the Squid##85527 |use Syd the Squid##116064
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ancient Nest Guardian",{
pet=1531,
description="This guide will walk you through obtaining the Mechanical pet: Ancient Nest Guardian",
},[[
step
This pet is a rare Archaeology "Fossil" solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
talk 47571 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your world map, find Arrakoa dig sites in Draenor, and go to them.
Use your _Survey_ ability inside the dig site area. |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the Archaeology Fragments that spawn on the ground.
|tip You're looking for a rare artifact in the "Arrakoa" tab called "Ancient Nest Guardian". Solve this Archaeology puzzle.
confirm
step
collect 1 Ancient Nest Guardian##117354
learnpet Pterrordax Hatchling##53225 |use Pterrordax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Draenei Micro Defender",{
pet=1450,
description="This guide will walk you through obtaining the Mechanical pet: Draenei Micro Defender",
},[[
step
This pet can only be earned as an Alliance character
|tip This pet can be bought in the auction house.
confirm
step
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Draenei Micro Defender##119142
learnpet Draenei Micro Defender##84885
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Iron Starlette",{
pet=1387,
description="This guide will walk you through obtaining the Mechanical pet: Iron Starlette",
},[[
step
You should have received this pet while participating in the opening event for Draenor
confirm
step
talk Vol'jin##86832
turnin Warning the Warchief##36940 |goto Orgrimmar 48.2,70.6
collect Iron Starlette##111660
learnpet Iron Starlette##77221 |use Iron Starlette##111660
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lifelike Mechanical Frostboar",{
pet=1412,
description="This guide will walk you through obtaining the Mechanical pet: Lifelike Mechanical Frostboar",
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 130 True Iron Ore##109119
collect 130 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 50 _Gearspring Parts_. |collect 50 Gearspring Parts##111366
collect 40 Sumptuous Fur##111557
step
Create 1 _Lifelike Mechanical Frostboar_. |collect Lifelike Mechanical Frostboar##112057
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Lifelike Mechanical Frostboar##112057
step
label "done"
learnpet Lifelike Mechanical Frostboar##80329 |use Lifelike Mechanical Frostboar##112057
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mechanical Scorpid",{
pet=1565,
description="This guide will walk you through obtaining the Mechanical pet: Mechanical Scorpid",
},[[
step
Click here to gather and create the pet yourself. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet requires you to either have level 600 Engineering, or purchase it from the Auction House.
step
label "create"
collect 80 True Iron Ore##109119
collect 90 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 30 _Gearspring Parts_. |collect 30 Gearspring Parts##111366
collect 10 Blackrock Ore##109118
step
Create 1 _Mechanical Scorpid_. |collect Mechanical Scorpid##118741
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Mechanical Scorpid##118741
step
label "done"
learnpet Mechanical Scorpid##88134 |use Mechanical Scorpid##118741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sky-Bo",{
pet=1467,
description="This guide will walk you through obtaining the Mechanical pet: Sky-Bo",
},[[
step
Click here to gather and create the Blingtron 5000 yourself so you can always do the daily. |confirm |next "create"
Click here to be taken to the Auctioneer to purchase the pet directly. |confirm |next "buy"
|tip This pet is a possible reward from the Blingtron 5000 daily.
|tip If you do not have your own Blingtron 5000 you will have to rely on another player using it while you are present.
step
label "create"
talk Pozzlow##79826 |goto Frostwall 52.8,38.8
buy 1 Schematic: Blingtron 5000##118490
step
collect 200 True Iron Ore##109119
collect 200 Blackrock Ore##109118
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
|tip Make sure you are tracking minerals, and gather all Blackrock and True Iron ore you see as you follow this path.
step
Create 100 _Gearspring Parts_. |collect 100 Gearspring Parts##111366
step
Create 1 _Blingtron 5000_. |collect Blingtron 5000##111821
step
talk Blingtron 5000##77789 |use Blingtron 5000##111821
accept Blingtron 5000##34774
turnin Blingtron 5000##34774
step
collect Blingtron 5000 Gift Package##113258
collect Sky-Bo##115483 |use Blingtron 5000 Gift Package##113258
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Sky-Bo##115483
step
label "done"
learnpet Sky-Bo##85284 |use Sky-Bo##115483
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Stonegrinder",{
pet=1515,
description="This guide will walk you through obtaining the Mechanical pet: Stonegrinder",
},[[
step
click Ketya's Stash##228570 |goto Talador/0 54.0,27.7
|tip It's inside the cave off of the coast.
collect Stonegrinder##116402
learnpet Stonegrinder##85231 |use Stonegrinder##116402
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Cursed Birman",{
pet=1521,
description="This guide will walk you through obtaining the Undead pet: Cursed Birman",
},[[
step
This pet can only be obtained during the Hallow's End festival
collect 150 Tricky Treat##33226
step
talk Chub##53757 |goto Undercity 67.8,7.6
buy 1 Cursed Birman##116801
learnpet Cursed Birman##86061 |use Cursed Birman##116801
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Frostwolf Ghostpup",{
pet=1530,
description="This guide will walk you through obtaining the Undead pet: Frostwolf Ghostpup",
},[[
step
This pet is a rare Archaeology "Fossil" solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
talk 47571 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,525
step
Open your world map, find Clans dig sites in Draenor, and go to them.
Use your _Survey_ ability inside the dig site area. |cast Survey##80451
|tip A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Click the Archaeology Fragments that spawn on the ground.
|tip You're looking for a rare artifact in the "Clans" tab called "Frostwolf Ghostpup". Solve this Archaeology puzzle.
confirm
step
collect 1 Frostwolf Ghostpup##117380
learnpet Frostwolf Ghostpup##86422 |use Frostwolf Ghostpup##117380
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ghastly Kid",{
pet=1442,
description="This guide will walk you through obtaining the Undead pet: Ghastly Kid",
},[[
step
Click here to farm the pet yourself. |confirm |next "farm"
Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
|tip This pet can be farmed, or purchased from the Auction House.
step
label "farm"
This pet requires you complete the Mastering the Menagerie daily after gaining Menagerie Level 3.
|tip The daily reward will be a Big Bag of Pet Supplies from which you have a chance of getting this pet.
confirm
step
talk Serr'ah##79858
accept Mastering the Menagerie##37248 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37645 |goto Frostwall 31.4,42.0 |or
accept Mastering the Menagerie##37644 |goto Frostwall 31.4,42.0 |or
step
collect Sun Sproutling##118598 |use Big Bag of Pet Supplies##118697
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy Spectral Bell##113623
step
label "done"
learnpet Ghastly Kid##83817 |use Spectral Bell##113623
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Son of Sethe",{
pet=1574,
description="This guide will walk you through obtaining the Undead pet: Son of Sethe",
},[[
step
This pet requires you to be Revered with Arakkoa Outcasts.
talk Ravenspeaker Skeega##86037 |goto Warspear 53.6,60.2
buy 1 Son of Sethe##119143
learnpet Son of Sethe##88401 |use Son of Sethe##119143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Widget the Departed",{
pet=1523,
description="This guide will walk you through obtaining the Undead pet: Widget the Departed",
},[[
step
This pet can only be obtained during the Hallow's End festival.
collect 150 Tricky Treat##33226
step
talk Chub##53757 |goto Undercity 67.8,7.6
buy Widget the Departed##116804
learnpet Widget the Departed##86067 |use Widget the Departed##116804
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Frostwolf Pup",{
pet=1542,
description="This guide will walk you through obtaining the Beast pet: Frostwolf Pup",
},[[
step
This pet requires you to be Revered with Frostwolf Orcs.
confirm
step
talk Beska Redtusk##86036 |goto Warspear 53.6,62.2
buy 1 Frostwolf Pup##119141
learnpet Frostwolf Pup##87111 |use Frostwolf Pup##119141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Frostfur Rat",{
pet=1427,
description="This guide will walk you through obtaining the Critter pet: Frostfur Rat",
},[[
step
The _Frostfur Rats_ are level 25
|tip This is a very common rat and can very in size.
Challenge one to a pet battle and capture it.
learnpet Frostfur Rat##82715 |goto Frostfire Ridge 51.8,20.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bone Wasp",{
pet=1458,
description="This guide will walk you through obtaining the Flying pet: Bone Wasp",
},[[
step
This pet requires you to be Revered with Laughing Skull Orcs
confirm
step
talk Kil'rip##86698 |goto Frostwall 59.4,28.6
buy 1 Bone Wasp##119146
learnpet Bone Wasp##85014|use Bone Wasp##119146
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mystical Spring Bouquet",{
pet=1514,
description="This guide will walk you through obtaining the Flying pet: Mystical Spring Bouquet",
},[[
step
This pet can only be obtained during the Noblegarden festival, and it is non-combative
collect 100 Noblegarden Chocolate##44791
step
talk Noblegarden Merchant##32837 |goto Durotar 51.8,41.8
buy 1 Mystical Spring Bouquet##116258
learnpet Mystical Spring Bouquet##85773 |use Mystical Spring Bouquet##116258
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Parched Lizard",{
pet=1615,
description="This guide will walk you through obtaining the Beast pet: Parched Lizard",
},[[
step
The _Parched Lizards_ are level 25
|tip This pet is a yellow spotted lizard with a red tail.
Challenge one to a pet battle and capture it.
learnpet Parched Lizard##89194 |goto Gorgrond 41.2,37.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sky Fry",{
pet=1575,
description="This guide will walk you through obtaining the Flying pet: Sky Fry",
},[[
step
This pet can only be earned as an Alliance character, but it can be bought in the auction house
confirm
step
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1 Sky Fry##119150
learnpet Sky Fry##88452 |use Sky Fry##119150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Umbrafen Spore",{
pet=1538,
description="This guide will walk you through obtaining the Flying pet: Umbrafen Spore",
},[[
step
click Strange Spore##232621 |goto Shadowmoon Valley D/0 55.8,19.9
collect Umbrafen Spore##118104
learnpet Umbrafen Spore##86717 |use Umbrafen Spore##118104
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Waterfly",{
pet=1593,
description="This guide will walk you through obtaining the Flying pet: Waterfly",
},[[
step
The _Waterflies_ are level 25
|tip This pet is a blue firefly found frequently near the rivers of the new Shadowmoon Valley.
Challenge one to a pet battle and capture it.
learnpet Waterfly##88355 |goto Shadowmoon Valley D/0 53.8,66.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lil' Leftovers",{
pet=1395,
description="This guide will walk you through obtaining the Magic pet: Lil' Leftovers",
},[[
step
This pet requires you to either have level 600 Cooking, or purchase it from the Auction House
|tip This pet is aquired randomly from cooking Warlords of Draenor food.
confirm
step
learnpet Lil' Leftovers##78895 |use Lil' Leftovers##110684
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Dread Hatchling",{
pet=1386,
description="This guide will walk you through obtaining the Flying pet: Dread Hatchling",
},[[
step
This pet requires you to have purchased the Warlords of Draenor Collector's Edition
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Dread Hatchling##109014
learnpet Dread Hatchling##77137 |use Dread Hatchling##109014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Grommloc",{
pet=1602,
description="This guide will walk you through obtaining the Humanoid pet: Grommloc",
},[[
step
This pet requires you to have purchased access to BlizzCon 2014
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Grommloc##118517
learnpet Grommloc##88805 |use Grommloc##118517
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hatespark the Tiny",{
pet=1544,
description="This guide will walk you through obtaining the Elemental pet: Hatespark the Tiny",
},[[
step
This pet requires you to complete the 40 man LFR version of Molten Core during WoW's 10th Anniversary
|tip Complete the 40 man LFR version of Molten Core during WoW's 10th Anniversary.
confirm
step
collect Hatespark the Tiny##118574
learnpet Hatespark the Tiny##87669 |use Hatespark the Tiny##118574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Treasure Goblin",{
pet=1365,
description="This guide will walk you through obtaining the Humanoid pet: Treasure Goblin",
},[[
step
This pet requires you to have purchased the Diablo 3: Reaper of Souls Collector's Edition
|tip After purchasing, check your in-game mailbox.
confirm
step
collect Treasure Goblin##106256
learnpet Treasure Goblin##74413 |use Treasure Goblin##106256
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Abyssius",{
pet=1624,
description="This guide will walk you through obtaining the Elemental pet: Abyssius",
},[[
step
kill Supremus##22898 |goto Black Temple/3 16.4,51.1
|tip This pet has a small chance to drop from Supremus in the Black Temple.
collect Shard of Supremus##122106 |n
learnpet Abyssius##90202 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fragment of Anger",{
pet=1625,
description="This guide will walk you through obtaining the Undead pet: Fragment of Anger",
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Fragment of Anger##122107 |n
learnpet Fragment of Anger##90203 |use Fragment of Anger##122107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fragment of Suffering",{
pet=1626,
description="This guide will walk you through obtaining the Undead pet: Fragment of Suffering",
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Shard of Supremus##122106 |n
learnpet Fragment of Suffering##90204 |use Fragment of Suffering##122108
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fragment of Desire",{
pet=1627,
description="This guide will walk you through obtaining the Humanoid pet: Fragment of Desire",
},[[
step
kill Essence of Anger##23420 |goto Black Temple/4 62.5,85.4
|tip This pet has a small chance to drop from Essence of Anger in the Black Temple.
collect Fragment of Desire##122109 |n
learnpet Fragment of Desire##90205 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Leviathan Hatchling",{
pet=1623,
description="This guide will walk you through obtaining the Aquatic pet: Leviathan Hatchling",
},[[
step
kill High Warlord Naj'entus##22887 |goto Black Temple/2 42.2,19.1
|tip This pet has a small chance to drop from High Warlord Naj'entus in the Black Temple.
collect Leviathan Egg##122104 |n
learnpet Leviathan Hatchling##90201 |use Shard of Supremus##122106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sister of Temptation",{
pet=1628,
description="This guide will walk you through obtaining the Humanoid pet: Sister of Temptation",
},[[
step
kill Mother Shahraz##22947 |goto Black Temple/6 67.2,37.1
|tip This pet has a small chance to drop from Mother Shahraz in the Black Temple.
collect Sultry Grimoire##122110 |n
learnpet Sister of Temptation##90206 |use Sultry Grimoire##122110
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Wretched Servant",{
pet=1634,
description="This guide will walk you through obtaining the Humanoid pet: Wretched Servant",
},[[
step
kill Lady Sacrolash##25165 |goto Sunwell Plateau/1 64.0,32.6
kill Grand Warlock Alythess##25166 |goto Sunwell Plateau/1 64.0,32.6
|tip This pet has a small chance to drop from the Eredar Twins in Sunwell Plateau.
collect Servant's Bell##122115 |n
learnpet Wretched Servant##90214 |use Servant's Bell##122115
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sunblade Micro-Defender",{
pet=1632,
description="This guide will walk you through obtaining the Mechanical pet: Sunblade Micro-Defender",
},[[
step
kill Brutallus##24882
|tip This pet has a small chance to drop from the Brutallus in Sunwell Plateau.
collect Sunblade Rune of Activation##122113 |goto Sunwell Plateau/1 65.3,88.2
learnpet Sunblade Micro-Defender##90212 |use Sunblade Rune of Activation##122113
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Chaos Pup",{
pet=1633,
description="This guide will walk you through obtaining the Magic pet: Chaos Pup",
},[[
step
kill Entropius##25840 |goto Sunwell Plateau/2 46.6,23.9
kill M'uru##25741 |goto Sunwell Plateau/2 46.6,23.9
|tip This pet has a small chance to drop from the M'uru/Entropius in Sunwell Plateau.
collect Void Collar##122114 |n
learnpet Chaos Pup##90213 |use Void Collar##122114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\K'ute",{
pet=1635,
description="This guide will walk you through obtaining the Magic pet: K'ute",
},[[
step
This pet is a reward for completing the achievement "Raiding with Leashes III: Drinkin' from the Sunwell"
|tip This requires you to collect all of the pets from Hyjal Summit, Black Temple, and Sunwell Plateau.
achieve 9824
collect Holy Chime##122116 |n
learnpet K'ute##90215 |use Holy Chime##122116
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Grotesque",{
pet=1622,
description="This guide will walk you through obtaining the Undead pet: Grotesque",
},[[
step
kill Azgalor##17842 |goto Hyjal Summit/0 43.5,36.1
|tip This pet has a small chance to drop from Azgalor in Hyjal Summit.
collect Grotesque Statue##122105 |n
learnpet Grotesque##90200 |use Grotesque Statue##122105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hyjal Wisp",{
pet=1631,
description="This guide will walk you through obtaining the Magic pet: Hyjal Wisp",
},[[
step
kill Archimonde##17968 |goto Hyjal Summit/0 78.8,31.4
|tip This pet has a small chance to drop from Archimonde in Hyjal Summit.
collect Hyjal Wisp##122112 |n
learnpet Hyjal Wisp##90208 |use Hyjal Wisp##122112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Stinkrot",{
pet=1629,
description="This guide will walk you through obtaining the Undead pet: Stinkrot",
},[[
step
kill Anetheron##17808
|tip This pet has a small chance to drop from Anetheron in Hyjal Summit.
collect Smelly Gravestone##122111 |goto Hyjal Summit/0 8.7,68.0
learnpet Stinkrot##90207 |use Smelly Gravestone##122111
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Race MiniZep",{
pet=1636,
description="This guide will walk you through obtaining the Mechanical pet: Race MiniZep",
},[[
step
This pet is earned as a reward for completing the achievement "Big Rocketeer: Gold" at the Darkmoon Faire
achieve 9805
collect Race MiniZep Controller##122125 |n
learnpet Race MiniZep##90345 |use Race MiniZep Controller##122125
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Graves",{
pet=1639,
description="This guide will walk you through obtaining the Undead pet: Graves",
},[[
step
This pet is to be a promotional reward for Heroes of the Storm.
learnpet Graves##91226
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Young Talbuk",{
pet=1656,
description="This guide will walk you through obtaining the Beast pet: Young Talbuk",
},[[
step
talk Kura Thunderhoof##91362
accept Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
|tip This pet is a random drop for Traveler's Pet Supplies.
step
talk Kura Thunderhoof##91362
Say: "_Let's do this!_"
Defeat Kura Thunderhoof |q Critters of Draenor##38300/1 |goto Frostwall/0 33.3,42.9
step
talk Kura Thunderhoof##91362
turnin Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Young Talbuk##122533
learnpet Young Talbuk##91408 |use Young Talbuk##122533
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Slithershock Elver",{
pet=1655,
description="This guide will walk you through obtaining the Aquatic pet: Slithershock Elver",
},[[
step
talk Kura Thunderhoof##91362
accept Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
|tip This pet is a random drop for Traveler's Pet Supplies.
step
talk Kura Thunderhoof##91362
Say: "_Let's do this!_"
Defeat Kura Thunderhoof |q Critters of Draenor##38300/1 |goto Frostwall/0 33.3,42.9
step
talk Kura Thunderhoof##91362
turnin Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Slithershock Elver##122534
learnpet Slithershock Elver##91407 |use Slithershock Elver##122534
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Bone Serpent",{
pet=1600,
description="This guide will walk you through obtaining the Undead pet: Bone Serpent",
},[[
step
talk Kura Thunderhoof##91362
accept Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
|tip This pet is a random drop for Traveler's Pet Supplies
step
talk Kura Thunderhoof##91362
Say: "_Let's do this!_"
Defeat Kura Thunderhoof |q Critters of Draenor##38300/1 |goto Frostwall/0 33.3,42.9
step
talk Kura Thunderhoof##91362
turnin Critters of Draenor##38300 |goto Frostwall/0 33.3,42.9
step
You have no Traveler's Pet Supplies in your inventory, complete the daily quest tomorrow for another chance at this pet |only if itemcount(122535) < 1
use Traveler's Pet Supplies##122535 |only if itemcount(122535) > 0
collect Bone Serpent##122532
learnpet Bone Serpent##88577 |use Bone Serpent##122532
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Cinder Pup",{
pet=1662,
description="This guide will walk you through obtaining\nthe Beast pet:Cinder Pup",
},[[
step
#include "H_Garrison_CommandTable"
Complete the _Fiery Friends_ Garrison Mission
|tip This pet is a reward for successfully completing the rare Garrison Mission: Fiery Friends. Check your garrison mission table often until you have the mission available.
use Cinder Pup##127748
|tip You can also buy this from the Auction House, but it's very expensive.
learnpet Cinder Pup##93143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Left Shark",{
pet=1687,
description="This guide will walk you through obtaining\nthe Aquatic pet:Left Shark",
},[[
step
clicknpc Fleet Command Table##94399
|tip It looks like a round wooden table with a map on it.
Complete the _Orphaned Aquatic Animal Rescue_ Naval Mission
|tip This pet is a reward for successfully completing the rare Naval Mission: Orphaned Aquatic Animal Rescue. Check your naval mission table often until you have the mission available.
use Left Shark##127856
|tip You can also buy this from the Auction House.
learnpet Left Shark##94867 |goto Frostfire Ridge/0 42.1,70.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ghastly Rat",{
pet=1741,
description="This guide will walk you through obtaining the Undead pet: Ghastly Rat",
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle Ghastly Rat and capture it once it's weakened
learnpet Ghastly Rat##97568 |goto Frostwall 52.2,49.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Spectral Spinner",{
pet=1730,
description="This guide will walk you through obtaining the Undead pet: Spectral Spinner",
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle and capture it once it's weakened
learnpet Spectral Spinner##97324 |goto Frostwall 50.6,38.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ghost Maggot",{
pet=1740,
description="This guide will walk you through obtaining the Undead pet: Ghost Maggot",
},[[
step
This pet is only available during the Halloween event.
|tip To obtain this pet you must have the Creepy Crawlers Halloweeen decoration up in your garrison.
|tip After you activate this decoration this and 2 other pets will start spawning in your garrison.
Battle and capture it once it's weakened
learnpet Ghost Maggot##97569 |goto Frostwall 58.5,40.3
]])
