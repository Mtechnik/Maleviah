local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tylarr Gronnden",{
author="support@zygorguides.com",
pet=2022,
description="This guide will help you acquire the Humanoid pet: Tylarr Gronnden.",
},[[
step
You will need to gain _Rank 4_ with the Legion Brawler's Guild
Click here to be taken to the Brawler's guild event guide, this will show you strategys on how to defeat each boss |confirm |next "Zygor's Alliance Events Guides\\Brawler's Guild\\Legion Brawler's Guild"
confirm
only if ZGV:GetReputation(2011).friendRep<7000
step
talk Quackenbush##68363
buy 1 Tylarr Gronnden##144394 |goto Deeprun Tram/2 54.22,25.36 |n
|tip This pet costs 400 gold.
learnpet Tylarr Gronnden##119040 |use Tylarr Gronnden##144394
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ashmaw Cub",{
pet=1706,
description="This guide will walk you through obtaining the Beast pet: Ashmaw Cub",
},[[
step
Enter the cave |goto Val'sharah/0 53.07,87.82
talk Shivering Ashmaw Cub##93677
Tell it "I'll save you poor little thing." |goto Val'sharah/0 52.81,87.46
Kill the waves of enemies |q 38889
step
talk Shivering Ashmaw Cub##93677
accept Adopting the Adorable##38889
learnpet Ashmaw Cub##96649 |use Ashmaw Cub##128690
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Baby Elderhorn",{
pet=1884,
description="This guide will walk you through obtaining the Beast pet: Baby Elderhorn",
},[[
step
Earn Revered reputation with the Highmountain Tribe |condition rep("Highmountain Tribe")>=Revered
talk Ransa Greyfeather##106902
buy Baby Elderhorn##136919 |n |condition itemcount(136919) >=1 |goto Thunder Totem/0 38.25,46.02
|tip This pet costs 500 gold.
learnpet Baby Elderhorn##106152 |use Baby Elderhorn##136919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Court Scribe",{
pet=1931,
description="This guide will walk you through obtaining the Magic pet: Court Scribe",
},[[
step
Earn Revered reputation with the Court of Farondis |condition rep("Court of Farondis")>=Revered
talk Veridis Fallon##107376
buy Court Scribe##140672 |n |condition itemcount(140672) >=1 |goto Azsuna/0 46.91,41.41
|tip This pet costs 500 gold.
learnpet Court Scribe##112728 |use Court Scribe##140672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crispin",{
pet=1752,
description="This guide will walk you through obtaining the Critter pet: Crispin",
},[[
step
Follow the path up |goto Highmountain/0 51.96,34.12
Continue following the path up |goto Highmountain/0 49.98,34.58
Continue following the path up |goto Highmountain/0 47.98,37.45
Follow the path |goto Highmountain/0 44.57,39.02
kill Tenpak Flametotem##97203
collect Crispin##129175 |n |goto Highmountain/0 41.97,41.57
|tip This has a small chance to drop.
learnpet Crispin##98077 |use Crispin##129175
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Alarm-o-Bot",{
pet=1805,
description="This guide will walk you through obtaining the Mechanical pet: Alarm-o-Bot",
},[[
step
talk Draemus##107326
buy Alarm-o-Bot##136910 |n |condition itemcount(136910) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Alarm-o-Bot##99425 |use Alarm-o-Bot##136910
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Plump Jelly",{
pet=1755,
description="This guide will walk you through obtaining the Aquatic pet: Plump Jelly",
},[[
step
talk Draemus##107326
buy Plump Jelly##129798 |n |condition itemcount(129798) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet Plump Jelly##98132 |use Plump Jelly##129798
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\River Calf",{
pet=1453,
description="This guide will walk you through obtaining the Beast pet: River Calf",
},[[
step
talk Draemus##107326
buy River Calf##140274 |n |condition itemcount(140274) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet River Calf##79730 |use River Calf##140274
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nightwatch Swooper",{
pet=1715,
description="This guide will walk you through obtaining the Flying pet: Nightwatch Swooper",
},[[
step
talk Draemus##107326
buy Nightwatch Swooper##129878 |n |condition itemcount(129878) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Nightwatch Swooper##97127 |use Nightwatch Swooper##129878
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Autumnal Sproutling",{
pet=1429,
description="This guide will walk you through obtaining the Elemental pet: Autumnal Sproutling",
},[[
step
talk Draemus##107326
buy Autumnal Sproutling##113569 |n |condition itemcount(113569) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Autumnal Sproutling##83584 |use Autumnal Sproutling##113569
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fel Piglet",{
pet=1760,
description="This guide will walk you through obtaining the Beast pet: Fel Piglet",
},[[
step
talk Draemus##107326
buy Fel Piglet##129760 |n |condition itemcount(129760) >=1 |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Fel Piglet##98185 |use Fel Piglet##129760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Albatross Chick",{
pet=1708,
description="This guide will walk you through obtaining the Flying pet: Albatross Chick",
},[[
step
The _Albatross Chick_ are level 25
|tip It is a bird that can be found around this area.
|tip Some of these are flying in the air and can not be battled look for the ones that are close to the ground.
Challenge one to a pet battle and capture it.
learnpet Albatross Chick##97018 |goto Azsuna/0 30.72,35.67
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Alliance Enthusiast",{
pet=1918,
description="This guide will walk you through obtaining the Human pet: Alliance Enthusiast",
},[[
step
This pet is a reward for obtaining honor level 50 for the first time
collect Strange Crate##139777 |n
collect Alliance Enthusiast##139775 |n
learnpet Alliance Enthusiast##111202 |use Alliance Enthusiast##139775
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Horde Fanatic",{
pet=1919,
description="This guide will walk you through obtaining the Human pet: Horde Fanatic",
},[[
step
This pet is a reward for obtaining honor level 50 for the first time
collect Strange Crate##139777 |n
collect Horde Fanatic##139776 |n
learnpet Horde Fanatic##111296 |use Horde Fanatic##139776
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ash'ana",{
pet=1927,
description="This guide will walk you through obtaining the Beast pet: Ash'ana",
},[[
step
Earn Revered reputation with the Dreamweavers |condition rep("Dreamweaver")>=Revered
talk Sylvia Hartshorn##106901
buy Ash'ana##23712 |n |condition itemcount(23712) >=1 |goto Val'sharah/0 54.69,73.25
|tip This pet costs 500 gold.
learnpet Ash'ana##17254 |use Ash'ana##23712
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Auburn Ringtail",{
pet=1738,
description="This guide will walk you through obtaining the Critter pet: Auburn Ringtail",
},[[
step
The _Auburn Ringtail_ are level 25
|tip It is a racoon that can be found around this area.
Challenge one to a pet battle and capture it.
learnpet Auburn Ringtail##97555 |goto Val'sharah/0 62.02,72.70
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Benax",{
pet=1934,
description="This guide will walk you through obtaining the Aquatic pet: Benax",
},[[
step
kill Anax##111197
collect Benax##140934 |n |goto Suramar/0 33.69,51.75
learnpet Benax##113136 |use Benax##140934
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Black-Footed Fox Kit",{
pet=1743,
description="This guide will walk you through obtaining the Beast pet: Black-Footed Fox Kit",
},[[
step
The _Black-Footed Fox Kit_ are level 25
|tip It is a fox that can be found around this area.
Challenge one to a pet battle and capture it.
learnpet Black-Footed Fox Kit##97741 |goto Highmountain/0 52.66,43.07
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Bleakwater Jelly",{
pet=1753,
description="This guide will walk you through obtaining the Beast pet: Bleakwater Jelly",
},[[
step
Enter the Helheim Portal |goto Stormheim/0 73.38,39.74
kill Soulthirster##97630
collect Bleakwater Jelly##129188 |n |goto Helheim/0 29.29,63.96
|tip This pet has a small chance to drop.
learnpet Bleakwater Jelly##98116 |use Bleakwater Jelly##129188
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blind Rat",{
pet=1915,
description="This guide will walk you through obtaining the Beast pet: Blind Rat",
},[[
step
Enter the Underbelly |goto Dalaran L/10 59.65,47.58
The _Blind Rat_ are level 25
|tip This pet can be found anywhere within the Underbelly in Dalaran.
Challenge one to a pet battle and capture it.
learnpet Blind Rat##111158 |goto Dalaran L/11 52.26,59.35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Broot",{
pet=1777,
description="This guide will walk you through obtaining the Elemental pet: Broot",
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall Advancement upgrade ability _Evergreen_.
This upgrade allows you to harvest and plant from 2 plots every 3 days.
|tip Harvesting from these plots have a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Broot##129362 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Broot##98463 |use Broot##129362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nightmare Lasher",{
pet=1932,
description="This guide will walk you through obtaining the Elemental pet: Nightmare Lasher",
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall Advancement upgrade ability _Evergreen_.
This upgrade allows you to harvest and plant from 2 plots every 3 days.
|tip Harvesting from these plots have a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Nightmare Lasher##140741 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Nightmare Lasher##112798 |use Nightmare Lasher##140741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Burrow Spiderling",{
pet=1726,
description="This guide will walk you through obtaining the Beast pet: Burrow Spiderling",
},[[
step
The _Burrow Spiderling_ are level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it.
learnpet Burrow Spiderling##97236 |goto Highmountain/0 43.54,30.36
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Celestial Calf",{
pet=1888,
description="This guide will walk you through obtaining the Beast pet: Celestial Calf",
},[[
step
talk Mad Merchant##108468
|tip This is a rare spawn merchant and once something is bought from him he will stick around for about another hour and then disappear reseting his respawn timer.
buy Celestial Calf##136923 |n |condition itemcount(136923) >=1 |goto Dalaran L/10 43.31,46.80
|tip This pet costs 1,000,000 gold.
learnpet Celestial Calf##106270 |use Celestial Calf##136923
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Corgnelius",{
pet=1929,
description="This guide will walk you through obtaining the Beast pet: Corgnelius",
},[[
step
This pet is a reward for completing the Order Hall Mission _It's so FLUFFY!_
collect Corgnelius##140320 |n
learnpet Corgnelius##223359 |use Corgnelius##140320
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Emmigosa",{
pet=1720,
description="This guide will walk you through obtaining the Dragonkin pet: Emmigosa",
},[[
step
This pet is a reward for completing the quest _On the Brink_ in Azsuna.
collect Emmigosa##129178 |n
learnpet Emmigosa##193388 |use Emmigosa##129178
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Extinguished Eye",{
pet=1717,
description="This guide will walk you through obtaining the Magic pet: Extinguished Eye",
},[[
step
Earn Revered reputation with the Nightfallen |condition rep("The Nightfallen")>=Revered
talk First Arcanist Thalyssra##97140
|tip This npcs position may differ depending on your progression in Suramar.
buy Extinguished Eye##136899 |n |condition itemcount(136899) >=1 |goto Suramar/0 36.50,46.81
|tip This pet costs 500 gold.
learnpet Extinguished Eye##97174 |use Extinguished Eye##136899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Eye of Inquisition",{
pet=1719,
description="This guide will walk you through obtaining the Magic pet: Eye of Inquisition",
},[[
step
kill the enemies in this area |goto Suramar/0 29.33,61.21
|tip This has around a .4 chance to drop.
collect Eye of Inquisition##136901 |n
learnpet Eye of Inquisition##97179 |use Eye of Inquisition##136901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fetid Waveling",{
pet=1802,
description="This guide will walk you through obtaining the Magic pet: Fetid Waveling",
},[[
step
talk Filandras Mistcaller##94480 |goto Val'sharah/0 67.56,44.87
kill Pollous the Fetid##94485 |goto Val'sharah/0 67.56,44.87
collect Fetid Waveling##130168 |n
learnpet Fetid Waveling##99394 |use Fetid Waveling##130168
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Grumpy",{
pet=1705,
description="This guide will walk you through obtaining the Beast pet: Grumpy",
},[[
step
This pet is a reward for completing the quest _Grumpy_ in Val'sharah. |goto Val'sharah/0 38.63,65.66
talk Grumpy##92738
|tip Up the stairs in the building.
accept Grumpy##39015
collect Grumpy's Leash##128354 |n
learnpet Grumpy##96622 |use Grumpy's Leash##128354
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lurking Owl Kitten",{
pet=1922,
description="This guide will walk you through obtaining the Beast pet: Lurking Owl Kitten",
},[[
step
This pet is a reward for completing the quest _You've Got to be Kitten Me Right Meow_ in Suramar
The Quest chain starts here |goto Suramar/0 21.37,30.33.
collect Lurking Owl Kitten##139791 |n
learnpet Lurking Owl Kitten##111421 |use Lurking Owl Kitten##139791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Risen Saber Kitten",{
pet=1804,
description="This guide will walk you through obtaining the Undead pet: Risen Saber Kitten",
},[[
step
kill Darkshade##92965
collect Risen Saber Kitten##130166 |n |goto Val'sharah/0 43.92,52.94
learnpet Risen Saber Kitten##99403 |use Risen Saber Kitten##130166
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Skyhorn Nestling",{
pet=1711,
description="This guide will walk you through obtaining the Flying pet: Skyhorn Nestling",
},[[
step
This pet is a reward for completing the quest _Empty Nest_ in Highmountain
The Quest chain starts here |goto Highmountain/0 50.89,36.53
collect Skyhorn Nestling##129277 |n
learnpet Skyhorn Nestling##97079 |use Skyhorn Nestling##129277
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Untethered Wyrmling",{
pet=1921,
description="This guide will walk you through obtaining the Magic pet: Untethered Wyrmling",
},[[
step
This pet is a reward for completing the quest _Balance to Spare_ in Suramar
This quest requires you to be honored with The NightFallen before being able to start it. |condition rep("The Nightfallen")>=Honored
|tip Check out our Suramar guide to accomplish this.
collect Untethered Wyrmling##139790 |n
learnpet Untethered Wyrmling##111423 |use Untethered Wyrmling##139790
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Coastal Sandpiper",{
pet=1914,
description="This guide will walk you through obtaining the Flying pet: Coastal Sandpiper",
},[[
step
The _Coastal Sandpiper_ are level 25
|tip It is a bird found around this area.
Challenge one to a pet battle and capture it.
learnpet Coastal Sandpiper##110826 |goto Azsuna/0 54.18,32.77
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Coralback Fiddler",{
pet=1775,
description="This guide will walk you through obtaining the Flying pet: Coralback Fiddler",
},[[
step
The _Coralback Fiddler_ are level 25
|tip It is a crab found along this coast
Challenge one to a pet battle and capture it.
learnpet Coralback Fiddler##98428 |goto Highmountain/0 39.01,12.63
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Corgi Pup",{
pet=1890,
description="This guide will walk you through obtaining the Beast pet: Corgi Pup",
},[[
step
This pet is only available during the WoW 12th Aniversity Event
|tip You can buy this pet from a vendor in either Stormwind if you are an Alliance or in Orgrimar if you are a Horde.
buy Corgi Pup##136925 |n
learnpet Corgi Pup##106283 |use Corgi Pup##136925
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Crystalline Broodling",{
pet=1809,
description="This guide will walk you through obtaining the Beast pet: Crystalline Broodling",
},[[
step
The _Crystalline Broodling_ are level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it.
learnpet Crystalline Broodling##99527 |goto Suramar/33 50.98,34.09
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Leyline Broodling",{
pet=1808,
description="This guide will walk you through obtaining the Beast pet: Leyline Broodling",
},[[
step
This pet is obtained by enter the Withered Army Training event.
This Event is located in Suramar and can be completed every 3 days after completing the quest _Building an Army_ which is part of the main Suramar quest line
|tip Check out of Suramar quest line Guides to accomplish this.
Click here to continue |confirm
step
When inside the scenario you will need to extract chests, the chest with this pet is at the very end of the scenario and requries 5 Withered to extract
collect Leyline Broodling##136914 |n
learnpet Leyline Broodling##99526 |use Leyline Broodling##136914
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Thornclaw Broodling",{
pet=1810,
description="This guide will walk you through obtaining the Beast pet: Thornclaw Broodling",
},[[
step
The _Thornclaw Broodling_ are level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it.
learnpet Thornclaw Broodling##99528 |goto Suramar/0 29.96,63.40
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Vicious Broodling",{
pet=1807,
description="This guide will walk you through obtaining the Beast pet: Vicious Broodling",
},[[
step
The _Vicious Broodling_ are level 25
|tip This is a rare spawn of the Thornclaw Broodling found in the same area.
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it.
learnpet Vicious Broodling##99513 |goto Suramar/0 32.83,75.27
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dream Whelpling",{
pet=1722,
description="This guide will walk you through obtaining the Beast pet: Dream Whelpling",
},[[
step
Enter the Emerald Dream Raid Instance |goto Val'sharah/0 56.39,36.97
The _Dream Whelpling_ are level 25
This pet is at the end of the instance after defeating the last boss _Xavius_
|tip It is a Dragonkin found in the last room of the instance
Challenge one to a pet battle and capture it.
learnpet Dream Whelpling##97206
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Dust Bunny",{
pet=1778,
description="This guide will walk you through obtaining the Critter pet: Dust Bunny",
},[[
step
click Dusty Rug |goto Dalaran L/10 52.58,30.22
|tip These rugs are a rare spawn, they are circle rugs that can be found here and in other buildings around Dalaran.
|tip Once the rug is clicked you will recieve a buff that will last for 15 minuites this allows you to see the Dust Bunnys.
The _Dust Bunny_ are level 25
|tip It is a Critter found all around Dalaran.
Challenge one to a pet battle and capture it.
learnpet Dust Bunny##98506 |goto Dalaran L/10 45.48,34.94
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Echo Batling",{
pet=1761,
description="This guide will walk you through obtaining the Flying pet: Echo Batling",
},[[
step
The _Echo Batling_ are level 25
|tip These can be found in any of the big caves in Highmountain.
|tip It is a bat found around this area.
Challenge one to a pet battle and capture it.
learnpet Echo Batling##88542 |goto Highmountain/0 48.36,40.53
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Erudite Manafiend",{
pet=1773,
description="This guide will walk you through obtaining the Magic pet: Erudite Manafiend",
},[[
step
The _Erudite Manafiend_ are level 25
|tip This pet only spawns during the day time.
|tip This pet can be found all around this Ley Ruins area.
Challenge one to a pet battle and capture it.
learnpet Erudite Manafiend##98385 |goto Azsuna/0 55.86,15.33
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Eldritch Manafiend",{
pet=1774,
description="This guide will walk you through obtaining the Magic pet: Eldritch Manafiend",
},[[
step
The _Eldritch Manafiend_ are level 25
|tip This pet only spawns during the night time.
|tip This pet can be found all around this Ley Ruins area.
Challenge one to a pet battle and capture it.
learnpet Eldritch Manafiend##98386 |goto Azsuna/0 55.86,15.33
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Enchanted Cauldron",{
pet=1699,
description="This guide will walk you through obtaining the Magic pet: Enchanted Cauldron",
},[[
step
This Pet is crafted by players with the Enchanting professions
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have enchanting and want to craft this pet |next "Enchanting craft" |confirm
Click here if you would like to purchase this from the AH |next "AH cauldron" |confirm
step
label "Enchanting craft"
To obtain the pattern to make this pet check out our Enchanting Quest Line guide.
collect 5 Chaos Crystal##124442
collect 20 Leylight Shard##124441
collect 50 Arkhana##124440
collect 10 Infernal Brimstone##124444
|next "end cauldron"
step
label "AH cauldron"
talk Auctioneer Fitch##8719
buy Enchanted Cauldron##128533 |n |condition itemcount(128533) >=1 |goto Stormwind City/0 61.18,70.75
|next "end cauldron"
step
label "end cauldron"
collect Enchanted Cauldron##128533
learnpet Enchanted Cauldron##96403 |use Enchanted Cauldron##128533
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Enchanted Pen",{
pet=1701,
description="This guide will walk you through obtaining the Magic pet: Enchanted Pen",
},[[
step
This Pet is crafted by players with the Enchanting professions
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have enchanting and want to craft this pet |next "Enchanting craft 2" |confirm
Click here if you would like to purchase this from the AH |next "AH pen" |confirm
step
label "Enchanting craft 2"
To obtain the pattern to make this pet check out our Enchanting Quest Line guide.
collect 5 Chaos Crystal##124442
collect 20 Leylight Shard##124441
collect 50 Arkhana##124440
collect 10 Felhide##124116
|next "end pen"
step
label "AH pen"
talk Auctioneer Fitch##8719
buy Enchanted Pen##128535 |n |condition itemcount(128535) >=1 |goto Stormwind City/0 61.18,70.75
|next "end pen"
step
label "end pen"
collect Enchanted Pen##128535
learnpet Enchanted Pen##96405 |use Enchanted Pen##128535
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Enchanted Torch",{
pet=1700,
description="This guide will walk you through obtaining the Magic pet: Enchanted Torch",
},[[
step
This Pet is crafted by players with the Enchanting professions
|tip You can either make this pet with the Enchanting profession or buy it from the Auction House.
Click here if you have enchanting and want to craft this pet |next "Enchanting craft 3" |confirm
Click here if you would like to purchase this from the AH |next "AH torch" |confirm
step
label "Enchanting craft 3"
To obtain the pattern to make this pet check out our Enchanting Quest Line guide.
collect 5 Chaos Crystal##124442
collect 20 Leylight Shard##124441
collect 50 Arkhana##124440
collect 10 Felwort##124106
|next "end torch"
step
label "AH torch"
talk Auctioneer Fitch##8719
buy Enchanted Torch##128534 |n |condition itemcount(128534) >=1 |goto Stormwind City/0 61.18,70.75
|next "end torch"
step
label "end torch"
collect Enchanted Torch##128534
learnpet Enchanted Torch##96404 |use Enchanted Torch##128534
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Felspider",{
pet=1731,
description="This guide will walk you through obtaining the Beast pet: Felspider",
},[[
step
The _Felspider_ are level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it.
learnpet Felspider##97323 |goto Azsuna/0 31.62,52.24
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fledgling Kingfeather",{
pet=1709,
description="This guide will walk you through obtaining the Flying pet: Fledgling Kingfeather",
},[[
step
The _Fledgling Kingfeather_ are level 25
|tip It is a bird found around this mountain top.
|tip This is a rare spawn from the other Fledgling birds around this area.
Challenge one to a pet battle and capture it.
learnpet Fledgling Kingfeather##97076 |goto Azsuna/0 39.28,29.16
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fledgling Oliveback",{
pet=1710,
description="This guide will walk you through obtaining the Flying pet: Fledgling Oliveback",
},[[
step
The _Fledgling Oliveback_ are level 25
|tip It is a bird found around this mountain top.
Challenge one to a pet battle and capture it.
learnpet Fledgling Oliveback##97078 |goto Azsuna/0 39.28,29.16
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Fledgling Warden Owl",{
pet=1716,
description="This guide will walk you through obtaining the Flying pet: Fledgling Warden Owl",
},[[
step
Earn Revered reputation with The Wardens |condition rep("The Wardens")>=Revered
talk Marin Bladewing##107379
buy Fledgling Warden Owl##136898 |n |condition itemcount(136898) >=1 |goto Azsuna/0 48.17,73.88
|tip This pet costs 500 gold.
learnpet Fledgling Warden Owl##97128 |use Fledgling Warden Owl##136898
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Gleamhoof Fawn",{
pet=1913,
description="This guide will walk you through obtaining the Critter pet: Gleamhoof Fawn",
},[[
step
The _Gleamhoof Fawn_ are level 25
|tip It is a Fawn found around this area.
Challenge one to a pet battle and capture it.
learnpet Gleamhoof Fawn##110741 |goto Val'sharah/0 52.76,75.16
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Golden Eaglet",{
pet=1712,
description="This guide will walk you through obtaining the Critter pet: Golden Eaglet",
},[[
step
The _Golden Eaglet_ are level 25
|tip It is a Bird found around this area.
Challenge one to a pet battle and capture it.
learnpet Golden Eaglet##97080 |goto Stormheim/0 62.03,52.76
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Felbat Pup",{
pet=1889,
description="This guide will walk you through obtaining the Flying pet: Felbat Pup",
},[[
step
The Felbat Pup was only availble during the Legion Invasion pre event and is no longer obtainable.
|tip These are tradable so if you are looking to get one check your AH they might be sold there.
collect Felbat Pup##136924
learnpet Felbat Pup##106278 |use Felbat Pup##136924
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Firebat Pup",{
pet=1928,
description="This guide will walk you through obtaining the Flying pet: Firebat Pup",
},[[
step
This pet is a reward for completing the Order Hall Mission _Friends, Not Food_
collect Firebat Pup##140316 |n
learnpet Firebat Pup##223339 |use Firebat Pup##140316
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hateful Eye",{
pet=1718,
description="This guide will walk you through obtaining the Magic pet: Hateful Eye",
},[[
step
This pet can only be obtained by Demon Hunters or Warlocks
This requires the Tier 2 Order Hall Advancement upgrade ability _Twisting Nether_ for Demon Hunters and _Demonic Offering_ for Warlocks.
This upgrade allows you to Summon Demon bosses that drop various items including this pet.
|tip Killing these Demons have a chance to obtain this pet.
Click here to continue |confirm
step
Kill the Summoned Demons
collect Hateful Eye##136900 |n
|tip There is a low chance to obtain this pet from each kill.
learnpet Hateful Eye##97178 |use Hateful Eye##136900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hog-Nosed Bat",{
pet=1762,
description="This guide will walk you through obtaining the Flying pet: Hog-Nosed Bat",
},[[
step
The _Hog-Nosed Bat_ are level 25
|tip It is a Bat found around this mountain side.
Challenge one to a pet battle and capture it.
learnpet Hog-Nosed Bat##98192 |goto Highmountain/0 52.90,35.35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Hungering Claw",{
pet=1926,
description="This guide will walk you through obtaining the Magic pet: Hungering Claw",
},[[
step
This Pet is obtained by completing a world quest that requires you to complete a huge quest line.
The world quest required to complete can either reward this pet or the Fathon Dweller mount.
Check out our Fathom Dweller mount guide to complete the requirements to start on this world quest.
Click here to continue |confirm
step
collect Hungering Claw##140261
learnpet Hungering Claw##223027 |use Hungering Claw##140261
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Juvenile Scuttleback",{
pet=1728,
description="This guide will walk you through obtaining the Aquatic pet: Juvenile Scuttleback",
},[[
step
The _Juvenile Scuttleback_ are level 25
|tip It is a Crab found around this area.
Challenge one to a pet battle and capture it.
learnpet Juvenile Scuttleback##97289 |goto Azsuna/0 57.59,57.86
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Knockoff Blingtron",{
pet=1806,
description="This guide will walk you through obtaining the Mechanical pet: Knockoff Blingtron",
},[[
step
This Pet is obtained through getting the new blingtron daily bag
|tip Engineers can put these down and anyone can recieve this bag once it is placed.
Talk to the Blingtron 6000
collect Blingtron 6000 Gift Package##132892 |use Blingtron 6000 Gift Package##132892
collect Knockoff Blingtron##136911
learnpet Knockoff Blingtron##210683 |use Knockoff Blingtron##136911
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lagan",{
pet=1930,
description="This guide will walk you through obtaining the Aquatic pet: Lagan",
},[[
step
This pet is a reward for completing the dungeon achievement _Poor Unfortunate Souls_
Check out our achievement guides to accomplish this.
Click here to continue |confirm
step
Once this achievement is complete this pet should be in your mail box.
collect Lagan##140323 |n
learnpet Lagan##112167 |use Lagan##140323
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Long-Eared Owl",{
pet=1713,
description="This guide will walk you through obtaining the Flying pet: Long-Eared Owl",
},[[
step
The _Long-Eared Owl_ are level 25
|tip It is a Bird found around this area.
Challenge one to a pet battle and capture it.
learnpet Long-Eared Owl##97118 |goto Stormheim/0 44.11,45.55
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mist Fit Fox",{
pet=1744,
description="This guide will walk you through obtaining the Beast pet: Mist Fit Fox",
},[[
step
The _Mist Fit Fox_ are level 25
|tip It is a Fox found around this area.
Challenge one to a pet battle and capture it.
learnpet Mist Fit Fox##97743 |goto Highmountain/0 46.57,32.62
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mudshell Conch",{
pet=1776,
description="This guide will walk you through obtaining the Critter pet: Mudshell Conch",
},[[
step
The _Mudshell Conch_ are level 25
|tip It is a Fox found around this area.
Challenge one to a pet battle and capture it.
learnpet Mudshell Conch##98446 |goto Highmountain/0 42.54,9.62
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nightmare Treant",{
pet=1930,
description="This guide will walk you through obtaining the Elemental pet: Nightmare Treant",
},[[
step
This pet is a reward for completing the Pet Battle achievement _Family Familiar_
Check out our achievement guides to accomplish this.
Click here to continue |confirm
step
Once this achievement is complete this pet should be in your mail box.
collect Nightmare Treant##140761 |n
learnpet Nightmare Treant##224786 |use Nightmare Treant##140761
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nightmare Whelpling",{
pet=1723,
description="This guide will walk you through obtaining the Elemental pet: Nightmare Whelpling",
},[[
step
Enter the Emerald Dream Raid Instance |goto Val'sharah/0 56.39,36.97
This pet is a rare drop from the boss _Dragons of Nightmare_ within the Emerald Dream
collect Nightmare Whelpling##136903 |n
learnpet Nightmare Whelpling##210675 |use Nightmare Whelpling##136903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Northern Hawk Owl",{
pet=1714,
description="This guide will walk you through obtaining the Flying pet: Northern Hawk Owl",
},[[
step
The _Northern Hawk Owl_ are level 25
|tip It is a Bird found around this area.
Challenge one to a pet battle and capture it.
learnpet Northern Hawk Owl##97126 |goto Highmountain/0 55.11,85.66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Nursery Spider",{
pet=1727,
description="This guide will walk you through obtaining the Beast pet: Nursery Spider",
},[[
step
talk Breanni##96479
buy Nursery Spider##129826 |n |condition itemcount(129826) >=1 |goto Dalaran L/10 58.42,39.26
|tip This pet costs 200 gold.
learnpet Nursery Spider##97238 |use Nursery Spider##129826
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Olivetail Hare",{
pet=1729,
description="This guide will walk you through obtaining the Critter pet: Olivetail Hare",
},[[
step
The _Olivetail Hare_ are level 25
|tip It is a Rabbit found all around this area.
Challenge one to a pet battle and capture it.
learnpet Olivetail Hare##97294 |goto Azsuna/0 60.36,20.25
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pygmy Owl",{
pet=1907,
description="This guide will walk you through obtaining the Flying pet: Pygmy Owl",
},[[
step
talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.34
Tell her "I will help you defeat Gorebeak."
kill Gorebeak##92117
collect Pygmy Owl##130154
learnpet Pygmy Owl##108568 |use Pygmy Owl##130154 |goto Val'sharah/0 59.80,77.34
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rescued Fawn",{
pet=1938,
description="This guide will walk you through obtaining the Elemental pet: Rescued Fawn",
},[[
step
This pet is a reward for completing the pet collection achievement _Broken Isles Safari_
Check out our achievement guides to accomplish this.
Click here to continue |confirm
step
Once this achievement is complete this pet should be in your mail box.
collect Rescued Fawn##141352 |n
learnpet Rescued Fawn##226813 |use Rescued Fawn##141352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rose Taipan",{
pet=1749,
description="This guide will walk you through obtaining the Beast pet: Rose Taipan",
},[[
step
The _Rose Taipan_ are level 25
|tip It is a Snake found all around this area.
Challenge one to a pet battle and capture it.
learnpet Rose Taipan##97840 |goto Stormheim/0 52.06,59.86
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sewer-Pipe Jelly",{
pet=1754,
description="This guide will walk you through obtaining the Aquatic pet: Sewer-Pipe Jelly",
},[[
step
talk Laura Malley##97364
buy Sewer-Pipe Jelly##136904 |n |condition itemcount(136904) >=1 |goto Dalaran L/11 58.16,57.74
|tip This pet costs 250 Sightless Eyes, these Sightless Eyes can be obtained by completing objectives in the Underbelly.
learnpet Sewer-Pipe Jelly##98128 |use Sewer-Pipe Jelly##136904 |goto Dalaran L/11 58.16,57.74
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Shimmering Aquafly",{
pet=1734,
description="This guide will walk you through obtaining the Flying pet: Shimmering Aquafly",
},[[
step
The _Shimmering Aquafly_ are level 25
|tip It is a Dragon Fly found all around this area.
Challenge one to a pet battle and capture it.
learnpet Shimmering Aquafly##97511 |goto Val'sharah/0 53.75,81.20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Slithering Brownscale",{
pet=1736,
description="This guide will walk you through obtaining the Beast pet: Slithering Brownscale",
},[[
step
The _Slithering Brownscale_ are level 25
|tip It is a Snake found around this area.
Challenge one to a pet battle and capture it.
learnpet Slithering Brownscale##97542 |goto Val'sharah/0 53.75,81.20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spiketail Beaver",{
pet=1763,
description="This guide will walk you through obtaining the Beast pet: Spiketail Beaver",
},[[
step
The _Spiketail Beaver_ are level 25
|tip It is a Beaver found around this area.
Challenge one to a pet battle and capture it.
learnpet Spiketail Beaver##98211 |goto Highmountain/0 41.38,50.53
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Spring Strider",{
pet=1739,
description="This guide will walk you through obtaining the Aquatic pet: Spring Strider",
},[[
step
The _Spring Strider_ are level 25
|tip It is a Strider found around this area.
Challenge one to a pet battle and capture it.
learnpet Spring Strider##97559 |goto Val'sharah/0 49.03,69.11
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Squirky",{
pet=1935,
description="This guide will walk you through obtaining the Humanoid pet: Squirky",
},[[
step
Not in the game yet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sting Ray Pup",{
pet=1911,
description="This guide will walk you through obtaining the Humanoid pet: Sting Ray Pup",
},[[
step
This pet requires both a Good Friend reputation with Conjurer Margoss and 50 Drowned Mana.
Gain Good Friend Reputation with Conjurer Margoss |condition rep("Conjurer Margoss")>=GoodFriend
|tip To gain reputation with Conjurer Margoss you will need to fish up and turn in Drowned Mana on this Island.
step
Once you are a Good Friend with Conjurer Margoss you will need to collect 50 more Drowned Mana to buy this pet
Fish from the lake on this island |cast Fishing##131474 |goto Dalaran L/10 22.67,-12.00
collect 50 Drowned Mana##138777
talk Conjurer Margoss##108825
buy Sting Ray Pup##138810 |condition itemcount(138810) >=1 |goto Dalaran L/10 23.03,-11.30
learnpet Sting Ray Pup##109216 |use Sting Ray Pup##138810
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stormborne Whelpling",{
pet=1721,
description="This guide will walk you through obtaining the Dragonkin pet: Stormborne Whelpling",
},[[
step
kill Stormwing Matriarch##91795
collect Stormborne Whelpling##129208 |n
learnpet Stormborne Whelpling##97205 |use Stormborne Whelpling##129208 |goto Stormheim/0 49.58,72.41
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tiny Apparition",{
pet=1750,
description="This guide will walk you through obtaining the Aquatic pet: Tiny Apparition",
},[[
step
The _Tiny Apparition_ are level 25
|tip It is a Ghost found all around this area.
Challenge one to a pet battle and capture it.
|tip They are flying in the air.
learnpet Tiny Apparition##97952 |goto Stormheim/0 55.68,43.13
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Sunborn Val'kyr",{
pet=1885,
description="This guide will walk you through obtaining the Beast pet: Sunborn Val'kyr",
},[[
step
Earn Revered reputation with the Valarjar |condition rep("Valarjar")>=Revered
talk Valdemar Stormseeker##106904
buy Sunborn Val'kyr##136920 |n |condition itemcount(136920) >=1 |goto Stormheim/0 60.28,51.35
|tip This pet costs 500 gold.
learnpet Sunborn Val'kyr##106181 |use Sunborn Val'kyr##136920
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Terror Larva",{
pet=1735,
description="This guide will walk you through obtaining the Beast pet: Terror Larva",
},[[
step
The _Terror Larva_ are level 25
|tip It is a Worm found all around this area.
Challenge one to a pet battle and capture it.
learnpet Terror Larva##97531 |goto Val'sharah/0 62.71,42.63
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Stormstruck Beaver",{
pet=1917,
description="This guide will walk you through obtaining the Beast pet: Stormstruck Beaver",
},[[
step
The _Stormstruck Beaver_ are level 25
|tip This is a rare spawn from the Bucktooth Flappers.
Challenge one to a pet battle and capture it.
learnpet Stormstruck Beaver##111172 |goto Stormheim/0 47.0,60.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Thistleleaf Adventurer",{
pet=1803,
description="This guide will walk you through obtaining the Beast pet: Thistleleaf Adventurer",
},[[
step
This pet has a small chance to be in the Emissary Dreamweaver box reward.
|tip Emissary quests are available once a day and can be between 6 different factions
|tip This Emissary box is from completing 4 Dreamweaver world quests when the Dreamweaver Emissary quest is active.
Click here to continue |confirm
step
talk Sylvia Hartshorn##106901
turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25
Open the Dreamweaver Provisions
collect Thistleleaf Adventurer##130167 |n
learnpet Thistleleaf Adventurer##195369 |use Thistleleaf Adventurer##130167
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Vale Flitter",{
pet=1737,
description="This guide will walk you through obtaining the Beast pet: Vale Flitter",
},[[
step
The _Vale Flitter_ are level 25
|tip They are flying mobs around this area.
Challenge one to a pet battle and capture it.
learnpet Vale Flitter##97547 |goto Val'sharah/0 47.93,77.43
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snowfang",{
pet=1941,
description="This guide will walk you through obtaining the Beast pet: Snowfang",
},[[
step
This pet can only be obtained by Shamen
You must beat Snowfang in combat.
Click here to continue |confirm
step
click Snowfang##114064 |goto The Maelstrom L/0 36.19,79.50
Defeat Snowfang in Combat
|tip Snowfang is a Epic Beast type.
collect Snowfang's Trust##141530 |n |goto The Maelstrom L/0 36.19,79.50
learnpet Snowfang##114063 |use Snowfang's Trust##141530
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Young Mutant Warturtle",{
pet=1912,
description="This guide will walk you through obtaining the Aquatic pet: Young Mutant Warturtle",
},[[
step
This pet can be battled by buying an item in the Underbelly.
This item costs 1500 Sighless Eyes and summons 4 Young Mutant Warturtles
|tip You can either farm for this item to summon these turtles or you can wait around for someone else to.
Click here to continue |confirm
step
talk Laura Malley##97364
buy Young Mutant Warturtles##139412 |n |goto Dalaran L/11 58.13,57.95
|tip This costs 1500 Sightless Eyes, these can be obtained by killing players, killing enemies, or looting chests in the Underbelly.
|tip This item will summon 4 Young Mutant Warturtles.
The _Young Mutant Warturtle_ are level 25
Challenge one to a pet battle and capture it.
learnpet Young Mutant Warturtle##110666 |goto Dalaran L/11 58.13,57.95
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Ridgeback Piglet",{
pet=1756,
description="This guide will walk you through obtaining the Beast pet: Ridgeback Piglet",
},[[
step
This pet comes from the _Alchemy Profession_
If you would like to buy this pet from the AH click here |next "AH Ridgeback"
If you would like to collect it through Alchemy click here |next "Alchemy Pet"
|tip If you are going to Alchemy way the pet only has a chance to be in this crafted item and it takes 7 days before it can be opened.
|tip Once this sac is opened there is only a chance for this pet to be inside.
confirm
step
label "Alchemy Pet"
First you will need to gain the _Transmute: Meat to Pet_
Once this pattern is learned you will need to collect the following items
collect 3 Fatty Bearsteak##124118 |n
collect 20 Unbroken Claw##124438 |n
collect 20 Unbroken Tooth##124439 |n
collect 1 Viscous Transmutagen##137595 |n
collect 1 Black Transmutagen##137596 |n
collect 1 Oily Transmutagen##137597 |n
confirm
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Pulsating Sac>_
Once created this sac takes 7 days before it can be opened.
|confirm
step
Open up the Growling Sac
|tip There is a chance for this pet to be in this sac.
collect Ridgeback Piglet##136905 |n
learnpet Ridgeback Piglet##98172 |use Ridgeback Piglet##136905
|next "Congratz"
step
label "AH Ridgeback"
talk Auctioneer Fitch##8719
buy Ridgeback Piglet##136905 |n |goto Stormwind City/0 61.18,70.78
|tip This may be a little on the expensive side as it takes awhile to get.
learnpet Ridgeback Piglet##98172 |use Ridgeback Piglet##136905
|next "Congratz"
step
label "Congratz"
Congratulations you are now the proud owner of a _Ridgeback Piglet_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Thaumaturgical Piglet",{
pet=1759,
description="This guide will walk you through obtaining the Beast pet: Thaumaturgical Piglet",
},[[
step
This pet comes from the _Alchemy Profession_
If you would like to buy this pet from the AH click here |next "AH Thaumaturgical"
If you would like to collect it through Alchemy click here |next "Alchemy Pet 2"
|tip If you are going to Alchemy way the pet only has a chance to be in this crafted item and it takes 7 days before it can be opened.
|tip Once this sac is opened there is only a chance for this pet to be inside.
confirm
step
label "Alchemy Pet 2"
First you will need to gain the _Transmute: Meat to Pet_
Once this pattern is learned you will need to collect the following items
collect 3 Fatty Bearsteak##124118 |n
collect 20 Unbroken Claw##124438 |n
collect 20 Unbroken Tooth##124439 |n
collect 1 Viscous Transmutagen##137595 |n
collect 1 Black Transmutagen##137596 |n
collect 1 Oily Transmutagen##137597 |n
confirm
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Pulsating Sac>_
Once created this sac takes 7 days before it can be opened.
|confirm
step
Open up the Growling Sac
|tip There is a chance for this pet to be in this sac.
collect Thaumaturgical Piglet##136908 |n
learnpet Thaumaturgical Piglet##98183 |use Thaumaturgical Piglet##136908
|next "Congratz 2"
step
label "AH Thaumaturgical"
talk Auctioneer Fitch##8719
buy Thaumaturgical Piglet##136908 |n |goto Stormwind City/0 61.18,70.78
|tip This may be a little on the expensive side as it takes awhile to get.
learnpet Thaumaturgical Piglet##98183 |use Thaumaturgical Piglet##136908
|next "Congratz 2"
step
label "Congratz 2"
Congratulations you are now the proud owner of a _Thaumaturgical Piglet_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Transmutant",{
pet=1920,
description="This guide will walk you through obtaining the Magic pet: Transmutant",
},[[
step
This pet comes from the _Alchemy Profession_
If you would like to buy this pet from the AH click here |next "AH Transmutant"
If you would like to collect it through Alchemy click here |next "Alchemy Pet 3"
|tip If you are going to Alchemy way the pet only has a chance to be in this crafted item and it takes 7 days before it can be opened.
|tip Once this sac is opened there is only a chance for this pet to be inside.
confirm
step
label "Alchemy Pet 3"
First you will need to gain the _Transmute: Meat to Pet_
Once this pattern is learned you will need to collect the following items
collect 3 Fatty Bearsteak##124118 |n
collect 20 Unbroken Claw##124438 |n
collect 20 Unbroken Tooth##124439 |n
collect 1 Viscous Transmutagen##137595 |n
collect 1 Black Transmutagen##137596 |n
collect 1 Oily Transmutagen##137597 |n
confirm
step
Open Your Alchemy Crafting Panel:
_<Craft 1 Pulsating Sac>_
Once created this sac takes 7 days before it can be opened.
|confirm
step
Open up the Growling Sac
|tip There is a chance for this pet to be in this sac.
collect Transmutant##139789 |n
learnpet Transmutant##111425 |use Transmutant##139789
|next "Congratz 3"
step
label "AH Transmutant"
talk Auctioneer Fitch##8719
buy Transmutant##139789 |n |goto Stormwind City/0 61.18,70.78
|tip This may be a little on the expensive side as it takes awhile to get.
learnpet Transmutant##111425 |use Transmutant##139789
|next "Congratz 3"
step
label "Congratz 3"
Congratulations you are now the proud owner of a _Transmutant_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Trigger",{
pet=1886,
description="This guide will walk you through obtaining the Mechanical pet: Trigger",
},[[
step
This pet comes from the _Engineering Profession_
If you would like to buy this pet from the AH click here |next "AH Trigger"
If you would like to collect it through Engineering click here |next "Engineering Pet"
confirm
step
label "Engineering Pet"
First you will need to gain the _Trigger_ pattern, you can do this by completing our Engineering Quest line guide
Once this pattern is learned you will need to collect the following items:
collect 50 Leystone Ore##123918 |n
collect 50 Blood of Sargeras##124124 |n
collect 10 Infernal Brimstone##124444 |n
confirm
step
talk Hobart Grapplehammer##93539
buy 20 Oversized Blasting Cap##136637 |n |goto Dalaran L/10 38.42,24.70
buy 30 Loose Trigger##136633 |n |goto Dalaran L/10 38.42,24.70
buy 2 Sniping Scope##136636 |n |goto Dalaran L/10 38.42,24.70
confirm
step
Open Your Engineering Crafting Panel:
_<Craft 1 Trigger>_
collect Trigger##136921
learnpet Trigger##210696 |use Trigger##136921
|next "Congrats"
step
label "AH Trigger"
talk Auctioneer Fitch##8719
buy Trigger##136921 |n |goto Stormwind City/0 61.18,70.78
|tip This may be a little on the expensive side as the materials to make it costs a bit and take awhile to obtain.
learnpet Trigger##210696 |use Trigger##136921
|next "Congrats"
step
label "Congrats"
Congratulation you are now the proud owner of a _Trigger_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wonderous Wisdomball",{
pet=1937,
description="This guide will walk you through obtaining this pet: Wonderous Wisdomball",
},[[
step
This pet is from completing a small quest line which starts from an item that has a chance to be in the Emissary Kirin Tor box reward.
|tip Emissary quests are available once a day and can be between 6 different factions
|tip This Emissary box is from completing 4 Kirin Tor world quests when the Kirin Tor Emissary quest is active.
Click here to continue |confirm
step
talk Warmage Silva##32725
turnin The Kirin Tor of Dalaran##43179 |goto Dalaran L/10 33.44,47.35
Open the Kirin Tor Chest
collect Strange Humming Crystal##141349 |n
|tip This has a small chance to be in this chest.
accept Strange Humming Crystal##141349
step
talk Archmage Khadgar##90417
turnin Strange Humming Crystal##141349 |goto Dalaran L/10 28.56,48.35
accept Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
step
Enter the Underbelly |goto Dalaran L/10 34.87,45.49
talk Classic Larry##113784
Tell him that you know his secret
kill Classic Larry##113784 |q 44412/5 |goto Dalaran L/11 19.21,58.25
|tip He has around 10 million HP.
step
talk Punchy Lou##113775
|tip He is inside the Lounge.
Tell him that you know his secret
kill Punchy Lou##113775 |q 44412/1 |goto Dalaran L/10 47.05,38.36
|tip He has around 10 million HP.
|tip Run away from him when he jumps around like crazy.
step
talk Li-An Skymirror##113781
Tell her that you know her secret
kill Li-An Skymirror##113781 |q 44412/6 |goto Dalaran L/10 44.72,23.81
|tip She has around 10 million HP.
|tip Interrupt her heal.
step
talk Savash Windcalller##113783
Tell her that you know her secret
kill Savash Windcalller##113783 |q 44412/3 |goto Dalaran L/10 57.97,42.28
|tip She has around 10 million HP.
step
talk Innocent Jim##113780
Tell him that you know his secret
kill Innocent Jim##113780 |q 44412/7 |goto Dalaran L/10 65.35,46.36
|tip He has around 10 million HP.
step
talk Sister Might##113779
|tip She is in the Arsenal building on the 2nd floor.
Tell her that you know her secret
kill Sister Might##113779 |q 44412/8 |goto Dalaran L/10 55.32,64.46
|tip She has around 10 million HP.
step
talk Hannis Shoalwalker##113782
Tell her that you know her secret
kill Hannis Shoalwalker##113782 |q 44412/2 |goto Dalaran L/10 52.33,67.13
|tip She has around 10 million HP.
step
talk Hugh Mann##113785
Tell him that you know his secret
kill Hugh Mann##113785 |q 44412/4 |goto Dalaran L/10 45.53,76.72
|tip He has around 10 million HP.
step
talk Archmage Khadgar##90417
turnin Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
collect Wonderous Wisdomball##141348 |n
learnpet Wonderous Wisdomball##113827 |use Wonderous Wisdomball##141348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Wyrmy Tunkins",{
pet=1887,
description="This guide will walk you through obtaining the Humanoid pet: Wyrmy Tunkins",
},[[
step
This pet is a reward for completing one of the Bi Weekly Archeaology quest lines.
|tip At the moment it is not clear as to what quest line gives this as a reward.
collect Wyrmy Tunkins##136922 |n
learnpet Wyrmy Tunkins##106232 |use Wyrmy Tunkins##136922
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Zoom",{
pet=1903,
description="This guide will walk you through obtaining the Critter pet: Zoom",
},[[
step
This pet is a reward for completing the dungeon achievement _Zoom!_
Check out our achievement guides to accomplish this.
Click here to continue |confirm
step
Once this achievement is complete this pet should be in your mail box.
collect Zoom##137298
learnpet Zoom##212749 |use Zoom##137298
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Blorp's Bubble",{
pet=1666,
description="This guide will walk you through obtaining the Critter pet: Blorp's Bubble",
},[[
step
talk Galissa Sundew##55103
buy 1 Blorp's Bubble##126925 |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 50 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed for by fishing in the water on darkmoon Island.
collect Blorp's Bubble##126925
learnpet Blorp's Bubble##93814 |use Blorp's Bubble##126925
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Translucent Shell",{
pet=1665,
description="This guide will walk you through obtaining the Critter pet: Translucent Shell",
},[[
step
talk Galissa Sundew##55103
buy 1 Translucent Shell##126926 |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 100 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed for by fishing in the water on darkmoon Island.
collect Translucent Shell##126926
learnpet Translucent Shell##93808 |use Translucent Shell##126926
]])
ZGV.BETAEND()
