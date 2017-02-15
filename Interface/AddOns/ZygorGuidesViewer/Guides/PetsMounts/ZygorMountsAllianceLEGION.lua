local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Brawler's Burly Basilisk",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"guild","brawler","burly","ground","mount","basilisk"},
condition_end="hasmount(230844)",
model={73248},
description="This guide will help you acquire the Brawler's Burly Basilisk.",
},[[
step
You will need to gain _Rank 8_ with the Legion Brawler's Guild
Click here to be taken to the Brawler's guild event guide, this will show you strategys on how to defeat each boss |confirm |next "Zygor's Alliance Events Guides\\Brawler's Guild\\Legion Brawler's Guild"
confirm
only if ZGV:GetReputation(2011).friendRep<7000
step
talk Quackenbush##68363
buy 1 Brawler's Burly Basilisk##142403 |goto Deeprun Tram/2 54.22,25.84
|tip This mount costs 3,200 gold.
step
learnmount Brawler's Burly Basilisk##230844 |use Brawler's Burly Basilisk##142403
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Spirit of Eche'ro",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"spirit","eche'ro","archaeology","ground","mount"},
condition_end="hasmount(196681)",
model={70874},
description="This guide will help you acquire Spirit of Eche'ro Mount",
},[[
step
This mount is awarded from the Bi-Weekly Archaeology quests that appear once you reach level 110
If it doesn't appear to be available, you will have to wait for it to show up
talk Dariness the Learned##93538
|tip She walks around inside.
accept The Right Path##41192 |goto Dalaran L/10 40.72,24.35
step
talk Lessah Moonwater##103485
turnin The Right Path##41192 |goto Thunder Totem/0 45.90,45.06
accept Laying to Rest##41193 |goto Thunder Totem/0 45.90,45.06
step
Open your map on complete Archaeology Digsites while in Highmountain
collect 600 Bone Fragment of Eche'ro##134095 |q 41193/1
step
Observe the burial ceremony |q 41193/2 |goto Thunder Totem/0 45.90,45.06
step
talk Lessah Moonwater##103485
turnin Laying to Rest##41193 |goto Thunder Totem/0 45.90,45.06
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Great Northern Elderhorn",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"great","northern","elderhorn","leatherworking","ground","mount"},
condition_end="hasmount(196681)",
model={67042},
description="This guide will help you acquire the Great Northern Elderhorn Mount.",
},[[
step
Before starting this quest, you will need to reach _800 Leatherworking_
Once that is attained, you need a few items in preparation for the quest
_<Fighter Chow>_
The recipe can be bought from the Auction House, or you can attain it by doing the Quest _Morale Booster_ in the Azsuna guide, which is part of the _Let Sleeping Giants Lie / No Time for Tryouts_ questline
You will need the food for the falling portions of the chase
_<Stonehide Leather Barding>_
This will prevent you from being dazed
Click here to continue |confirm
step
talk Namha Moonwater##93523
accept Mounting Made Easy##40215 |goto Dalaran L/10 35.01,29.40
step
click Great Northern Elderhorn
Follow the Great Northern Elderhorn |goto Stormheim/0 62.5,23.8 < 30
Run _AROUND_ the rocks here, do not try to directly follow it |goto 43.0,37.0 < 30
Carefully jump down the waterfall area |goto 31.6,46.5 < 30
Stick to the road without jumping after it |goto 39.7,47.3 < 30
Run along the bridge |goto 42.8,58.6 < 30
Run up the mountain |goto 47.3,61.2 < 30
Take the right path |goto 48.3,59.5 < 30
Weave through the trees without getting stuck |goto 52.6,57.2 < 30
Jump down quickly, don't hesitate |goto 52.7,49.5 < 30
Mount Up and Capture the Great Northern Elderhorn |q 40215/1 |goto 55.4,46.7
step
talk Namha Moonwater##93523
turnin Mounting Made Easy##40215 |goto Dalaran L/10 35.01,29.40
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Llothien Prowler",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"llothian","prowler","world","quest","ground","mount"},
condition_end="hasmount(171850)",
model={68851},
description="This guide will help you acquire the Llothian Prowler Mount.",
},[[
step
There are a few ways that you can earn this mount:
Doing World Quests when the _Nightfallen Hoard_ Emmisary reward is up
During the _Withered Army Training_ Scenario in chests
You can also find the Torn Invitation as a reward from the _Order Hall Mission Board_
collect 1 Torn Invitation##140495 |q 44057 |future
step
Use the Torn Invitation |use Torn Invitation##140495
accept A "Noble" Event##44057
step
Seach for the Order Hall Quests that have the following rewards:
List of Invited Nobles
Fox Hunt Invitation
First Half of the Map
Second Half of the Map
Investigate the hunt |q 44057/1
step
talk Lord Grayson Shadowbreaker##90250
turnin  A "Noble" Event##44057 |goto Eastern Plaguelands/20 52.26,78.03
accept Volpin the Elusive##44058 |goto 52.26,78.03
|only Paladin
step
talk Siouxsie the Banshee##93568
turnin  A "Noble" Event##44057 |goto Broken Shore/2 49.64,51.28
accept Volpin the Elusive##44058 |goto 49.64,51.28
|only DeathKnight
step
talk Skylord Omnuron##98002
turnin  A "Noble" Event##44057 |goto The Dreamgrove/0 52.67,51.49
accept Volpin the Elusive##44058 |goto 52.67,51.49
|only Druid
step
talk Skyseer Ghrent##100635
turnin  A "Noble" Event##44057 |goto Skyhold/1 59.77,13.42
accept Volpin the Elusive##44058 |goto 59.77,13.42
|only Warrior
step
Follow the path |goto 56.00,52.43 < 20 |only if walking
Enter the building |goto 48.77,41.71 < 15 |walk
talk Tactician Tinderfell##103023
turnin  A "Noble" Event##44057 |goto Trueshot Lodge/0 42.78,46.93
accept Volpin the Elusive##44058 |goto 42.78,46.93
|only Hunter
step
talk Gakin the Darkbinder##106199
turnin  A "Noble" Event##44057 |goto Dreadscar Rift/0 67.01,46.42
accept Volpin the Elusive##44058 |goto 67.01,46.42
|only Warlock
step
talk Archmage Melis##108515
turnin  A "Noble" Event##44057 |goto Hall of the Guardian/1 80.97,62.97
accept Volpin the Elusive##44058 |goto 80.97,62.97
|only Mage
step
talk Alonsus Faol##110564
turnin  A "Noble" Event##44057  |goto Netherlight Temple/1 51.53,47.81
accept Volpin the Elusive##44058 |goto 51.53,47.81
|only Priest
step
talk Ma'haat the Indomitable##42470
turnin  A "Noble" Event##44057 |goto Deepholm/0 56.94,14.23
accept Volpin the Elusive##44058 |goto 56.94,14.23
|only Shaman
step
talk Iron-Body Ponshu##64975
turnin  A "Noble" Event##44057 |goto The Wandering Isle L/0 51.41,48.39
accept Volpin the Elusive##44058 |goto 51.41,48.39
|only Monk
step
Follow the path down |goto  Mardum, the Shattered Abyss/1 68.46,66.55 < 15 |walk
Follow the path down |goto 68.35,53.61 > 10000 |walk
talk Allari the Souleater##98648
|tip She walks around.
turnin  A "Noble" Event##44057 |goto Mardum, the Shattered Abyss/2 56.46,60.39
accept Volpin the Elusive##44058 |goto 56.46,60.39
|only DemonHunter
step
kill Herald Gevedaun##112433
talk Herald Gevedaun##112433
Confront the Starter of the Hunt |q 44058/1 |goto Suramar/0 17.4,31.6
step
Follow the path |goto Suramar/0 22.95,30.69 < 30
Follow the path |goto 25.26,32.88 < 30
Follow the path |goto 27.35,33.18 < 30
Follow the path |goto 30.09,35.55 < 30
Find Volpin the Fox |q 44058/2
step
Kill the enemies that attack
Defend Volpin the Fox |q 44058/3 |goto 30.05,35.49
step
talk Volpin##112443
Calm Volpin the Fox |q 44058/4 |goto 30.05,35.49
step
Click the Quest Complete Box:
turnin Volpin the Elusive##44058
step
Congratulations, you have learned the Llothian Prowler Mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Brinedeep Bottom-Feeder",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"brinedeep","bottom","feeder","quest","ground","mount"},
condition_end="hasmount(214791)",
model={68849},
description="This guide will help you acquire the Brinedeep Bottom-Feeder Mount.",
},[[
step
In order to attain this mount, you will need to reach _Best Friend_ status with the npc Conjurer Margoss
This will require you to collect _840 Drowned Mana_, which can be fished up in the pool beneath him
Click here to continue |confirm
step
Use a gliding ability to jump across the gap |goto Dalaran L/10 26.92,19.60 < 20
|tip If you're not a Demon Hunter, you will need a Goblin Glider attachment or the Emerald Winds toy.
talk Conjurer Margoss##108825
accept Drowned Mana##42911 |goto 23.10,-11.40
step
collect 1 Drowned Mana##138777 |q 42911/1 |goto Dalaran L/10 22.57,-12.00
step
talk Conjurer Margoss##108825
turnin Drowned Mana##42911 |goto 23.10,-11.40
step
Use your Fishing Skill and collect Drowned Mana from the lake
Use Mark of Aquaos to increase the drop rate of Drowned Mana for 10 minutes
|tip If there are other players around, make sure you don't overlap the use of this items with theirs.
collect 940 Drowned Mana##138777 |goto 22.57,-12.00
|tip Save 100 Drowned Mana.
step
talk Conjurer Margoss##108825
Tell him _I have 10 drowned mana for you._
Become Conjurer Margoss' Best Friend |condition rep("Conjurer Margoss")==BestFriend
step
talk Conjurer Margoss##108825
buy Brinedeep Bottom-Feeder##138811 |n
Use the Brinedeep Bottom-Feeder
learn Brinedeep Bottom-Feeder##214791 |goto 23.10,-11.40
step
Congratulations, you have earned the Brinedeep Bottom-Feeder Mount
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Ratstallion",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ratstallion","quest","ground","mount"},
condition_end="hasmount(215558)",
model={70619},
description="This guide will help you acquire the Ratstallion Mount.",
},[[
step
To earn this mount, you will need to have gathered a total of _20,000 Sightless Eyes_
This can be done by killing Enemies in the Underbelly
This can also be achieved by looting the chests without a guard present, though this will leave you vulnerable to player attack
Click here to continue |confirm
step
Follow the path |goto Dalaran L/10 60.16,48.29 < 30
talk Raethan##97359
Hire a Guard |goto 68.88,58.25
Click here to continue |confirm
step
Follow the path |goto Dalaran L/11 64.55,58.58 < 30
Follow the path |goto 63.99,70.98 < 30
Follow the path |goto 68.46,80.17 < 30
talk Fizzi Liverzapper##110642
accept Experimental Potion: Test Subjects Needed##43476 |goto 76.03,83.55
|tip You will be able to do this daily.
|tip It nets you 150 Sightless Eyes each time you complete it.
step
Kill enemies or players in the underbelly
Loot chests when the guard go on break
Earn 20,000 Sightless Eyes |achieve 11066 |goto 60.90,69.44
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Arcadian War Turtle",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"arcadian","war","turtle","quest","ground","mount"},
condition_end="hasmount(227956)",
model={68848},
description="This guide will help you acquire the Arcadian War Turtle Mount.",
},[[
step
To earn this mount, you will need to gather _150 Curious Coins_
You can earn these doing the following:
Emissary Quests via World Quests
Mythic Dungeon Lockouts
Heroic Dungeons
These are extremely rare and will take time to accumulate
Once you have 150 Coins:
talk Xur'ios##107109
buy Arcadian War Turtle##141713 |goto Dalaran L/10 48.82,13.58
step
Congratulations, you have learned the Arcadian War Turtle Mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Bloodfang Widow",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"bloodfang","widow","ground","mount"},
condition_end="hasmount(213115)",
model={69276},
description="This guide will help you acquire the Bloodfang Widow Mount.",
},[[
step
To aqcuire this mount, you will need _2,000,000 gold_
talk The Mad Merchant##108468
|tip You can use the Looking for group feature to find the Mad Merchant on another server if he's not presently available on yours.
buy Bloodfang Cocoon##137570 goto Dalaran L/10 43.30,47.18 |n
Use the Bloodfang Cocoon |use Bloodfang Cocoon##137570
Learn the Bloodfang Widow Mount |learnpet 213115
step
Congratulations, you have learned the Bloodfang Widow Mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Fathom Dweller",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"fathom","dweller","ground","mount"},
condition_end="hasmount(223018)",
model={71939},
description="This guide will help you acquire the Fathom Dweller Mount.",
},[[
step
talk Drak'thul##102695
Talk with Drak'thul |goto Broken Shore/0 37.08,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Speak with him until he has no more dialogue available
Click here to continue |confirm
step
Follow the path |goto 39.31,77.36 < 30
Follow the path |goto 40.77,77.81 < 30
Follow the path |goto 42.91,74.03 < 30
Follow the path |goto 45.35,69.45 < 30
Follow the path |goto 50.30,64.29 < 30
Follow the path |goto 53.70,59.74 < 30
Follow the path |goto 54.61,53.78 < 30
Enter the cave |goto Broken Shore/0 58.54,54.14 < 30
|tip You can relog to try and get the rocks to disappear if it is blocked off.
|tip You can also die nearby and rez on the other side.
click Mound of Dirt##6478
collect Weathered Relic##139783 |goto 57.47,56.01
step
Follow the path |goto 51.64,53.24 < 30
Follow the path |goto 54.22,56.63 < 30
Follow the path |goto 53.53,61.42 < 30
Follow the path |goto 50.74,68.94 < 30
Follow the path |goto 39.11,74.66 < 30
Follow the path |goto 37.41,74.29 < 30
talk Drak'thul##102695
Talk with Drak'thul |goto Broken Shore/0 37.08,71.62
Speak with him until he has no more dialogue available
|tip You will need to speak with him multiple times.
Click here to continue |confirm
step
For the next portion of the guide, you _MUST_ attune yourself with the orbs in the order that they are given
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 37.97,37.41 < 15
|tip The entrance is a bit hidden amongst bushes.
click Hungering Orb
Attune yourself with the Hungering Orb |goto 37.94,35.47
Click here to continue |confirm
step
Follow the path |goto Suramar/0 63.18,34.59 < 10
Follow the path |goto 62.54,34.02 < 10
Follow the path |goto 62.70,33.17 < 10
Enter the cave |follow the path |goto Stormheim/0 32.79,75.66 < 10
click Hungering Orb
Attune yourself with the Hungering Orb |goto Stormheim/0 31.95,74.06
|tip The mob in the cave will likely one shot you, so try to avoid it.
Click here to continue |confirm
step
Follow the path |goto Val'sharah/0 41.39,79.70 < 10
Enter the hidden cave |goto 41.50,81.37 < 10
Go through the narrow passage |goto 41.48,82.11 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 41.93,81.70
|tip There will be an elite that hits fairly hard, try and keep it stunned.
Click here to continue |confirm
step
Enter the cave |goto Broken Shore/0 29.64,78.06 < 15
|tip It is underwater.
|tip You will be fatigued until you go a bit further into the cave.
click Hungering Orb##6478
Attuned yourself with the Hungering Orb |goto 32.98,74.62
|tip Avoid the steam coming out of the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 59.37,13.15 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 60.13,14.59
Click here to continue |confirm
step
Enter cave |goto Broken Shore/0 116.80,-210.00 < 30
Swim underwater |goto Broken Shore/0 116.10,-206.00 < 30
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 115.90,-205.00
|tip Avoid the steam on the ground.
|tip It will start to mist up when the steam vents are about to shoot.
Click here to continue |confirm
step
Follow the path |goto Highmountain/0 52.39,40.67 < 20
Follow the path |goto Highmountain/0 52.33,38.62 < 20
Follow the path |goto 52.42,36.22 < 20
Follow the path |goto 53.68,35.56 < 20
Follow the path |goto 55.14,37.52 < 20
Jump down here |goto 55.12,38.57 < 20
|tip Use a glider if you have one.
Enter the hidden cave |goto 55.84,38.37 < 5
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 55.80,37.92
|tip It's inside of the bones on the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 54.06,26.20 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 54.36,24.37
Click here to continue |confirm
step
You will need to glide down from Dalaran if you don't have an Eye of Azshara flight path already
Follow the path |goto Dalaran L/10 78.76,46.55 < 20
Follow the path |goto 73.44,86.12 < 20
Glide down to Eye of Azshara from here |goto 62.27,99.09 < 30
Reach Eye of Azshara |goto Eye of Azshara Map/0 45.38,-2.13
Follow the path |goto Eye of Azshara Map/0 41.01,48.71 < 30
Follow the path |goto 43.83,54.07 < 30
Follow the path |goto 45.16,60.95 < 30
Follow the path |goto 46.22,65.87 < 30
Follow the path |goto 48.62,67.49 < 30
Follow the path |goto 52.00,67.63 < 30
Follow the path |goto 56.86,67.81 < 30
Follow the path |goto 61.01,64.57 < 30
Follow the path |goto 62.62,61.19 < 30
Follow the path |goto 64.43,58.43 < 30
Follow the path |goto 68.51,59.35 < 30
Follow the path |goto 70.86,64.19 < 30
Follow the path |goto 74.29,71.84 < 30
Follow the path |goto 75.91,78.58 < 30
Enter the ship |goto 79.19,89.02 < 5
|tip the Entrance is slightly hidden.
Navigate through and swim through the second hidden hole |goto 77.55,88.96 < 5
|tip Swim up, then back down towards the destination.
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 75.02,83.36
Click here to continue |confirm
step
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto Broken Shore/0 37.49,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Click here to continue |confirm
step
Once you have follow the previous steps, a World Quest for Kosumoth the Hungering will appear in the Eye of Azshara World Map
The reward for the quest resets every 2 weeks, so you will need to wait patiently if what you want isn't available
accept DANGER: Kosumoth the Hungering##43798 |goto Eye of Azshara Map/0 46.6,49.2
step
kill Kosumoth the Hungering##111573 |q 43798/1 |goto Eye of Azshara Map/0 46.6,49.2
|tip He patrols around.
collect Fathom Dweller##138201 |n
Use the Fathom Dweller |use Fathom Dweller##138201
Learn the Fathom Dweller Mount |learnpet 223018
step
Congratulations, you have learned the Fathom Dweller Mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Long-Forgotten Hippogryph",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"long","forgotten","ground","hippogryph","mount"},
condition_end="hasmount(215159)",
model={29361},
description="This guide will help you acquire the Long-Forgotten Hippogryph Mount.",
},[[
step
label "Loop"
This Mount is hard to attain
You collect Ephemeral Crystals found in Azsuna, that spawn at random locations
You _MUST NOT DIE_ or you will have to collect the Crystals all over
You _MUST NOT_ Log Off, or you will have to start over
You _MUST NOT_ Leave Azsuna, or you will have to start over
Note that if another player gets the spawn before you, you will have to wait for the crystals to reset
Click here to continue |confirm
stickystart "Crystal"
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |n |goto Azsuna/0 45.5,45.4
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 46.95,48.93
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Carefully jump down |goto 48.27,47.63 < 5 |only if walking
Continue jumping down the ledge |goto 48.31,48.29 < 5 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 48.7,48.5
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Enter the cave |goto 50.11,48.88 < 10 |walk
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 50.73,49.89
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Leave the cave |goto 50.19,49.12 < 10 |walk
Follow the path |goto 48.29,45.89 < 20 |only if walking
Follow the path |goto 46.35,45.77 < 25 |only if walking
Follow the path |goto 46.29,50.36 < 25 |only if walking
Carefully jump down |goto 45.45,53.95 < 10 |only if walking
Follow the path |goto 44.76,58.47 < 25 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 44.1,59.8
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 45.46,58.68 < 20 |only if walking
Follow the path |goto 46.84,59.88 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 47.1,61.7
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 48.56,61.09 < 30 |only if walking
Follow the path |goto 50.70,60.66 < 5 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 51,61
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 52.47,62.39 < 25 |only if walking
Follow the path |goto 53.89,65.87 < 25 |only if walking
Follow the path |goto 52.98,67.64 < 25 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 52,71
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
fpath Wardens' Redoubt |goto 48.19,72.96
step
Follow the path |goto 57.30,56.49 < 25 |only if walking
Follow the path |goto 58.61,54.15 < 25 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 60,54
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 60.1,53.2
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 62,54
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 62.53,52.36
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 61.58,50.98 < 30 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 60,49
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 61.46,50.96 < 30 |only if walking
Follow the path |goto 63.55,51.24 < 30 |only if walking
Follow the path |goto 66.55,51.60 < 5 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 67,52
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 65.87,48.45 < 30 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 67,46
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path down |goto Azsuna/0 65.97,42.66 < 10 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 65.49,42.47
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path up |goto 65.11,38.93 < 15 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 64.8,37.9
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 67,33.7
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 67.15,32.32 < 20 |only if walking
Follow the path |goto 68.39,29.33 < 20 |only if walking
Follow the path |goto 68.67,26.91 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 68.19,24.03
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 68,23
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 65.4,29.5
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 63.48,31.76 < 25 |only if walking
Follow the path |goto 61.37,34.64 < 25 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 59.37,38.33
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 59.7,38.6
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 61.1,38.9
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 59.18,42.32 < 20 |only if walking
Follow the path |goto 61.12,45.12 < 20 |only if walking
Follow the path |goto 62.43,47.27 < 20 |only if walking
Follow the path |goto 61.08,46.68 < 20 |only if walking
Follow the path |goto 59.88,48.78 < 20 |only if walking
Follow the path |goto 58.41,48.70 < 20 |only if walking
Carefully jump down |goto 58.91,45.66 < 5 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 58.7,45
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 59.08,44.88
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Carefully drop down |goto 58.58,45.19 < 5 |only if walking
Jump down |goto 57.26,46.99 < 10
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 57.9,42.6
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Jump down |goto 58.70,42.87 < 15 |only if walking
Follow the path |goto 57.05,41.27 < 30 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, under water.
Collect the Ephemeral Crystal |goto 56,40
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 54.82,39.12 < 20 |only if walking
Follow the path |goto 53.16,37.67 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, under water.
Collect the Ephemeral Crystal |goto 51.4,37.6
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, under water.
Collect the Ephemeral Crystal |goto 53.08,36.03
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object.
Collect the Ephemeral Crystal |goto 54.5,33.5
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 54.84,33.35 < 20 |only if walking
Follow the path |goto 56.21,33.12 < 25 |only if walking
Follow the path |goto 59.24,31.08 < 25 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 61.15,30.42
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 59.55,29.48 < 20 |only if walking
Follow the path |goto 58.31,27.92 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 57.5,26.6
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 54.1,27.6
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 53.4,27.9
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 52.95,28.46 < 20 |only if walking
Follow the path |goto 51.72,26.63 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 52.29,25.24
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 51.06,24.49 < 20 |only if walking
Follow the path |goto 50.86,22.63 < 20 |only if walking
Follow the path |goto 50.77,19.94 < 20 |only if walking
Follow the path |goto 51.15,15.75 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 52.41,13.44
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 51.32,10.70 < 20 |only if walking
Follow the path |goto 50.18,8.75 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 50.4,7.8
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path up |goto 49.37,7.22 < 20 |only if walking
Follow the path |goto 48.58,10.76 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 45.7,9.2
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 45.5,17.2
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Enter the cave |goto 44.15,17.57 < 20 |walk
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 43.0,18.0
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Leave the cave |goto Azsuna/0 44.16,17.61 |walk
Follow the path |goto Azsuna/0 43.04,10.96 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 42.4,8.8
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 42.2,8.5
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 40.74,10.36 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 38.76,9.29
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 38.41,12.52 < 20 |only if walking
Follow the path |goto 37.8,14.8 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 34.85,17.14
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 35,22
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 35.41,26.83 < 20 |only if walking
Follow the path |goto 32.89,30.60 < 20 |only if walking
Follow the path |goto 31.68,33.59 < 20 |only if walking
Follow the path |goto 30.51,35.39 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 29.9,36.0
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 30.98,34.37 < 20 |only if walking
Enter the cave |goto 32.94,34.38 < 20 |walk
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 34.8,35.3
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Leave the cave |goto 34.37,36.00 < 20 |walk
Follow the path |goto 34.5,36.7 < 20 |only if walking
Follow the path |goto 38.1,37.9 < 20 |only if walking
Follow the path |goto 41.4,35.5 < 20 |only if walking
Follow the path up |goto 40.6,34.6 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 40.3,32.8
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 37.4,32.2
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path up |goto 39.53,34.34 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 36.0,36.0
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Follow the path |goto 42.09,34.06 < 20 |only if walking
Follow the path |goto 44.18,32.17 < 20 |only if walking
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 47.2,33.0
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
click Ephemeral Crystal
|tip It's a purple-ish blue object, inside of the cave.
Collect the Ephemeral Crystal |goto 49.93,32.95
collect Reins of the Long-Forgotten Hippogryph##138258 |n
Use the Reins of the Long-Forgotten Hippogryph |use Reins of the Long-Forgotten Hippogryph##138258
Learn the Long-Forgotten Hippogryph |learnpet 215159 |next "Crystal"
|tip It will appear in your inventory if you collect 5 Ephemeral Crystals.
Click here if there isn't an Ephemeral Crystal Present |confirm
step
Click here to return to the start |confirm |next "Loop"
step "Crystal"
When you, or another player have collected 5 Ephemeral Crystals, the following message appears:
_You hear a faint caw in the distance and then silence._
You will have to wait at least 4 hours before the Crystals respawn
step
Congratulations, you have earned the Long-Forgotten Hippogryph Mount!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Darkwater Skate",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"darkwater","darkmoon","faire","water","mount","skate"},
condition_end="hasmount(228919)",
model={73254},
description="This guide will help you acquire the Darkwater Skate.",
},[[
step
talk Galissa Sundew##55103
buy 1 Darkwater Skate##142398 |goto Darkmoon Island/0 52.52,88.59
|tip This mount costs 500 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed for by fishing in the water on darkmoon Island.
Use the Darkwater Skate |use Darkwater Skate##142398
Learn the Darkwater Skate |learnpet 228919
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Legion\\Steelbound Devourer",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"steelbound","devourer","ground","mount"},
condition_end="hasmount(213209)",
model={70099},
description="This guide will help you acquire the Steelbound Devourer.",
},[[
step
Click here if you are a Blacksmith and would like to make this mount |next "Steelbound"
Click here if you would like to buy this mount from the AH |next "AH Mount"
confirm
step
label "Steelbound"
The recipe for this mount drops off Tichondrius and does not have a 100 percent chance to drop
Enter the Nighthold with your group |goto The Nighthold/1 23.9,91.1 |c
|tip This recipe can only drop from normal difficulty or higher.
|tip You do not need 800 blacksmithing to receive this recipe but you do need 800 blacksmithing to learn it.
step
kill Tichondrius##103685
|tip This boss can be found half way through the instance.
collect 1 Recipe: Fel Core Hound Harness##137687 |n
learn Fel Core Hound Harness##213916 |use Recipe: Fel Core Hound Harness##137687
step
You will now need the materials to make this mount
collect 100 Demonsteel Bar##124461
collect 50 Blood of Sargeras##124124
collect 10 Infernal Brimstone##124444
collect 10 Felhide##124116
confirm
step
create 1 Fel Core Hound Harness##213916
learnmount Steelbound Devourer##213209 |use Steelbound Harness##137686 |next "Steelbound Grats"
step
label "AH Mount"
talk Auctioneer Fitch##8719
buy 1 Steelbound Harness##137686 |n |goto Stormwind City/0 61.15,70.79
learnmount Steelbound Devourer##213209 |use Steelbound Harness##137686 |next "Steelbound Grats"
step
label "Steelbound Grats"
Congratulations you are now the proud owner of the _Steelbound Devourer_!
]])
ZGV.BETAEND()
