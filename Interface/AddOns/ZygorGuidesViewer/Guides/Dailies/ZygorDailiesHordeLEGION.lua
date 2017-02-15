local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Legion\\World Quests Unlock Quest Line",{
author="support@zygorguides.com",
startlevel=110.0,
},[[
step
accept Uniting the Isles##43341
|tip You will accept this quest automatically when you reach level 110.
step
Earn Friendly Reputation with the Court of Farondis |q 43341/2
|tip Use the Azsuna leveling/questing guide to accomplish this.
step
Earn Friendly Reputation with the Dreamweavers |q 43341/4
|tip Use the Val'sharah leveling/questing guide to accomplish this.
step
Earn Friendly Reputation with the Highmountain Tribe |q 43341/3
|tip Use the Highmountain leveling/questing guide to accomplish this.
step
Earn Friendly Reputation with the Valarjar |q 43341/5
|tip Use the Stormheim leveling/questing guide to accomplish this.
step
Earn Friendly Reputation with the Nightfallen |q 43341/1
|tip Use the Suramar leveling/questing guide to accomplish this.
step
talk Archmage Khadgar##90417
|tip Inside the building.
turnin Uniting the Isles##43341 |goto Dalaran L/10 28.47,48.34
step
collect Goblin Glider Kit##109076 |c |q 44721 |future
|tip You can create these, if you have Engineering.
|tip You can also purchase them from the Auction House.
step
talk Muninn##114946
accept A Call to Action##44720 |goto 73.92,41.59
step
talk Havi##92539
turnin A Call to Action##44720 |goto Stormheim/0 60.14,50.74
accept A Threat Rises##44771 |goto Stormheim/0 60.14,50.74
step
click Keg of Grog##229547
Pour the Grog |havebuff Interface\Icons\INV_Drink_05 |goto 60.51,51.44 |q 44771
step
Bring the Grog to Havi |q 44771/1 |goto 60.14,50.74
step
talk Havi##92539
turnin A Threat Rises##44771 |goto 60.14,50.74
accept Helya's Conquest##44721 |goto 60.14,50.74
step
Jump here and use a Goblin Glider |goto 59.59,49.99 < 20 |only if walking
Investigate Tideskorn Harbor |q 44721/1 |goto 58.54,44.73
stickystart "Helarjar Soulthief"
step
kill Vagnhild##114957 |q 44721/3 |goto 56.01,41.05
step
label "Helarjar Soulthief"
kill 4 Helarjar Soulthief##115291 |q 44721/2 |goto 56.77,45.56
|tip They are spread out around this area.
step
talk Havi##92539
Tell him _"Helya can corrupt the Stormforged!"_
Watch the dialogue
Speak with Havi |q 44721/4 |goto 60.14,50.74
step
talk Havi##92539
turnin Helya's Conquest##44721 |goto 60.14,50.74
|next Zygor's Alliance Dailies Guides\\Legion\\World Quests
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Legion\\World Quests",{
author="support@zygorguides.com",
startlevel=110.0,
},[[
step
label "Choose_World_Quest"
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
step
label quest-42119
Follow the path |goto Azsuna/0 43.63,42.29 < 30 |only if walking
Follow the path |goto 40.73,37.54 < 30 |only if walking
accept A Cleansing Cocktail##42119 |goto 43.34,33.99
|tip You will accept this quest automatically.
stickystart "Cliffwing_Hippogryph_Eggs"
step
kill Llothien Grizzly##90134+
collect 5 Fat Bear Liver##136859 |q 42119/2 |goto 43.34,33.99
step
label "Cliffwing_Hippogryph_Eggs"
click Cliffwing Hippogryph Eggs
|tip They look like dark blue eggs in and nearby hippogryph nests on the ground around this area.
collect 7 Cliffwing Hippogryph Egg##136860 |q 42119/1 |goto 43.34,33.99
|next "Court_Of_Farondis_WQ"
step
label quest-42024
Follow the path |goto Azsuna/0 53.69,58.89 < 30 |only if walking
Follow the path |goto 51.95,61.48 < 30 |only if walking
accept A Friend of My Enemy##42024 |goto 48.98,60.26
|tip You will accept this quest automatically.
stickystart "Cove Skrog"
step
kill Prince Oceanus##89101 |q 42024/1 |goto Azsuna/0 53.43,63.82
step
Follow the path down |goto 52.84,63.02 < 30 |only if walking
Follow the path |goto 50.45,61.83 < 30 |only if walking
Follow the path |goto 47.99,61.09 < 30 |only if walking
kill Flog the Captain-Eater##89884 |q 42024/2 |goto Azsuna/0 45.18,57.78
step
label "Cove Skrog"
kill 6 Cove Skrog##89097 |q 42024/3
|next "Court_Of_Farondis_WQ"
step
label quest-43803
Follow the path |goto Eye of Azshara Map/0 42.13,45.22 < 30 |only if walking
Follow the path |goto 47.08,45.46 < 30 |only if walking
Enter the cave |goto 59.61,39.34 < 20 |only if walking
Follow the path |goto 63.61,40.60 < 20 |only if walking
Follow the path |goto 66.98,41.61 < 20 |only if walking
accept A Giant Murloc Problem##43803 |goto 69.22,44.79
|tip You will accept this quest automatically.
stickystart "Saltscale"
step
kill Skrog Wavecrasher##111646 |q 43803/1 |goto 61.45,50.57
step
label "Saltscale"
kill Saltscale Lurker##111645 |q 43803/2 |goto 69.22,44.79
step
label quest-42014
accept A Tainted Vintage##42014 |goto Azsuna/0 40.83,9.11
|tip You will accept this quest automatically.
stickystart "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
stickystart "Burn_Haunted_Vines_A_Tainted_Vintage"
step
Follow the path up |goto 41.25,10.35 < 20 |only if walking
Follow the path |goto 42.32,10.32 < 20 |only if walking
kill Grand Vintner Valiana##90547 |q 42014/2 |goto 42.93,8.55
|tip Inside the building.
step
Follow the path up |goto 44.19,9.35 < 20 |only if walking
Follow the path up |goto 45.05,11.71 < 15 |only if walking
kill Vintner Liastrin##90537 |q 42014/1 |goto 45.55,12.84
|tip She floats around inside the building.
step
label "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
click Arcane-aged Wine
|tip They look like wooden barrels on the ground around this area.
Smash #3# Barrels of Arcane-aged Wine |q 42014/3 |goto 46.26,11.75
step
label "Burn_Haunted_Vines_A_Tainted_Vintage"
click Haunted Vines
|tip They look blue glowing wooden planks sticking vertically into the ground around this area.
Burn #6# Haunted Vines |q 42014/4 |goto 46.26,11.75
|next "Court_Of_Farondis_WQ"
step
label quest-44784
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto 53.77,40.31
accept Advanced Wanding##44784 |goto Azsuna/17 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto Azsuna/17 58.11,68.23
Go through the Academy Door |goto Azsuna/17 50.40,50.09
Use your extra action ability on the Wand Targets
Hit 6 Wand Targets |q 44784/1 |goto Azsuna/17 33.62,42.69
|next "Court_Of_Farondis_WQ"
step
label quest-41545
accept Aethril Cluster##41545 |goto Azsuna/0 40.03,9.73
|tip You will accept this quest automatically.
step
kill Lost Gatherer##109070
click Aethril Cluster##0
Aethril Cluster gathered |q 41545/1 |goto 40.03,9.73
|next "Court_Of_Farondis_WQ"
step
label quest-42652
Cross the bridge |goto Azsuna/0 56.49,62.07 < 30 |only if walking
Follow the path up |goto 55.77,65.84 < 30 |only if walking
accept Ancient Exemplars##42652 |goto 55.51,70.67
|tip You will accept this quest automatically.
stickystart "Ancient_Familiars"
step
Kill Timeless enemies around this area
Slay #5# Timeless Mages |q 42652/1 |goto 55.51,70.67
step
label "Ancient_Familiars"
Kill Familiar enemies around this area
Slay #6# Ancient Familiars |q 42652/2 |goto 55.51,70.67
|next "Court_Of_Farondis_WQ"
step
label quest-43805
accept Aquatic Assassination##43805 |goto Eye of Azshara Map/0 38.25,45.91
|tip You will accept this quest automatically.
stickystart "Shellback turtles"
step
kill Hatecoil Oracle##111636+, Hatecoil Warrior##111637, Hatecoil Wrangler##111635
Slay 6 Hatecoil Naga |q 43805/1 |goto Eye of Azshara Map/0 50.51,68.58
step
label "Shellback turtles"
kill 6 Wandering Shellback##111633 |q 43805/2 |goto Eye of Azshara Map/0 52.18,63.34
|next "Court_Of_Farondis_WQ"
step
label quest-42165
accept Azsuna Specimens##42165 |goto Azsuna/0 34.02,45.19
|tip You will accept this quest automatically.
step
Follow the path |goto 32.97,46.17 < 20 |only if walking
click Felspider##97323
Defeat or Capture a Felspider |q 42165/1 |goto 34.02,45.19
|tip You may have to search a large area around here to find one.
|next "Court_Of_Farondis_WQ"
step
label quest-45069
Follow the path |goto Azsuna/0 45.25,43.77 < 25 |only if walking
Follow the path |goto 46.24,44.66 < 25 |only if walking
Follow the path |goto 46.28,51.43 < 25 |only if walking
accept Barrels o' Fun##45069 |goto 47.03,53.56
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45069/1 |goto 46.97,53.80
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-44894
Drop down |goto Azsuna/0 39.78,7.47 < 30 |only if walking
accept Bloodgazer Swarm!##44894 |goto 38.68,7.12
|tip You will accept this quest automatically.
step
Slay the Bloodgazers around this area
Cull the Bloodgazer Falcosaurs |q 44894/1 |goto Azsuna/0 36.60,6.31
|next "Court_Of_Farondis_WQ"
step
label quest-41495
Follow the path |goto Azsuna/0 63.39,25.54 < 25 |only if walking
Follow the path |goto 60.38,20.69 < 20 |only if walking
Follow the path |goto 57.26,18.00 < 25 |only if walking
accept Brilliant Leystone Seams##41495 |goto 56.25,17.11
|tip You will accept this quest automatically.
step
click Brilliant Leystone Seam##0
collect 6 Brilliant Leystone Ore##141228 |q 41495/1 |goto 56.25,17.11
|tip You will find Brilliant Leystone Seams all over this area.
|next "Court_Of_Farondis_WQ"
step
label quest-41481
Follow the path |goto Azsuna/0 47.53,29.14 < 25 |only if walking
Follow the path |goto 44.75,31.83 < 25 |only if walking
Follow the path |goto 41.21,35.34 < 25 |only if walking
Follow the path up |goto 39.19,32.73 < 20 |only if walking
Follow the path |goto 37.81,31.79 < 10 |only if walking
Follow the path up |goto 37.52,29.46 < 15 |only if walking
Follow the path |goto 39.11,27.03 < 15 |only if walking
accept Brimstone Destroyer##41481 |goto 38.62,25.38
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41481/1 |goto 38.62,25.38
|next "Court_Of_Farondis_WQ"
step
label quest-41482
accept Brimstone Destroyer##41482 |goto Azsuna/0 63.80,29.46
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41482/1 |goto 63.80,29.46
|next "Court_Of_Farondis_WQ"
step
label quest-42022
Follow the path |goto Azsuna/0 46.20,44.55 < 30 |only if walking
Follow the path |goto Azsuna/0 48.96,42.73 < 30 |only if walking
Follow the path |goto Azsuna/0 52.00,44.47 < 30 |only if walking
accept The Broken Academy##42022 |goto Azsuna/0 54.28,44.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bound Citizen##91449+
|tip They look like night elves pinned to walls by spears around this area.
Defend Against the Hatecoil |q 42022/1 |goto 54.28,44.20
|next "Court_Of_Farondis_WQ"
step
label quest-43193
Cross the bridge |goto 56.51,62.07 < 30 |only if walking
accept Calamitous Intent##43193 |goto Azsuna/0 56.42,67.31
|tip You will accept this quest automatically.
step
kill Calamir##109331 |q 43193/1 |goto 56.42,67.31
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("DAMAGE")
|tip Avoid other players when you get the Burning Bomb debuff. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Dispel the Burning Bomb debuff from other players. |only if grouprole("HEALER")
|tip Avoid the Arcanopulse areas. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("TANK")
|tip Avoid the Arcanopulse areas. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-41438
Follow the path |goto Azsuna/0 45.14,43.69 < 20 |only if walking
Follow the path down |goto 47.83,45.19 < 20 |only if walking
accept Charged Leystone Deposits##41438 |goto 49.07,47.61
|tip You will accept this quest automatically.
step
click Charged Leystone Deposit##195122
|tip These are located all around the area.
collect 10 Charged Leystone Ore##141238 |q 41438/1 |goto 49.02,47.03
|next "Court_Of_Farondis_WQ"
step
label quest-43091
Follow the path |goto Azsuna/0 50.66,30.05 < 25 |only if walking
Follow the path |goto 50.91,22.58 < 20 |only if walking
Follow the path |goto 51.81,16.12 < 25 |only if walking
Follow the path |goto 53.78,13.91 < 25 |only if walking
Follow the path |goto 55.96,12.91 < 15 |only if walking
accept DANGER: Arcanor Prime##43091 |goto 56.67,11.09
|tip You will accept this quest automatically.
step
kill Arcanor Prime##109641 |q 43091/1 |goto 56.67,11.09
|next "Court_Of_Farondis_WQ"
step
label quest-44189
Follow the path |goto Azsuna/0 46.99,73.10 < 20 |only if walking
Follow the path |goto 44.15,76.99 < 30 |only if walking
Follow the path |goto 44.21,81.99 < 30 |only if walking
Follow the path to Bestrix's lair |goto Azsuna/0 42.76,85.14 < 30
accept DANGER: Bestrix##44189 |goto Azsuna/0 41.79,88.35
|tip You will accept this quest automatically.
step
kill Bestrix##111454 |q 44189/1 |goto 41.79,88.35
|next "Court_Of_Farondis_WQ"
step
label quest-43121
Follow the path |goto Azsuna/0 55.92,60.20 < 25 |only if walking
Follow the path |goto 57.90,63.64 < 25 |only if walking
Follow the path |goto 59.09,67.14 < 25 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Chief Treasurer Jabrill##43121 |goto 59.29,77.04
|tip You will accept this quest automatically.
step
kill Chief Treasurer Jabrill##109677 |q 43121/1 |goto 59.29,77.04
|next "Court_Of_Farondis_WQ"
step
label quest-43175
Follow the path |goto Azsuna/0 55.85,60.01 < 25 |only if walking
Drop down |goto 56.09,62.29 < 25 |only if walking
accept DANGER: Deepclaw##43175 |goto 56.09,62.29
|tip You will accept this quest automatically.
step
kill Deepclaw##109702 |q 43175/1 |goto 56.09,62.29
|tip Deepclaw is inside the little cave.
|next "Court_Of_Farondis_WQ"
step
label quest-43059
Follow the path |goto Azsuna/0 63.39,30.66 < 25 |only if walking
Follow the path |goto 63.83,34.57 < 25 |only if walking
Follow the path down |goto 65.21,37.83 < 20 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Fjordun##43059 |goto 66.12,40.10
|tip You will accept this quest automatically.
step
kill Fjordun##109584 |q 43059/1 |goto 66.12,40.10
|next "Court_Of_Farondis_WQ"
step
label quest-43079
Follow the path |goto Azsuna/0 30.93,46.23 < 30 |only if walking
Follow the path |goto 29.13,47.51 < 30 |only if walking
accept DANGER: Immolian##43079 |goto 28.71,49.46
|tip You will accept this quest automatically.
step
kill Immolian##109630 |q 43079/1 |goto 28.71,49.46
|next "Court_Of_Farondis_WQ"
step
label quest-44190
Follow the path |goto Azsuna/0 47.05,73.14 < 30 |only if walking
Go up the path |goto 41.61,73.70 < 30 |only if walking
Enter the tower |goto 40.75,76.63 < 10 |only if walking
|tip Go all the way to the top.
accept DANGER: Jade Darkhaven##44190 |goto 40.37,76.85
|tip You will accept this quest automatically.
step
kill Jade Darkhaven##34914 |q 44190/1 |goto 40.30,76.57
|tip He is all the way at the top of the tower.
|next "Court_Of_Farondis_WQ"
step
label quest-44192
Follow the path up |goto Azsuna/0 46.90,73.13 < 20 |only if walking
Follow the path up |goto Azsuna/0 44.24,75.43 < 20 |only if walking
Follow the path |goto Azsuna/0 43.97,78.09 < 20 |only if walking
Follow the path |goto Azsuna/0 45.12,82.36 < 20 |only if walking
Follow the path up |goto Azsuna/0 46.16,84.04 < 20 |only if walking
Follow the path up |goto Azsuna/0 45.46,85.08 < 20 |only if walking
accept DANGER: Lysanis Shadesoul##44192 |goto Azsuna/0 43.75,88.78
|tip You will accept this quest automatically.
step
kill Lysanis Shadesoul##30108 |q 44192/1 |goto 43.62,89.67
|tip At the top of the tower.
|next "Court_Of_Farondis_WQ"
step
label quest-43098
Follow the path |goto Azsuna/0 43.53,42.02 < 30 |only if walking
Follow the path |goto 40.07,37.50 < 30 |only if walking
Follow the path |goto 34.70,36.77 < 30 |only if walking
Follow the path |goto 32.64,31.99 < 30 |only if walking
accept DANGER: Marblub the Massive##43098 |goto 33.86,28.84
|tip You will accept this quest automatically.
step
kill Marblub the Massive##109653 |q 43098/1 |goto Azsuna/0 34.12,27.91
|next "Court_Of_Farondis_WQ"
step
label quest-43027
Follow the path |goto Azsuna/0 42.04,44.51 < 30 |only if walking
accept DANGER: Mortiferous##43027 |goto Azsuna/0 40.62,44.66
|tip You will accept this quest automatically.
step
kill Mortiferous##93622 |q 43027/1 |goto 40.62,44.66
|next "Court_Of_Farondis_WQ"
step
label quest-44193
Follow the path |goto Azsuna/0 50.76,83.17 < 30 |only if walking
Follow the path |goto 48.05,84.92 < 30 |only if walking
Drop down |goto 46.23,86.49 < 30 |only if walking
Drop down |goto 45.64,87.08 < 30 |only if walking
Enter the cave |goto Azsuna/0 45.12,87.01 < 30 |walk
accept DANGER: Sea King Tidross##44193 |goto Azsuna/0 44.29,85.55
|tip You will accept this quest automatically.
step
kill Sea King Tidross##111434 |q 44193/1 |goto 44.29,85.51
|tip Run around the center rock out of LoS when Tidross casts Sea Quake.
|next "Court_Of_Farondis_WQ"
step
label quest-43063
Follow the path up |goto Azsuna/0 54.10,57.06 < 30 |only if walking
Follow the path up |goto 53.77,54.18 < 30 |only if walking
accept DANGER: Stormfeather##43063 |goto 51.45,56.56
|tip You will accept this quest automatically.
step
kill Stormfeather##109594 |q 43063/1 |goto Azsuna/0 51.20,57.87
|next "Court_Of_Farondis_WQ"
step
label quest-44194
Follow the path |goto Azsuna/0 47.01,73.16 < 30 |only if walking
Follow the path |goto 43.17,76.73 < 30 |only if walking
Go to the beach |goto 40.68,80.27 < 30 |only if walking
accept DANGER: Torrentius##44194 |goto 37.39,82.32
|tip You will accept this quest automatically.
step
kill Torrentius##102064 |q 44194/1 |goto 37.26,83.41
|tip This is an elite enemy you will need a group to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-43040
Follow the path |goto Azsuna/0 63.41,25.55 < 25 |only if walking
Follow the path |goto 61.12,21.68 < 25 |only if walking
Follow the path |goto 59.17,22.78 < 25 |only if walking
accept DANGER: Valakar the Thirsty##43040 |goto 58.25,21.31
|tip You will accept this quest automatically.
step
kill Valakar the Thirsty##109575 |q 43040/1 |goto 58.25,21.31
|next "Court_Of_Farondis_WQ"
step
label quest-43072
Follow the path |goto Azsuna/0 41.50,10.70 < 30 |only if walking
Follow the path |goto Azsuna/0 42.61,9.60 < 30 |only if walking
accept DANGER: The Whisperer##43072 |goto 43.18,7.65
|tip You will accept this quest automatically.
step
kill The Whisperer##109620 |q 43072/1 |goto 43.18,7.65
|next "Court_Of_Farondis_WQ"
step
label quest-42146
Follow the path |goto Azsuna/0 46.34,44.55 < 30 |only if walking
Follow the path |goto 47.64,43.84 < 30 |only if walking
accept Dazed and Confused and Adorable##42146 |goto 50.03,41.44
|tip You will accept this quest automatically.
step
click Beguiling Orb##0
Defeat the Murlocs |q 42146/1 |goto 50.03,41.44
|next "Court_Of_Farondis_WQ"
step
label quest-44287
Enter the cave |goto Azsuna/0 52.40,79.84 < 30 |walk
accept DEADLY: Withered J'im##44287 |goto Azsuna/0 52.60,81.28
|tip You will accept this quest automatically.
step
kill Withered J'im##112350 |q 44287/1 |goto 52.60,81.28
|next "Court_Of_Farondis_WQ"
step
label quest-44054
accept Demonicide##44054 |goto Azsuna/0 48.17,73.05
|tip You will accept this quest automatically.
step
Follow the path up |goto 46.90,73.13 < 20 |only if walking
Kill enemies around this area
Purge the Demons |q 44054/1 |goto 44.89,74.24
|next "Court_Of_Farondis_WQ"
step
label quest-42276
accept Disgusting, but Useful##42276 |goto Azsuna/0 30.71,46.45
|tip You will accept this quest automatically.
step
kill Manastalker##107135+
collect 50 Manastalker Tendril##137330 |q 42276/1 |goto 30.71,46.45
step
Follow the path |goto 31.17,45.41 < 20 |only if walking
click Felsurge Eggs
|tip They look like shaking white eggs on the ground around this area.
kill Felsurge Broodmother##113987+
collect 10 Felsurge Spider Egg##137335 |q 42276/2 |goto 33.86,42.95
|next "Court_Of_Farondis_WQ"
step
label quest-42711
Cross the bridge |goto Azsuna/0 56.48,62.04 < 30 |only if walking
accept The Eternal Mages##42711 |goto 56.33,65.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Ghost Mages |q 42711/1 |goto 57.03,65.17
|next "Court_Of_Farondis_WQ"
step
label quest-44049
Follow the path |goto Azsuna/0 51.05,83.03 < 30 |only if walking
Follow the path down |goto 46.30,84.68 < 30 |only if walking
accept Evil Has Many Legs##44049 |goto 44.34,82.09
|tip You will accept this quest automatically.
step
Slay the spiders around this area
Purge the Demonic Spiders |q 44049/1 |goto Azsuna/0 43.07,84.84
|next "Court_Of_Farondis_WQ"
step
label quest-42027
accept Faronaar in Chaos##42027 |goto Azsuna/0 37.95,52.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Soul Prisons
|tip They look like small green floating crystals around this area.
click Legion Portals
|tip They look like big green domes.
click Librams of Fel Knowledge
|tip They look like open floating books.
Lead the Fight Against the Legion |q 42027/1 |goto 37.95,52.68
|next "Court_Of_Farondis_WQ"
step
label quest-42026
Follow the path |goto Azsuna/0 43.08,45.32 < 30 |only if walking
Follow the path |goto 40.99,47.95 < 30 |only if walking
Follow the path |goto 39.41,50.72 < 30 |only if walking
Follow the path |goto 38.82,55.17 < 30 |only if walking
accept Faronaar in Ruin##42026 |goto 38.84,57.72
|tip You will accept this quest automatically.
stickystart "Legion_Camp_Demons"
step
click Jailer's Cages
|tip They look like pointed gray metal cages around this area.
Free #8# Illidari |q 42026/1 |goto 39.05,57.85
step
label "Legion_Camp_Demons"
Kill enemies around this area
Slay #10# Legion Camp Demons |q 42026/2 |goto 39.05,57.85
|next "Court_Of_Farondis_WQ"
step
label quest-41323
Follow the path |goto Azsuna/0 43.60,42.22 < 30 |only if walking
Follow the path |goto 40.02,37.44 < 30 |only if walking
Follow the path |goto 35.17,36.96 < 30 |only if walking
accept Fatty Lion Seal Skin##41323 |goto 31.98,34.64
|tip You will accept this quest automatically.
step
kill Azsuna Lion Seal##89013+
|tip Loot and Skin these.
collect 8 Fatty Lion Seal Skin##134807 |q 41323/1 |goto Azsuna/0 30.48,34.10
|next "Court_Of_Farondis_WQ"
step
label quest-41563
Carefully cross the rocks |goto Azsuna/0 45.60,72.22 < 30 |only if walking
Follow the path |goto 43.53,71.70 < 30 |only if walking
accept Felhide##41563 |goto 41.44,71.3
|tip You will accept this quest automatically.
step
This is an elite area, be wary of the enemies here.
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41563/1 |goto Azsuna/0 41.44,71.3
|next "Court_Of_Farondis_WQ"
step
label quest-41564
Follow the path |goto Azsuna/0 43.34,44.83 < 30 |only if walking
Run up the hidden path here |goto 38.27,55.86 < 30 |only if walking
Follow the path up |goto 35.16,54.89 < 30 |only if walking
Continue following the path |goto 33.98,55.53 < 30 |only if walking
Follow the path |goto 30.61,54.77 < 30 |only if walking
Follow the path down |goto 29.03,55.37 < 30 |only if walking
accept Felhide##41564 |goto 29.72,57.18
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41564/1 |goto Azsuna/0 29.83,57.97
|next "Court_Of_Farondis_WQ"
step
label quest-41514
Follow the path |goto Azsuna/0 65.36,28.86 < 30 |only if walking
accept Felwort##41514 |goto 68.37,28.92
step
click Felwort##195114
collect Felwort |q 41514/1 |goto Azsuna/0 68.37,28.92
step
label quest-41513
accept Felwort##41513 |goto Azsuna/0 40.60,46.73
step
click Felwort##195114
collect Felwort |q 41513/1 |goto Azsuna/0 40.70,46.53
|next "Court_Of_Farondis_WQ"
step
label quest-41437
Follow the path |goto Azsuna/0 46.55,30.62 < 30 |only if walking
Follow the path |goto 44.28,32.01 < 30 |only if walking
accept Fine Leystone Deposits##41437 |goto 41.85,34.47
|tip You will accept this quest automatically.
step
click Fine Leystone Deposit##195122
collect Fine Leystone Ore##141225 |q 41437/1 |goto 41.85,34.47
|tip These are located all around the area.
|next "Court_Of_Farondis_WQ"
step
label quest-41289
Follow the path |goto Azsuna/0 45.43,42.38 < 25 |only if walking
Follow the path |goto 46.52,40.45 < 25 |only if walking
accept Flourishing Aethril##41289 |goto 46.69,36.72
|tip You will accept this quest automatically.
step
click Flourishing Aethril##195114
collect 10 Flourishing Aethril##140947 |q 41289/1 |goto 46.69,36.72
|next "Court_Of_Farondis_WQ"
step
label quest-41455
Follow the path |goto Azsuna/0 57.20,59.04 < 25 |only if walking
Follow the path |goto 58.95,60.11 < 25 |only if walking
Follow the path |goto 60.93,60.00 < 25 |only if walking
accept Gleaming Leystone Outcropping##41455 |goto 62.12,60.33
|tip You will accept this quest automatically.
step
click Gleaming Leystone Outcropping##195122
|tip It's underwater.
collect 1 Gleaming Leystone Ore##141229 |q 41455/1 |goto 62.12,60.33
|next "Court_Of_Farondis_WQ"
step
label quest-41434
Follow the path |goto Azsuna/0 53.86,58.73 < 25 |only if walking
Follow the path |goto 52.00,59.91 < 25 |only if walking
Follow the path |goto 51.28,56.16 < 25 |only if walking
Follow the path |goto 49.42,55.46 < 25 |only if walking
accept Glowing Leystone Deposits##41434 |goto Azsuna/18 70.94,71.58
|tip You will accept this quest automatically.
step
click Glowing Leystone Deposit##195122
|tip These can be found all around the cave.
collect 10 Glowing Leystone Ore##141223 |q 41434/1 |goto 70.94,71.58
|next "Court_Of_Farondis_WQ"
step
label quest-43804
accept Hate the Hatecoil##43804 |goto Eye of Azshara Map/0 38.45,46.16
|tip You will accept this quest automatically.
step
Slay the Naga around this area
kill 15 Hatecoil Naga |q 43804/1 |goto Eye of Azshara Map/0 50.61,67.27
|next "Court_Of_Farondis_WQ"
step
label quest-42624
Cross the water |goto Azsuna/0 57.22,62.55 < 30 |only if walking
Follow the path |goto 59.17,65.60 < 30 |only if walking
accept Heads of the Fleet##42624 |goto 61.07,69.32
|tip You will accept this quest automatically.
step
Enter the cave |goto 59.55,68.35 < 30 |walk
kill Second Mate Cilieth##108212 |q 42624/2 |goto 59.66,69.79
step
Leave the cave |goto 59.55,68.35 < 30 |walk
kill First Mate Oxswain##108137 |q 42624/1 |goto 61.13,68.72
|tip At the top of the ship.
step
kill Bilgerat##108174 |q 42624/3 |goto 60.81,70.81
|tip Inside the small cave.
step
Follow the beach |goto 61.53,72.00 < 30 |only if walking
Follow the beach |goto 59.32,72.84 < 30 |only if walking
Follow the path |goto 58.12,74.09 < 30 |only if walking
kill Quartermaster Zolix##108186 |q 42624/4 |goto 57.44,75.32
|next "Court_Of_Farondis_WQ"
step
label quest-44737
Follow the path |goto Azsuna/0 43.59,42.16 < 20 |only if walking
Follow the path |goto 40.68,37.76 < 25 |only if walking
Follow the path |goto 36.51,37.52 < 25 |only if walking
Follow the path |goto 33.41,35.29 < 25 |only if walking
accept Helarjar Landing: Grey Shoals##44737 |goto 31.94,28.78
|tip You will accept this quest automatically.
step
click Kvaldir Weapon Rack##8386
kill Helhound##115026+, Cursed Rigger##115031+, Helarjar Raider##115025+
Disrupt the Helarjar Landing |q 44737/1 |goto 31.94,28.78
|next "Court_Of_Farondis_WQ"
step
label quest-42154
Follow the path |goto Azsuna/0 50.58,26.70 < 30 |only if walking
Follow the path |goto 50.83,20.91 < 30 |only if walking
accept Help a Whelp##42154 |goto 53.22,16.18
|tip You will accept this quest automatically.
step
click Wounded Azurewing Whelpling
Defeat the Scavenging Critters |q 42154/1 |goto Azsuna/0 53.22,16.18
|next "Court_Of_Farondis_WQ"
step
label quest-41611
Follow the path |goto Azsuna/0 44.97,46.19 < 25 |only if walking
Follow the path |goto 44.57,51.26 < 25 |only if walking
accept Huge Cursed Queenfish##41611 |goto 43.33,56.15
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41611/1 |goto 43.57,56.02
|next "Court_Of_Farondis_WQ"
step
label quest-41610
Follow the path |goto Azsuna/0 49.30,29.02 < 25 |only if walking
Follow the path |goto 51.39,30.73 < 25 |only if walking
Follow the path |goto 53.12,32.10 < 25 |only if walking
accept Huge Cursed Queenfish##41610 |goto 54.87,37.76
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41610/1 |goto 54.87,37.76
|next "Court_Of_Farondis_WQ"
step
label quest-41265
Follow the path |goto Azsuna/0 46.21,44.61 < 25 |only if walking
Follow the path |goto 47.61,43.87 < 25 |only if walking
Follow the path |goto 48.94,42.71 < 25 |only if walking
Follow the path |goto 48.98,41.29 < 25 |only if walking
accept Huge Cursed Queenfish##41265 |goto 50.98,42.05
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41265/1 |goto 63.01,26.88
|next "Court_Of_Farondis_WQ"
step
label quest-42277
accept Interlopers1!##42277 |goto Azsuna/0 31.53,46.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip The blue progress bar will fill up in your quest tracker area.
Attack the Legion in Upper Faronaar |q 42277/1 |goto 30.71,46.45
|next "Court_Of_Farondis_WQ"
step
label quest-42021
accept Investigation at Mak'rana##42021 |goto Azsuna/0 61.73,59.70
|tip You will accept this quest automatically.
stickystart "Gilblin"
stickystart "Queens_Reprisal_Sailors"
step
Kill Mak'rana enemies around this area
Slay #6# Makrura |q 42021/1 |goto 59.69,58.13
step
label "Gilblin"
Kill enemies around this area
Slay #6# Gilblin |q 42021/2 |goto 59.69,58.13
step
label "Queens_Reprisal_Sailors"
kill Queen's Reprisal Sailor##89290+
|tip They're undead enemies mixed in with the enemies around this area.
"Release" #4# Queen's Reprisal Sailors |q 42021/3 |goto 59.69,58.13
step
Enter the cave underwater |goto 62.93,61.44 < 20 |walk
kill Oublion##89350
|tip Switch to fighting Queen Kraklaa when he casts the green bubble around himself.
kill Queen Kraklaa##89287
Kill Oublion |q 42021/4 |goto 63.86,63.55
|next "Court_Of_Farondis_WQ"
step
label quest-42101
Cross the water |goto 56.88,56.51 < 30 |only if walking
accept Language of the Lost##42101 |goto 59.51,54.10
|tip You will accept this quest automatically.
stickystart "Illegible_Writings"
step
Run up the stairs |goto 59.73,54.67 < 15 |only if walking
kill The Oracle##89850
collect Oracle's Scrying Orb##136833 |q 42101/2 |goto 59.51,54.10
step
label "Illegible_Writings"
kill Fallen Priestess##91074+
click Illegible Writings
|tip They look like white rolled-up scrolls sitting on the ground and on objects around this area.
collect 10 Illegible Writings##136832 |q 42101/1 |goto 59.51,54.10
|next "Court_Of_Farondis_WQ"
step
label quest-42211
Follow the path |goto Azsuna/0 63.38,30.77 < 30 |only if walking
Follow the path |goto Azsuna/0 64.51,35.30 < 30 |only if walking
Cross the bridge |goto Azsuna/0 66.24,38.79 < 30 |only if walking
Follow the path |goto Azsuna/0 66.94,44.12 < 30 |only if walking
Follow the path |goto Azsuna/0 66.37,47.28 < 30 |only if walking
accept Leodrath's Kin##42211 |goto 65.49,49.24
|tip You will accept this quest automatically.
stickystart "Sabotage_Inactive_Constructs"
stickystart "Leodraths_Allies"
step
kill Syphonus##90505
Defeat Leodrath |q 42211/3 |goto 67.13,51.57
step
label "Sabotage_Inactive_Constructs"
click Inactive Constructs
|tip They look like purple glowing broken down robots around this area.
Sabotage #6# Inactive Constructs |q 42211/1 |goto 64.97,48.93
step
label "Leodraths_Allies"
Kill enemies around this area
Slay #10# of Leodrath's Allies |q 42211/2 |goto 66.31,49.79
|next "Court_Of_Farondis_WQ"
step
label quest-43325
accept Ley Race##43325 |goto Azsuna/0 63.12,29.91
|tip You will accept this quest automatically.
step
click Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43325/1 |goto 63.13,29.97
|next "Court_Of_Farondis_WQ"
step
label quest-42172
Enter the cave |goto Azsuna/0 48.24,25.04 < 30 |only if walking
accept Leyhollow Infestation##42172 |goto 48.45,23.78
|tip You will accept this quest automatically.
stickystart "Burrowing_Leyworms"
step
Follow the path |goto 48.41,21.90 < 30 |walk
click Heavy Stones
|tip They look like smaller flat rocks on the ground around this area.
Use the Drop Stone ability next to tunnels
|tip It appears as a button on the screen.
|tip The tunnels look like holes in the ground with yellow arrows above them.
Cover #4# Leyworm Tunnels |q 42172/1 |goto 49.59,21.29
step
label "Burrowing_Leyworms"
kill Burrowing Leyworm##106630+ |q 42172/2 |goto 49.59,21.29
step
kill Ualair##106665 |q 42172/3 |goto 51.55,20.02
|next "Court_Of_Farondis_WQ"
step
label quest-41500
Enter the cave |goto Azsuna/0 47.96,24.93 < 30
accept Leyworms##41500 |goto 50.26,21.67
|tip You will accept this quest automatically.
step
kill Burrowing Leyworm##106630+, Sorcerite##109338+
collect Leystone-Encrusted Spike##134104 |q 41500/1 |goto 50.26,21.67
|tip Mine the corpses.
|next "Court_Of_Farondis_WQ"
step
label quest-45046
Follow the path |goto Azsuna/0 55.90,60.10 < 25 |only if walking
Follow the path |goto 56.36,65.74 < 25 |only if walking
Follow the path |goto 55.23,69.08 < 25 |only if walking
Follow the path |goto 56.04,71.63 < 25 |only if walking
Follow the path |goto 57.27,72.13 < 10 |only if walking
accept Like the Wind##45046 |goto 57.14,73.13
|tip You will accept this quest automatically.
step
Goal Reached |q 45046/1 |goto 57.14,73.13
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Court_Of_Farondis_WQ"
step
label quest-41527
accept Lively Aethril##41527 |goto Azsuna/0 61.70,23.35
|tip You will accept this quest automatically.
step
click Lively Aethril##248019
collect 10 Lively Aethril##140948 |q 41527/1 |goto 61.70,23.35
|next "Court_Of_Farondis_WQ"
step
label quest-41598
Follow the path |goto Azsuna/0 43.03,43.17 < 20 |only if walking
accept Lively Cursed Queenfish##41598 |goto 40.01,41.79
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41598/1 |goto 40.01,41.79
|next "Court_Of_Farondis_WQ"
step
label quest-41599
Follow the path |goto Azsuna/0 55.38,59.90 < 25 |only if walking
Follow the path |goto 54.11,61.28 < 25 |only if walking
Follow the path |goto 53.02,61.04 < 15 |only if walking
Follow the path |goto 50.65,62.75 < 25 |only if walking
accept Lively Cursed Queenfish##41599 |goto 51.14,66.02
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41599/1 |goto 51.14,66.02
|next "Court_Of_Farondis_WQ"
step
label quest-41264
accept Lively Cursed Queenfish##41264 |goto Azsuna/0 63.01,26.88
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##131474
|tip You will find these all around the water.
More schools can be found _here_ |goto 63.91,22.58
collect 10 Lively Cursed Queenfish##134564 |q 41264/1 |goto 63.01,26.88
|next "Court_Of_Farondis_WQ"
step
label quest-41454
Follow the path |goto Azsuna/0 63.42,25.51 < 25 |only if walking
Follow the path |goto 60.28,20.57 < 25 |only if walking
Follow the path |goto 59.22,17.21 < 25 |only if walking
Drop down |goto 58.68,14.22 < 10 |only if walking
accept Luminous Leystone Outcropping##41454 |goto 58.63,13.67
|tip You will accept this quest automatically.
step
Drop down |goto 58.68,14.22 < 10 |only if walking
kill Withered Ravager##8092
click Luminous Leystone Outcropping##195122
collect 1 Luminous Leystone Ore##141226 |q 41454/1 |goto 58.63,13.67
|next "Court_Of_Farondis_WQ"
step
label quest-43327
Follow the path |goto Azsuna/0 50.19,30.38 < 30 |only if walking
Go to the beach |goto Azsuna/0 52.06,34.66 < 30 |only if walking
accept The Magic of Flight##43327 |goto Azsuna/0 54.28,36.64
|tip You will accept this quest automatically.
step
talk Archmage Kesalon##110915
click Arcane Artifact
|tip Stay inside the bubbles as they float to reach the Arcane Artifact on top of the building.
Find the Item |q 43327/1 |goto 54.06,39.03
|next "Court_Of_Farondis_WQ"
step
label quest-44786
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto Azsuna/17 53.77,40.31
accept Midterm: Rune Aptitude##44786 |goto 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto 58.11,68.23
Go through the Academy Door |goto 50.40,50.09
Arcane Rune drawn |q 44786/1 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Fire Rune drawn |q 44786/2 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Frost Rune drawn |q 44786/3 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
|next "Court_Of_Farondis_WQ"
step
label quest-42105
Follow the path |goto Azsuna/0 49.64,29.59 < 30 |only if walking
accept Mixology Mix-up##42105 |goto Azsuna/0 50.60,34.99
|tip You will accept this quest automatically.
stickystart "Intact_Murloc_Eyes"
step
Enter the cave |goto 51.82,32.98 < 50 |walk
click Egg of Gangamesh
collect Egg of Gangamesh##136839 |q 42105/2 |goto 51.69,32.29
step
label "Intact_Murloc_Eyes"
Kill enemies around this area
collect 20 Intact Murloc Eye##136838 |q 42105/1 |goto 50.60,34.99
|next "Court_Of_Farondis_WQ"
step
label quest-44048
accept Nagana Happen##44048 |goto Azsuna/0 48.17,73.06
|tip You will accept this quest automatically.
stickystart "Ocean Guardian"
step
Follow the path down |goto Azsuna/0 43.62,78.94
|tip This is an elite area you may need a group to complete this quest.
kill Hatecoil Stormspeaker##111457+, Hatecoil Guardian##111481+, Hatecoil Ravager##111438+
Slay #10# Naga |q 44048/1 |goto Azsuna/0 38.20,82.25
step
label "Ocean Guardian"
kill 3 Ocean Guardian##102066 |q 44048/2 |goto Azsuna/0 40.14,84.37
|next "Court_Of_Farondis_WQ"
step
label quest-42275
Follow the path |goto Azsuna/0 42.41,46.52 < 30 |only if walking
Follow the path |goto 40.85,48.27 < 30 |only if walking
Follow the path |goto 39.29,51.45 < 30 |only if walking
accept Not On My Watch##42275 |goto 32.03,52.59
|tip You will accept this quest automatically.
stickystart "Slay_Eredar_Apocalypse"
step
click Dimensional Anchors
|tip They look like big green spinning floating crystals inside the building around this area.
Destroy #4# Dimensional Anchors |q 42275/2 |goto 32.41,53.99
step
label "Slay_Eredar_Apocalypse"
Kill enemies around this area
Slay #10# Eredar at Soul Engine: Apocalypse |q 42275/1 |goto 32.03,52.59
|next "Court_Of_Farondis_WQ"
step
label quest-41896
Follow the path |goto Azsuna/0 40.60,12.39 < 30 |only if walking
Follow the path |goto Azsuna/0 38.93,15.22 < 30 |only if walking
accept Operation Murloc Freedom##41896 |goto 37.78,17.05
|tip You will accept this quest automatically.
step
Kill Timeworn enemies around this area.
|tip WARNING: You will be flagged for PvP by being in this area.
Clear Timeworn Strand of the Naga Invaders and Slay Players |q 41896/1 |goto 37.78,17.05
|next "Court_Of_Farondis_WQ"
step
label quest-42623
Follow the path |goto Azsuna/0 56.00,60.51 < 30 |only if walking
Cross the water |goto 57.21,62.60 < 30 |only if walking
accept Piracy Doesn't Pay##42623 |goto 60.32,69.34
|tip You will accept this quest automatically.
stickystart "Slay_Dread_Pirates"
step
click Kegs of Spicy Grog
|tip They look like wooden barrels on the ground around this area.
Smash #5# Kegs of Spicy Grog |q 42623/2 |goto 60.24,69.94
|tip Use the Throw Grog ability that appears as a button on the screen to smash the Kegs of Spicy Grog.
step
label "Slay_Dread_Pirates"
Kill enemies around this area
Slay #12# Dread Pirates |q 42623/1 |goto 60.32,69.34
|next "Court_Of_Farondis_WQ"
step
label quest-41268
Follow the path |goto Azsuna/0 49.28,29.28 < 25 |only if walking
accept Queen Queenfish##41268 |goto 52.74,31.23
|tip You will accept this quest automatically.
step
kill Queen Queenfish##104258 |q 41268/1 |goto 52.74,31.23
|tip Queen Queenfish swims up and down the river. Follow the river north to find it.
|next "Court_Of_Farondis_WQ"
step
label quest-41266
Follow the path |goto Azsuna/0 57.25,59.04 < 25 |only if walking
Follow the path |goto 60.00,58.11 < 25 |only if walking
Follow the path |goto 62.99,56.35 < 25 |only if walking
Follow the path |goto 65.09,54.84 < 25 |only if walking
accept Raft Fishing##41266 |goto 67.32,54.99
|tip You will accept this quest automatically.
step
talk Alynrus Nightcast##109735
Ask him: "_Do you happen to have an extra raft I can borrow?_"
Fish from Blue Barracude schools |cast Fishing##131474
collect 10 Blue Barracuda##134566 |q 41266/1 |goto 68.02,55.78
|next "Court_Of_Farondis_WQ"
step
label quest-42108
Follow the path up |goto Azsuna/0 45.48,42.20 < 30 |only if walking
Cross the water |goto 46.42,40.50 < 30 |only if walking
accept Rally the Nightwatchers##42108 |goto 47.27,37.56
|tip You will accept this quest automatically.
stickystart "Rally_Nightwatchers"
step
Go up the steps |goto 46.23,36.45 < 30 |only if walking
kill Fathom-Commander Zarrin##88090 |q 42108/2 |goto 45.02,36.89
step
Follow the path |goto 46.40,36.39 < 30 |only if walking
Go up the steps |goto 47.46,34.82 < 30 |only if walking
kill Valiyaka the Stormbringer##89650 |q 42108/1 |goto 47.30,34.37
step
label "Rally_Nightwatchers"
Use the Rally the Nightwatchers ability near Nar'thalas Nightwatchers
|tip It appears as a button on the screen.
|tip The Nar'thalas Nightwatchers look like friendly npc's standing or fighting enemies around this area.
Rally #10# Nightwatchers |q 42108/3 |goto 46.48,36.51
|next "Court_Of_Farondis_WQ"
step
label quest-42123
Follow the path |goto Azsuna/0 50.58,30.16 < 30 |only if walking
accept Reclaiming Llothien##42123 |goto 54.52,29.01
|tip You will accept this quest automatically.
stickystart "Llothien_Prowlers"
step
kill Pridelord Meowl##90901 |q 42123/2 |goto 56.07,29.02
|tip Inside the building.
step
label "Llothien_Prowlers"
kill 10 Llothien Prowler##90313+ |q 42123/1 |goto 54.52,29.01
|next "Court_Of_Farondis_WQ"
step
label quest-41324
Follow the path |goto Azsuna/0 50.36,30.27 < 25 |only if walking
accept Silky Prowler Fur##41324 |goto 54.53,29.01
|tip You will accept this quest automatically.
step
kill Llothien Prowler##90313+
|tip Skin the corpses.
collect 12 Silky Prowler Fur##134808 |q 41324/1
|next "Court_Of_Farondis_WQ"
step
label quest-42063
Follow the path |goto Azsuna/0 63.38,30.69 < 25 |only if walking
Follow the path |goto 63.84,34.56 < 25 |only if walking
Follow the path down |goto 65.17,37.86 < 15 |only if walking
accept Size Doesn't Matter##42063 |goto 65.63,41.01
|tip You will accept this quest automatically.
step
click Blottis##105898
Defeat Blottis |q 42063/1 |goto 65.63,41.01
|next "Court_Of_Farondis_WQ"
step
label quest-41259
Follow the path |goto Azsuna/0 43.63,42.24 < 30 |only if walking
Follow the path |goto 39.92,37.45 < 30 |only if walking
Go down toward the water |goto 32.79,30.39 < 30 |only if walking
Cross the water here |goto 32.14,28.66 < 30 |only if walking
|tip Watch out for the Sea Skorg that pats around this area.
Enter the cave |goto 30.12,23.69 < 15 |only if walking
|tip it is on the North side of this island.
accept Slab of Bacon##41259 |goto Azsuna/0 30.12,23.69
step
kill Well-Fed Lion Seal##103784
collect Slice of Bacon##133680 |q 41259/1 |goto Azsuna/0 30.59,25.50
|next "Court_Of_Farondis_WQ"
step
label quest-41551
Follow the path |goto Azsuna/0 40.21,12.55 < 30 |only if walking
Cross the rocks |goto 36.57,12.22 < 30 |only if walking
Climb the rocks |goto 34.69,12.09 < 30 |only if walking
accept Slab of Bacon##41551 |goto 33.65,11.35
|tip On top of the rock.
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect collect Thick Slab of Bacon##135511 |q 41551/1 |goto Azsuna/0 33.65,11.35
|next "Court_Of_Farondis_WQ"
step
label quest-41552
Follow the path |goto Azsuna/0 57.66,59.03 < 25 |only if walking
Follow the path |goto 60.14,62.33 < 25 |only if walking
Follow the path |goto 62.00,65.73 < 25 |only if walking
Follow the path |goto 64.97,68.86 < 25 |only if walking
accept Slab of Bacon##41552 |goto 65.05,71.49
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect 1 Thick Slab of Bacon##135511 |q 41552/1 |goto 65.05,71.49
|next "Court_Of_Farondis_WQ"
step
label quest-41435
Follow the path |goto Azsuna/0 49.35,29.17 < 30 |only if walking
Follow the path down |goto 51.26,32.66 < 30 |only if walking
Cross the water |goto 52.06,34.75 < 30 |only if walking
accept Smooth Leystone Deposits##41435 |goto 54.59,36.63
|tip You will accept this quest automatically.
step
click Smooth Leystone Deposit##195122
collect Smooth Leystone Ore##141224 |q 41435/1 |goto 54.59,36.63
|tip These veins are found all around the water.
|next "Court_Of_Farondis_WQ"
step
label quest-41582
Follow the path |goto Azsuna/0 63.80,25.70 < 30 |only if walking
accept Smooth Sunrunner Hide##41582 |goto 61.65,23.09
|tip You will accept this quest automatically.
step
kill Equine Sunrunner##91308+
|tip Loot and skin them.
collect 8 Smooth Sunrunner Hide##137628 |q 41582/1 |goto Azsuna/0 60.66,24.83
|next "Court_Of_Farondis_WQ"
step
label quest-44847
Follow the path |goto Azsuna/0 63.42,25.55 < 25 |only if walking
Follow the path |goto 61.28,21.90 < 25 |only if walking
Follow the path |goto 58.67,19.20 < 25 |only if walking
accept Straight From the Source##44847 |goto 58.32,14.33
|tip You will accept this quest automatically.
stickystart "Overseer"
step
Go around the wall |goto 58.32,14.33 < 10 |only if walking
Disable eastern Mana Pylon |q 44847/5 |goto 57.90,14.84
|tip Use the special action button that appears on your screen.
step
Go up the steps |goto 57.62,15.48 < 20 |only if walking
Go up the rocks |goto 56.82,16.80 < 20 |only if walking
Go down the steps |goto 55.67,15.75 < 20  |only if walking
Disable southern Mana Pylon |q 44847/2 |goto 56.56,15.46
|tip Use the special action button that appears on your screen.
step
Disable central Mana Pylon |q 44847/3 |goto 55.89,14.16
|tip Use the special action button that appears on your screen.
step
Follow the path |goto 55.98,12.99 < 20 |only if walking
Disable northwestern Mana Pylon |q 44847/4 |goto 56.30,11.92
|tip Use the special action button that appears on your screen.
step
label "Overseer"
kill Nightfallen Overseer##90616 |q 44847/1 |goto 55.69,14.16
|tip These can be difficult to find on busy days. Search around this area for them.
|next "Court_Of_Farondis_WQ"
step
label quest-41288
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Aethril##41288 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Aethril##124101
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Aethril##41288 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-41315
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Leystone##41315 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Leystone##41315 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-41327
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-43192
Drop down |goto Azsuna/0 46.90,71.56 < 30 |only if walking
accept Terror of the Deep##43192 |goto 43.39,66.65
|tip You will accept this quest automatically.
step
kill Levantus##108829 |q 43192/1 |goto 43.39,66.65
_TANK:_ |only if grouprole("TANK")
|tip Stay in melee range as much as possible or Levantus will use Rampaging Torrent, causing massive raid damage. |only if grouprole("TANK")
_EVERYONE:_
|tip Move into the swirling tornados to gain the Waterwalking buff to move around easier.
|tip Move around Levantus as she casts Massive Spout to avoid heavy damage.
|next "Court_Of_Farondis_WQ"
step
label quest-42018
Follow the path |goto Azsuna/0 64.39,25.57 < 30 |only if walking
Follow the path |goto 61.14,21.72 < 30 |only if walking
Follow the path |goto 58.45,18.89 < 30 |only if walking
accept Those Beyond Redemption##42018 |goto 57.46,16.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Ley Siphons
|tip They look like stands holding white crystal balls around this area.
Assault the Ley-Ruins of Zarkhenar |q 42018/1 |goto 57.46,16.50
|next "Court_Of_Farondis_WQ"
step
label quest-42019
Follow the path |goto Azsuna/0 63.38,30.69 < 30 |only if walking
Follow the path |goto 62.86,34.57 < 30 |only if walking
Follow the path |goto 60.82,37.95 < 30 |only if walking
accept Tip the Scales##42019 |goto 59.98,42.66
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Stolen Nar'thalas Relics
|tip They look like stone vases one of the ground around this area.
Disrupt the Hatecoil Warcamp |q 42019/1 |goto 60.01,42.42
|next "Court_Of_Farondis_WQ"
step
label quest-42506
Follow the path |goto Azsuna/0 43.65,42.26 < 30 |only if walking
Follow the path |goto 40.77,37.52 < 30 |only if walking
Follow the path up |goto 41.06,35.25 < 30 |only if walking
accept Tomes of Yore##42506 |goto 37.40,33.62
|tip You will accept this quest automatically.
step
click A Study of Hexes
Acquire A Study of Hexes |q 42506/1 |goto 37.40,33.62
step
click Healing with Arcana
Acquire Healing with Arcana |q 42506/2 |goto 36.70,34.56
step
click Tash'irel's Edict
Acquire Tash'irel's Edict |q 42506/3 |goto 34.40,33.88
|next "Court_Of_Farondis_WQ"
step
label quest-42159
Follow the path |goto Azsuna/0 45.45,42.28 < 30 |only if walking
accept Training with the Nightwatchers##42159 |goto 46.34,40.39
|tip You will accept this quest automatically.
step
talk Nightwatcher Merayl##106552
Tell him "Let's do battle!"
Defeat Nightwatcher Merayl |q 42159/1 |goto Azsuna/0 46.34,40.39
|next "Court_Of_Farondis_WQ"
step
label quest-42511
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept Twisted Souls##42511 |goto 38.23,34.39
|tip You will accept this quest automatically.
stickystart "Vengeful_Souls"
step
kill Lord Tash'irel##107696 |q 42511/2 |goto 34.55,33.80
step
label "Vengeful_Souls"
kill 12 Vengeful Soul##107628+ |q 42511/1 |goto 38.23,34.39
|next "Court_Of_Farondis_WQ"
step
label quest-42160
Follow the path |goto Azsuna/0 64.36,29.33 < 30 |only if walking
accept Unwelcome Visitors##42160 |goto Azsuna/0 66.41,27.97
|tip You will accept this quest automatically.
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 1 |goto 68.68,29.84
step
kill Arkethrax##106583 |q 42160/3 |goto 67.25,30.71
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 2 |goto 68.35,24.66
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 3 |goto 65.36,27.20
step
kill Blargemal##106582 |q 42160/2 |goto 68.37,26.11
step
Use the Call Scalewarden ability
|tip It appears as a button on the screen.
Destroy the Felblaze Portal |q 42160/1 |count 4 |goto 67.56,29.58
|next "Court_Of_Farondis_WQ"
step
label quest-42636
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept WANTED: Arcanist Shal'iman##42636 |goto Azsuna/0 35.04,33.99
|tip You will accept this quest automatically.
step
kill Arcanist Shal'iman##107657 |q 42636/1 |goto 35.10,34.22
|next "Court_Of_Farondis_WQ"
step
label quest-43605
Follow the path |goto Azsuna/0 43.57,42.15 < 30 |only if walking
Follow the path |goto 40.75,37.54 < 30 |only if walking
Follow the path up |goto 41.08,35.31 < 30 |only if walking
accept WANTED: Arcanist Shal'iman##43605 |goto Azsuna/0 35.04,33.99
|tip You will accept this quest automatically.
step
kill Arcanist Shal'iman##107657 |q 43605/1 |goto 35.10,34.22
|next "Court_Of_Farondis_WQ"
step
label quest-42620
Follow the path |goto Azsuna/0 64.43,25.59 < 30 |only if walking
Follow the path |goto 61.35,22.12 < 30 |only if walking
Follow the path down |goto 61.10,15.82 < 30 |only if walking
Enter the crystal passage |goto 60.08,11.43
accept WANTED: Arcavellus##42620 |goto 59.83,12.08
|tip You will accept this quest automatically.
step
kill Arcavellus##90244
Arcavellus slain. |q 42620/1 |goto 59.83,12.08
|tip Kill the Rift Wyrms to spawn Arcavellus.
|next "Court_Of_Farondis_WQ"
step
label quest-43606
Follow the path |goto Azsuna/0 63.87,25.64 < 30 |only if walking
Follow the path |goto 60.23,20.56 < 30 |only if walking
Follow the path |goto 61.12,15.89 < 30 |only if walking
accept WANTED: Arcavellus##43606 |goto 59.15,13.00
|tip You will accept this quest automatically.
step
Defeat the waves of enemies that come out of this portal
kill Arcavellus##90244 |q 43606/1 |goto Azsuna/0 59.82,12.09
|next "Court_Of_Farondis_WQ"
step
label quest-43426
Follow the path up |goto Azsuna/0 60.04,49.04 < 30 |only if walking
Continue up the path |goto Azsuna/0 58.20,48.29 < 30 |only if walking
talk Tehd Shoemaker##91097
accept WANTED: Brogozog##43426 |goto Azsuna/0 59.31,46.42
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91097
kill Brogozog##91100 |q 43426/1 |goto Azsuna/0 59.31,46.42
|next "Court_Of_Farondis_WQ"
step
label quest-43607
Follow the path up |goto Azsuna/0 60.04,49.04 < 30 |only if walking
Continue up the path |goto Azsuna/0 58.20,48.29 < 30 |only if walking
talk Tehd Shoemaker##91097
accept WANTED: Brogozog##43607 |goto Azsuna/0 59.31,46.42
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91097
kill Brogozog##91100 |q 43607/1 |goto 59.31,46.42
|next "Court_Of_Farondis_WQ"
step
label quest-43430
Follow the path |goto Azsuna/0 46.26,44.64 < 30 |only if walking
Follow the path |goto 48.98,42.71 < 30 |only if walking
Go up the steps |goto 51.61,44.71 < 30 |only if walking
accept WANTED: Captain Volo'ren##43430 |goto 53.45,44.01
|tip You will accept this quest automatically.
step
kill Captain Volo'ren##89846 |q 43430/1 |goto 53.47,44.00
|next "Court_Of_Farondis_WQ"
step
label quest-43608
Follow the path |goto Azsuna/0 46.26,44.64 < 30 |only if walking
Follow the path |goto 48.98,42.71 < 30 |only if walking
Go up the steps |goto 51.61,44.71 < 30 |only if walking
accept WANTED: Captain Volo'ren##43608 |goto 53.45,44.01
|tip You will accept this quest automatically.
step
kill Captain Volo'ren##89846 |q 43608/1 |goto 53.47,44.00
|next "Court_Of_Farondis_WQ"
step
label quest-43428
Follow the path up |goto Azsuna/0 46.35,27.55 < 30 |only if walking
accept WANTED: Doomlord Kazrok##43428 |goto Azsuna/0 43.14,28.17
|tip You will accept this quest automatically.
step
talk Tehd Shoemaker##91580
kill Doomlord Kazrok##91579 |q 43428/1 |goto 43.14,28.17
|next "Court_Of_Farondis_WQ"
step
label quest-43609
Follow the path up |goto Azsuna/0 46.71,28.26 < 30 |only if walking
accept WANTED: Doomlord Kazrok##43609 |goto 44.22,28.20
|tip You will accept this quest automatically.
step
kill Doomlord Kazrok##91579 |q 43609/1 |goto 43.22,28.23
|next "Court_Of_Farondis_WQ"
step
label quest-43427
Drop down |goto Azsuna/0 33.33,45.98 < 30 |only if walking
Cross the bridge |goto 35.43,46.09 < 30 |only if walking
Follow the path |goto 35.92,48.39 < 30 |only if walking
accept WANTED: Infernal Lord##43427 |goto 35.37,50.35
|tip You will accept this quest automatically.
step
click Cache of Infernals
Kill the enemies that attack in waves
kill Infernal Lord##90803 |q 43427/1 |goto 35.37,50.35
|next "Court_Of_Farondis_WQ"
step
label quest-43610
Drop down |goto Azsuna/0 33.30,45.94 < 30 |only if walking
Follow the path |goto 35.44,46.06 < 30 |only if walking
click cache of infernals |goto 35.37,50.39
Slay the waves of infernals
accept WANTED: Infernal Lord##43610 |goto 35.37,50.39
step
kill Infernal Lord##90803 |q 43610/1 |goto 35.37,50.39
|next "Court_Of_Farondis_WQ"
step
label quest-42631
Follow the path |goto Azsuna/0 30.75,46.35 < 30 |only if walking
Follow the path |goto 27.21,47.45 < 30 |only if walking
click Legion Portal
accept WANTED: Inquisitor Tivos##42631 |goto 26.81,49.06
|tip You will accept this quest automatically.
step
Follow the path down |goto 28.51,50.97 < 30 |only if walking
Enter the room |goto 27.96,51.42 < 10 |only if walking
kill Inquisitor Tivos##107269 |q 42631/1 |goto 28.29,51.95
|tip He's downstairs.
|next "Court_Of_Farondis_WQ"
step
label quest-43611
Follow the path |goto Azsuna/0 30.75,46.35 < 30 |only if walking
Follow the path |goto 27.21,47.45 < 30 |only if walking
click Legion Portal
accept WANTED: Inquisitor Tivos##43611 |goto 26.81,49.06
|tip You will accept this quest automatically.
step
Follow the path down |goto 28.51,50.97 < 30 |only if walking
Enter the room |goto 27.96,51.42 < 10 |only if walking
kill Inquisitor Tivos##107269 |q 43611/1 |goto 28.29,51.95
|tip He's downstairs.
|next "Court_Of_Farondis_WQ"
step
label quest-43432
Follow the path |goto Azsuna/0 42.02,11.19 < 30 |only if walking
Follow the path |goto 45.14,10.45 < 30 |only if walking
Follow the path |goto 48.60,10.77 < 30 |only if walking
Enter the cave |goto 50.04,7.82 < 30 |walk
accept WANTED: Normantis the Deposed##43432 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Normantis the Deposed##90217 |q 43432/1 |goto 49.49,8.77
|next "Court_Of_Farondis_WQ"
step
label quest-43612
Follow the path |goto Azsuna/0 42.02,11.19 < 30 |only if walking
Follow the path |goto 45.14,10.45 < 30 |only if walking
Follow the path |goto 48.60,10.77 < 30 |only if walking
Enter the cave |goto 50.04,7.82 < 30 |walk
accept WANTED: Normantis the Deposed##43612 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Normantis the Deposed##90217 |q 43612/1 |goto 49.49,8.77
|next "Court_Of_Farondis_WQ"
step
label quest-41703
Follow the path up |goto Highmountain/0 49.88,63.56 < 25 |only if walking
Follow the path |goto 51.42,62.93 < 25 |only if walking
Enter the cave |goto 52.34,58.55 < 15 |only if walking
accept DANGER: Ormagrogg##41703 |goto 52.67,58.31
|tip You will accept this quest automatically.
step
kill Ormagrogg##104524 |q 41703/1 |goto 52.67,58.31
|next "Court_Of_Farondis_WQ"
step
label quest-43613
Follow the path |goto Azsuna/0 56.87,57.19 < 30 |only if walking
Follow the path |goto 58.45,51.48 < 30 |only if walking
Follow the path |goto 61.39,50.85 < 30 |only if walking
Follow the path |goto 64.11,50.92 < 30 |only if walking
Follow the path up |goto 65.63,51.24 < 20 |only if walking
Follow the path |goto 66.86,52.05 < 15 |only if walking
accept WANTED: Syphonus##43613 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Syphonus##90505 |q 43613/1 |goto 67.16,51.64
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-43429
Follow the path |goto Azsuna/0 56.87,57.19 < 30 |only if walking
Follow the path |goto 58.45,51.48 < 30 |only if walking
Follow the path |goto 61.39,50.85 < 30 |only if walking
Follow the path |goto 64.11,50.92 < 30 |only if walking
Follow the path up |goto 65.63,51.24 < 20 |only if walking
Follow the path |goto 66.86,52.05 < 15 |only if walking
accept WANTED: Syphonus##43429 |goto Azsuna/0 49.49,8.77
|tip You will accept this quest automatically.
step
kill Syphonus##90505 |q 43429/1 |goto 67.16,51.64
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-42633
Cross the crater |goto Azsuna/0 42.04,44.41 < 30 |only if walking
Follow the path |goto 40.20,45.32 < 30 |only if walking
Follow the path |goto 36.83,50.61 < 30 |only if walking
Cross the bridge |goto 35.73,47.76 < 30 |only if walking
Follow the path |goto 36.18,44.58 < 30 |only if walking
accept WANTED: Vorthax##42633 |goto 37.27,43.23
|tip You will accept this quest automatically.
step
kill Vorthax##107113 |q 42633/1 |goto 37.20,43.31
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-43614
Cross the crater |goto Azsuna/0 42.04,44.41 < 30 |only if walking
Follow the path |goto 40.20,45.32 < 30 |only if walking
Follow the path |goto 36.83,50.61 < 30 |only if walking
Cross the bridge |goto 35.73,47.76 < 30 |only if walking
Follow the path |goto 36.18,44.58 < 30 |only if walking
accept WANTED: Vorthax##43614 |goto Azsuna/0 37.27,43.23
|tip You will accept this quest automatically.
step
kill Vorthax##107113 |q 43614/1 |goto 37.20,43.31
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-43431
accept WANTED: Warbringer Mox'na##43431 |goto Azsuna/0 47.78,53.37
|tip You will accept this quest automatically.
step
kill Warbringer Mox'na##90164 |q 43431/1 |goto 47.78,53.37
|tip He walks along this road, so you may need to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-43615
accept WANTED: Warbringer Mox'na##43431 |goto Azsuna/0 47.78,53.37
|tip You will accept this quest automatically.
step
kill Warbringer Mox'na##90164 |q 43615/1 |goto 47.78,53.37
|tip He walks along this road, so you may need to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-43802
accept Watery Graves##43802 |goto Eye of Azshara Map/0 43.14,50.75
|tip You will accept this quest automatically.
stickystart "Droplet"
step
kill 3 Restless Tides##111644 |q 43802/1 |goto 43.14,50.75
|tip These are located randomly along the shore.
step
label "Droplet"
kill 20 Saltsea Droplet##111641 |q 43802/2 |goto 43.14,50.75
|tip These are located randomly along the shore.
|next "Court_Of_Farondis_WQ"
step
label quest-42148
Follow the path |goto Azsuna/0 42.18,10.77 < 30 |only if walking
accept The Wine's Gone Bad##42148 |goto 43.33,8.96
|tip You will accept this quest automatically.
step
click Vinu##106417
Defeat Vinu |q 42148/1 |goto Azsuna/0 43.42,8.50
|next "Court_Of_Farondis_WQ"
step
label quest-42112
Follow the path |goto Azsuna/0 50.56,26.68 < 30 |only if walking
Follow the path |goto 50.91,21.62 < 30 |only if walking
Follow the path |goto 51.59,16.24 < 30 |only if walking
Cross the bridge |goto 49.40,14.98 < 30 |only if walking
accept The Withered Return##42112 |goto 47.31,15.67
|tip You will accept this quest automatically.
stickystart "Withered_Mana-Ragers"
step
click Stolen Ley Crystals
|tip They look like purple crystals on the ground around this area.
collect Stolen Ley Crystal##136850 |n
clicknpc Mana-Starved Whelpling##106297+
|tip They look like small blue dragons laying on the ground around this area.
Revive #8# Mana-Starved Whelplings |q 42112/1 |goto 47.31,15.67
step
label "Withered_Mana-Ragers"
kill 10 Withered Mana-Rager##90380 |q 42112/2 |goto 47.31,15.67
|next "Court_Of_Farondis_WQ"
step
label quest-42274
Follow the path |goto Azsuna/0 30.96,45.28 < 30 |only if walking
accept Won't Anyone Think of the Whelps?##42274 |goto 28.96,45.38
|tip You will accept this quest automatically.
stickystart "Free_Azure_Whelplings"
step
Enter the cave |goto 28.20,44.79 < 10 |walk
Follow the path |goto 27.33,43.24 < 20 |walk
Follow the path |goto 27.23,41.85 < 20 |walk
Follow the path up |goto 26.33,43.21 < 10 |walk
kill Legion Jailer##107216 |q 42274/2 |goto 28.59,45.39
step
label "Free_Azure_Whelplings"
click Legion Cages
|tip They look like pointed gray metal cages around this area.
Free #10# Azure Whelplings |q 42274/1 |goto 29.07,45.03
|next "Court_Of_Farondis_WQ"
step
label quest-41287
Follow the path up |goto Azsuna/0 45.44,42.33 < 20 |only if walking
accept Work Order: Aethril##41287 |goto 46.91,41.43
|tip You will accept this quest automatically.
step
collect 40 Aethril##124101
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Aethril##41287 |goto 46.90,41.44
|next "Court_Of_Farondis_WQ"
step
label quest-41651
Follow the path up |goto Azsuna/0 45.44,42.33 < 20 |only if walking
accept Work Order: Azsunite Pendant##41651 |goto 46.91,41.43
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Azsunite Pendant>_
collect 1 Azsunite Pendant##130228
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Veridis Fallon##107376
turnin Work Order: Azsunite Pendant##41651 |goto 46.90,41.44
|next "Court_Of_Farondis_WQ"
step
label quest-41639
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Battlebound Spaulders##41639 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Spaulders>_
collect 1 Battlebound Spaulders##194745
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Veridis Fallon##107376
turnin Work Order: Battlebound Spaulders##41639 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41675
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Blink-Trigger Headgun##41675 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Blink-Trigger Headgun>_
collect 1 Blink-Trigger Headgun##132500
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Veridis Fallon##107376
turnin Work Order: Blink-Trigger Headgun##41675 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41267
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Cursed Queenfish##41267 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Cursed Queenfish##124107
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Cursed Queenfish##41267 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41657
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Draughts of Raw Magic##41657 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Draught of Raw Magic>_
collect 5 Draught of Raw Magic##127837
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Veridis Fallon##107376
turnin Work Order: Draughts of Raw Magic##41657 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41311
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Leystone##41311 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Leystone##41311 |goto 46.99,40.26
|next "Court_Of_Farondis_WQ"
step
label quest-41633
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Leystone Greaves##41633 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Greaves>_
collect 1 Leystone Greaves##123895
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Veridis Fallon##107376
turnin Work Order: Leystone Greaves##41633 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41645
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Silkweave Epaulets##41645 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Epaulets>_
collect 1 Silkweave Epaulets##126992
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Veridis Fallon##107376
turnin Work Order: Silkweave Epaulets##41645 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-41326
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Stormscales##41326 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Work Order: Stormscales##41326 |goto 46.99,40.26
|next "Court_Of_Farondis_WQ"
step
label quest-41669
Follow the path up |goto Azsuna/0 45.47,42.25 < 30 |only if walking
accept Work Order: Word of Critical Strike##41669 |goto 46.99,40.26
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Critical Strike>_
collect 1 Enchant Ring - Word of Critical Strike##128537
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Veridis Fallon##107376
turnin Work Order: Word of Critical Strike##41669 |goto Azsuna/0 46.91,41.41
|next "Court_Of_Farondis_WQ"
step
label quest-44788
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto 53.77,40.31
accept Work Study: Bestiaries of Azsuna##44788 |goto Azsuna/17 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto 58.11,68.23
Go through the Academy Door |goto 50.40,50.09
click Incredible Monsters and Where to Locate Them##6478
collect Incredible Monsters and Where to Locate ##142238 |q 44788/1 |goto 26.23,46.91
step
click Sythorne's Podium##0 |q 44788/2 |goto 30.21,44.86
kill Hydra Drawing##115460 |q 44788/3 |goto 32.84,42.63
step
click Handbook of Feathery Friends##6478
collect Handbook of Feathery Friends##142239 |q 44788/4 |goto 26.23,46.91
step
click Sythorne's Podium##0 |q 44788/5 |goto 30.21,44.86
kill Harpy Drawing##115461 |q 44788/6 |goto 32.84,42.63
step
click Draconic Compendium, Volume IV##6478
collect Draconic Compendium, Volume IV##142240 |q 44788/7 |goto 27.14,45.94
step
click Sythorne's Podium##0 |q 44788/8 |goto 30.21,44.86
kill Squallhunter Drawing##115462 |q 44788/9 |goto 32.84,42.63
|next "Court_Of_Farondis_WQ"
step
label quest-44033
accept Aw, Nuts!##44033 |goto Val'sharah/0 54.52,72.91
|tip You will accept this quest automatically.
stickystart "Crack_Nuts"
step
clicknpc Invasive Squirrel##112289+
|tip They look like small brown squirrels on the ground and sitting on objects around this area.
Capture #15# Squirrels |q 44033/1 |goto 54.40,72.24
step
label "Crack_Nuts"
click Acorns
|tip They look like small brown objects on the ground around this area.
Crack #15# Nuts |q 44033/2 |goto 54.59,72.92
|next "Court_Of_Farondis_WQ"
step
label quest-45070
Follow the path |goto Val'sharah/0 55.06,55.23 < 25 |only if walking
accept Barrels o' Fun##45070 |goto 52.09,56.68
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45070/1 |goto 52.30,56.59
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-42080
accept Bastion of Bradensbrook##42080 |goto Val'sharah/0 38.36,61.76
|tip You will accept this quest automatically.
stickystart "Black_Rook_Enemies"
step
Use the Marking Taget ability on Black Rook Falcons
|tip It appears as a button on the screen.
|tip They look like bone vultures flying around this area and perched on objects.
Mark #6# Black Rook Falcons |q 42080/1 |goto 38.36,61.76
step
label "Black_Rook_Enemies"
Kill enemies around this area
Slay #8# Black Rook Enemies |q 42080/2 |goto 38.36,61.76
step
clicknpc Bradensbrook Ewe##106009+
|tip They look like sheep all around this area.
|tip When you click them, they will start running automatically and you cannot stop them.
|tip You can control which way they run, though.
|tip Return to this location to return the Bradensbrook Ewes.
Return #4# Bradensbrook Ewes |q 42080/3 |goto 41.44,59.33
|next "Court_Of_Farondis_WQ"
step
label quest-42023
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
Follow the path |goto 42.86,50.61 < 30 |only if walking
accept Black Rook Rumble##42023 |goto Val'sharah/0 42.64,48.29
|tip You will accept this quest automatically.
step
Kill the enemies that attack
Kill Enemies in the Black Rook Hold Arena |q 42023/1 |goto 42.64,48.29
|next "Court_Of_Farondis_WQ"
step
label quest-41955
Follow the path |goto Val'sharah/0 52.59,75.22 < 30 |only if walking
Follow the path |goto 49.74,78.66 < 30 |only if walking
Follow the path |goto 46.86,76.89 < 30 |only if walking
accept Bloodline of Stone##41955 |goto 45.11,74.15
|tip You will accept this quest automatically.
stickystart "Break_Harpy_Eggs"
stickystart "Burn_Harpy_Nests"
step
Enter the cave |goto 45.54,77.13 < 10 |walk
kill Magula##91130 |q 41955/1 |goto 45.80,77.88
step
label "Break_Harpy_Eggs"
Break #10# Harpy Eggs |q 41955/3 |goto 46.34,74.10
|tip They look like shaking white eggs on the ground around this area.
|tip Run over them to destroy them.
step
label "Burn_Harpy_Nests"
click Dry Harpy Nests
|tip They look like big brown nests hanging from tress around this area.
Burn #5# Harpy Nests |q 41955/2 |goto 45.36,73.91
|next "Court_Of_Farondis_WQ"
step
label quest-42075
Follow the path |goto Val'sharah/0 68.85,53.37 < 30 |only if walking
Drop down |goto 66.69,57.22 < 30 |only if walking
accept Botanical Backlash##42075 |goto Val'sharah/0 64.42,57.94
|tip You will accept this quest automatically.
stickystart "Darkgrove_Cultivators"
stickystart "Corrupted_Plantlife"
step
Enter the cave |goto 66.05,56.33 < 30 |walk
kill Apostle of Lyrathos##105933 |q 42075/1 |goto 67.22,58.20
step
label "Darkgrove_Cultivators"
kill 5 Darkgrove Cultivator##105932 |q 42075/2 |goto 64.39,57.89
step
label "Corrupted_Plantlife"
Kill plant enemies around this area
Slay #10# Corrupted Plantlife |q 42075/3 |goto 64.42,57.94
|next "Court_Of_Farondis_WQ"
step
label quest-41484
Follow the path |goto Val'sharah/0 55.64,56.23 < 30 |only if walking
Follow the path |goto 54.96,53.33 < 30 |only if walking
Follow the path |goto 53.27,50.07 < 30 |only if walking
accept Brimstone Destroyer##41484 |goto Val'sharah/0 53.37,45.46
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41484/1 |goto 53.37,45.46
|next "Court_Of_Farondis_WQ"
step
label quest-41486
Go up the rocks |goto Val'sharah/0 39.87,67.34 < 15
accept Brimstone Destroyer##41486 |goto 38.19,68.86
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41486/1 |goto 38.19,68.86
|next "Court_Of_Farondis_WQ"
step
label quest-41487
Follow the path |goto Val'sharah/0 43.70,59.07 < 25 |only if walking
Follow the path |goto 46.95,55.35 < 25 |only if walking
accept Brimstone Destroyer##41487 |goto 48.91,56.13
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
|tip It wanders a small area around the rocks.
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41487/1 |goto 48.91,56.13
|next "Court_Of_Farondis_WQ"
step
label quest-41273
Follow the path |goto Val'sharah/0 38.85,57.91 < 25 |only if walking
Follow the path |goto 37.75,54.80 < 25 |only if walking
Follow the path |goto 34.62,52.19 < 25 |only if walking
Follow the path |goto 31.46,49.53 < 25 |only if walking
accept Buoy Fishing##41273 |goto 28.66,49.46
|tip You will accept this quest automatically.
step
talk Luraura Nightcast##109760
Tell her: "_I'm ready. Give me the buoys._"
click Enormous Sea Crab##109752
|tip They swim below the boat on the ocean floor.
Use the Satchel of Buoys on #15# Enormous Sea Crabs |use Satchel of Buoys##139044 |q 41273/1 |goto 28.66,49.46
|next "Court_Of_Farondis_WQ"
step
label quest-42174
Follow the path |goto Val'sharah/0 68.51,48.48 < 30 |only if walking
Follow the path |goto 72.10,44.81 < 30 |only if walking
accept Champions of Elune##42174 |goto 73.84,38.72
|tip You will accept this quest automatically.
step
talk Leafbeard the Storied##106638
Speak with Leafbeard the Storied |q 42174/1 |goto 73.63,39.46
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Defeat the Demons |q 42174/2 |goto Azshara L/0 25.60,48.36
step
kill 2 Infernal Siegebreaker##97808 |q 42174/3 |goto 29.48,52.47
step
kill 1 Pit Lord##98757 |q 42174/4 |goto 29.48,52.47
|next "Court_Of_Farondis_WQ"
step
label quest-43738
Follow the path |goto Val'sharah/0 41.53,59.96 < 30 |only if walking
Follow the path |goto 39.48,59.68 < 30 |only if walking
Follow the path |goto 37.49,59.99 < 30 |only if walking
Drop down |goto 34.97,61.34 < 30 |only if walking
accept Coastal Gloom##43738 |goto Val'sharah/0 33.58,60.31
|tip You will accept this quest automatically.
stickystart "Destroy_Gloomscale_Eggs"
step
kill 8 Lytheron Gloomscale##111383 |q 43738/1 |goto 33.58,60.31
step
label "Destroy_Gloomscale_Eggs"
kill Gloomscale Egg##111384+
|tip They look like big white eggs sitting on the ground around this area.
Destroy #24# Gloomscale Eggs |q 43738/2 |goto 33.58,60.31
|next "Court_Of_Farondis_WQ"
step
label quest-43346
Follow the path |goto 68.15,48.48 < 30 |only if walking
Cross the bridge |goto 66.69,45.83 < 30 |only if walking
Follow the path |goto 65.01,43.39 < 30 |only if walking
accept DANGER: Ealdis##43346 |goto Val'sharah/0 63.31,42.35
|tip You will accept this quest automatically.
step
kill Ealdis##110367 |q 43346/1 |goto Val'sharah/0 62.43,43.03
|next "Court_Of_Farondis_WQ"
step
label quest-43345
accept DANGER: Harbinger of Screams##43345 |goto Val'sharah/0 70.45,52.36
|tip You will accept this quest automatically.
step
kill Harbinger of Screams##110361 |q 43345/1 |goto 70.45,52.36
|next "Court_Of_Farondis_WQ"
step
label quest-42870
Follow the path |goto Val'sharah/0 53.52,73.94 < 25 |only if walking
Follow the path |goto 51.51,75.65 < 25 |only if walking
Follow the path |goto 49.78,78.81 < 25 |only if walking
Follow the path |goto 48.80,82.93 < 25 |only if walking
Follow the path |goto 46.98,83.36 < 25 |only if walking
accept DANGER: Kathaw the Savage##42870 |goto 45.38,83.79
|tip You will accept this quest automatically.
step
kill Kathaw the Savage##109125 |q 42870/1 |goto 45.38,83.79
|next "Court_Of_Farondis_WQ"
step
label quest-43152
Follow the path |goto Val'sharah/0 41.53,59.96 < 30 |only if walking
Follow the path |goto 39.48,59.68 < 30 |only if walking
Follow the path |goto 37.49,59.99 < 30 |only if walking
Drop down |goto 34.97,61.34 < 30 |only if walking
accept DANGER: Lytheron##43152 |goto Val'sharah/0 34.38,61.63
|tip You will accept this quest automatically.
step
kill Lytheron##109692 |q 43152/1 |goto Val'sharah/0 34.38,61.63
|tip This is a group elite enemy.
|next "Court_Of_Farondis_WQ"
step
label quest-42927
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept DANGER: Malisandra##42927 |goto Val'sharah/0 42.85,76.78
|tip You will accept this quest automatically.
step
kill Malisandra##109281 |q 42927/1 |goto Val'sharah/0 42.28,76.33
|tip This is an elite enemy, you may need a group to defeat it.
|next "Court_Of_Farondis_WQ"
step
label quest-43333
Follow the path |goto Val'sharah/0 41.68,58.36 < 20 |only if walking
Follow the path up |goto 38.59,57.50 < 20 |only if walking
Follow the path down |goto 37.52,54.72 < 20 |only if walking
Cross the water |goto 34.55,52.11 < 25 |only if walking
Follow the path |goto 33.51,51.15 < 25 |only if walking
accept Danger: Nylaathria the Forgotten##43333 |goto 32.46,48.16
|tip You will accept this quest automatically.
step
kill Nylaathria the Forgotten##109990 |q 43333/1 |goto 32.46,48.16
|tip This is an elite enemy, you may need a group to defeat it.
|next "Court_Of_Farondis_WQ"
step
label quest-43347
Follow the path |goto Val'sharah/0 68.82,53.06 < 30 |only if walking
accept DANGER: Rabxach##43347 |goto Val'sharah/0 69.93,57.54
|tip You will accept this quest automatically.
step
kill Rabxach##110342 |q 43347/1 |goto 69.93,57.54
|next "Court_Of_Farondis_WQ"
step
label quest-41700
Follow the path |goto Val'sharah/0 55.73,56.69 < 30 |only if walking
Follow the path |goto 54.81,51.75 < 30 |only if walking
Follow the path |goto 53.29,50.13 < 30 |only if walking
Follow the path |goto 52.45,46.27 < 30 |only if walking
Follow the path up |goto 52.09,43.69 < 30 |only if walking
accept DANGER: Shalas'aman##41700 |goto Val'sharah/0 52.05,39.58
|tip You will accept this quest automatically.
step
kill Shalas'aman##104523 |q 41700/1 |goto 52.05,39.58
|next "Court_Of_Farondis_WQ"
step
label quest-43101
Follow the shore |goto Val'sharah/0 24.17,66.62 < 30 |only if walking
accept DANGER: Withdoctor Grgl-Brgl##43101 |goto 23.33,70.98
|tip You will accept this quest automatically.
step
Enter the cave |goto 24.09,68.59 < 30 |walk
kill Withdoctor Grgl-Brgl##109648 |q 43101/1 |goto 23.33,70.98
|next "Court_Of_Farondis_WQ"
step
label quest-41995
Follow the path |goto Val'sharah/0 57.17,71.21 < 30 |only if walking
Follow the path |goto 58.85,75.75 < 30 |only if walking
accept Dark Corruption##41995 |goto Val'sharah/0 62.44,71.91
|tip You will accept this quest automatically.
stickystart "Slay_Darkfiend_Satyr"
stickystart "Nightmare_Imps"
step
clicknpc Moonclaw Druid##95617+
|tip They look like druids in cat form around this area.
Free #3# Moonclaw Druids |q 41995/3 |goto 62.44,71.91
step
clicknpc Nightmare Totem##97800+
|tip They look like tall white totem poles with red scrathes in them around this area.
Destroy #3# Nightmare Totems |q 41995/4 |goto 62.44,71.91
step
label "Slay_Darkfiend_Satyr"
Kill Darkfiend enemies around this area
Slay #6# Darkfiend Satyr |q 41995/1 |goto 62.44,71.91
step
label "Nightmare_Imps"
kill 9 Nightmare Imp##95599 |q 41995/2 |goto 62.44,71.91
|next "Court_Of_Farondis_WQ"
step
label quest-41860
Follow the path |goto Val'sharah/0 58.69,59.38 < 30 |only if walking
Follow the path |goto 59.89,61.39 < 30 |only if walking
Cross the bridge |goto 61.47,61.62 < 30 |only if walking
accept Dealing with Satyrs##41860 |goto Val'sharah/0 63.70,60.77
|tip You will accept this quest automatically.
step
talk Xorvasc##104970
Tell him: "_Let's do battle!_"
Defeat Xorvasc |q 41860/1 |goto 63.70,60.77
|next "Court_Of_Farondis_WQ"
step
label quest-41546
Follow the path |goto Val'sharah/0 55.03,74.55 < 20 |only if walking
Follow the path |goto 57.68,76.83 < 25 |only if walking
Follow the path |goto 56.62,82.86 < 25 |only if walking
Follow the path |goto 56.97,86.43 < 15 |only if walking
Follow the path |goto 56.06,88.29 < 15 |only if walking
accept Dreamleaf Cluster##41546 |goto 53.76,87.32
|tip You will accept this quest automatically.
step
click Dreamleaf Cluster##0
Dreamleaf Cluster gathered |q 41546/1 |goto 53.76,87.32
|next "Court_Of_Farondis_WQ"
step
label quest-41291
Follow the path |goto Val'sharah/0 53.94,73.21 < 25 |only if walking
Follow the path |goto 52.65,75.23 < 25 |only if walking
Follow the path |goto 49.78,78.79 < 25 |only if walking
accept Dreamleaf Cluster##41291 |goto 47.63,77.04
|tip You will accept this quest automatically.
step
click Dreamleaf Cluster##0
|tip It's on top of the overhang.
Dreamleaf Cluster gathered |q 41291/1 |goto 47.63,77.04
|next "Court_Of_Farondis_WQ"
step
label quest-41295
Follow the path |goto Val'sharah/0 55.00,74.49 < 25 |only if walking
Follow the path |goto 57.69,76.14 < 25 |only if walking
Follow the path |goto 56.34,81.14 < 25 |only if walking
Follow the path |goto 57.82,86.75 < 25 |only if walking
accept Dreamleaf-Covered Ancient##41295 |goto 61.77,82.78
|tip You will accept this quest automatically.
step
click Dreamleaf Bloom##0
|tip The blooms are located on the Ancient walking around.
|tip The Owlbeasts will attack and kill the ancient, so you may have to wait for it to respawn.
|tip There is a bloom inside the Ancient's mouth. Zoom in, it can be difficult to click.
Dreamleaf Bloom gathered |q 41295/1 |goto 61.77,82.78
|next "Court_Of_Farondis_WQ"
step
label quest-43756
Follow the path |goto Val'sharah/0 54.98,53.49 < 30 |only if walking
Follow the path |goto 53.27,50.01 < 30 |only if walking
Follow the path |goto 52.39,46.18 < 30 |only if walking
Follow the path |goto 52.04,43.83 < 30 |only if walking
Follow the path |goto 48.79,40.37 < 30 |only if walking
Follow the path down |goto 47.02,40.47 < 30 |only if walking
accept Enigmatic##43756 |goto Val'sharah/0 45.52,41.61
|tip You will accept this quest automatically.
step
click Puzzle Box
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43756/1 |goto 45.52,41.61
|next "Court_Of_Farondis_WQ"
step
label quest-41439
accept Exquisite Leystone Deposits##41439 |goto 67.40,52.09
|tip You will accept this quest automatically.
step
click Exquisite Leystone Deposit##195122
collect 10 Exquisite Leystone Ore##141233 |q 41439/1 |goto 67.40,52.09
|next "Court_Of_Farondis_WQ"
step
label quest-41567
Follow the path |goto Val'sharah/0 55.75,56.76 < 20 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.25 < 25 |only if walking
Follow the path |goto 52.43,46.25 < 20 |only if walking
Follow the path |goto 50.13,42.27 < 25 |only if walking
Follow the path down |goto 47.03,40.46 < 20 |only if walking
accept Felhide##41567 |goto 46.38,42.50
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41567/1 |goto 46.36,42.42
|next "Court_Of_Farondis_WQ"
step
label quest-41566
accept Felhide##41566 |goto Val'sharah/0 29.94,71.35
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41566/1 |goto 29.94,71.35
|next "Court_Of_Farondis_WQ"
step
label quest-41516
accept Felwort##41516 |goto Val'sharah/0 30.00,71.16
|tip You will accept this quest automatically.
step
click Felwort##195114
collect Felwort |q 41516/1 |goto Val'sharah/0 30.00,71.16
|next "Court_Of_Farondis_WQ"
step
label quest-41518
Follow the path |goto Val'sharah/0 41.63,59.92 < 15 |only if walking
Follow the path |goto 39.63,61.15 < 15 |only if walking
accept Felwort##41518 |goto 37.93,62.23
|tip You will accept this quest automatically.
step
click Felwort##195114
collect Felwort |q 41518/1 |goto 37.93,62.23
|next "Court_Of_Farondis_WQ"
step
label quest-41517
Follow the path |goto Val'sharah/0 68.17,48.54 < 25 |only if walking
Follow the path |goto 65.18,43.62 < 25 |only if walking
Follow the path |goto 63.29,42.27 < 25 |only if walking
Follow the path |goto 61.68,43.65 < 25 |only if walking
Follow the path |goto 60.19,40.97 < 25 |only if walking
accept Felwort##41517 |goto Val'sharah/0 58.81,39.45
|tip You will accept this quest automatically.
step
click Felwort##195114
Felwort gathered |q 41517/1 |goto 58.81,39.45
|next "Court_Of_Farondis_WQ"
step
label quest-42087
Follow the path up |goto Val'sharah/0 70.60,51.49 < 30 |only if walking
accept Green Horror##42087 |goto Val'sharah/0 72.93,51.35
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Run over the red patches on the ground after you kill enemies.
Repel the Nightmare |q 42087/1 |goto 72.93,51.35
|next "Court_Of_Farondis_WQ"
step
label quest-43332
Follow the path |goto Val'sharah/0 54.98,74.44 < 30 |only if walking
Follow the path |goto 60.28,74.21 < 30 |only if walking
Follow the path up |goto 64.51,73.92 < 30 |only if walking
Follow the path |goto 66.80,75.41 < 30 |only if walking
accept Grell in a Handbasket##43332 |goto Val'sharah/0 67.46,73.52
|tip You will accept this quest automatically.
stickystart "Wildeyed_Undergrells"
stickystart "Destroy_Moist_Grizzleberries"
step
kill Enderkind##109073 |q 43332/3 |goto 68.11,71.56
step
label "Wildeyed_Undergrells"
kill 10 Wildeyed Undergrell##109045 |q 43332/1 |goto 67.46,73.52
step
label "Destroy_Moist_Grizzleberries"
clicknpc Moist Grizzleberries##219058+
|tip They look like round red balls on the ground around this area.
Destroy #8# Moist Grizzleberries |q 43332/2 |goto 67.46,73.52
|next "Court_Of_Farondis_WQ"
step
label quest-42124
Follow the path |goto Val'sharah/0 53.34,74.24 < 30 |only if walking
accept Hags and Hexes##42124 |goto Val'sharah/0 50.16,76.08
|tip You will accept this quest automatically.
stickystart "Cragtalon_Harpies"
stickystart "Save_Sylvan_Owls"
step
kill Cragtalon Witchmother##106384 |q 42124/3 |goto 50.31,73.77
step
label "Cragtalon_Harpies"
Kill Cragtalon enemies around this area
Slay #7# Cragtalon Harpies |q 42124/2 |goto 50.16,76.08
step
label "Save_Sylvan_Owls"
clicknpc Sylvan Owl##106372+
|tip They look like birds flying low to the ground around this area.
Save #5# Sylvan Owls |q 42124/1 |goto 49.99,75.98
|next "Court_Of_Farondis_WQ"
step
label quest-42028
Follow the path |goto Val'sharah/0 56.07,58.93 < 30 |only if walking
Follow the path |goto 57.31,64.02 < 30 |only if walking
accept Into the Nightmare##42028 |goto Val'sharah/0 59.71,65.14
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Reaching 10 stacks of the Creeping Nightmare debuff will cause a Shadowy Nightmare to spawn.
|tip Kill it to return to the normal realm.
Cleanse the Nightmare |q 42028/1 |goto 59.71,65.14
|next "Court_Of_Farondis_WQ"
step
label quest-42150
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 44.04,84.26 < 30 |only if walking
Follow the path down |goto 44.16,87.52 < 30 |only if walking
accept Kal'delar Naga Incursion##42150 |goto Val'sharah/0 39.35,85.86
|tip You will accept this quest automatically.
stickystart "Murkwater_Naga"
stickystart "Burn_Murkwater_Standards"
step
kill Murkwater Oracle##102622 |q 42150/3 |goto 39.35,85.86
step
label "Murkwater_Naga"
Kill Murkwater enemies around this area
Slay #12# Murkwater Naga |q 42150/1 |goto 39.35,85.86
step
label "Burn_Murkwater_Standards"
click Murkwater Standards
|tip They look like blue flags hanging from poles around this area.
Burn #6# Murkwater Standards |q 42150/2 |goto 39.35,85.86
|next "Court_Of_Farondis_WQ"
step
label quest-43753
Follow the path |goto Val'sharah/0 56.65,70.60 < 30 |only if walking
Follow the path |goto 57.73,76.08 < 30 |only if walking
Follow the path |goto 56.93,84.20 < 30 |only if walking
accept Ley Race##43753 |goto Val'sharah/0 57.99,89.31
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43753/1 |goto 57.99,89.31
|next "Court_Of_Farondis_WQ"
step
label quest-41504
accept Leystone Basilisks##41504 |goto Val'sharah/0 57.05,58.55
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Kill these loot them completly and then mine them.
|tip Be careful, only one person can mine each mob, mine them quickly after looting them.
collect 40 Leystone-Encrusted Spike##134104 |q 41504/1 |goto Val'sharah/0 59.92,60.66
|next "Court_Of_Farondis_WQ"
step
label quest-45047
Follow the path |goto Val'sharah/0 43.12,59.03 < 20 |only if walking
Follow the path |goto 47.92,53.89 < 30 |only if walking
accept Like the Wind##45047
|tip You will accept this quest automatically.
step
Goal Reached |q 45047/1 |goto 40.61,62.29
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|tip You must go under the closest passage in the bridge, then the farthest on the opposite side.
|tip The goal is through the middle passage, on the far side of the yellow wall.
|next "Court_Of_Farondis_WQ"
step
label quest-41600
Follow the path |goto Val'sharah/0 68.43,48.60 < 25 |only if walking
Follow the path |goto 73.16,42.70 < 25 |only if walking
accept Lively Mossgill Perch##41600 |goto 73.18,35.79
|tip You will accept this quest automatically.
step
Fish from the Lively Mossgill Perch schools |cast Fishing##131474
collect 10 Lively Mossgill Perch##134567 |q 41600/1 |goto 73.18,35.79
|next "Court_Of_Farondis_WQ"
step
label quest-44011
Follow the path down |goto Val'sharah/0 56.71,62.57 < 30 |only if walking
Follow the path up |goto 53.91,64.33 < 30 |only if walking
Cross the water |goto 51.91,68.85 < 30 |only if walking
Climb the root |goto 51.30,68.55 < 6 |only if walking
accept Lost Wisp##44011 |goto 48.74,64.61
|tip You will accept this quest automatically.
step
Use the Grow Tree ability
|tip It's on your action bar.
|tip Use the ability next to the spots of bundled roots on the ground around this area.
|tip Avoid the fish in the water with the blue circles around them. They will eat the wisp.
Heal the Twisted Glade #10# Times |q 44011/1 |goto 48.74,64.61
|next "Court_Of_Farondis_WQ"
step
label quest-41965
Follow the path |goto Val'sharah/0 52.74,75.45 < 30 |only if walking
Follow the path |goto 54.39,78.61 < 30 |only if walking
accept Lunarwing Liberation##41965 |goto Val'sharah/0 54.01,82.57
|tip You will accept this quest automatically.
stickystart "Slay_Thistleleaf_Sprites_2"
stickystart "Save_Lunarwings"
step
kill Thistleleaf Thorndancer##93444 |q 41965/3 |goto 55.08,81.50
|tip There are more around this area.
step
label "Slay_Thistleleaf_Sprites_2"
Kill Thistleleaf enemies around this area
Slay #10# Thistleleaf Sprites |q 41965/2 |goto 54.04,82.55
step
label "Save_Lunarwings"
kill Thistleleaf Ruffian##91354+
|tip They fly around this area on some of the Lunarwings.
click Trapped Lunarwing##93489+
|tip They look like green flying creatures trapped on the ground by vines around this area.
Save #8# Lunarwings |q 41965/1 |goto 53.96,83.05
|next "Court_Of_Farondis_WQ"
step
label quest-43755
Follow the path |goto Val'sharah/0 44.51,58.72 < 30 |only if walking
Climb over the rocks |goto 45.77,53.25 < 30 |only if walking
accept The Magic of Flight##43755 |goto Val'sharah/0 46.26,51.16
|tip You will accept this quest automatically.
step
talk Archmage Kesalon##110915
click Arcane Artifact
|tip Stay inside the bubbles as they float to reach the Arcane Artifact under the bridge.
Find the Item |q 43755/1 |goto 46.31,50.30
|next "Court_Of_Farondis_WQ"
step
label quest-41861
Follow the path |goto Val'sharah/0 68.36,48.89 < 25 |only if walking
Follow the path |goto 65.62,44.11 < 25 |only if walking
accept Meet The Maw##41861 |goto 66.03,39.14
|tip You will accept this quest automatically.
step
click The Maw##104992
Defeat The Maw |q 41861/1 |goto 66.03,39.14
|next "Court_Of_Farondis_WQ"
step
label quest-41334
Follow the path |goto Val'sharah/0 68.38,48.79 < 25 |only if walking
Follow the path |goto 70.04,47.01 < 25 |only if walking
Follow the path |goto 70.37,41.41 < 25 |only if walking
Follow the path |goto 71.43,38.63 < 25 |only if walking
Follow the path |goto 70.77,33.82 < 25 |only if walking
accept Musky Bear Hide##41334 |goto 69.50,34.49
|tip You will accept this quest automatically.
step
kill Vale Bear##106467+
|tip Skin the corpses.
|tip If you click the Needlers to knock them off the bears, you will be able to kill the bear they are riding.
collect 12 Musky Bear Hide##134811 |q 41334/1 |goto 68.36,33.62
|next "Court_Of_Farondis_WQ"
step
label quest-41862
Follow the path |goto Val'sharah/0 55.71,71.63 < 30 |only if walking
Follow the path |goto 56.51,70.18 < 30 |only if walking
accept Only Pets Can Prevent Forest Fires##41862 |goto Val'sharah/0 56.30,65.30
|tip You will accept this quest automatically.
step
talk Fragment of Fire##105093
Tell him "Let's do battle!"
Defeat Fragment of Fire |q 41862/1 |goto Val'sharah/0 56.30,65.30
|next "Court_Of_Farondis_WQ"
step
label quest-42145
Follow the path |goto Val'sharah/0 68.70,47.92 < 30 |only if walking
Follow the path |goto 70.04,46.89 < 30 |only if walking
Follow the path |goto 70.37,41.45 < 30 |only if walking
Follow the path up |goto 71.30,36.43 < 30 |only if walking
Follow the path |goto 70.69,33.90 < 30 |only if walking
accept Out of the Woodwork##42145 |goto Val'sharah/0 67.67,32.50
|tip You will accept this quest automatically.
step
clicknpc Bloodspike Needler##106419+
|tip They ride on the backs of bears around this area.
kill Bloodspike Needler##106419+
Stop #12# Bloodspike Needlers |q 42145/1 |goto 67.67,32.50
|next "Court_Of_Farondis_WQ"
step
label quest-41956
Follow the path |goto Val'sharah/0 53.23,71.65 < 30 |only if walking
Follow the path |goto 50.21,70.40 < 30 |only if walking
Follow the path |goto 47.93,68.50 < 30 |only if walking
accept Petrified Acolytes##41956 |goto Val'sharah/0 45.63,68.48
|tip You will accept this quest automatically.
stickystart "Acolyte of Elothir"
step
kill Stoneblood Ravager##91121+, Stoneblood Elderwitch##94208+
Slay 12 Stoneblood Harpy |q 41956/2 |goto Val'sharah/0 45.36,70.70
step
label "Acolyte of Elothir"
Save 7 Acolyte of Elothir |q 41956/1 |goto Val'sharah/0 45.36,70.70
|next "Court_Of_Farondis_WQ"
step
label quest-42819
Follow the path |goto Val'sharah/0 24.38,66.42 < 20 |only if walking
Follow the path |goto 23.46,69.63 < 20 |only if walking
accept Pocket Wizard##42819 |goto 24.54,69.47
|tip You will accept this quest automatically.
step
kill Humongris##108879 |q 42819/1 |goto 24.00,69.87
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Spread out to minimize damage from Fire Boom and Ice Fist. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Spread out to minimize damage from Fire Boom and Ice Fist. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Move away from the raid when affected by You Go Bang! |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-41964
Follow the path |goto Val'sharah/0 68.42,48.60 < 30 |only if walking
Follow the path |goto 71.33,46.06 < 30 |only if walking
accept Poisoned Waters##41964 |goto Val'sharah/0 72.93,41.27
|tip You will accept this quest automatically.
stickystart "Poisonous_Slimes"
stickystart "Destroy_Poisonous_Mushrooms"
step
Enter the cave |goto 74.73,43.75 < 30 |walk
kill Maelisandra Venitox##106340 |q 41964/1 |goto 75.10,44.31
step
label "Destroy_Poisonous_Mushrooms"
click Poisonous Mushrooms
|tip They look like small yellow mushrooms on the ground near the water around this area.
Destroy #10# Poisonous Mushrooms |q 41964/2 |goto 72.93,41.27
step
label "Poisonous_Slimes"
kill 12 Poisonous Slime##106331+ |q 41964/3 |goto 72.93,41.27
|next "Court_Of_Farondis_WQ"
step
label quest-41337
Follow the path |goto Val'sharah/0 55.71,71.63 < 30 |only if walking
accept Pristine Stag Hide##41337 |goto Val'sharah/0 56.24,68.39
|tip You will accept this quest automatically.
step
kill Gleamhoof Doe##93314+, Gleamhoof Stag##93313+
|tip Loot and Skin these.
collect 8 Pristine Stag Hide##134813 |q 41337/1 |goto Val'sharah/0 56.32,66.30
|next "Court_Of_Farondis_WQ"
step
label quest-43336
Follow the path |goto Val'sharah/0 67.20,50.41 < 30 |only if walking
Drop down |goto 64.95,49.33 < 30 |only if walking
accept Purge of the Nightmare##43336 |goto Val'sharah/0 63.57,47.57
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bloodflower##219041+
|tip They look like skinny plants puffing purple smoke around this area.
Cleanse Dreadroot |q 43336/1 |goto 63.57,47.57
|next "Court_Of_Farondis_WQ"
step
label quest-41457
Follow the path |goto Val'sharah/0 55.75,56.74 < 25 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.19 < 25 |only if walking
Follow the path |goto 52.04,43.83 < 25 |only if walking
Follow the path |goto 53.07,40.54 < 25 |only if walking
accept Radiant Leystone Outcropping##41457 |goto 51.77,39.53
|tip You will accept this quest automatically.
step
click Radiant Leystone Outcropping##195122
collect 1 Radiant Leystone Ore##123918 |q 41457/1 |goto 51.77,39.53
|next "Court_Of_Farondis_WQ"
step
label quest-43324
Follow the path |goto Val'sharah/0 55.00,74.47 < 30 |only if walking
Follow the path |goto 57.72,76.16 < 30 |only if walking
Follow the path down |goto 57.44,78.32 < 30 |only if walking
Follow the path down |goto 58.57,80.36 < 30 |only if walking
accept Rage of the Owlbeasts##43324 |goto Val'sharah/0 60.58,81.90
|tip You will accept this quest automatically.
step
click Sister of the Moon##108600
kill Undulating Boneslime##108327+, Moonlost Owlbeast##108259+
Save Lostlight Grotto |q 43324/1 |goto Val'sharah/0 59.20,81.60
|next "Court_Of_Farondis_WQ"
step
label quest-41496
Follow the path |goto Val'sharah/0 53.78,73.64 < 30 |only if walking
Follow the path |goto 52.34,75.24 < 30 |only if walking
Follow the path |goto 50.28,78.27 < 30 |only if walking
Follow the path |goto 48.91,82.71 < 30 |only if walking
Enter Sleeper's Barrow |goto Val'sharah/0 50.02,85.63 < 10
accept Raw Leystone Seams##41496 |goto 62.86,49.07
|tip You will accept this quest automatically.
step
click Raw Leystone Seam##195122
collect Raw Leystone Ore##141218 |q 41496/1 |goto 62.84,48.48
|next "Court_Of_Farondis_WQ"
step
label quest-41333
Follow the path |goto Val'sharah/0 55.75,56.76 < 20 |only if walking
Follow the path |goto 54.81,51.85 < 25 |only if walking
Follow the path |goto 53.29,50.25 < 25 |only if walking
Follow the path |goto 51.59,50.77 < 25 |only if walking
accept Rugged Wolf Hide##41333 |goto 49.79,52.85
|tip You will accept this quest automatically.
step
kill Dusky Howler##100409+
|tip Skin the corpses.
|tip Wolves are found all around this area.
collect 12 Rugged Wolf Hide##134810 |q 41333/1 |goto 49.79,52.85
|next "Court_Of_Farondis_WQ"
step
label quest-43709
Follow the path |goto Val'sharah/0 54.98,53.49 < 30 |only if walking
Follow the path |goto 53.27,50.01 < 30 |only if walking
Follow the path |goto 52.39,46.18 < 30 |only if walking
Follow the path |goto 52.04,43.83 < 30 |only if walking
Follow the path |goto 48.79,40.37 < 30 |only if walking
Follow the path down |goto 47.02,40.47 < 30 |only if walking
accept Seal Clubbing##43709 |goto Val'sharah/0 47.33,44.60
|tip You will accept this quest automatically.
stickystart "Slay_Thistleleaf_Sprites"
stickystart "Rouse_Druids_Of_The_Fin"
step
click Hypnotic Water Lillies
|tip They look like flowers floating on the surface of the water around this area.
Destroy #3# Hypnotic Water Lillies |q 43709/2 |goto 47.48,44.89
step
label "Slay_Thistleleaf_Sprites"
Kill Thistleleaf enemies around this area
Slay #10# Thistleleaf Sprites |q 43709/3 |goto 47.33,44.60
step
label "Rouse_Druids_Of_The_Fin"
clicknpc Druid of the Fin##111252+
Rouse #8# Druids of the Fin |q 43709/1 |goto 47.33,44.60
|next "Court_Of_Farondis_WQ"
step
label quest-42076
accept Shadowfen Village##42076 |goto Val'sharah/0 65.95,51.94
|tip You will accept this quest automatically.
stickystart "Wormtalon_Harpies"
stickystart "Shadowfen_Valuables"
step
kill Grelda the Hag##95123 |q 42076/1 |goto 65.90,53.32
step
label "Wormtalon_Harpies"
Kill enemies around this area
Slay #10# Wormtalon Harpies |q 42076/2 |goto 65.95,51.94
step
label "Shadowfen_Valuables"
Kill enemies around this area
click Mistfall Caches
|tip They look like small metal and wooden chests on the ground around this area, mostly inside buildings.
collect 20 Shadowfen Valuables##136785 |q 42076/3 |goto 65.95,51.94
|next "Court_Of_Farondis_WQ"
step
label quest-44895
Follow the path down |goto Highmountain/0 29.66,40.98 < 30 |only if walking
Follow the path |goto 27.41,41.53 < 30 |only if walking
Follow the path |goto 26.71,42.99 < 30 |only if walking
Cross the water |goto 23.83,45.58 < 30 |only if walking
Follow the coast |goto Broken Shore/0 -3670.00,-18200.00 < 30 |only if walking
accept Sharptalon Swarm!##44895 |goto Val'sharah/0 57.57,7.36
|tip You will accept this quest automatically.
step
Slay the Sharptalon all along these hills on the coast
Cull Sharptalon Falcosaurs |q 44895/1 |goto Val'sharah/0 50.42,8.53
|next "Court_Of_Farondis_WQ"
step
label quest-41553
Follow the path |goto Val'sharah/0 68.72,51.76 < 30 |only if walking
Follow the path |goto 67.84,56.63 < 30 |only if walking
Go around the tree |goto 68.51,57.82 < 30 |only if walking
accept Slab of Bacon##41553 |goto Val'sharah/0 68.54,59.34
|tip You will accept this quest automatically.
step
kill Well-Fed Bear##103785
collect Thick Slab of Bacon##135511 |q 41553/1 |goto Val'sharah/0 69.23,59.39
|next "Court_Of_Farondis_WQ"
step
label quest-42779
Follow the path |goto Val'sharah/0 55.74,56.73 < 30 |only if walking
Follow the path |goto 54.96,53.39 < 30 |only if walking
Cross the bridge |goto 56.24,50.43 < 20 |only if walking
Enter the Tangled Cleft |goto 57.32,46.31 < 30 |only if walking
accept The Sleeping Corruption##42779 |goto 55.32,43.12
|tip You will accept this quest automatically.
step
kill Shar'thos##108678 |q 42779/1 |goto 55.32,43.12
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Spread out to avoid chaining Dread Flame to party members. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Spread out to avoid chaining Dread Flame to party members. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Keep Shar'thos' head and tail pointed away from raid members. |only if grouprole("TANK")
step
label quest-41855
Follow the path |goto Val'sharah/0 54.97,74.44 < 30 |only if walking
Follow the path |goto 57.70,76.14 < 30 |only if walking
Follow the path |goto 56.36,81.23 < 30 |only if walking
Follow the path |goto 57.65,86.58 < 30 |only if walking
accept Stand Up to Bullies##41855 |goto Val'sharah/0 55.86,88.69
|tip You will accept this quest automatically.
step
click Thistleleaf Bully##105009
Stop the Thistleleaf Bully |q 41855/1 |goto Val'sharah/0 55.86,88.69
|next "Court_Of_Farondis_WQ"
step
label quest-41293
accept Supplies Needed: Dreamleaf##41293 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Dreamleaf##124102
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Dreamleaf##41293 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41316
accept Supplies Needed: Leystone##41316 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Leystone##41316 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41339
accept Supplies Needed: Stonehide Leather##41339 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Supplies Needed: Stonehide Leather##41339 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41996
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 63.23,40.20 < 30 |only if walking
accept Tangled Nightmare##41996 |goto Val'sharah/0 61.17,37.28
|tip You will accept this quest automatically.
stickystart "Destroy_Nightmare_Totems_Tangled_Nightmare"
stickystart "Creature_Of_Nightmare_Tangled_Nightmare"
step
clicknpc Shala'nir Druid##97548+
|tip They look like dead bodies on the ground around this area.
Release #5# Shala'nir Druids |q 41996/1 |goto 61.17,37.28
step
label "Destroy_Nightmare_Totems_Tangled_Nightmare"
clicknpc Nightmare Totem##97565+
|tip They look like white totem poles with red scratches in them around this area.
Destroy #5# Nightmare Totems |q 41996/2 |goto 61.17,37.28
step
label "Creature_Of_Nightmare_Tangled_Nightmare"
Kill enemies around this area
Slay #12# Creatures of Nightmare |q 41996/3 |goto 61.17,37.28
|next "Court_Of_Farondis_WQ"
step
label quest-41980
accept Temple Defense##41980 |goto Val'sharah/0 57.15,54.02
|tip You will accept this quest automatically.
stickystart "Terrorfiend_Bats"
stickystart "Ancient_Annihilator"
step
Kill Darkfiend enemies around this area
Slay #12# Temple Attackers |q 41980/1 |goto 56.21,54.04
step
label "Terrorfiend_Bats"
kill 3 Terrorfiend Bat##92794+ |q 41980/2 |goto 55.66,54.62
|tip They're flying around in the sky.
step
label "Ancient_Annihilator"
kill Ancient Annihilator##110896 |q 41980/3 |goto 56.08,53.93
|next "Court_Of_Farondis_WQ"
step
label quest-40279
Follow the path |goto Val'sharah/0 55.76,56.77 < 20 |only if walking
Follow the path |goto 54.97,53.49 < 20 |only if walking
Follow the path |goto 53.28,50.09 < 25 |only if walking
Follow the path |goto 52.44,46.30 < 25 |only if walking
Follow the path |goto 50.86,42.88 < 20 |only if walking
Follow the path |goto 48.79,40.41 < 25 |only if walking
accept Training with Durian##40279 |goto 46.95,39.70
|tip You will accept this quest automatically.
step
talk Durian Strongfruit##99035
Tell him: "_Let's do battle!_"
Defeat Durian Strongfruit |q 40279/1 |goto 46.95,39.70
|next "Court_Of_Farondis_WQ"
step
label quest-41992
Follow the path |goto Val'sharah/0 68.15,48.50 < 30 |only if walking
Follow the path up |goto 65.62,43.13 < 30 |only if walking
accept Twisted Ash##41992 |goto 67.10,38.35
|tip You will accept this quest automatically.
step
Kill enemies around this area
Purge the Nightmare |q 41992/1 |goto 67.10,38.35
|next "Court_Of_Farondis_WQ"
step
label quest-41664
accept Vantus Rune Work Order: Dragons of Nightmare##41664 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Dragons of Nightmare>_
collect 1 Vantus Rune: Dragons of Nightmare##128990 |goto 54.70,73.25
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Sylvia Hartshorn##106901
turnin Vantus Rune Work Order: Dragons of Nightmare##41664 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-42077
Follow the path |goto Val'sharah/0 53.43,74.05 < 30 |only if walking
Follow the path |goto 51.49,75.69 < 30 |only if walking
Follow the path |goto 49.31,80.37 < 30 |only if walking
Enter the Sleeper's Barrow |goto Val'sharah/0 50.01,85.61 < 15 |walk
accept Waking Nightmare##42077 |goto Val'sharah/0 61.44,47.31
|tip You will accept this quest automatically.
stickystart "Slumbering_Nightmares"
stickystart "Slay_Darkfiend_Invaders"
step
kill Waking Nightmare##105973 |q 42077/3 |goto 25.01,50.02
step
label "Slumbering_Nightmares"
kill 8 Slumbering Nightmare##105960 |q 42077/2 |goto 61.44,47.31
step
label "Slay_Darkfiend_Invaders"
Kill Darkfiend enemies around this area
Slay #12# Darkfiend Invaders |q 42077/1 |goto 61.06,57.89
|next "Court_Of_Farondis_WQ"
step
label quest-44301
Follow the path |goto Val'sharah/0 53.99,72.81 < 30 |only if walking
Follow the path |goto 52.66,75.23 < 30 |only if walking
Cross the bridge |goto 51.49,75.69 < 30 |only if walking
Follow the path |goto 50.28,78.26 < 30 |only if walking
Follow the path |goto 48.86,82.75 < 30 |only if walking
Follow the path |goto 47.09,85.79 < 30 |only if walking
Follow the path up |goto 47.24,88.21 < 30 |only if walking
accept WANTED: Bahagar##44301 |goto Val'sharah/0 45.12,87.68
|tip You will accept this quest automatically.
step
kill Bahagar##110562 |q 44301/1 |goto Val'sharah/0 45.60,88.78
|next "Court_Of_Farondis_WQ"
step
label quest-44305
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
accept WANTED: Bahagar##44305 |goto Val'sharah/0 45.59,88.81
|tip You will accept this quest automatically.
step
kill Bahagar##110562 |q 44305/1 |goto 45.59,88.81
|tip Inside the small cave.
|next "Court_Of_Farondis_WQ"
step
label quest-44299
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
accept WANTED: Darkshade##44299 |goto Val'sharah/0 44.04,52.71
|tip You will accept this quest automatically.
step
kill Darkshade##92965 |q 44299/1 |goto 44.04,52.71
|next "Court_Of_Farondis_WQ"
step
label quest-44304
Follow the path |goto Val'sharah/0 41.42,60.03 < 30 |only if walking
Follow the path |goto 39.94,60.25 < 30 |only if walking
Follow the path |goto 39.48,59.64 < 30 |only if walking
Follow the path up |goto 38.56,57.40 < 30 |only if walking
Go up the stairs |goto 39.14,53.62 < 30 |only if walking
Follow the path |goto 40.46,53.03 < 30 |only if walking
accept WANTED: Darkshade##44304 |goto Val'sharah/0 44.04,52.71
|tip You will accept this quest automatically.
step
kill Darkshade##92965 |q 44304/1 |goto 44.04,52.71
|next "Court_Of_Farondis_WQ"
step
label quest-44298
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 62.97,48.47 < 30 |only if walking
Drop down |goto 61.97,46.31 < 30 |only if walking
Drop down |goto 61.26,45.34 < 30 |only if walking
accept WANTED: Dreadbog##44298 |goto Val'sharah/0 60.19,44.17
|tip You will accept this quest automatically.
step
kill Dreadbog##97517 |q 44298/1 |goto 60.19,44.17
|next "Court_Of_Farondis_WQ"
step
label quest-44303
Follow the path |goto Val'sharah/0 68.23,48.67 < 30 |only if walking
Follow the path |goto 66.68,45.79 < 30 |only if walking
Follow the path |goto 65.23,44.28 < 30 |only if walking
Follow the path |goto 62.97,48.47 < 30 |only if walking
Drop down |goto 61.97,46.31 < 30 |only if walking
Drop down |goto 61.26,45.34 < 30 |only if walking
accept WANTED: Dreadbog##44303 |goto Val'sharah/0 60.19,44.17
|tip You will accept this quest automatically.
step
kill Dreadbog##97517 |q 44303/1 |goto 60.19,44.17
|next "Court_Of_Farondis_WQ"
step
label quest-43460
Follow the path |goto Val'sharah/0 41.59,59.93 < 30 |only if walking
Follow the path |goto 39.96,60.33 < 30 |only if walking
Follow the path |goto 39.49,59.71 < 30 |only if walking
Follow the path |goto 37.55,59.85 < 30 |only if walking
Follow the path up |goto 35.79,60.94 < 30 |only if walking
accept WANTED: Kiranys Duskwhisper##43460 |goto Val'sharah/0 35.13,59.92
|tip You will accept this quest automatically.
step
kill Kiranys Duskwhisper##94414 |q 43460/1 |goto Val'sharah/0 34.37,58.29
|next "Court_Of_Farondis_WQ"
step
label quest-43629
Follow the path |goto Val'sharah/0 41.59,59.93 < 30 |only if walking
Follow the path |goto 39.96,60.33 < 30 |only if walking
Follow the path |goto 39.49,59.71 < 30 |only if walking
Follow the path |goto 37.55,59.85 < 30 |only if walking
Follow the path up |goto 35.79,60.94 < 30 |only if walking
accept WANTED: Kiranys Duskwhisper##43629 |goto Val'sharah/0 35.13,59.92
|tip You will accept this quest automatically.
step
kill Kiranys Duskwhisper##94414 |q 43629/1 |goto Val'sharah/0 34.37,58.29
|next "Court_Of_Farondis_WQ"
step
label quest-43630
Follow the path |goto Val'sharah/0 56.98,58.47 < 30 |only if walking
Follow the path |goto 59.86,61.41 < 30 |only if walking
Follow the path |goto 60.87,64.51 < 30 |only if walking
Follow the path down |goto 61.34,67.90 < 30 |only if walking
accept WANTED: Perrexx##43630 |goto Val'sharah/0 61.06,69.49
|tip You will accept this quest automatically.
step
kill Perrexx##95318 |q 43630/1 |goto 61.06,69.49
|next "Court_Of_Farondis_WQ"
step
label quest-43458
Follow the path |goto Val'sharah/0 56.98,58.47 < 30 |only if walking
Follow the path |goto 59.86,61.41 < 30 |only if walking
Follow the path |goto 60.87,64.51 < 30 |only if walking
Follow the path down |goto 61.34,67.90 < 30 |only if walking
accept WANTED: Perrexx##43458 |goto Val'sharah/0 61.06,69.49
|tip You will accept this quest automatically.
step
kill Perrexx##95318 |q 43458/1 |goto 61.06,69.49
|next "Court_Of_Farondis_WQ"
step
label quest-44300
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept WANTED: Seersei##44300 |goto Val'sharah/0 41.62,78.27
|tip You will accept this quest automatically.
step
kill Seersei##92180 |q 44300/1 |goto 41.62,78.27
|next "Court_Of_Farondis_WQ"
step
label quest-44302
Follow the path |goto Val'sharah/0 53.62,73.82 < 30 |only if walking
Follow the path |goto 52.60,75.24 < 30 |only if walking
Follow the path |goto 50.25,78.24 < 30 |only if walking
Follow the path up |goto 48.04,77.75 < 30 |only if walking
Follow the path |goto 44.67,81.11 < 30 |only if walking
Follow the path down |goto 42.07,80.84 < 30 |only if walking
accept WANTED: Seersei##44302 |goto Val'sharah/0 41.62,78.27
|tip You will accept this quest automatically.
step
kill Seersei##92180 |q 44302/1 |goto 41.62,78.27
|next "Court_Of_Farondis_WQ"
step
label quest-43456
Follow the path |goto Val'sharah/0 54.99,74.46 < 30 |only if walking
Follow the path |goto 57.71,76.30 < 30 |only if walking
Follow the path |goto 56.42,81.95 < 30 |only if walking
Follow the path |goto 57.94,86.59 < 30 |only if walking
accept WANTED: Skul'vrax##43456 |goto Val'sharah/0 60.95,87.91
|tip You will accept this quest automatically.
step
clicknpc Elindya Featherlight##92334
Watch the dialogue
|tip Follow Elindya Featherlight when she walks away.
kill Skul'vrax##93654 |q 43456/1 |goto 60.42,90.72
|next "Court_Of_Farondis_WQ"
step
label quest-43631
Follow the path |goto Val'sharah/0 54.99,74.44 < 30 |only if walking
Follow the path |goto 57.69,76.27 < 30 |only if walking
Follow the path |goto 56.34,81.11 < 30 |only if walking
Follow the path |goto 57.85,86.73 < 30 |only if walking
Follow the path down |goto 59.49,86.11 < 30 |only if walking
accept WANTED: Skul'vrax##43631 |goto Val'sharah/0 60.23,87.23
|tip You will accept this quest automatically.
step
clicknpc Elindya Featherlight##92334
Watch the dialogue
|tip Follow Elindya Featherlight when she walks away.
kill Skul'vrax##93654 |q 43631/1 |goto Val'sharah/0 60.87,87.69
|next "Court_Of_Farondis_WQ"
step
label quest-43459
Follow the path |goto Val'sharah/0 67.28,50.44 < 30 |only if walking
Drop down |goto Val'sharah/0 64.98,49.36 < 30 |only if walking
Follow the path |goto 63.41,47.89 < 30 |only if walking
accept WANTED: Thondrax##43459 |goto Val'sharah/0 62.60,47.41
|tip You will accept this quest automatically.
step
kill Thondrax##93205 |q 43459/1 |goto Val'sharah/0 62.60,47.41
|next "Court_Of_Farondis_WQ"
step
label quest-43633
Follow the path |goto Val'sharah/0 67.28,50.44 < 30 |only if walking
Drop down |goto Val'sharah/0 64.98,49.36 < 30 |only if walking
Follow the path |goto 63.41,47.89 < 30 |only if walking
accept WANTED: Thondrax##43633 |goto Val'sharah/0 62.60,47.41
|tip You will accept this quest automatically.
step
kill Thondrax##93205 |q 43633/1 |goto Val'sharah/0 62.60,47.41
|next "Court_Of_Farondis_WQ"
step
label quest-43248
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Darkfollow's Spire##43248 |goto Val'sharah/0 38.54,73.99
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Darkfollows_Spire"
step
Slay the Queensguard Captain |q 43248/2 |goto 37.25,78.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Darkfollows_Spire"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43248/1 |goto 38.54,73.99
|next "Court_Of_Farondis_WQ"
step
label quest-43247
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Darkfollow's Spire##43247 |goto Val'sharah/0 38.54,73.99
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Darkfollows_Spire"
step
Slay the Gilneas Brigade Captain |q 43247/2 |goto 37.25,78.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Darkfollows_Spire"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43247/1 |goto 38.54,73.99
|next "Court_Of_Farondis_WQ"
step
label quest-42070
Follow the path |goto Val'sharah/0 53.25,71.65 < 30 |only if walking
Follow the path |goto 48.32,68.88 < 30 |only if walking
Cross the bridge |goto 45.01,72.92 < 30 |only if walking
Follow the path down |goto 41.63,75.48 < 30 |only if walking
accept Warden Tower Assault: Starstalker's Point##42070 |goto Val'sharah/0 38.18,74.17
|tip You will accept this quest automatically.
stickystart "Queensguard_Troops_1"
step
Slay the Gilneas Brigade Captain |q 42070/2 |goto 37.26,78.25
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Queensguard_Troops_1"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 42070/1 |goto 38.18,74.17
|next "Court_Of_Farondis_WQ"
step
label quest-43183
Follow the path |goto Val'sharah/0 38.60,57.46 < 30 |only if walking
Follow the path |goto Val'sharah/0 36.12,54.65 < 30 |only if walking
Follow the path |goto Val'sharah/0 33.28,50.85 < 30 |only if walking
Follow the path |goto Val'sharah/0 31.73,49.12 < 30 |only if walking
accept Warden Tower Assault: Starstalker's Point##43183 |goto Val'sharah/0 31.90,47.11
|tip You will accept this quest automatically.
stickystart "Queensguard_Troops_2"
step
Follow the path up |goto 32.20,46.50 < 30 |only if walking
Slay the Queensguard Captain |q 43183/2 |goto 33.94,40.20
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Queensguard_Troops_2"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43183/1 |goto 34,41
|next "Court_Of_Farondis_WQ"
step
label quest-43784
Follow the path |goto Val'sharah/0 68.11,48.39 < 30 |only if walking
Cross the bridge |goto 66.67,45.77 < 30 |only if walking
accept What a Nightmare##43784 |goto 63.55,41.51
|tip You will accept this quest automatically.
step
clicknpc Subdued Nightwing##111359
Ride the Subdued Nightwing |q 43784/1 |goto 63.54,41.52
step
Kill enemies on the ground as you fly
|tip Use the ability on your action bar to kill them.
Slay #50# Nightmare Creatures |q 43784/2 |goto 62.85,38.17
|next "Court_Of_Farondis_WQ"
step
label quest-43759
accept Where's the Reef?##43759 |goto Val'sharah/0 22.31,66.08
|tip You will accept this quest automatically.
step
kill 15 Clackbrine Snapper##111474 |q 43759/1 |goto 22.31,66.08
|next "Court_Of_Farondis_WQ"
step
label quest-43758
accept Wherever I May Gloam##43758 |goto Val'sharah/0 22.17,67.29
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Underlight Murlocs |q 43758/1 |goto 22.17,67.29
|next "Court_Of_Farondis_WQ"
step
label quest-42190
accept Wildlife Conservationist##42190 |goto Val'sharah/0 55.46,81.99
|tip You will accept this quest automatically.
step
The _Shimmering Aquafly_ are level 25
|tip It is a Dragon Fly found all around this area.
Challenge one to a pet battle, capture it or defeat it |q 42190/1 |goto Val'sharah/0 54.48,82.34
|next "Court_Of_Farondis_WQ"
step
label quest-41652
accept Work Order: Deep Amber Loop##41652 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Deep Amber Loop>_
collect 1 Deep Amber Loop##130223
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Deep Amber Loop##41652 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-41292
accept Work Order: Dreamleaf##41292 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Dreamleaf##124102
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Dreamleaf##41292 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41312
accept Work Order: Leystone##41312 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Leystone##41312 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41634
accept Work Order: Leystone Armguards##41634 |goto Val'sharah/0 54.95,72.53
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Armguards>_
collect 1 Leystone Armguards##123898
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Leystone Armguards##41634 |goto Val'sharah/0 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41272
accept Work Order: Mossgill Perch##41272 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Mossgill Perch##124108
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Mossgill Perch##41272 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41676
accept Work Order: Pump-Action Bandage Gun##41676 |goto Val'sharah/0 54.95,72.53
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Pump-Action Bandage Gun>_
collect 1 Pump-Action Bandage Gun##132511
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Pump-Action Bandage Gun##41676 |goto Val'sharah/0 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41646
accept Work Order: Silkweave Gloves##41646 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Gloves>_
collect 1 Silkweave Gloves##126989
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Silkweave Gloves##41646 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-41338
accept Work Order: Stonehide Leather##41338 |goto Val'sharah/0 54.69,73.23
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Stonehide Leather##41338 |goto 54.69,73.23
|next "Court_Of_Farondis_WQ"
step
label quest-41658
accept Work Order: Sylvan Elixirs##41658 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Sylvan Elixirs>_
collect 5 Sylvan Elixir##127838
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Sylvan Elixirs##41658 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-41640
accept Work Order: Warhide Mask##41640 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Mask>_
collect 1 Warhide Mask##128879
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Warhide Mask##41640 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-41670
accept Work Order: Word of Agility##41670 |goto Val'sharah/0 54.70,73.25
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Agility>_
collect 1 Enchant Cloak - Word of Agility##128546
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Sylvia Hartshorn##106901
turnin Work Order: Word of Agility##41670 |goto 54.70,73.25
|next "Court_Of_Farondis_WQ"
step
label quest-43985
Follow the path |goto Highmountain/0 43.12,10.54 < 30 |only if walking
Follow the path |goto 44.97,8.89 < 30 |only if walking
Follow the path |goto 46.83,8.93 < 30 |only if walking
Follow the path |goto 47.65,8.32 < 30 |only if walking
accept A Dark Tide##43985 |goto Highmountain/0 49.15,7.66
|tip You will accept this quest automatically.
step
kill Flotsam##99929 |q 43985/1 |goto 49.15,7.66
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Move out of Jetsam. |only if grouprole("DAMAGE")
|tip Avoid standing infront of Flotsam. |only if grouprole("DAMAGE")
|tip Kill the Regurgiated Marshstompers quickly. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Move out of Jetsam. |only if grouprole("HEALER")
|tip Avoid standing infront of Flotsam. |only if grouprole("HEALER")
|tip The raid will take heavy damage from Getsam. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Flotsam away from the raid during Yaksam. |only if grouprole("TANK")
|tip Move away from Flotsam during Breaksam. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-41705
accept Assault on Thunder Totem##41705 |goto Thunder Totem/0 45.83,39.97
|tip You will accept this quest automatically.
step
Use the Tripleweave Bandages ability on Wounded Highmountain Protectors
|tip It appears as a button on the screen.
|tip Click a Stack of Bandages to get this ability.
|tip They look like small rolls of white cloth on the ground.
|tip Wounded Highmountain Protectors look like tauren kneeling on the ground.
Kill enemies around this area
Defend Thunder Totem |q 41705/1 |goto 44.05,38.83
|next "Court_Of_Farondis_WQ"
step
label quest-41026
Follow the path down |goto Highmountain/0 29.73,40.91 < 30 |only if walking
Follow the path |goto 28.06,41.33 < 30 |only if walking
accept Back to the Shadows##41026 |goto Highmountain/0 27.34,41.72
|tip You will accept this quest automatically.
stickystart "Cleanse Burial Grounds"
step
kill 4 Eredar Tormentor##102729 |q 41026/2 |goto Highmountain/0 26.90,44.05
step
label "Cleanse Burial Grounds"
kill the enemies around this area
Cleanse the Burial Grounds  |q 41026/1 |goto Highmountain/0 26.11,43.06
|next "Court_Of_Farondis_WQ"
step
label quest-45071
accept Barrels o' Fun##45071 |goto Highmountain/0 55.48,85.67
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45071/1 |goto 55.22,85.81
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-40978
accept Bears Behaving Badly##40978 |goto Highmountain/0 37.09,43.29
|tip You will accept this quest automatically.
step
click Grain Sacks
|tip They look like yellow bags on the ground around this area.
Kill enemies around this area
Rid the Fields of Unruly Bears |q 40978/1 |goto 37.09,43.29
|next "Court_Of_Farondis_WQ"
step
label quest-40951
Follow the path |goto Highmountain/0 44.52,67.48 < 30 |only if walking
Follow the path |goto 43.40,70.09 < 30 |only if walking
Follow the path down |goto 42.29,70.92 < 30 |only if walking
Enter the cave |goto 41.30,72.44 < 15 |only if walking
accept Bitestone Bazaar##40951 |goto Highmountain/5 55.57,47.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Holding Pen##8386
Wreak Havoc |q 40951/1 |goto 55.57,47.76
|next "Court_Of_Farondis_WQ"
step
label quest-40925
Follow the path |goto Highmountain/0 36.12,65.84 < 30 |only if walking
Follow the path |goto 38.70,67.94 < 30 |only if walking
Follow the path |goto 39.17,71.69 < 30 |only if walking
accept Bitestone Burglary##40925 |goto Highmountain/5 24.15,27.01
|tip You will accept this quest automatically.
step
talk Barbrul the Brewbrul##102366
Obtain a Disguise Drog |q 40925/1 |goto 24.15,27.01
step
Click Various Objects Throughout the Cave
|tip There are many different objects for you to steal.
|tip The objects sparkle so you can see them easier.
Burgle Bitestone |q 40925/2 |goto 70.44,79.23
|next "Court_Of_Farondis_WQ"
step
label quest-40980
accept Boilback Plague##40980 |goto Highmountain/0 37.90,41.89
|tip You will accept this quest automatically.
step
kill 8 Boilback Bristlefur##102361 |q 40980/1 |goto Highmountain/0 37.06,43.47
|next "Court_Of_Farondis_WQ"
step
label quest-41308
accept Border Reinforcements##41308 |goto Highmountain/0 59.25,65.16
|tip You will accept this quest automatically.
step
click Bola Launchers
|tip They look like wooden machines on the ground.
|tip Use the abilities on your action bar to shoot the blue dragons flying in the sky.
Kill enemies around this area
Reinforce the Stonehoof Watch defenses |q 41308/1 |goto 59.25,65.16
|next "Court_Of_Farondis_WQ"
step
label quest-41310
accept Border Reinforcements##41310 |goto Highmountain/0 59.20,66.16
|tip You will accept this quest automatically.
step
click Bola Launchers
|tip They look like wooden machines on the ground.
|tip Use the abilities on your action bar to shoot the blue dragons flying in the sky.
Kill enemies around this area
Reinforce the Stonehoof Watch defenses |q 41310/1 |goto 59.18,66.35
|next "Court_Of_Farondis_WQ"
step
label quest-41208
accept Brimstone Destroyer##41208 |goto Highmountain/0 47.30,32.09
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41208/1 |goto Highmountain/0 48.10,32.57
|next "Court_Of_Farondis_WQ"
step
label quest-41209
accept Brimstone Destroyer##41209 |goto Highmountain/0 45.20,53.66
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41209/1 |goto 45.20,53.66
|next "Court_Of_Farondis_WQ"
step
label quest-41210
Follow the path |goto Highmountain/0 58.54,64.44 < 15 |only if walking
Follow the path |goto 56.10,63.54 < 25 |only if walking
Follow the path |goto 54.66,66.80 < 25 |only if walking
accept Brimstone Destroyer##41210 |goto 45.20,53.66
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41210/1 |goto 45.20,53.66
|next "Court_Of_Farondis_WQ"
step
label quest-41203
Enter the cave |goto Highmountain/0 49.99,53.81 < 15 |walk
accept Bright Leystone Deposits##41203 |goto 51.41,52.41
|tip You will accept this quest automatically.
step
click Bright Leystone Deposit##195122
collect 10 Bright Leystone Ore##141231 |q 41203/1 |goto 52.82,53.51
|next "Court_Of_Farondis_WQ"
step
label quest-41706
Follow the path |goto Highmountain/0 42.62,10.18 < 25 |only if walking
Follow the path |goto 44.63,9.25 < 25 |only if walking
Follow the path |goto 46.78,10.41 < 25 |only if walking
Follow the path |goto 48.52,10.25 < 25 |only if walking
accept Briny Waters##41706 |goto 51.69,11.48
|tip You will accept this quest automatically.
step
kill Clackbrine Matron##104590+, Clackbrine Snapper##104582+, Clackbrine Pincer##104589+
Clackbrine Clean-up |q 41706/1 |goto 51.69,11.48
|tip Use the abilities on your hotbar to complete the objective.
|next "Court_Of_Farondis_WQ"
step
label quest-41526
accept Bushy Foxflower##41526 |goto Highmountain/0 37.20,43.53
|tip You will accept this quest automatically.
step
click Bushy Foxflower##0
collect 10 Bushy Foxflower##140988 |q 41526/1 |goto 37.20,43.53
|next "Court_Of_Farondis_WQ"
step
label quest-41623
accept Champions of Highmountain##41623 |goto Thunder Totem/6 67.57,74.32
|tip You will accept this quest automatically.
step
talk Spiritwalker Graysky##104518
Speak with Spiritwalker Graysky |q 41623/1 |goto Thunder Totem/6 67.57,74.32
step
talk Spiritwalker Graysky##104518
Enter the Vision |invehicle |goto 67.57,74.32 |q 41623
stickystart "Slay_Infernal_Siegebreakers_Champions_of_Highmountain"
step
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Demons |q 41623/2 |goto Azshara L/0 29.49,42.30
step
label "Slay_Infernal_Siegebreakers_Champions_of_Highmountain"
kill 2 Infernal Siegebreaker##97808+ |q 41623/3 |goto 29.49,42.30
step
Follow the path down |goto 29.44,44.22 < 30 |only if walking
kill Pit Lord##98757 |q 41623/4 |goto 30.56,46.19
step
Leave the Vision |outvehicle
|tip Click the yellow arrow on your action bar.
|next "Court_Of_Farondis_WQ"
step
label quest-41699
Follow the path |goto Highmountain/0 43.05,10.46 < 30 |only if walking
Follow the path |goto 44.11,12.15 < 30 |only if walking
Follow the path |goto 46.52,11.96 < 30 |only if walking
Follow the path |goto 48.68,10.23 < 30 |only if walking
accept Crabby Crunchies##41699 |goto Highmountain/0 52.04,11.98
|tip You will accept this quest automatically.
step
kill Brinescuttle Crab##104585+
|tip Use the abilities on your action bar.
collect 100 Brinescuttle Crab Meat##135583 |q 41699/1 |goto 52.04,11.98
|next "Court_Of_Farondis_WQ"
step
label quest-41622
Follow the path |goto Highmountain/0 51.99,44.69 < 30 |only if walking
accept Crawliac's Legacy##41622 |goto Highmountain/0 50.75,41.80
|tip You will accept this quest automatically.
stickystart "Fleshrender_Rocs"
stickystart "Slay_Crawliac_Skywitches"
step
click Hexxing Fetishes
|tip They look like stick men with four arms reaching upward around this area.
Destroy #3# Hexxing Fetishes |q 41622/3 |goto 50.75,41.80
step
label "Fleshrender_Rocs"
kill 3 Fleshrender Roc##94986 |q 41622/2 |goto 50.75,41.80
step
label "Slay_Crawliac_Skywitches"
Kill Crawliac enemies around this area
Slay #8# Crawliac Skywitches |q 41622/1 |goto 50.75,41.80
|next "Court_Of_Farondis_WQ"
step
label quest-41095
accept Critical Crops##41095 |goto Highmountain/0 43.33,58.74
|tip You will accept this quest automatically.
stickystart "Overgrown_Larvas"
stickystart "Diseased_Grubs"
step
clicknpc Tangled Gourd##102890+
|tip They look like green pumpkins around this area.
clicknpc Tangled Maize##102887+
|tip They look like corn stalks around this area.
Save #5# Crops |q 41095/1 |goto 43.33,58.74
step
label "Overgrown_Larvas"
kill 3 Overgrown Larva##94691 |q 41095/2 |goto 43.33,58.74
step
label "Diseased_Grubs"
kill 10 Diseased Grub##94688 |q 41095/3 |goto 43.33,58.74
|next "Court_Of_Farondis_WQ"
step
label quest-41685
Cross the bridge |goto Highmountain/0 35.90,65.12 < 15 |only if walking
Follow the path |goto 35.49,63.46 < 30 |only if walking
Follow the path |goto 32.98,61.43 < 30 |only if walking
Follow the path down |goto 30.57,59.05 < 30 |only if walking
Follow the path down |goto 29.35,55.81 < 30 |only if walking
Follow the path |goto 29.78,53.71 < 30 |only if walking
accept DANGER: Ala'washte##41685 |goto Highmountain/0 28.19,52.80
|tip You will accept this quest automatically.
step
kill Ala'washte##104481 |q 41685/1 |goto 28.19,52.80
|next "Court_Of_Farondis_WQ"
step
label quest-41695
Follow the path |goto Highmountain/0 52.98,45.88 < 30 |only if walking
Follow the path down |goto 54.29,46.80 < 30 |only if walking
Follow the path down |goto 57.04,43.23 < 30 |only if walking
Follow the path |goto 58.48,45.36 < 30 |only if walking
Follow the path |goto 58.07,47.41 < 30 |only if walking
accept DANGER: Defilia##41695 |goto Highmountain/0 56.73,48.63
|tip You will accept this quest automatically.
step
kill Defilia##104513 |q 41695/1 |goto 56.73,48.63
|next "Court_Of_Farondis_WQ"
step
label quest-41093
Follow the path |goto Highmountain/0 44.94,67.01 < 20 |only if walking
Follow the path |goto 43.33,70.42 < 30 |only if walking
Follow the path |goto 44.16,72.84 < 30 |only if walking
accept DANGER: Durguth##41093 |goto Highmountain/0 44.00,74.59
|tip You will accept this quest automatically.
step
kill Durguth##96072 |q 41093/1 |goto Highmountain/0 43.81,75.33
|tip This is a elite enemy you will need a group to kill it.
|next "Court_Of_Farondis_WQ"
step
label quest-41696
Follow the path up |goto Highmountain/0 58.88,68.99 < 30 |only if walking
accept DANGER: Mawat'aki##41696 |goto 58.52,72.40
|tip You will accept this quest automatically.
step
kill Mawat'aki##104517 |q 41696/1 |goto 58.52,72.40
|next "Court_Of_Farondis_WQ"
step
label quest-41686
Follow the path |goto Highmountain/0 40.72,12.33 < 25 |only if walking
Follow the path |goto 38.04,14.77 < 25 |only if walking
Follow the path |goto 35.58,17.58 < 25 |only if walking
Follow the path up |goto Highmountain/0 58.88,68.99 < 30 |only if walking
accept DANGER: Olokk the Shipbreaker##41686 |goto 33.82,21.14
|tip You will accept this quest automatically.
step
kill Olokk the Shipbreaker##104484 |q 41686/1 |goto 33.82,21.14
|next "Court_Of_Farondis_WQ"
step
label quest-41013
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto 53.14,75.56 < 30 |only if walking
Cross the bridge |goto 52.47,74.09 < 20 |walk
Follow the path |goto 51.87,72.94 < 20 |walk
Cross the bridge |goto 51.28,76.07 < 20 |walk
Follow the path |goto 51.19,78.33 < 30 |walk
Face the slide and drop down to the ledge below |goto 50.29,78.06 < 15 |walk
click Featherstone |goto 50.09,77.83
Gain the Featherstone buff |havebuff Interface\Icons\ability_priest_angelicfeather
|tip Jump off the ledge and fall all the way down into the arena.
|tip You won't take much fall damage because of the Featherstone.
accept Darkbrul Arena##41013 |goto Highmountain/0 50.29,75.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Defeat the Arena Combatants |q 41013/1 |goto 50.29,75.90
|next "Court_Of_Farondis_WQ"
step
label quest-41024
accept Dirge of the Dead##41024 |goto Highmountain/0 28.10,41.43
|tip You will accept this quest automatically.
step
Kill enemies around this area
Cleanse the Burial Ground |q 41024/1 |goto 26.72,42.98
|next "Court_Of_Farondis_WQ"
step
label quest-43767
Follow the path down |goto Highmountain/0 57.63,27.27 < 30 |only if walking
Follow the path down |goto 58.30,26.02 < 30 |only if walking
Follow the path down |goto 55.58,25.01 < 30 |only if walking
Follow the path |goto 56.79,22.32 < 30 |only if walking
accept Enigmatic##43767 |goto Highmountain/0 58.15,19.00
|tip You will accept this quest automatically.
step
click Puzzle Box
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43767/1 |goto 58.15,19.01
|next "Court_Of_Farondis_WQ"
step
label quest-39424
Follow the path |goto Highmountain/0 38.96,38.90 < 25 |only if walking
Follow the path |goto 40.83,36.38 < 25 |only if walking
Follow the path |goto 42.54,34.22 < 25 |only if walking
accept Everything!##39424 |goto 44.34,29.88
|tip You will accept this quest automatically.
step
kill Feltotem Demonkindre##96615+, Feltotem Bloodsinger##96423+, Feltotem Bonehound##104323+, Feltotem Bloodbinder##104328+
|tip You will find them all around the area.
Vanquish the Feltotem |q 39424/1 |goto 44.34,29.88
step
Follow the path |goto 47.46,29.24 < 25 |only if walking
kill Mellok, Son of Torok##96621
Slay Mellok, Son of Torok |q 39424/2 |goto 49.21,27.11
|next "Court_Of_Farondis_WQ"
step
label quest-41239
Follow the path down |goto Highmountain/0 38.97,38.85 < 30 |only if walking
Follow the path |goto 40.70,36.53 < 30 |only if walking
Follow the path |goto 42.73,33.85 < 30 |only if walking
Follow the path up |goto 44.37,32.22 < 20 |only if walking
Follow the path up |goto 44.68,35.34 < 20 |only if walking
Follow the path |goto 42.62,38.44 < 20 |only if walking
Follow the path |goto 42.98,39.85 < 20 |only if walking
Follow the path |goto 42.25,40.95 < 30 |only if walking
accept Felhide##41239
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
|tip He pats around this area.
|tip Loot and Skin this.
collect Felhide##124116 |q 41239/1 |goto Highmountain/0 42.39,42.04
|next "Court_Of_Farondis_WQ"
step
label quest-41561
Follow the path |goto Highmountain/0 49.87,63.55 < 25 |only if walking
Follow the path |goto 50.85,64.04 < 25 |only if walking
Follow the path |goto 47.81,68.95 < 25 |only if walking
Follow the path |goto 49.06,69.30 < 10 |only if walking
accept Felhide##41561 |goto 47.63,71.78
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41561/1 |goto 47.63,71.78
|next "Court_Of_Farondis_WQ"
step
label quest-41560
Follow the path |goto Highmountain/0 39.07,38.55 < 25 |only if walking
Follow the path |goto 42.49,34.48 < 25 |only if walking
Follow the path |goto 45.05,29.32 < 25 |only if walking
Follow the path |goto 44.94,25.14 < 25 |only if walking
accept Felhide##41560 |goto 43.54,24.63
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41560/1 |goto 43.54,24.63
|next "Court_Of_Farondis_WQ"
step
label quest-42086
Follow the path down |goto Highmountain/0 30.77,39.10 < 30 |only if walking
Follow the path down |goto 30.86,36.13 < 30 |only if walking
Cross the bridge |goto 29.08,32.70 < 30 |only if walking
Follow the path |goto 29.89,30.90 < 30 |only if walking
accept The Feltotem##42086 |goto Highmountain/0 30.15,29.19
|tip You will accept this quest automatically.
stickystart "Slay_Feltotem_Tribesman"
step
kill Nozcha the Twisted##106077 |q 42086/1 |goto 29.25,29.69
step
Follow the path up |goto 30.31,30.05 < 30 |only if walking
kill Lady Raltash##106082 |q 42086/3 |goto 30.63,28.93
step
kill Taurnash the Heretic##106074 |q 42086/2 |goto 30.44,27.18
step
label "Slay_Feltotem_Tribesman"
Kill enemies around this area
Slay #12# Feltotem Tribesman |q 42086/4 |goto 30.16,29.27
|next "Court_Of_Farondis_WQ"
step
label quest-41512
accept Felwort##41512 |goto Highmountain/0 33.11,64.72
|tip You will accept this quest automatically.
step
click Felwort##195114
Felwort gathered |q 41512/1 |goto 33.11,64.72
|next "Court_Of_Farondis_WQ"
step
label quest-41219
accept Flourishing Foxflower##41219 |goto Highmountain/0 55.55,45.44
|tip You will accept this quest automatically.
step
click Flourishing Foxflower##195114
collect 10 Flourishing Foxflower##140986 |q 41219/1 |goto 55.55,45.44
|next "Court_Of_Farondis_WQ"
step
label quest-41544
Follow the path down |goto Highmountain/0 38.99,38.71 < 20 |only if walking
Follow the path |goto 40.92,36.35 < 25 |only if walking
Follow the path |goto 43.37,32.50 < 25 |only if walking
Follow the path up |goto 44.39,32.29 < 20 |only if walking
accept Foxflower Cluster##41544 |goto 46.53,31.74
|tip You will accept this quest automatically.
step
click Foxflower Cluster##104376
Foxflower Cluster gathered |q 41544/1 |goto 46.53,31.74
|next "Court_Of_Farondis_WQ"
step
label quest-43448
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
accept The Frozen King##43448 |goto Highmountain/0 58.04,72.37
|tip You will accept this quest automatically.
step
kill Drugon the Frostblood##110378 |q 43448/1 |goto 58.04,72.37
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Do not stand in front of Drugon during Snow Plow. |only if grouprole("DAMAGE")
|tip Move out of Avalanche. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Frozen allies take increased damage. |only if grouprole("HEALER")
|tip Allies gripped by Snow Plow will need healing. |only if grouprole("HEALER")
|tip Move out of Avalanche. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Drugon away from the group to prevent excess damage from Snow Crash. |only if grouprole("TANK")
|tip Do not stand in front of Drugon during Snow Plow. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-41014
accept Fury Road##41014 |goto Highmountain/0 49.26,55.21
|tip You will accept this quest automatically.
step
talk Shardmaster Ufrogg##102689
Obtain a Crystal from Shardmaster Ufrogg |q 41014/1 |goto 49.26,55.21
step
Enter the cave |goto 50.12,53.64 < 30 |walk
Use the Rageshard to Summon the Rageshard Mount |use Rageshard##133944
Kill enemis around this area
|tip Use the abilities on your action bar.
|tip Run over the purple crystals that appear on the ground to collect them.
collect 100 Unrefined Gem##133947 |q 41014/2 |goto 51.46,52.44
|next "Court_Of_Farondis_WQ"
step
label quest-41701
Follow the path |goto Highmountain/0 43.10,10.55 < 30 |only if walking
Follow the path |goto 44.64,12.86 < 30 |only if walking
Follow the path |goto 46.42,11.95 < 30 |only if walking
Follow the path |goto 48.60,10.26 < 30 |only if walking
accept Gettin' Tuffer##41701 |goto Highmountain/0 51.46,9.96
|tip You will accept this quest automatically.
stickystart "Collect_Tufferfish"
step
Eat #5# Greater Slimeweed |q 41701/2 |goto 51.46,9.96
|tip Greater Slimeweed looks like patches on yellow-brown plants on the ground around this area.
|tip Stand on them to eat them.
step
label "Collect_Tufferfish"
kill Tufferfish##104598+
|tip They are underwater around this area.
|tip Use the abilities on your action bar to kill enemies.
Collect #5# Tufferfish |q 41701/1 |goto 51.46,9.96
step
kill Brineclaw##104597 |q 41701/3 |goto 53.0,14.0
|next "Court_Of_Farondis_WQ"
step
label quest-41127
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto 52.25,79.89 |walk
accept Gunksnout Infestation##41127 |goto Highmountain/0 52.26,79.90
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.26,79.90 < 30 |walk
click Kobold Candles
|tip They look like wax candles with blue flames.
click Secreted Wax Globs
|tip These are balls of wax stuck to the wall.
click Wax Ingots
|tip They look like little wax bars on the ground.
Kill enemies around this area
Purge the Kobold Nest |q 41127/1 |goto 53.26,81.12
|next "Court_Of_Farondis_WQ"
step
label quest-44746
Follow the path |goto Highmountain/0 40.71,12.02 < 30 |only if walking
accept Helarjar Landing: Rockaway Coast##44746 |goto Highmountain/0 39.15,14.43
|tip You will accept this quest automatically.
step
kill Helarjar Ritualist##115132+
|tip There are 4 of them channeling around the water.
Defeat the Helarjar Ritualists |q 44746/1 |goto 39.15,14.43
|next "Court_Of_Farondis_WQ"
step
label quest-41609
Follow the path |goto Highmountain/0 38.38,40.95 < 25 |only if walking
accept Huge Highmountain Salmon##41609 |goto 36.96,44.92
|tip You will accept this quest automatically.
step
Fish from the Huge Highmountain Salmon School |cast Fishing##7620
collect 10 Huge Highmountain Salmon##134399 |q 41609/1 |goto 36.96,44.92
|next "Court_Of_Farondis_WQ"
step
label quest-42064
accept It's Illid... Wait.##42064 |goto Highmountain/0 43.09,7.66
|tip You will accept this quest automatically.
step
click Lil'idan##105841
Defeat Lil'idan |q 42064/1 |goto Highmountain/0 43.22,7.57
|next "Court_Of_Farondis_WQ"
step
label quest-43764
Cross the bridge |goto Highmountain/0 35.90,65.11 < 30 |only if walking
Follow the path |goto 35.54,63.47 < 30 |only if walking
Follow the path |goto 33.59,62.34 < 30 |only if walking
accept Ley Race##43764 |goto Highmountain/0 32.39,60.15
|tip You will accept this quest automatically.
step
click Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43764/1 |goto 32.39,60.15
|next "Court_Of_Farondis_WQ"
step
label quest-41196
Follow the path |goto Highmountain/0 56.63,85.00 < 25 |only if walking
Follow the path |goto 54.71,89.81 < 25 |only if walking
Follow the path |goto 55.09,90.40 < 25 |only if walking
accept Leystone Basilisks##41196 |goto 56.35,89.95
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41196/1 |goto 57.01,92.33
|next "Court_Of_Farondis_WQ"
step
label quest-45048
Follow the path |goto Highmountain/0 37.64,38.64 < 20 |only if walking
accept Like the Wind##45048 |goto 35.49,36.73
|tip You will accept this quest automatically.
step
Goal Reached |q 45048/1 |goto 35.49,36.73
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Court_Of_Farondis_WQ"
step
label quest-41597
accept Lively Highmountain Salmon##41597 |goto Highmountain/0 33.04,64.58
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41597/1 |goto 33.04,64.58
|next "Court_Of_Farondis_WQ"
step
label quest-41596
Follow the path |goto Highmountain/0 50.04,63.68 < 25 |only if walking
accept Lively Highmountain Salmon##41596 |goto 51.84,64.11
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41596/1 |goto 51.84,64.11
|next "Court_Of_Farondis_WQ"
step
label quest-41244
Follow the path |goto Highmountain/0 38.95,38.95 < 25 |only if walking
Follow the path |goto 40.85,36.38 < 25 |only if walking
Follow the path |goto 42.56,33.87 < 25 |only if walking
Follow the path |goto 43.78,29.79 < 25 |only if walking
accept Lively Highmountain Salmon##41244 |goto 45.44,27.37
|tip You will accept this quest automatically.
step
Fish from Lively Highmountain Salmon Schools |cast Fishing##7620
collect 10 Lively Highmountain Salmon##134400 |q 41244/1 |goto 45.44,27.37
|next "Court_Of_Farondis_WQ"
step
label quest-41089
Follow the path |goto Highmountain/0 44.84,67.11 < 30 |only if walking
Follow the path |goto 43.53,71.23 < 30 |only if walking
accept Lords of the Hills##41089 |goto Highmountain/0 43.85,73.14
|tip You will accept this quest automatically.
stickystart "Hill_Ettins 2"
step
kill Hill Prince Urgo##96070 |q 41089/2 |goto 43.49,75.02
step
label "Hill_Ettins 2"
kill 5 Hill Ettin##102886 |q 41089/1 |goto 43.85,73.14
|next "Court_Of_Farondis_WQ"
step
label quest-41090
Follow the path |goto Highmountain/0 44.84,67.11 < 30 |only if walking
Follow the path |goto 43.53,71.23 < 30 |only if walking
accept Lords of the Hills##41090 |goto Highmountain/0 43.85,73.14
|tip You will accept this quest automatically.
stickystart "Hill_Ettins"
step
kill Hill Prince Urgo##96070 |q 41090/2 |goto 43.49,75.02
step
label "Hill_Ettins"
kill 5 Hill Ettin##102886 |q 41090/1 |goto 43.85,73.14
|next "Court_Of_Farondis_WQ"
step
label quest-41091
Cross the bridge |goto Thunder Totem/0 41.85,64.96 < 15 |only if walking
Follow the path |goto Thunder Totem/0 39.66,75.66 < 30 |only if walking
accept Lords of the Hills##41091 |goto Highmountain/0 44.93,65.58
|tip You will accept this quest automatically.
stickystart "Slay_Hill_Ettins"
step
Follow the path |goto 44.91,67.02 < 30 |only if walking
Follow the path |goto 43.79,69.41 < 30 |only if walking
Follow the path |goto 44.14,72.73 < 30 |only if walking
kill Hill Prince Ruggu##30108 |q 41091/2 |goto 43.53,75.15
step
label "Slay_Hill_Ettins"
kill 5 Hill Ettin##95937+ |q 41091/1 |goto 43.51,71.24
|next "Court_Of_Farondis_WQ"
step
label quest-41253
accept Migrating Highmountain Salmon##41253 |goto Highmountain/0 40.57,49.68
|tip You will accept this quest automatically.
step
Spear 12 Migrating Highmountain Salmon |q 41253/1 |goto Highmountain/0 40.57,49.68
|tip Click the Salmon as they jump out of the water to spear them.
|next "Court_Of_Farondis_WQ"
step
label quest-41122
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter the cave |goto Highmountain/0 52.11,79.64 < 10 |walk
accept Mists Take You##41122 |goto Highmountain/0 52.34,80.07
|tip You will accept this quest automatically.
step
Kill the enemies around this cave
Cleanse the Echoing Halls |q 41122/1 |goto 53.80,81.86
|next "Court_Of_Farondis_WQ"
step
label quest-41076
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41076 |goto Highmountain/0 57.47,56.57
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41076/1 |goto Highmountain/0 57.65,56.56
step
click Razik's Weapon Rack##6478
Grab a prototype from Razik's weapon rack |q 41076/2 |goto 57.64,56.43
step
Use the extra action button on the animals around this area
Hunt 10 animals using Razik's prototype |q 41076/3 |goto 56.03,55.71
|next "Court_Of_Farondis_WQ"
step
label quest-41077
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41077 |goto Highmountain/0 57.47,56.57
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41077/1 |goto Highmountain/0 57.65,56.56
step
click Razik's Weapon Rack##6478
Grab a prototype from Razik's weapon rack |q 41077/2 |goto 57.64,56.43
step
Use the extra action button on the animals around this area
Hunt 15 animals using Razik's prototype |q 41077/3 |goto 56.03,55.71
|next "Court_Of_Farondis_WQ"
step
label quest-41078
Follow the path |goto Highmountain/0 58.56,64.46 < 20 |only if walking
Follow the path up |goto 57.71,63.36 < 30 |only if walking
Follow the path |goto 56.42,63.33 < 30 |only if walking
Follow the path |goto 56.90,60.66 < 30 |only if walking
Follow the path |goto 56.69,58.84 < 30 |only if walking
accept Munitions Testing##41078 |goto Highmountain/0 57.21,59.64
|tip You will accept this quest automatically.
step
talk Gertie##99468
Speak to Gertie |q 41078/1 |goto Highmountain/0 57.64,56.57
step
click Razik's Weapon Rack##6478
Grab a prototype from Razik's weapon rack |q 41078/2 |goto Highmountain/0 57.64,56.44
step
kill 5 Bonebeak Hawk##103592 |q 41078/3 |goto Highmountain/0 56.59,61.74
Use your extra action button and round up a bunch of these birds or you can just kill them.
step
kill 5 Icefang Packleader##97957 |q 41078/4 |goto Highmountain/0 56.09,54.77
Use your extra action button and round up a bunch of these Wolves or you can just kill them.
|next "Court_Of_Farondis_WQ"
step
label quest-39462
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##39462 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 39462/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 39462/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Court_Of_Farondis_WQ"
step
label quest-41055
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##41055 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 41055/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 41055/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Court_Of_Farondis_WQ"
step
label quest-41057
Cross the river |goto Highmountain/0 40.58,49.74 < 30 |only if walking
accept Primal Payback##41057 |goto 40.88,48.54
|tip You will accept this quest automatically.
step
talk Enforcer Narissa##101957
Speak to Enforcer Narissa |q 41057/1 |goto 40.88,48.54
step
kill 10 Pinerock Hunter##102993 |q 41057/2 |goto 42.26,48.45
|tip Talk to Enforcer Narissa again to turn into a bear for the quest.
|tip Use the abilities on your action bar to kill enemies.
|next "Court_Of_Farondis_WQ"
step
label quest-40850
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Enter Greystone Enclave |goto Highmountain/0 54.63,75.44 < 30 |walk
accept Prisoners of Greystone##40850 |goto Highmountain/0 54.79,78.94
|tip You will accept this quest automatically.
stickystart "Rescue_Captives_Grey_Bazaar"
step
kill Chompkeeper Baggrul##102107
Rescue the Captive Leader from the Basilisk Pit |q 40850/2 |goto 55.22,80.72
step
kill Ronir Wrangler##102123 |q 40850/3 |goto 54.02,77.75
step
label "Rescue_Captives_Grey_Bazaar"
click Beast Pens
Rescue #5# Captives from the Grey Bazaar |q 40850/1 |goto 54.79,78.94
|next "Court_Of_Farondis_WQ"
step
label quest-41416
Cross the bridge |goto Highmountain/0 52.95,45.95 < 30 |only if walking
Follow the path |goto 52.59,47.07 < 30 |only if walking
Follow the path up |goto 53.01,48.27 < 30 |only if walking
accept Retake the Skyhorn##41416 |goto Highmountain/0 52.91,48.16
|tip You will accept this quest automatically.
stickystart "Crawliac_Bloodscreamers"
step
Follow the path up |goto 52.14,48.11 < 30 |only if walking
kill Agna the Fowl##104311
kill Skawn##104310
|tip Loot them to complete the goal.
Reclaim the Skyhorn |q 41416/2 |goto 50.99,50.35
step
label "Crawliac_Bloodscreamers"
kill 5 Crawliac Bloodscreamer##104302 |q 41416/1 |goto 51.77,49.05
|next "Court_Of_Farondis_WQ"
step
label quest-41789
Follow the path |goto Highmountain/0 51.99,44.67 < 30 |only if walking
Follow the path down |goto 48.33,45.20 < 30 |only if walking
accept Return to the Crag##41789 |goto Highmountain/0 46.89,46.75
|tip You will accept this quest automatically.
stickystart "Slay_Cursed_Wildlife"
stickystart "Slay_Vilewing_Harpies"
step
click Hexxing Fetishes
|tip They look like stick men with four arms reaching upward around this area.
Destroy #4# Hexxing Fetishes |q 41789/2 |goto 46.89,46.75
step
label "Slay_Cursed_Wildlife"
Kill Cursed enemies around this area
Slay #6# Cursed Wildlife |q 41789/3 |goto 46.89,46.75
step
label "Slay_Vilewing_Harpies"
Kill Vilewing enemies around this area
Slay #3# Vilewing Harpies |q 41789/1 |goto 46.89,46.75
|next "Court_Of_Farondis_WQ"
step
label quest-41144
accept Return to the River##41144 |goto Highmountain/0 40.00,63.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Whitewater Carp
|tip They look like fish flopping on the ground around this area.
|tip Face toward the river when you click them to kick them into the river.
click Fishing Supplies
|tip They look like yellow baskets on the ground around this area.
Purify Whitewater Wash |q 41144/1 |goto 40.00,63.54
|next "Court_Of_Farondis_WQ"
step
label quest-41025
Follow the path down |goto Highmountain/0 29.78,40.89 < 30 |only if walking
Follow the path |goto 27.46,41.51 < 30 |only if walking
Follow the path |goto 26.69,42.93 < 30 |only if walking
accept Rise of the Fallen##41025 |goto Highmountain/0 25.49,43.46
|tip You will accept this quest automatically.
step
Kill enemies around this area
Eradicate the Burial Ground |q 41025/1 |goto 25.49,43.46
|next "Court_Of_Farondis_WQ"
step
label quest-40966
Cross the bridge |goto Thunder Totem/0 51.52,38.18 < 30 |region thunder_totem_circle_platform |only if walking
accept Ritualists in Our Midsts##40966 |goto Highmountain/0 50.73,53.17
|tip You will accept this quest automatically.
stickystart "Greystone_Shardmasters"
stickystart "Smash_Crystal_Conduits"
step
Enter the cave |goto 50.04,53.73 < 30 |walk
Follow the path |goto 51.57,52.49 < 30 |walk
Follow the path down |goto 52.46,52.91 < 30 |walk
kill Shardmaster Azurrogg##102501 |q 40966/1 |goto 53.10,53.56
|tip Standing on top of the rock.
step
label "Greystone_Shardmasters"
kill 3 Greystone Shardmaster##101644 |q 40966/2 |goto 50.73,53.17
step
label "Smash_Crystal_Conduits"
click Crystal Conduits
|tip They look like big red crystal blocks on the ground throughout the cave.
Smash #7# Crystal Conduits |q 40966/3 |goto 52.20,53.56
|next "Court_Of_Farondis_WQ"
step
label quest-41624
Follow the path |goto Highmountain/0 37.05,64.35 < 30 |only if walking
Enter the cave |goto Highmountain/0 38.39,61.38
Follow the path up |goto Highmountain/20 41.25,59.66
accept Rocko Needs a Shave##41624 |goto Highmountain/21 57.52,43.81
step
click Rocko##98572
|tip This enemy is immune for 10 rounds all you have to do is survive these 10 rounds and you will win.
Defeat Rocko |q 41624/1 |goto Highmountain/21 60.35,44.00
|next "Court_Of_Farondis_WQ"
step
label quest-41200
Follow the path |goto Highmountain/0 59.44,68.29 < 25 |only if walking
Follow the path |goto 58.25,70.96 < 25 |only if walking
Follow the path |goto 57.99,73.74 < 25 |only if walking
Follow the path |goto 56.82,71.66 < 25 |only if walking
accept Rough Leystone Outcropping##41200 |goto 56.09,69.25
|tip You will accept this quest automatically.
step
click Massive Leystone Deposit##195122
collect 1 Rough Leystone Ore##141219 |q 41200/1 |goto 56.09,69.25
|next "Court_Of_Farondis_WQ"
step
label quest-41691
Follow the path down |goto Highmountain/0 38.86,39.39 < 30 |only if walking
Follow the path |goto 39.26,37.96 < 30 |only if walking
Follow the path down |goto 39.49,35.49 < 30 |only if walking
accept Sea of Feathers##41691 |goto Highmountain/0 40.90,32.08
|tip You will accept this quest automatically.
stickystart "Witchwood_Hags"
stickystart "Bewitched_Bears"
step
click Harpy Eggs
|tip They look like shaking white eggs in the hanging brown nets and on the ground around this area.
Destroy #4# Harpy Eggs |q 41691/2 |goto 40.90,32.08
step
label "Witchwood_Hags"
kill 6 Witchwood Hag##95310 |q 41691/1 |goto 40.90,32.08
step
label "Bewitched_Bears"
kill 4 Bewitched Bear##95270 |q 41691/3 |goto 40.90,32.08
|next "Court_Of_Farondis_WQ"
step
label quest-41234
accept Shaggy Saber Hide##41234 |goto Highmountain/0 40.65,50.10
|tip You will accept this quest automatically.
step
kill Pinerock Prowler##94149+, Pinerock Stalker##99481+
|tip Skin the corpses.
collect 12 Shaggy Saber Hide##134130 |q 41234/1 |goto 40.65,50.10
|next "Court_Of_Farondis_WQ"
step
label quest-41692
accept Shipwreck Scavengers##41692 |goto Highmountain/0 44.47,9.74
|tip You will accept this quest automatically.
stickystart "Recover_Shipwrecked_Supplies"
stickystart "Slay_Swamprock_Marshstompers"
step
kill Mrrklr##98311 |q 41692/1 |goto 46.5,7.3
step
label "Recover_Shipwrecked_Supplies"
click Shiprecked Supplies
|tip They look like wooden crates on the ground around this area.
Recover #5# Shipwreck Supplies |q 41692/2 |goto 44.47,9.74
step
label "Slay_Swamprock_Marshstompers"
Kill Swamprock enemies around this area
Slay #10# Swamprock Marshstompers |q 41692/3 |goto 44.47,9.74
|next "Court_Of_Farondis_WQ"
step
label quest-41242
Follow the path down |goto Highmountain/0 38.96,38.86 < 30 |only if walking
Follow the path |goto 41.48,35.82 < 30 |only if walking
accept Slab of Bacon##41242 |goto Highmountain/0 43.29,32.75
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect Thick Slab of Bacon##135511 |q 41242/1 |goto Highmountain/0 43.29,32.75
|next "Court_Of_Farondis_WQ"
step
label quest-41549
accept Slab of Bacon##41549 |goto Highmountain/0 42.00,49.36
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect Thick Slab of Bacon##135511 |q 41549/1 |goto Highmountain/0 42.00,49.36
|next "Court_Of_Farondis_WQ"
step
label quest-41550
Follow the path |goto Highmountain/0 58.47,64.35 < 25 |only if walking
Follow the path |goto 56.42,63.58 < 25 |only if walking
accept Slab of Bacon##41550 |goto 57.49,60.51
|tip You will accept this quest automatically.
step
kill Well-Fed Ironhorn Bull##103681
collect 1 Thick Slab of Bacon##135511 |q 41550/1 |goto 57.49,60.51
|next "Court_Of_Farondis_WQ"
step
label quest-41687
Follow the path down |goto Highmountain/0 38.96,38.80 < 30 |only if walking
Follow the path |goto 41.38,35.90 < 30 |only if walking
Follow the path |goto 42.41,32.86 < 30 |only if walking
Follow the path |goto 45.03,29.23 < 30 |only if walking
Follow the path |goto 43.98,27.00 < 30 |only if walking
Enter the cave |goto Highmountain/0 42.59,25.38
accept Snail Fight!##41687 |goto Highmountain/31 49.27,43.55
|tip You will accept this quest automatically.
step
Follow the path |goto Highmountain/31 30.95,58.45 < 20 |walk
Follow the path |goto 43.13,41.06 < 15 |walk
talk Odrogg##104553
Tell him "Let's do battle!"
Defeat Odrogg |q 41687/1 |goto 49.27,43.55
|next "Court_Of_Farondis_WQ"
step
label quest-44892
Follow the path |goto Highmountain/0 40.99,11.30 < 30 |only if walking
Follow the path |goto 38.79,13.68 < 30 |only if walking
Follow the path |goto 37.24,15.49 < 30 |only if walking
Follow the path up |goto 36.66,17.08 < 20 |only if walking
accept Snowfeather Swarm!##44892 |goto Highmountain/0 36.89,17.59
|tip You will accept this quest automatically.
step
Slay the Snowfeather enemies around this area
Cull Snowfeather Falcosaurs |q 44892/1 |goto Highmountain/0 35.74,21.31
|next "Court_Of_Farondis_WQ"
step
label quest-40920
Follow the path |goto Highmountain/0 36.71,65.96 < 30 |only if walking
Follow the path |goto 38.73,67.98 < 30 |only if walking
Follow the path |goto 39.22,69.27 < 30 |only if walking
Follow the path |goto 39.26,72.01 < 30 |only if walking
accept Stonebinder Bounty##40920 |goto Highmountain/5 22.28,28.18
|tip You will accept this quest automatically.
stickystart "Slay_Bitestone_Drogbar"
step
kill Stonebinder Gorgrogg##94248 |q 40920/2 |goto 72.34,53.35
step
Follow the path up |goto 47.92,48.01 < 15 |walk
Follow the path |goto 55.12,73.46 < 30 |walk
Follow the path |goto 86.79,56.16 < 30 |walk
kill Stonebinder Agrogg##94250 |q 40920/1 |goto 82.48,39.39
step
label "Slay_Bitestone_Drogbar"
Kill enemies around this area
Slay #8# Bitestone Drogbar |q 40920/3 |goto 62.78,49.41
|next "Court_Of_Farondis_WQ"
step
label quest-41207
accept Supplies Needed: Leystone##41207 |goto Thunder Totem/0 38.07,46.01
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Supplies Needed: Leystone##41207 |goto 38.07,46.01
|next "Court_Of_Farondis_WQ"
step
label quest-41237
accept Supplies Needed: Stonehide Leather##41237 |goto Thunder Totem/0 38.07,46.01
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Supplies Needed: Stonehide Leather##41237 |goto 38.07,46.01
|next "Court_Of_Farondis_WQ"
step
label quest-41232
accept Thick Ironhorn Hide##41232 |goto Highmountain/0 42.00,47.96
|tip You will accept this quest automatically.
step
kill Pinerock Elderhorn##94151+
|tip Skin the corpses.
collect 12 Thick Ironhorn Hide##134129 |q 41232/1 |goto Highmountain/0 42.00,47.96
|next "Court_Of_Farondis_WQ"
step
label quest-40896
Follow the path |goto Highmountain/0 29.88,40.88 < 30 |only if walking
Follow the path |goto 27.43,41.50 < 30 |only if walking
accept Threnody of Chieftains##40896 |goto Highmountain/0 25.25,42.50
|tip You will accept this quest automatically.
stickystart "Cleanse_Burial_Ground"
step
kill 3 Risen Chieftain##101832 |q 40896/2 |goto 25.25,42.50
|tip They are usually near crystals or structures.
step
label "Cleanse_Burial_Ground"
Kill enemies around this area
Cleanse the Burial Ground |q 40896/1 |goto 25.25,42.50
|next "Court_Of_Farondis_WQ"
step
label quest-44823
accept Thunder Totem Cleanup Detail##44823 |goto Thunder Totem/0 44.81,38.69
|tip You will accept this quest automatically.
step
kill Bluewax Drumtaker##108145+
click Small Ceremonial Drum##3365+
collect Small Ceremonial Drum##138197+ |n
Assist Thunder Totem |q 44823/1 |goto Thunder Totem/0 47.42,42.82
|next "Court_Of_Farondis_WQ"
step
label quest-40282
Follow the path down |goto Highmountain/0 38.94,38.97 < 30 |only if walking
Follow the path down |goto 40.39,36.94 < 30 |only if walking
accept Tiny Poacher, Tiny Animals##40282 |goto Highmountain/0 41.91,35.98
|tip You will accept this quest automatically.
step
talk Grixis Tinypop##99150
Tell him: "_Let's do battle!_"
Defeat Grixis Tinypop |q 40282/1 |goto 41.91,35.98
|next "Court_Of_Farondis_WQ"
step
label quest-40280
Follow the path |goto Highmountain/0 50.79,64.72
Cross the bridge |goto 48.99,66.96 < 20 |only if walking
Follow the path up |goto 48.06,68.03 < 30 |only if walking
accept Training with Bredda##40280 |goto Highmountain/0 47.73,68.92
|tip You will accept this quest automatically.
step
talk Bredda Tenderhide##99077
Tell her "Let's do battle!"
Defeat Bredda Tenderhide |q 40280/1 |goto Highmountain/0 47.72,69.03
|next "Court_Of_Farondis_WQ"
step
label quest-41011
accept Umbralshard Rituals##41011 |goto Highmountain/0 49.82,53.96
|tip You will accept this quest automatically.
step
Enter the cave |goto 50.05,53.72 < 15 |walk
kill Enraged Umbralshard##102468+
|tip Kill the enemies channeling on them to free them, so that you can kill them.
|tip You can find them all throughout the cave.
Stop #3# Umbralshard Rituals |q 41011/1 |goto 51.53,52.46
|next "Court_Of_Farondis_WQ"
step
label quest-41428
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |only if walking
Follow the path |goto 49.57,34.75 < 30 |only if walking
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept Unstable Portal##41428 |goto Highmountain/0 47.85,29.46
|tip You will accept this quest automatically.
step
click Portal Stabilizer
Destroy the Portal Stabilizer |q 41428/1 |count 1 |goto 47.14,29.25
step
Follow the path |goto 48.07,29.54 < 30 |only if walking
click Portal Stabilizer
Destroy the Portal Stabilizer |q 41428/1 |count 2 |goto 49.19,29.27
step
Follow the path |goto 49.41,28.57 < 30 |only if walking
click Portal Stabilizer
Destroy the Portal Stabilizer |q 41428/1 |count 3 |goto 49.90,25.28
step
Follow the path |goto 49.57,25.57 < 30 |only if walking
click Portal Stabilizer
Destroy the Portal Stabilizer |q 41428/1 |count 4 |goto 48.09,25.00
step
Follow the path |goto 47.37,25.79 < 30 |only if walking
Follow the path up |goto 46.34,24.98 < 30 |only if walking
Cross the bridge |goto 47.16,24.96 < 30 |only if walking
click Unstable Legion Portal
Disable the Unstable Legion Portal |q 41428/2 |goto 48.55,27.27
|next "Court_Of_Farondis_WQ"
step
label quest-41665
accept Vantus Rune Work Order: Ursoc##41665 |goto Thunder Totem/0 38.06,46.04
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Ursoc>_
collect 1 Vantus Rune: Ursoc##128987 |goto 38.06,46.04
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Ransa Greyfeather##106902
turnin Vantus Rune Work Order: Ursoc##41665 |goto 38.06,46.04
|next "Court_Of_Farondis_WQ"
step
label quest-41824
Follow the path up |goto Highmountain/0 47.84,52.86
accept WANTED: Arru##41824 |goto Highmountain/0 48.64,50.06
step
kill Arru##97220 |q 41824/1 |goto Highmountain/0 49.08,49.85
|tip Inside the cave.
|next "Court_Of_Farondis_WQ"
step
label quest-44289
Follow the path up |goto Highmountain/0 47.84,52.86
accept WANTED: Arru##44289 |goto Highmountain/0 48.64,50.06
step
kill Arru##97220 |q 44289/1 |goto Highmountain/0 49.08,49.85
|tip Inside the cave.
|next "Court_Of_Farondis_WQ"
step
label quest-41836
Follow the path |goto Highmountain/0 40.82,11.92 < 25 |only if walking
Follow the path |goto 38.19,14.79 < 25 |only if walking
accept WANTED: Bodash the Hoarder##41836 |goto 36.67,16.36
|tip You will accept this quest automatically.
step
kill Bodash the Hoarder##98299 |q 41836/1 |goto 36.67,16.36
|next "Court_Of_Farondis_WQ"
step
label quest-43616
Follow the path |goto Highmountain/0 40.82,11.92 < 25 |only if walking
Follow the path |goto 38.19,14.79 < 25 |only if walking
accept WANTED: Bodash the Hoarder##43616 |goto 36.67,16.36
|tip You will accept this quest automatically.
step
kill Bodash the Hoarder##98299 |q 43616/1 |goto 36.67,16.36
|next "Court_Of_Farondis_WQ"
step
label quest-41828
Follow the path |goto Highmountain/0 38.31,41.19 < 30 |only if walking
Follow the river |goto 37.31,44.24 < 30 |only if walking
Enter the cave |goto 37.76,45.70 < 15 |only if walking
accept WANTED: Bristlemaul##41828 |goto Highmountain/0 38.13,45.59
|tip You will accept this quest automatically.
step
kill Bristlemaul##97449 |q 41828/1 |goto 38.13,45.59
|next "Court_Of_Farondis_WQ"
step
label quest-44290
Follow the path |goto Highmountain/0 38.31,41.19 < 30 |only if walking
Follow the river |goto 37.31,44.24 < 30 |only if walking
Enter the cave |goto 37.76,45.70 < 15 |only if walking
accept WANTED: Bristlemaul##44290 |goto Highmountain/0 38.13,45.59
|tip You will accept this quest automatically.
step
kill Bristlemaul##97449 |q 44290/1 |goto 38.13,45.59
|next "Court_Of_Farondis_WQ"
step
label quest-41826
Follow the path |goto Highmountain/0 52.04,44.97 < 30 |only if walking
Follow the path |goto 50.68,41.76 < 30 |only if walking
Follow the path up |goto 49.39,39.70 < 30 |only if walking
accept WANTED: Crawshuk the Hungry##41826 |goto Highmountain/0 48.39,40.53
|tip You will accept this quest automatically.
step
kill Crawshuk the Hungry##97345 |q 41826/1 |goto Highmountain/0 48.39,40.53
|next "Court_Of_Farondis_WQ"
step
label quest-44291
Follow the path |goto Highmountain/0 52.04,44.97 < 30 |only if walking
Follow the path |goto 50.68,41.76 < 30 |only if walking
Follow the path up |goto 49.39,39.70 < 30 |only if walking
accept WANTED: Crawshuk the Hungry##44291 |goto Highmountain/0 48.37,40.18
|tip You will accept this quest automatically.
step
kill Crawshuk the Hungry##97345 |q 44291/1 |goto 48.37,40.18
|next "Court_Of_Farondis_WQ"
step
label quest-43455
Follow the path |goto Highmountain/0 52.90,45.77 < 30 |only if walking
Follow the path |goto 54.36,46.75 < 20 |only if walking
Enter the cave |goto 55.11,44.23 < 10 |walk
Follow the path |goto 54.59,42.79 < 20 |walk
accept WANTED: Devouring Darkness##43455 |goto Highmountain/0 54.42,41.19
|tip You will accept this quest automatically.
step
Follow the path up |goto 55.02,41.78 < 30 |walk
click Kobold Candles
|tip Extinguish all of the candles to summon Devouring Darkness.
kill Devouring Darkness##100495 |q 43455/1 |goto 54.42,41.19
|next "Court_Of_Farondis_WQ"
step
label quest-43617
Follow the path |goto Highmountain/0 52.90,45.77 < 30 |only if walking
Follow the path |goto 54.36,46.75 < 20 |only if walking
Enter the cave |goto 55.11,44.23 < 10 |walk
Follow the path |goto 54.59,42.79 < 20 |walk
accept WANTED: Devouring Darkness##43617 |goto Highmountain/0 54.42,41.19
|tip You will accept this quest automatically.
step
Follow the path up |goto 55.02,41.78 < 30 |walk
click Kobold Candles
|tip Extinguish all of the candles to summon Devouring Darkness.
kill Devouring Darkness##100495 |q 43617/1 |goto 54.42,41.19
|next "Court_Of_Farondis_WQ"
step
label quest-41819
Cross the bridge |goto Highmountain/0 58.56,64.46 < 30 |only if walking
Follow the path up |goto 56.85,63.63 < 30 |only if walking
accept WANTED: Gurbog da Basher##41819 |goto Highmountain/0 56.68,61.60
|tip You will accept this quest automatically.
step
kill Gurbog da Basher##96590 |q 41819/1 |goto 56.68,61.60
|tip He walks around this area around the pond, so you may need to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-43618
Cross the bridge |goto Highmountain/0 58.56,64.46 < 30 |only if walking
Follow the path up |goto 56.85,63.63 < 30 |only if walking
accept WANTED: Gurbog da Basher##43618 |goto Highmountain/0 56.68,61.60
|tip You will accept this quest automatically.
step
kill Gurbog da Basher##96590 |q 43618/1 |goto 56.68,61.60
|tip He walks around this area around the pond, so you may need to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-41818
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept WANTED: Majestic Elderhorn##41818 |goto Highmountain/0 47.40,32.57
|tip You will accept this quest automatically.
step
kill Majestic Elderhorn##96410 |q 41818/1 |goto Highmountain/0 47.40,32.57
|tip It's easiest to wait at this spot for the Majestic Elderhorn.
|next "Court_Of_Farondis_WQ"
step
label quest-44292
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
accept WANTED: Majestic Elderhorn##44292 |goto Highmountain/0 47.04,33.01
|tip You will accept this quest automatically.
step
kill Majestic Elderhorn##96410 |q 44292/1 |goto Highmountain/0 47.04,33.01
|tip It's easiest to wait at this spot for the Majestic Elderhorn.
|next "Court_Of_Farondis_WQ"
step
label quest-41844
accept WANTED: Sekhan##41844 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 41844/1 |goto 36.34,6.52
|next "Court_Of_Farondis_WQ"
step
label quest-41986
accept WANTED: Sekhan##41986 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 41986/1 |goto 36.34,6.52
|next "Court_Of_Farondis_WQ"
step
label quest-44294
accept WANTED: Sekhan##44294 |goto Thunder Totem/0 36.34,6.52
|tip You will accept this quest automatically.
step
kill Sekhan##101077 |q 44294/1 |goto 36.34,6.52
|next "Court_Of_Farondis_WQ"
step
label quest-41821
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
Follow the path |goto 47.05,31.47 < 30 |only if walking
Follow the path |goto 48.41,29.42 < 30 |only if walking
Follow the path down |goto 50.23,26.84 < 30 |only if walking
accept WANTED: Shara Felbreath##41821 |goto Highmountain/0 50.73,26.41
|tip You will accept this quest automatically.
step
kill Shara Felbreath##97093 |q 41821/1 |goto Highmountain/0 50.97,25.62
|next "Court_Of_Farondis_WQ"
step
label quest-43619
Follow the path |goto Highmountain/0 51.98,44.67 < 30 |only if walking
Follow the path |goto 50.43,40.56 < 30 |only if walking
Enter the cave |goto 51.24,37.05 < 30 |only if walking
Cross the bridge |goto 50.34,35.71 < 30 |walk
Follow the path |goto 49.57,34.75 < 30 |walk
Leave the cave |goto 48.15,33.91 < 30 |only if walking
Follow the path |goto 47.05,31.47 < 30 |only if walking
Follow the path |goto 48.41,29.42 < 30 |only if walking
Follow the path down |goto 50.23,26.84 < 30 |only if walking
accept WANTED: Shara Felbreath##43619 |goto Highmountain/0 51.05,25.66
|tip You will accept this quest automatically.
step
kill Shara Felbreath##97093 |q 43619/1 |goto 51.05,25.66
|next "Court_Of_Farondis_WQ"
step
label quest-41838
Follow the path |goto Highmountain/0 39.30,38.08 < 30 |only if walking
Follow the path down |goto 39.47,35.49 < 30 |only if walking
Follow the path |goto 40.68,34.40 < 30 |only if walking
accept Wanted: Slumber##41838 |goto Highmountain/0 41.50,31.76
|tip You will accept this quest automatically.
step
kill Slumber##98890 |q 41838/1 |goto 41.50,31.76
|next "Court_Of_Farondis_WQ"
step
label quest-44293
Follow the path |goto Highmountain/0 39.30,38.08 < 30 |only if walking
Follow the path down |goto 39.47,35.49 < 30 |only if walking
Follow the path |goto 40.68,34.40 < 30 |only if walking
accept Wanted: Slumber##44293 |goto Highmountain/0 41.50,31.76
|tip You will accept this quest automatically.
step
kill Slumber##98890 |q 44293/1 |goto 41.50,31.76
|next "Court_Of_Farondis_WQ"
step
label quest-41227
Cross the bridge |goto Highmountain/0 58.55,64.46 < 30 |only if walking
Follow the path up |goto 57.65,63.32 < 30 |only if walking
Follow the path |goto 56.47,63.24 < 30 |only if walking
Follow the path up |goto 57.79,61.68 < 30 |only if walking
Follow the path up |goto 58.82,61.38 < 30 |only if walking
accept Warden Tower Assault: Cordana's Apex##41227 |goto Highmountain/0 61.28,56.77
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Cordanas_Apex"
step
Slay the Gilneas Brigade Captain |q 41227/2 |goto 61.35,56.62
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Cordanas_Apex"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 41227/1 |goto 60.63,57.49
|next "Court_Of_Farondis_WQ"
step
label quest-41257
Cross the bridge |goto Highmountain/0 58.55,64.46 < 30 |only if walking
Follow the path up |goto 57.65,63.32 < 30 |only if walking
Follow the path |goto 56.47,63.24 < 30 |only if walking
Follow the path up |goto 57.79,61.68 < 30 |only if walking
Follow the path up |goto 58.82,61.38 < 30 |only if walking
accept Warden Tower Assault: Cordana's Apex##41257 |goto Highmountain/0 61.28,56.77
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Cordanas_Apex"
step
Slay the Queensguard Captain |q 41257/2 |goto 61.35,56.62
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Cordanas_Apex"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 41257/1 |goto 60.63,57.49
|next "Court_Of_Farondis_WQ"
step
label quest-41420
Cross the bridge |goto Highmountain/0 35.91,65.13 < 30 |only if walking
Follow the path |goto 35.51,63.42 < 30 |only if walking
Follow the path |goto 33.08,61.58 < 30 |only if walking
Follow the path down |goto 30.63,59.09 < 30 |only if walking
Follow the path down |goto 29.55,56.76 < 30 |only if walking
Follow the path down |goto 26.81,57.94 < 30 |only if walking
accept Warden Tower Assault: Nightwatcher's Perch##41420 |goto Highmountain/0 25.47,56.51
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Nightwatchers_Perch"
step
Slay the Gilneas Brigade Captain |q 41420/2 |goto 24.18,56.58
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Nightwatchers_Perch"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 41420/1 |goto 25.47,56.51
|next "Court_Of_Farondis_WQ"
step
label quest-41421
Cross the bridge |goto Highmountain/0 35.91,65.13 < 30 |only if walking
Follow the path |goto 35.51,63.42 < 30 |only if walking
Follow the path |goto 33.08,61.58 < 30 |only if walking
Follow the path down |goto 30.63,59.09 < 30 |only if walking
Follow the path down |goto 29.55,56.76 < 30 |only if walking
Follow the path down |goto 26.81,57.94 < 30 |only if walking
accept Warden Tower Assault: Nightwatcher's Perch##41421 |goto Highmountain/0 25.47,56.51
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Nightwatchers_Perch"
step
Slay the Queensguard Captain |q 41421/2 |goto 24.18,56.58
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Nightwatchers_Perch"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 41421/1 |goto 25.47,56.51
|next "Court_Of_Farondis_WQ"
step
label quest-41145
Drop down |goto Highmountain/0 36.63,64.69 < 30 |only if walking
Follow the path |goto 38.02,62.60 < 30 |only if walking
accept Water of Life##41145 |goto Highmountain/20 51.82,44.38
|tip You will accept this quest automatically.
stickystart "Destroy_Drogbar_Idols"
stickystart "Violent_Crageaters"
step
kill 3 Drogbar Manathirster##95866 |q 41145/1 |goto Highmountain/21 51.18,55.73
step
label "Destroy_Drogbar_Idols"
click Drogbar Idols
|tip They look like stone objects of various shapes on the ground inside the cave.
Destroy #6# Drogbar Idols |q 41145/3 |goto Highmountain/20 51.82,44.38
step
label "Violent_Crageaters"
kill 6 Violent Crageater##95916 |q 41145/2 |goto 51.82,44.38
|next "Court_Of_Farondis_WQ"
step
label quest-41321
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter The Deep Roads |goto Highmountain/0 53.50,76.13 < 15
accept Weapons of Deathwing##41321 |goto 51.77,74.30
|tip You will accept this quest automatically.
stickystart "Impure"
step
Drop down |goto Highmountain/0 52.23,73.14 < 20 |walk
Follow the path |goto 53.03,74.61 < 15 |walk
kill Uzgarogg the Seer##104244 |q 41321/2 |goto 52.92,75.60
step
Follow the path |goto Highmountain/0 52.24,75.07 < 20 |walk
Cross the bridge |goto 51.28,76.05 < 10 |walk
Follow the path |goto 51.26,78.89 < 20 |only if walking
kill Gazarogg the Stonespeaker##104248 |q 41321/3 |goto 50.50,80.02
step
label "Impure"
click Elementium Slats##6478
kill Twilight Shardkeeper##103876+, Bound Elemental##104243+, Twilight Orelifter##103886+, Greystone Trencher##101645+
collect Impure Elementium Ore##134837 |q 41321/1 |goto 51.22,79.32
|next "Court_Of_Farondis_WQ"
step
label quest-41414
Follow the path down |goto Highmountain/0 59.19,66.19 < 30 |only if walking
Follow the path up |goto 59.45,68.35 < 30 |only if walking
Follow the path up |goto 58.04,73.74 < 30 |only if walking
Follow the path up |goto 56.43,71.72 < 30 |only if walking
Follow the path up |goto 54.69,72.48 < 30 |only if walking
Follow the path |goto 53.96,75.99 < 30 |only if walking
Enter The Deep Roads |goto Highmountain/0 53.50,76.13 < 15
accept Weapons of Deathwing##41414 |goto 51.77,74.30
|tip You will accept this quest automatically.
stickystart "Impure"
step
Drop down |goto Highmountain/0 52.23,73.14 < 20 |walk
Follow the path |goto 53.03,74.61 < 15 |walk
kill Uzgarogg the Seer##104244 |q 41414/2 |goto 52.92,75.60
step
Follow the path |goto Highmountain/0 52.24,75.07 < 20 |walk
Cross the bridge |goto 51.28,76.05 < 10 |walk
Follow the path |goto 51.26,78.89 < 20 |only if walking
kill Gazarogg the Stonespeaker##104248 |q 41414/3 |goto 50.50,80.02
step
label "Impure"
click Elementium Slats##6478
kill Twilight Shardkeeper##103876+, Bound Elemental##104243+, Twilight Orelifter##103886+, Greystone Trencher##101645+
collect Impure Elementium Ore##134837 |q 41414/1 |goto 51.22,79.32
|next "Court_Of_Farondis_WQ"
step
label quest-41525
Follow the path |goto Highmountain/0 51.99,44.69 < 25 |only if walking
Follow the path |goto 50.58,43.61 < 25 |only if walking
Follow the path |goto 48.33,45.22 < 10 |only if walking
accept Wispy Foxflower##41525 |goto 46.31,46.10
|tip You will accept this quest automatically.
step
click Wispy Foxflower##195114
collect 10 Wispy Foxflower##140987 |q 41525/1 |goto 46.31,46.10
|next "Court_Of_Farondis_WQ"
step
label quest-41252
accept Wild Northern Barracuda##41252 |goto Highmountain/0 40.53,10.69
|tip You will accept this quest automatically.
step
talk Nacea Shorewalker##103727 |goto 40.52,10.69
Ask her: _"Can you bless me with the gift of water walking?"_
Fish from Wild Northern Barracuda Schools |cast Fishing##7620
collect 10 Wild Northern Barracuda##134547 |q 41252/1 |goto 39.22,10.22
|next "Court_Of_Farondis_WQ"
step
label quest-41766
Follow the path |goto Highmountain/0 53.57,46.91 < 30 |only if walking
Cross the bridge |goto 54.46,48.21 < 10 |only if walking
Cross the bridge |goto 55.13,50.03 < 10 |only if walking
Follow the path |goto 55.67,51.15 < 20 |only if walking
accept Wildlife Protection Force##41766 |goto Highmountain/0 56.40,53.06
|tip You will accept this quest automatically.
step
click Hungry Icefang##104782
Defeat the Hungry Icefang |q 41766/1 |goto Highmountain/0 56.30,53.18
|next "Court_Of_Farondis_WQ"
step
label quest-41677
accept Work Order: Auto-Hammer##41677 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Auto-Hammer>_
collect 1 Auto-Hammer##132514
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Ransa Greyfeather##106902
turnin Work Order: Auto-Hammer##41677 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41659
accept Work Order: Avalanche Elixirs##41659 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Avalanche Elixirs>_
collect 5 Avalanche Elixirs##127839
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Ransa Greyfeather##106902
turnin Work Order: Avalanche Elixirs##41659 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41641
accept Work Order: Battlebound Armbands##41641 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Armbands>_
collect 1 Battlebound Armbands##128899
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Ransa Greyfeather##106902
turnin Work Order: Battlebound Armbands##41641 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41223
accept Work Order: Foxflower##41223 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Foxflower##124103
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Foxflower##41223 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41240
accept Work Order: Highmountain Salmon##41240 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Highmountain Salmon##124109
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Highmountain Salmon##41240 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41206
accept Work Order: Leystone##41206 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Leystone##41206 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41635
accept Work Order: Leystone Boots##41635 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Boots>_
collect 1 Leystone Boots##123892
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Ransa Greyfeather##106902
turnin Work Order: Leystone Boots##41635 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41647
accept Work Order: Silkweave Robe##41647 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Robe>_
collect 1 Silkweave Robe##126987
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Ransa Greyfeather##106902
turnin Work Order: Silkweave Robe##41647 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41653
accept Work Order: Skystone Pendant##41653 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Skystone Pendant>_
collect 1 Skystone Pendant##130227
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Ransa Greyfeather##106902
turnin Work Order: Skystone Pendant##41653 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41235
accept Work Order: Stonehide Leather##41235 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Ransa Greyfeather##106902
turnin Work Order: Stonehide Leather##41235 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-41671
accept Work Order: Word of Strength##41671 |goto Thunder Totem/0 38.08,46.05
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Strength>_
collect 1 Enchant Cloak - Word of Strength##128545
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Ransa Greyfeather##106902
turnin Work Order: Word of Strength##41671 |goto 38.08,46.05
|next "Court_Of_Farondis_WQ"
step
label quest-43964
Cross the bridge |goto Stormheim/0 40.02,62.82 < 20 |only if walking
Follow the path |goto 42.96,58.94 < 30 |only if walking
Follow the path up |goto 44.06,53.76 < 30 |only if walking
Follow the path up |goto 41.35,53.11 < 30 |only if walking
accept A Jarl's Feast##43964 |goto Stormheim/0 38.61,55.19
|tip You will accept this quest automatically.
step
click Fallen Jarl
Pay your Respects to the Fallen Jarl |q 43964/2 |goto 39.14,54.92
step
clicknpc Feasting Plates
|tip They look like plates of food around this area.
click Potent Horns of Mead
|tip They look like white tusks around this area.
Talk to NPC's around this area
|tip Some will attack you.
Engage in the Revelry |q 43964/1 |goto 38.61,55.19
|next "Court_Of_Farondis_WQ"
step
label quest-42067
Follow the path up |goto Stormheim/0 49.20,31.30 < 20 |only if walking
Follow the path up |goto 48.22,30.10 < 15 |only if walking
Follow the path |goto 47.24,32.34 < 20 |only if walking
Follow the path down |goto 45.58,31.20 < 20 |only if walking
Follow the path down |goto 41.87,27.91 < 20 |only if walking
Follow the path down |goto 40.24,29.36 < 30 |only if walking
Follow the path down |goto 38.15,29.51 < 30 |only if walking
accept All Howl, No Bite##42067 |goto Stormheim/0 38.35,27.38
|tip You will accept this quest automatically.
step
click Chromadon##105842
|tip Chromadon has a special ability, attacks that do more then 250 damage will be blocked.
Defeat Chromadon |q 42067/1 |goto Stormheim/0 38.35,27.38
|next "Court_Of_Farondis_WQ"
step
label quest-41948
Follow the path |goto Stormheim/0 70.74,60.35 < 20 |only if walking
Follow the path |goto 68.01,61.92 < 20 |only if walking
Follow the path |goto 64.03,63.37 < 10 |only if walking
Follow the path |goto Stormheim/0 60.89,65.29 < 30 |only if walking
Follow the stairs up |goto Stormheim/0 61.74,67.90 < 30 |only if walking
accept All Pets Go to Heaven##41948 |goto Stormheim/0 62.68,67.36
|tip You will accept this quest automatically.
step
talk Envoy of the Hunt##105512
Tell him "Let's do battle!"
Defeat Envoy of the Hunt |q 41948/1 |goto Stormheim/0 62.68,67.36
|next "Court_Of_Farondis_WQ"
step
label quest-43951
Follow the path |goto Stormheim/0 39.10,63.96 < 30 |only if walking
click Grapple Point |goto 42.88,64.85 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept An Overdue Debt##43951 |goto Stormheim/0 44.48,69.07
|tip You will accept this quest automatically.
step
click Prisoner Cages
|tip They look like pointed grey metal cages around this area.
Rescue #6# Highmountain Prisoners |q 43951/1 |goto 44.48,69.07
|next "Court_Of_Farondis_WQ"
step
label quest-41451
Follow the path |goto Stormheim/0 39.10,63.96 < 30 |only if walking
click Grapple Point |goto 42.88,64.85 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept Assault on Hrydshal##41451 |goto Stormheim/0 44.35,68.56
|tip You will accept this quest automatically.
stickystart "Slay_Drekirjar_Forces"
step
click Tideskorn Harpoon Launchers
|tip Use the Grapple Points on top of the walls to get up to them.
Destroy #4# Harpoon Launchers |q 41451/2 |goto 44.26,68.43
step
label "Slay_Drekirjar_Forces"
Kill enemies around this area
Slay #15# Drekirjar Forces |q 41451/1 |goto Stormheim/0 44.35,68.56
|next "Court_Of_Farondis_WQ"
step
label quest-42025
Follow the path |goto Stormheim/0 52.97,31.29 < 30 |only if walking
Follow the path up |goto 56.46,30.19 < 20 |only if walking
accept Bareback Brawl##42025 |goto Stormheim/0 59.81,26.62
|tip You will accept this quest automatically.
step
Kill Storm's Reach enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Conquer Beasts or Slay Enemies |q 42025/1 |goto 59.84,26.43
|next "Court_Of_Farondis_WQ"
step
label quest-45072
accept Barrels o' Fun##45072 |goto Stormheim/0 57.69,49.85
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45072/1 |goto 57.71,50.17
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-41935
accept Beasts of Burden##41935 |goto Stormheim/0 62.10,52.09
|tip You will accept this quest automatically.
step
talk Rydyr##105386
Tell him "Let's do battle!"
Defeat Rydyr |q 41935/2 |goto Stormheim/0 62.04,52.03
step
talk Andurs##105387
Tell him "Let's do battle!"
Defeat Andurs |q 41935/1 |goto Stormheim/0 62.18,52.03
|next "Court_Of_Farondis_WQ"
step
label quest-41336
accept Bristly Musken Hide##41336 |goto Stormheim/0 59.84,52.91
|tip You will accept this quest automatically.
step
kill Wild Plains Runehorn##107803+
|tip These can be found all around this area.
|tip Loot and skin them.
collect 12 Bristly Musken Hide##134812 |q 41336/1 |goto Stormheim/0 58.54,51.61
|next "Court_Of_Farondis_WQ"
step
label quest-41938
Follow the path down |goto Stormheim/0 60.71,52.21 < 20 |only if walking
Follow the path down |goto 62.63,51.86 < 20 |only if walking
Follow the path |goto 64.03,48.52 < 30 |only if walking
accept Brothers of Skovald##41938 |goto Stormheim/0 66.18,47.86
|tip You will accept this quest automatically.
step
kill Voldgar##105436 |q 41938/2 |goto 66.95,40.56
step
kill Agnol##105440 |q 41938/3 |goto 66.84,45.69
step
kill Uldgar##105443 |q 41938/1 |goto 64.49,45.75
|next "Court_Of_Farondis_WQ"
step
label quest-41984
click Grapple Point |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Go up the hill |goto 58.89,44.56 < 15 |only if walking
accept The Creeping Mists##41984 |goto Stormheim/0 59.93,43.99
|tip You will accept this quest automatically.
stickystart "Helmouth_Mistcallers"
step
kill Cursebound Captain##105710 |q 41984/2 |goto 61.03,41.80
step
label "Helmouth_Mistcallers"
kill 4 Helmouth Mistcaller##105502 |q 41984/1 |goto 59.93,43.99
|next "Court_Of_Farondis_WQ"
step
label quest-41950
accept Cry More Thunder##41950 |goto Stormheim/0 37.47,64.20 |only Alliance
accept Cry More Thunder##41950 |goto Stormheim/0 44.67,59.51 |only Horde
|tip You will accept this quest automatically.
step
talk Vethir##97979
Begin the Assault on Hrydshal |q 41950/1 |goto 37.47,64.20 |only Alliance
Begin the Assault on Hrydshal |q 41950/1 |goto 44.67,59.51 |only Horde
step
Kill the enemies on the ground as you fly
|tip Use the abilities on your action bar.
|tip Use the Storm's Fury ability to kill the enemies that grapple onto you.
Slay #150# God-King's Minions |q 41950/2 |goto 45.35,70.18
step
Return to Hrydshal Overlook |q 41950/3 |goto 43.73,60.36
|next "Court_Of_Farondis_WQ"
step
label quest-43745
accept Culling the Storm##43745 |goto Stormheim/0 88.53,11.46
|tip You will accept this quest automatically.
step
Follow the path up |goto Stormheim/0 90.56,9.90 < 10 |only if walking
click Grapple Point |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple up |goto 89.03,10.18 < 10 |only if walking
kill 2 Tormented Skysunder##111397 |q 43745/1 |goto 88.53,11.46
|next "Court_Of_Farondis_WQ"
step
label quest-42820
Follow the path |goto Stormheim/0 52.74,30.99 < 30 |only if walking
Follow the path down |goto 51.23,24.94 < 20 |only if walking
Follow the path down |goto 50.17,22.50 < 20 |only if walking
accept DANGER: Aegir Wavecrusher##42820 |goto Stormheim/0 52.40,23.82
|tip You will accept this quest automatically.
step
kill Aegir Wavecrusher##108885 |q 42820/1 |goto 52.40,23.82
|next "Court_Of_Farondis_WQ"
step
label quest-42864
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
Go down the stairs |goto 70.14,44.30 < 20 |only if walking
Enter the portal to Helheim |goto 73.54,39.53
accept DANGER: Captain Dargun##42864 |goto Helheim/0 72.09,19.12
|tip You will accept this quest automatically.
step
Follow the path down |goto 63.42,41.25 < 20 |walk
Follow the path |goto 68.03,32.33 < 20 |walk
Follow the path |goto 67.15,22.87 < 20 |walk
kill Captain Dargun##109163 |q 42864/1 |goto 72.09,19.12
|next "Court_Of_Farondis_WQ"
step
label quest-42785
Cross the bridge |goto Stormheim/0 42.88,59.07 < 20 |only if walking
Follow the path |goto 40.01,62.78 < 20 |only if walking
Enter the cave |goto Stormheim/0 38.42,69.29 < 20 |walk
accept DANGER: Den Mother Ylva##42785 |goto Stormheim/0 38.58,70.56
|tip You will accept this quest automatically.
step
kill Den Mother Ylva##108790 |q 42785/1 |goto 38.58,70.56
|next "Court_Of_Farondis_WQ"
step
label quest-42806
Follow the path down |goto Stormheim/0 60.81,52.55 < 20 |only if walking
Follow the path |goto 65.23,54.56 < 30 |only if walking
accept DANGER: Fjorlag, the Grave's Chill##42806 |goto Stormheim/0 66.50,50.81
|tip You may need to run around this area to find the mob and to accept the quest.
|tip You will accept this quest automatically.
step
kill Fjorlag, the Grave's Chill##108827 |q 42806/1 |goto Stormheim/0 66.50,50.81
|tip He spawns here but pats around this area.
|tip This is an elite enemy, you will need a group to defeat it.
|next "Court_Of_Farondis_WQ"
step
label quest-42798
Cross the bridge |goto Stormheim/0 42.88,59.07 < 20 |only if walking
Follow the path |goto 40.01,62.78 < 20 |only if walking
accept DANGER: Huntress Estrid##42798 |goto Stormheim/0 39.55,65.94
|tip You will accept this quest automatically.
step
kill Huntress Estrid##108822 |q 42798/1 |goto 39.55,65.94
|next "Court_Of_Farondis_WQ"
step
label quest-42964
Follow the path |goto Stormheim/0 56.03,73.36 < 30 |only if walking
click Grapple Point |goto 59.19,70.68 < 10 |only if walking
|tip It's a grey hook. |only if walkingq
accept DANGER: Lagertha##42964 |goto Stormheim/0 61.19,72.52
|tip You will accept this quest automatically.
step
kill Lagertha##109015 |q 42964/1 |goto Stormheim/0 62.27,73.41
|tip This is an elite enemy and you will need a group to kill it.
|next "Court_Of_Farondis_WQ"
step
label quest-42963
Follow the path |goto Stormheim/0 88.72,9.25 < 15 |only if walking
Follow the path |goto 86.38,7.68 < 25 |only if walking
Enter the tomb |goto 83.86,9.48 < 10 |only if walking
Follow the path |goto Stormheim/1 57.94,53.88 < 15 |only if walking
accept DANGER: Rulf Bonesnapper##42963 |goto 50.34,79.37
|tip You will accept this quest automatically.
step
kill Rulf Bonesnapper##109317 |q 42963/1 |goto 50.34,79.37
|next "Court_Of_Farondis_WQ"
step
label quest-42991
Follow the path up |goto Stormheim/0 90.62,10.07 < 20 |only if walking
Follow the path |goto 88.57,9.02 < 20 |only if walking
click Grapple Point |goto 86.77,6.66 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple to the rock |goto 85.89,6.40 < 6 |c |only if walking
step
click Grapple Point |goto 85.72,6.38 < 10 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Grapple to the rock |goto 84.90,6.27 < 6 |c |only if walking
step
Follow the path |goto 83.82,6.47 < 20 |only if walking
Follow the path |goto 82.08,7.00 < 20 |only if walking
Follow the path |goto 80.59,6.42 < 20 |only if walking
Follow the path |goto 78.63,7.65 < 20 |only if walking
accept DANGER: Runeseer Sigvid##42991 |goto Stormheim/0 77.81,9.17
|tip You will accept this quest automatically.
step
kill Runeseer Sigvid##109318 |q 42991/1 |goto 77.81,9.17
|next "Court_Of_Farondis_WQ"
step
label quest-42953
Follow the path up |goto Stormheim/0 90.60,9.99 < 20 |only if walking
Follow the path |goto 88.66,9.15 < 20 |only if walking
Follow the path down |goto 87.16,7.90 < 30 |only if walking
Enter the tomb |goto 83.85,9.50 < 10 |walk
Follow the path |goto Stormheim/1 60.94,54.69 < 20 |walk
Go down the steps |goto 54.10,50.58 < 20 |walk
Follow the path |goto 55.47,39.83 < 10 |walk
accept DANGER: Soulbinder Halldora##42953 |goto 58.53,16.25
|tip You will accept this quest automatically.
step
kill Soulbinder Halldora##109195 |q 42953/1 |goto 58.53,16.25
|next "Court_Of_Farondis_WQ"
step
label quest-41444
Follow the path |goto Stormheim/0 35.71,30.94 < 25 |only if walking
accept Dark Leystone Deposits##41444 |goto 33.54,32.96
|tip You will accept this quest automatically.
step
click Dark Leystone Deposits##247917
collect 10 Dark Leystone Ore##141244 |q 41444/1 |goto 33.54,32.96
|next "Court_Of_Farondis_WQ"
step
label quest-43710
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
accept Dark Runes##43710 |goto Stormheim/0 70.03,44.42
|tip You will accept this quest automatically.
step
click Dark Runes
|tip They look like small grey spikes on the ground around this area.
Destroy #12# Dark Runes |q 43710/1 |goto 70.03,44.42
|next "Court_Of_Farondis_WQ"
step
label quest-41459
Follow the path |goto Stormheim/0 38.16,32.11 < 25 |only if walking
Follow the path |goto 40.08,30.17 < 25 |only if walking
Follow the path |goto 36.86,26.88 < 25 |only if walking
Follow the path |goto 37.00,21.96 < 25 |only if walking
Follow the path |goto 36.26,17.19 < 25 |only if walking
accept Dense Leystone Outcropping##41459 |goto 34.14,13.01
|tip You will accept this quest automatically.
step
click Dense Leystone Outcropping##195122
collect 1 Dense Leystone Ore##141242 |q 41459/1 |goto 34.14,13.01
|next "Court_Of_Farondis_WQ"
step
label quest-44893
Follow the path |goto Stormheim/0 60.68,52.30 < 15 |only if walking
Follow the path |goto 65.24,54.58 < 30 |only if walking
Follow the path |goto 70.21,58.70 < 20 |only if walking
Drop down |goto 70.98,57.66 < 10 |only if walking
Follow the path |goto 72.50,57.41 < 25 |only if walking
Follow the path |goto 75.87,56.91 < 25 |only if walking
Follow the path |goto 79.31,59.47 < 25 |only if walking
Follow the path |goto 80.53,62.94 < 25 |only if walking
Drop down |goto 80.74,67.42 < 15 |only if walking
accept Direbeak Swarm!##44893 |goto 78.14,73.97
|tip You will accept this quest automatically.
step
kill Direbeak Nest##115680+, Young Direbeak##115678+, Direbeak Nest-Keeper##115663+, Direbeak Patriarch##115667+
Cull Direbeak Falcosaurs |q 44893/1 |goto 78.14,73.97
|next "Court_Of_Farondis_WQ"
step
label quest-41794
accept Drakestalker##41794 |goto Stormheim/0 52.63,31.02
|tip You will accept this quest automatically.
step
kill Rampaging Squallhunter##30108+
collect 30 Stormwing Scale##136369 |q 41794/1 |goto 52.63,31.02
|next "Court_Of_Farondis_WQ"
step
label quest-41949
Fly to Cullen's Post |goto Stormheim/0 44.89,59.13 < 50 |c
step
click Grapple Point |goto Stormheim/0 44.90,77.93 |only if walking
|tip It's a grey hook on top of the wall. |only if walking
accept The Drekirjar Return##41949 |goto Stormheim/0 45.29,80.65
|tip You will accept this quest automatically.
step
kill 9 Felskorn Pilferer##92128 |q 41949/2 |goto Stormheim/25 52.63,77.95
|tip They look like imps throughout the cave.
step
kill Felskorn Executioner##91566+
kill Felskorn Trapper##91244+
Slay #8# Drekirjar |q 41949/1 |goto Stormheim/0 43.40,81.90
|next "Court_Of_Farondis_WQ"
step
label quest-42173
Follow the path |goto Stormheim/0 45.94,57.41 < 30 |only if walking
accept Electrosnack##42173 |goto Stormheim/0 49.57,56.84
|tip You will accept this quest automatically.
step
Kill enemies around this area
Use the Lightning Rod ability on their corpses
|tip It appears as a button on the screen.
Feed #20# Ravenous Stormwing Whelps |q 42173/1 |goto 49.57,56.84
|next "Court_Of_Farondis_WQ"
step
label quest-43772
Follow the path |goto Stormheim/0 52.66,31.80 < 30 |only if walking
accept Enigmatic##43772 |goto Stormheim/0 55.21,31.82
|tip You will accept this quest automatically.
step
click Puzzle Box
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43772/1 |goto 55.21,31.82
|next "Court_Of_Farondis_WQ"
step
label quest-41568
Follow the path |goto Stormheim/0 51.72,32.16 < 30 |only if walking
Follow the path |goto 51.96,28.93 < 30 |only if walking
Follow the path down |goto 51.27,25.01 < 20 |only if walking
Follow the path down |goto 50.15,22.54 < 20 |only if walking
Cross the water |goto 54.97,23.32 < 30 |only if walking
accept Felhide##41568 |goto Stormheim/0 58.92,20.72
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41568/1 |goto Stormheim/0 58.70,20.89
|next "Court_Of_Farondis_WQ"
step
label quest-41569
Follow the path |goto Stormheim/0 55.39,73.42 < 20 |only if walking
Cross the water |goto 60.77,73.35 < 20 |only if walking
accept Felhide##41569 |goto Stormheim/0 62.35,75.01
|tip You will accept this quest automatically.
step
Enter the cave |goto Stormheim/0 62.35,75.01
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41569/1 |goto Stormheim/0 63.33,74.82
|next "Court_Of_Farondis_WQ"
step
label quest-41570
Follow the path |goto Stormheim/0 44.79,56.53 < 30 |only if walking
Follow the path |goto 45.07,54.26 < 30 |only if walking
Follow the path |goto 40.26,51.28 < 30 |only if walking
Follow the path up |goto 38.56,53.30 < 20 |only if walking
Follow the path |goto 37.13,52.27 < 20 |only if walking
Follow the path down |goto 35.74,52.07 < 20 |only if walking
Follow the water |goto Stormheim/0 33.84,53.01 < 20 |only if walking
Follow the water |goto 33.58,55.33 < 30 |only if walking
Enter the cave |goto Stormheim/0 32.90,55.72
|tip It's behind the waterfall.
accept Felhide##41570 |goto 32.62,55.84
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41570/1 |goto Stormheim/0 32.04,55.90
|next "Court_Of_Farondis_WQ"
step
label quest-41519
Follow the path |goto Stormheim/0 44.79,56.53 < 30 |only if walking
Follow the path |goto 45.07,54.26 < 30 |only if walking
Follow the path up |goto 40.26,51.28 < 30 |only if walking
Follow the path up |goto 37.96,45.41 < 30 |only if walking
Follow the path |goto 37.72,47.39 < 20 |only if walking
accept Felwort##41519 |goto Stormheim/0 36.67,49.12
|tip You will accept this quest automatically.
step
click Felwort##195114
collect Felwort |q 41519/1 |goto Stormheim/0 36.67,49.12
|next "Court_Of_Farondis_WQ"
step
label quest-41521
Follow the path |goto Stormheim/0 61.02,52.53 < 25 |only if walking
Follow the path |goto 62.61,51.93 < 25 |only if walking
accept Felled Experiment##41521 |goto 63.15,47.78
|tip You will accept this quest automatically.
step
click Felwort##195114
Felwort gathered |q 41521/1 |goto 63.15,47.78
|next "Court_Of_Farondis_WQ"
step
label quest-41296
accept Fjarnskaggl Cluster##41296 |goto Stormheim/0 54.35,31.34
|tip You will accept this quest automatically.
step
click Fjarnskaggl Cluster
Gather the Fjarnskaggl Cluster |q 41296/1 |goto Stormheim/0 55.29,31.08
|next "Court_Of_Farondis_WQ"
step
label quest-41427
Follow the path |goto Stormheim/0 55.54,73.49 < 20 |only if walking
Follow the path |goto 58.71,73.53 < 20 |only if walking
Follow the path |goto 60.35,75.42 < 20 |only if walking
Follow the path |goto 62.18,80.65 < 20 |only if walking
Follow the path |goto 63.86,87.07 < 20 |only if walking
Cross the water |goto 64.19,89.89 < 30 |only if walking
Cross the water |goto 66.42,91.10 < 20 |only if walking
Cross the water |goto 69.69,90.51 < 30 |only if walking
accept Get Vrekt##41427 |goto Stormheim/0 73.09,88.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Rimescale Naga |q 41427/1 |goto 73.09,88.90
|next "Court_Of_Farondis_WQ"
step
label quest-42004
click Grapple Point |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Go up the hill |goto 58.89,44.56 < 15 |only if walking
accept Ghostship##42004 |goto Stormheim/0 60.22,41.47
|tip You will accept this quest automatically.
step
click Ghostship##3365
Steal a Kvaldir ship |q 42004/1 |goto 60.22,41.47
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Purge the Helmouth |q 42004/2 |goto 56.45,42.19
|next "Court_Of_Farondis_WQ"
step
label quest-43721
Follow the shore |goto Stormheim/0 90.29,12.46 < 20 |only if walking
Follow the shore |goto 88.89,15.42 < 20 |only if walking
accept The Helarjar Have Surfaced##43721 |goto Stormheim/0 86.87,15.01
|tip You will accept this quest automatically.
step
kill Helarjar Mystcaller##111325+, Helarjar Berserker##111332+, Hellarjar Soulhunter##111328+
|tip They can be found all around this area.
Slay 15 Helarjar Kvaldirs |q 43721/1 |goto Stormheim/0 85.09,10.89
|next "Court_Of_Farondis_WQ"
step
label quest-44923
Follow the path |goto Stormheim/0 55.54,73.49 < 20 |only if walking
Follow the path |goto 58.71,73.53 < 20 |only if walking
Follow the path |goto 60.35,75.42 < 20 |only if walking
Follow the path |goto 62.18,80.65 < 20 |only if walking
Follow the path |goto 63.86,87.07 < 20 |only if walking
Cross the water |goto 64.19,89.89 < 30 |only if walking
Cross the water |goto 66.42,91.10 < 20 |only if walking
Cross the water |goto 69.69,90.51 < 30 |only if walking
accept Helarjar Landing: Vrekt##44923 |goto Stormheim/0 73.09,88.90
|tip You will accept this quest automatically.
stickystart "killHel"
step
Follow the path up |goto 73.41,87.61 < 20 |only if walking
kill Vaettfang##115846 |q 44923/2 |goto 73.74,86.67
step
label "killHel"
Kill enemies around this area
kill Cursed Sea Dog##116600+, Helhound##115026+, Mist Seer##116180+, Helarjar Marauder##116601+ |q 44923/1 |goto 73.09,88.90
|next "Court_Of_Farondis_WQ"
step
label quest-42013
click Grapple Point |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept The Helmouth##42013 |goto 55.39,43.45
|tip You will accept this quest automatically.
step
Kill enemies around this area
Break the Kvaldir Forces |q 42013/1 |goto 55.39,43.45
|next "Court_Of_Farondis_WQ"
step
label quest-41275
Jump down into the water |goto 44.73,60.66 < 10 |only if walking
accept Huge Stormrays##41275 |goto Stormheim/0 47.01,61.76
|tip You will accept this quest automatically.
step
Fish from the giant fishing pool |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41275/1 |goto Stormheim/0 47.01,61.76
|next "Court_Of_Farondis_WQ"
step
label quest-41615
Follow the path |goto Stormheim/0 55.54,73.49 < 20 |only if walking
Follow the path |goto 58.71,73.53 < 20 |only if walking
Follow the path |goto 60.35,75.42 < 20 |only if walking
accept Huge Stormrays##41615 |goto Stormheim/0 62.57,81.02
|tip You will accept this quest automatically.
step
Fish from the giant fishing pool |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41615/1 |goto Stormheim/0 62.57,81.02
|next "Court_Of_Farondis_WQ"
step
label quest-41614
click Grapple Point |only if walking
|tip It's a grey hook on top of the wall. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 55.22,45.96 < 25 |only if walking
accept Huge Stormrays##41614 |goto 53.89,47.83
|tip You will accept this quest automatically.
step
Fish from the Huge Fever of Stormrays |cast Fishing##131474
collect 10 Huge Stormray##134571 |q 41614/1
|next "Court_Of_Farondis_WQ"
step
label quest-41944
click Grapple Point |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
accept Jarrun's Ladder##41944 |goto Stormheim/0 56.93,46.29
|tip You will accept this quest automatically.
step
talk Trapper Jarrun##105455
Tell him "Let's do battle!"
Defeat Trapper Jarrun |q 41944/1 |goto Stormheim/0 56.93,46.29
|next "Court_Of_Farondis_WQ"
step
label quest-41506
Follow the path down |goto Stormheim/0 56.44,85.48
Follow the path down |goto 59.34,86.79
accept Leystone Basilisks##41506 |goto 58.18,87.69
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514
collect 40 Leystone-Encrusted Spike##134104 |q 41506/1 |goto 58.18,87.69
|tip Mine the basilisk corpses.
|next "Court_Of_Farondis_WQ"
step
label quest-41505
Follow the path |goto Stormheim/0 60.68,52.30 < 15 |only if walking
Follow the path |goto 65.24,54.58 < 30 |only if walking
Follow the path |goto 70.21,58.70 < 20 |only if walking
Drop down |goto 70.98,57.66 < 10 |only if walking
Follow the path |goto 72.50,57.41 < 25 |only if walking
Follow the path |goto 75.87,56.91 < 25 |only if walking
Follow the path |goto 79.31,59.47 < 25 |only if walking
accept Leystone Basilisks##41505 |goto 80.39,66.52
|tip You will accept this quest automatically.
step
kill Leystone Basilisk##103514+
|tip Mine the corpses.
collect 60 Leystone-Encrusted Spike##134104 |q 41505/1 |goto 80.39,66.52
|next "Court_Of_Farondis_WQ"
step
label quest-45049
Follow the path |goto Stormheim/0 44.80,56.52 < 30 |only if walking
Follow the path |goto 43.85,58.14 < 30 |only if walking
Follow the path |goto 41.49,53.02 < 30 |only if walking
Follow the path |goto 39.50,55.22 < 20 |only if walking
accept Like the Wind##45049 |goto 38.14,56.72
|tip You will accept this quest automatically.
step
Goal Reached |q 45049/1 |goto 40.61,62.29
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Court_Of_Farondis_WQ"
step
label quest-41274
Follow the path |goto Stormheim/0 44.81,56.46 < 25 |only if walking
Follow the path |goto 45.05,54.29 < 25 |only if walking
Follow the path |goto 41.47,52.97 < 25 |only if walking
Follow the path |goto 40.73,55.27 < 10 |only if walking
click Grapple Point |goto 39.37,56.16 < 10 |only if walking
|tip It's a grey hook. |only if walking
Follow the path |goto 37.75,56.53 < 10 |only if walking
accept Lively Stormrays##41274 |goto 34.75,53.25
|tip You will accept this quest automatically.
step
Fish from the Lively Stormray schools |cast Fishing##131474
collect 10 Lively Stormray##134570 |q 41274/1 |goto 36.34,55.98
|next "Court_Of_Farondis_WQ"
step
label quest-41602
click Grapple Point |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 56.89,46.29 < 25 |only if walking
accept Lively Stormrays##41602 |goto 56.27,41.84
|tip You will accept this quest automatically.
step
Fish from the Lively Stormray schools |cast Fishing##131474
collect 10 Lively Stormray##134570 |q 41602/1 |goto 56.27,41.84
|next "Court_Of_Farondis_WQ"
step
label quest-43771
Follow the path |goto Stormheim/0 51.04,33.59 < 25 |only if walking
Follow the path |goto 48.74,36.31 < 25 |only if walking
click Grapple Point |goto 45.30,36.32 < 5 |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
click Grapple Point |goto 45.09,35.54 < 5 |only if walking
accept The Magic of Flight##43771 |goto 45.09,35.54
|tip You will accept this quest automatically.
step
click Arcane Artifact
|tip The item is on top the the giant statue's axe.
|tip Jump up into a floating bubble and swim in the bubbles to reach the item.
Find the Item |q 43771/1 |goto 42.47,31.27
|next "Court_Of_Farondis_WQ"
step
label quest-40278
Follow the path |goto Stormheim/0 60.69,52.23 < 15 |only if walking
Follow the path |goto 65.26,54.55 < 30 |only if walking
Follow the path |goto 68.46,54.97 < 30 |only if walking
Follow the path |goto 70.02,52.48 < 30 |only if walking
Follow the path |goto 72.50,52.01 < 20 |only if walking
Follow the path |goto 71.52,55.47 < 20 |only if walking
Follow the path |goto 75.89,56.93 < 30 |only if walking
accept My Beasts's Bidding##40278 |goto Stormheim/0 78.38,57.23
|tip You will accept this quest automatically.
step
talk Robert Craig##98270
Tell him "Let's do battle!"
Defeat Robert Craig |q 40278/1 |goto Stormheim/0 78.38,57.23
|next "Court_Of_Farondis_WQ"
step
label quest-44943
Follow the path |goto Stormheim/0 52.82,30.88 < 30 |only if walking
Jump down into the water here |goto 54.81,27.62 |only if walking
accept Now That's Just Clawful!##44943
|tip You will accept this quest automatically.
step
Go up the path |goto Stormheim/0 55.01,24.73
click Murky's Egg
|tip Its on the end of the ship handing over the water
Locate Murky's Egg |q 44943/1 |goto Stormheim/0 55.40,26.05
stickystart "Clamcrusher"
step
kill Clawspishus##116039 |q 44943/3 |goto Stormheim/0 61.36,20.34
step
label "Clamcrusher"
kill 10 Rockclaw Clamcrusher##116038 |q 44943/2 |goto Stormheim/0 58.21,20.92
|next "Court_Of_Farondis_WQ"
step
label quest-41958
Follow the path |goto Stormheim/0 51.02,33.70 < 25 |only if walking
Follow the path |goto 49.48,36.10 < 25 |only if walking
Follow the path |goto 48.13,39.32 < 25 |only if walking
Follow the path |goto 48.28,40.86 < 15 |only if walking
accept Oh, Ominitron##41958 |goto 48.35,44.80
|tip You will accept this quest automatically.
step
click Ominitron Defense System##0
Defeat the Ominitron Defense System |q 41958/1 |goto 48.35,44.80
|next "Court_Of_Farondis_WQ"
step
label quest-43751
Cross the water |goto Stormheim/0 55.00,68.99 < 30 |only if walking
accept Oh, Ship!##43751 |goto Stormheim/0 54.77,65.86
|tip You will accept this quest automatically.
step
click Grapple Point |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
Grapple Aboard the Deathbringer |q 43751/1 |goto 54.77,65.86
step
kill Dread-Captain Graham##111760 |q 43751/2 |goto 54.59,65.27
step
click Plague Cistern
|tip Jump off the ship after you click it.
Ignite the Powder Kegs |q 43751/3 |goto 54.95,66.01
|next "Court_Of_Farondis_WQ"
step
label quest-43752
Follow the path |goto Stormheim/0 51.89,33.56 < 25 |only if walking
Follow the path down |goto 51.34,25.14 < 20 |only if walking
Follow the path |goto 51.23,22.23 < 20 |only if walking
Follow the path |goto 48.89,17.43 < 25 |only if walking
accept Oh, Ship!##43752 |goto 44.31,15.61
|tip You will accept this quest automatically.
step
click Grapple Point |only if walking
|tip It looks like a bit grey metal hook on the deck of the ship. |only if walking
Grapple Aboard the Deathbringer |q 43752/1 |goto 43.91,15.77
step
kill Captain Nuthals##8092 |q 43752/2 |goto 44.81,15.50
step
click Powder Keg##6477
|tip Jump off the ship after you click it.
Ignite the Powder Kegs |q 43752/3 |goto 44.19,15.72
|next "Court_Of_Farondis_WQ"
step
label quest-43786
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 65.84,51.21 < 30 |only if walking
Enter Haustvald |goto Stormheim/0 68.77,46.51
accept Pesty Nests##43786 |goto Stormheim/0 69.55,45.45
|tip You will accept this quest automatically.
step
click Raven Nests
|tip The nests are up on the rocks around this area.
|tip Use the Grapple Points to reach nests.
|tip The Grapple Points look like metal hooks up on the rocks around this area.
Remove #5# Raven Nests |q 43786/1 |goto 69.55,45.45
|next "Court_Of_Farondis_WQ"
step
label quest-41535
Follow the path |goto Stormheim/0 60.68,52.30 < 15 |only if walking
Follow the path |goto 65.24,54.58 < 30 |only if walking
Follow the path |goto 70.21,58.70 < 20 |only if walking
Drop down |goto 70.98,57.66 < 10 |only if walking
Follow the path |goto 72.50,57.41 < 25 |only if walking
accept Prickly Fjarnskaggl##41535 |goto 79.93,61.92
|tip You will accept this quest automatically.
step
click Prickly Fjarnskaggl##195114
collect 10 Prickly Fjarnskaggl##140960 |q 41535/1 |goto 79.93,61.92
|next "Court_Of_Farondis_WQ"
step
label quest-41925
Follow the path |goto Stormheim/0 60.66,52.14 < 20 |only if walking
Follow the path |goto 64.18,48.53 < 30 |only if walking
Follow the path |goto 66.67,48.87 < 30 |only if walking
Go down the stairs |goto 70.14,44.30 < 20 |only if walking
Enter the portal to Helheim |goto 73.54,39.53
accept Razing Hel##41925 |goto Helheim/0 62.92,29.39
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Helya's Forces |q 41925/1 |goto 62.92,29.39
|next "Court_Of_Farondis_WQ"
step
label quest-42177
Follow the path |goto Stormheim/0 60.69,52.23 < 15 |only if walking
Follow the path |goto 65.26,54.55 < 30 |only if walking
Follow the path |goto 68.46,54.97 < 30 |only if walking
Follow the path |goto 70.02,52.48 < 30 |only if walking
Follow the path |goto 72.50,52.01 < 20 |only if walking
Follow the path |goto 71.52,55.47 < 20 |only if walking
Follow the path |goto 75.89,56.93 < 30 |only if walking
Follow the path |goto 78.26,57.05 < 30 |only if walking
accept Reclaiming Morheim##42177 |goto Stormheim/0 80.79,59.48
|tip You will accept this quest automatically.
stickystart "Slay_Murlocs_Reclaiming_Morheim"
step
click Stolen Vrykul Armaments
|tip They look like wooden shields, spears, and axes on the ground around this area.
Destroy #3# Stolen Armaments |q 42177/2 |goto 80.63,60.03
step
label "Slay_Murlocs_Reclaiming_Morheim"
Kill enemies around this area
Slay #8# Murlocs |q 42177/1 |goto 80.79,59.48
|next "Court_Of_Farondis_WQ"
step
label quest-41926
Follow the path |goto Stormheim/0 44.79,56.68 < 30 |only if walking
Cross the bridge |goto 44.79,56.68 < 20 |only if walking
Follow the path |goto 45.05,50.14 < 20 |only if walking
accept Returning Champion##41926 |goto 43.92,46.53
|tip You will accept this quest automatically.
stickystart "Bloodtotem_Challengers"
stickystart "Mightstone_Challengers"
step
Kill Felskorn enemies around this area
Defeat #3# Felskorn Challengers |q 41926/3 |goto 43.92,46.53
step
label "Bloodtotem_Challengers"
Kill Bloodtotem enemies around this area
Defeat #3# Bloodtotem Challengers |q 41926/2 |goto 43.92,46.53
step
label "Mightstone_Challengers"
Kill Mightstone enemies around this area
Defeat #3# Mightstone Challengers |q 41926/1 |goto 43.92,46.53
|next "Court_Of_Farondis_WQ"
step
label quest-42176
Cross the bridge |goto Stormheim/0 42.84,59.12 < 20 |only if walking
Follow the path up |goto 37.94,65.57 < 30 |only if walking
accept Rise of Skovald##42176 |goto Stormheim/0 35.90,68.95
|tip You will accept this quest automatically.
stickystart "Defiant_Queensguards"
step
kill Queen Bretta##106587 |q 42176/2 |goto 35.69,69.58
step
label "Defiant_Queensguards"
kill 10 Defiant Queensguard##106568 |q 42176/1 |goto 35.85,68.95
|next "Court_Of_Farondis_WQ"
step
label quest-41927
Follow the path |goto Stormheim/0 60.86,52.51 < 10 |only if walking
Follow the path |goto 62.60,51.87 < 30 |only if walking
accept Ruining the Runewood##41927 |goto 64.62,51.26
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Inkbinders |q 41927/1 |goto 64.62,51.26
|next "Court_Of_Farondis_WQ"
step
label quest-43722
Follow the path up |goto Stormheim/0 90.62,10.07 < 20 |only if walking
Follow the path |goto 88.57,9.02 < 20 |only if walking
click Grapple Point |goto 86.77,6.66 < 10 |only if walking
|tip It's a grey hook. |only if walking
Grapple to the rock |goto 85.89,6.40 < 6 |c |only if walking
step
click Grapple Point |goto 85.72,6.38 < 10 |only if walking
|tip It's a grey hook. |only if walking
Grapple to the rock |goto 84.90,6.27 < 6 |c |only if walking
step
Follow the path |goto 83.82,6.47 < 20 |only if walking
Follow the path |goto 82.08,7.00 < 20 |only if walking
Follow the path |goto 80.59,6.42 < 20 |only if walking
Follow the path |goto 78.63,7.65 < 20 |only if walking
accept Sacred Bones##43722 |goto 77.45,7.59
|tip You will accept this quest automatically.
stickystart "Restless Warlords"
step
kill 3 Deathcaller Mystic## |q 43722/1 |goto Stormheim/0 78.26,8.46
|tip These are elite enemies and may require a group to defeat.
step
label "Restless Warlords"
kill 3 Restless Warlord##111338 |q 43722/2 |goto Stormheim/0 80.99,8.56
|tip These are elite enemies and may require a group to defeat.
|next "Court_Of_Farondis_WQ"
step
label quest-42270
Follow the path up |goto Stormheim/0 49.04,31.28 < 20 |only if walking
Follow the path |goto 47.28,32.36 < 20 |only if walking
accept Scourge of the Skies##42270 |goto Stormheim/0 46.53,29.95
|tip You will accept this quest automatically.
step
kill Nithogg##107023 |q 42270/1 |goto 46.53,29.95
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Stay away from Static Sparks when they die. |only if grouprole("DAMAGE")
|tip Avoid standing in front of or behind Nithogg. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing in front of or behind Nithogg. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Nithogg away from the raid. |only if grouprole("TANK")
_EVERYONE:_
|tip Every 20% health Nithogg loses, avoid standing in Crackling Jolt.
|next "Court_Of_Farondis_WQ"
step
label quest-42178
Follow the path |goto Stormheim/0 44.81,56.56 < 30 |only if walking
Follow the path up |goto 45.06,54.24 < 30 |only if walking
Follow the path |goto 40.21,51.35 < 30 |only if walking
Follow the path |goto 38.52,53.26 < 20 |only if walking
Follow the path |goto 37.12,52.30 < 20 |only if walking
Follow the path up |goto 33.86,52.40 < 30 |only if walking
accept Shock Absorber##42178 |goto Stormheim/0 32.34,51.96
|tip You will accept this quest automatically.
step
Follow the path up |goto 32.34,51.96 < 20 |only if walking
Follow the path up |goto 31.74,54.85 < 20 |only if walking
Enter the cave |goto 31.37,57.44 > 10000 |walk
Kill enemies around this area
|tip Walk on the electricity after you kill them.
Walk on Blue Lightning
|tip These are small patches of electricity on the ground throughout the cave.
Charge the Transponder |q 42178/1 |goto Stormheim/9 69.07,63.63
|next "Court_Of_Farondis_WQ"
step
label quest-41300
Follow the path |goto Stormheim/0 65.20,54.55 < 25 |only if walking
Follow the path |goto 66.75,48.86 < 25 |only if walking
accept Singed Fjarnskaggl##41300 |goto 71.39,42.61
|tip You will accept this quest automatically.
step
click Singed Fjarnskaggl##195114
|tip They're burning in the braziers around the area.
collect 10 Singed Fjarnskaggl##135500 |q 41300/1 |goto 71.39,42.61
|next "Court_Of_Farondis_WQ"
step
label quest-41555
Follow the path |goto Stormheim/0 45.36,58.18 < 30 |only if walking
Follow the path |goto 46.71,56.37 < 30 |only if walking
Follow the path |goto 49.43,57.53 < 30 |only if walking
accept Slab of Bacon##41555 |goto Stormheim/0 52.31,58.88
|tip You will accept this quest automatically.
step
kill Well-Fed Musken##103786
collect Thick Slab of Bacon##135511 |q 41555/1 |goto Stormheim/0 52.61,59.56
|next "Court_Of_Farondis_WQ"
step
label quest-41556
Follow the path |goto Stormheim/0 35.12,31.09 < 20 |only if walking
Follow the path up |goto 33.44,32.04 < 20 |only if walking
Follow the path up |goto 33.98,35.53 < 20 |only if walking
Follow the path up |goto 35.20,39.05 < 20 |only if walking
Follow the path |goto 32.86,42.43 < 20 |only if walking
Follow the path |goto 34.16,43.62 < 20 |only if walking
accept Slab of Bacon##41556 |goto Stormheim/0 34.18,45.68
|tip You will accept this quest automatically.
step
kill Well-Fed Musken##103786
collect Thick Slab of Bacon##135511 |q 41556/1 |goto Stormheim/0 34.18,45.68
|next "Court_Of_Farondis_WQ"
step
label quest-41278
click Grapple Point |only if walking
|tip It's a grey hook. |only if walking
Click the first hook |goto Stormheim/0 58.53,48.86 < 6 |only if walking
Click the second hook |goto 58.64,48.56 < 6 |only if walking
Click the third hook |goto 58.16,47.81 < 6 |only if walking
Click the fourth hook |goto 57.65,48.50 < 6 |only if walking
Drop down |goto 57.52,47.55 < 20 |only if walking
Follow the path |goto 56.89,46.29 < 25 |only if walking
accept Slippery Stormrays##41278 |goto 56.09,40.45
|tip You will accept this quest automatically.
step
click Boom Bait##6478
collect 1 Boom Bait##135496 |q 41278/1 |goto 56.09,40.45
step
click Stunned Stormray##0
|tip Use the special action button on your screen and target Slippery Stormray Schools in the water.
|tip The fish will land near your feet, so you can stand on land.
Collect #24# Stunned Stormrays |q 41278/2 |goto 56.09,40.45
|next "Court_Of_Farondis_WQ"
step
label quest-41343
Follow the path |goto Stormheim/0 51.72,32.16 < 30 |only if walking
Follow the path |goto 51.96,28.93 < 30 |only if walking
Follow the path down |goto 51.27,25.01 < 20 |only if walking
Follow the path down |goto 50.15,22.54 < 20 |only if walking
Cross the water |goto 54.97,23.32 < 30 |only if walking
accept Solid Crabshell Fragment##41343 |goto Stormheim/0 59.39,20.50
|tip You will accept this quest automatically.
step
kill Crimson Rockshell##107667+
|tip Loot and Skin them.
collect 8 Solid Crabshell Fragment##134817 |q 41343/1 |goto Stormheim/0 59.39,20.50
|next "Court_Of_Farondis_WQ"
step
label quest-42269
Follow the path up |goto Stormheim/0 90.60,9.94 < 20 |only if walking
Follow the path |goto 88.69,9.19 < 20 |only if walking
Follow the path down |goto 86.07,7.80 < 25 |only if walking
Enter the tomb |goto 83.86,9.49 < 10 |walk
Follow the path |goto Stormheim/1 63.95,55.58 < 15 |walk
Follow the path |goto 50.72,51.85 < 10 |walk
accept The Soultakers##42269 |goto 27.91,45.14
|tip You will accept this quest automatically.
step
kill Captain Hring##106981 |q 42269/1 |goto 27.91,45.14
kill Reaver Jdorn##106982 |q 42269/3 |goto 27.91,45.14
kill Soultrapper Mevra##106984 |q 42269/2 |goto 27.91,45.14
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("DAMAGE")
|tip Kill Cursed Crewman quickly. |only if grouprole("DAMAGE")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("HEALER")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip During Seadog's Scuttle, don't stand between Jdorn and his target. |only if grouprole("TANK")
|tip Pick up Cursed Crewman quickly. |only if grouprole("TANK")
|tip Don't stand in rifts during Soul Rend. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-43827
Follow the path |goto Stormheim/0 60.25,53.61 < 20 |only if walking
Follow the path |goto 62.76,57.85 < 30 |only if walking
Follow the path |goto 60.25,53.61 < 20 |only if walking
Follow the path |goto 65.63,62.32 < 30 |only if walking
accept Stormwing the Portals##43827 |goto Stormheim/0 67.83,65.60
|tip You will accept this quest automatically.
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the North Portal |q 43827/1 |goto 70.04,64.01
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the East Portal |q 43827/2 |goto 69.76,66.44
step
Use the Stormforged Horn |use Stormforged Horn##129161
Destroy the South Portal |q 43827/3 |goto 68.46,69.90
|next "Court_Of_Farondis_WQ"
step
label quest-41445
Follow the path |goto Stormheim/0 54.87,70.78 < 25 |only if walking
Follow the path |goto 55.69,69.44 < 25 |only if walking
accept Stormy Leystone Deposits##41445 |goto 58.45,67.39
|tip You will accept this quest automatically.
step
click Stormy Leystone Deposit##195122
collect 10 Stormy Leystone Ore##141240 |q 41445/1 |goto 58.45,67.39
|next "Court_Of_Farondis_WQ"
step
label quest-41298
accept Supplies Needed: Fjarnskaggl##41298 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Fjarnskaggl##124104
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Fjarnskaggl##41298 |goto 60.28,51.37
|next "Court_Of_Farondis_WQ"
step
label quest-41317
accept Supplies Needed: Leystone##41317 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Leystone##41317 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41345
accept Supplies Needed: Stormscales##41345 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Supplies Needed: Stormscales##41345 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41342
Follow the path |goto Stormheim/0 72.47,57.49 < 25 |only if walking
Follow the path |goto 71.40,55.41 < 25 |only if walking
Follow the path |goto 71.55,53.08 < 15 |only if walking
Follow the path |goto 72.07,51.86 < 15 |only if walking
accept Thick Bear Hide##41342 |goto 70.66,52.25
|tip You will accept this quest automatically.
step
kill Voracious Bear##93095
collect 12 Thick Bear Hide##134816 |q 41342/1 |goto 70.66,52.25
|next "Court_Of_Farondis_WQ"
step
label quest-42182
Follow the path |goto Stormheim/0 60.69,52.23 < 15 |only if walking
Follow the path |goto 62.31,54.09 < 30 |only if walking
Follow the path |goto 65.24,54.58 < 30 |only if walking
Follow the path |goto 68.24,58.35 < 20 |only if walking
Follow the path |goto 69.08,61.51 < 20 |only if walking
Follow the path |goto 71.54,62.05 < 30 |only if walking
accept To Battle!##42182 |goto Stormheim/0 74.31,61.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Dread-Rider Forsaken |q 42182/1 |goto 74.31,61.20
|next "Court_Of_Farondis_WQ"
step
label quest-42183
Follow the path |goto Stormheim/0 60.69,52.23 < 15 |only if walking
Follow the path |goto 62.31,54.09 < 30 |only if walking
Follow the path |goto 65.24,54.58 < 30 |only if walking
Follow the path |goto 68.24,58.35 < 20 |only if walking
Follow the path |goto 69.08,61.51 < 20 |only if walking
Follow the path |goto 71.54,62.05 < 30 |only if walking
accept To Battle!##42183 |goto Stormheim/0 74.31,61.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Dread-Rider Forsaken |q 42183/1 |goto 74.31,61.20
|next "Court_Of_Farondis_WQ"
step
label quest-41930
Follow the path |goto Stormheim/0 60.25,53.61 < 20 |only if walking
Follow the path |goto Stormheim/0 62.76,57.85 < 30 |only if walking
Follow the path |goto Stormheim/0 65.63,62.32 < 30 |only if walking
accept Valor Calls##41930 |goto Stormheim/0 68.01,65.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the ability buttons on the screen to kill enemies faster.
click Tideskorn Banners
|tip They look like brown strips of cloth hanging from walls around this area.
click Felblood Cups
|tip They look like small white drinking cups sitting on objects around this area.
click Nether Circles
|tip They look like green globe portals on the ground around this area.
Defend the Gates of Valor |q 41930/1 |goto 68.01,65.83
|next "Court_Of_Farondis_WQ"
step
label quest-43963
Follow the path |goto Stormheim/0 60.69,52.23 < 15 |only if walking
Follow the path |goto 65.26,54.55 < 30 |only if walking
Follow the path |goto 68.46,54.97 < 30 |only if walking
Follow the path |goto 70.02,52.48 < 30 |only if walking
Follow the path |goto 72.50,52.01 < 20 |only if walking
Follow the path |goto 71.52,55.47 < 20 |only if walking
accept Vampirates!##43963 |goto 72.58,54.99
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip You can find more on the ships in the water.
Collect #10# Stolen Artifacts |q 43963/1 |goto 72.58,54.99
|next "Court_Of_Farondis_WQ"
step
label quest-41666
accept Vantus Rune Work Order: Nythendra##41666 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Nythendra>_
collect 1 Vantus Rune: Nythendra##128988
|tip You can purchase one of these from the Auction House if you don't have the technique.
step
talk Valdemar Stormseeker##106904
turnin Vantus Rune Work Order: Nythendra##41666 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-43454
Follow the path |goto Stormheim/0 37.58,32.08 < 20 |only if walking
Follow the path down |goto 39.04,33.41 < 15 |only if walking
Follow the path |goto 40.33,31.50 < 20 |only if walking
Enter the cave |goto Stormheim/0 41.42,31.93
accept WANTED: Egyl the Enduring##43454 |goto Stormheim/0 41.55,32.62
|tip You will accept this quest automatically.
step
kill Egyl the Enduring##98188 |q 43454/1 |goto Stormheim/0 41.50,33.59
|next "Court_Of_Farondis_WQ"
step
label quest-43620
Follow the path |goto Stormheim/0 37.58,32.08 < 20 |only if walking
Follow the path down |goto 39.04,33.41 < 15 |only if walking
Follow the path |goto 40.33,31.50 < 20 |only if walking
Enter the cave |goto Stormheim/0 41.42,31.93
accept WANTED: Egyl the Enduring##43620 |goto Stormheim/0 41.55,32.62
|tip You will accept this quest automatically.
step
kill Egyl the Enduring##98188 |q 43620/1 |goto Stormheim/0 41.50,33.59
|next "Court_Of_Farondis_WQ"
step
label quest-43434
Fly to Cullen's Point |goto Stormheim/0 44.91,59.14 |c |only if walking
step
Follow the path |goto Stormheim/0 44.01,81.31 < 30 |only if walking
Grapple up here |goto Stormheim/0 45.93,82.54 < 10 |only if walking
accept WANTED: Fathnyr##43434 |goto Stormheim/0 46.80,84.01 |walk
|tip You will accept this quest automatically.
step
kill Fathnyr##91803 |q 43434/1 |goto 46.80,84.01
|next "Court_Of_Farondis_WQ"
step
label quest-43621
Fly to Cullen's Point |goto Stormheim/0 44.91,59.14 |c |only if walking
step
Follow the path |goto Stormheim/0 44.01,81.31 < 30 |only if walking
Grapple up here |goto Stormheim/0 45.93,82.54 < 10 |only if walking
accept WANTED: Fathnyr##43621 |goto Stormheim/0 46.80,84.01 |walk
|tip You will accept this quest automatically.
step
kill Fathnyr##91803 |q 43621/1 |goto 46.80,84.01
|next "Court_Of_Farondis_WQ"
step
label quest-43436
Cross the bridge |goto Stormheim/0 42.86,59.11 < 20 |only if walking
Follow the path |goto 39.25,63.83 < 30 |only if walking
click Grapple Point |goto 40.34,65.79 < 10 |only if walking
|tip It's the gray hook on the wall. |only if walking
accept WANTED: Glimar Ironfist##43436
|tip You will accept this quest automatically.
step
kill Glimar Ironfist##91529 |q 43436/1 |goto 41.48,66.66
|next "Court_Of_Farondis_WQ"
step
label quest-43622
Cross the bridge |goto Stormheim/0 42.86,59.11 < 20 |only if walking
Follow the path |goto Stormheim/0 39.25,63.83 < 30 |only if walking
click Grapple Point |goto 40.34,65.79 < 10 |only if walking
|tip It's the gray hook on the wall. |only if walking
accept WANTED: Glimar Ironfist##43622
|tip You will accept this quest automatically.
step
kill Glimar Ironfist##91529 |q 43622/1 |goto 41.48,66.66
|next "Court_Of_Farondis_WQ"
step
label quest-43453
Follow the path |goto Stormheim/0 55.33,73.49 < 20 |only if walking
Follow the path |goto 56.22,75.82 < 30 |only if walking
Follow the path up |goto 57.40,79.19 < 20 |only if walking
Follow the path |goto 54.01,76.60 < 30 |only if walking
accept WANTED: Hannval the Butcher##43453 |goto Stormheim/0 51.63,74.53
|tip You will accept this quest automatically.
step
kill Hannval the Butcher##107926 |q 43453/1 |goto 51.62,74.55
|next "Court_Of_Farondis_WQ"
step
label quest-43623
Follow the path |goto Stormheim/0 55.33,73.49 < 20 |only if walking
Follow the path |goto 56.22,75.82 < 30 |only if walking
Follow the path up |goto 57.40,79.19 < 20 |only if walking
Follow the path |goto 54.01,76.60 < 30 |only if walking
accept WANTED: Hannval the Butcher##43623 |goto Stormheim/0 51.73,74.63
|tip You will accept this quest automatically.
step
kill Hannval the Butcher##107926 |q 43623/1 |goto Stormheim/0 51.73,74.63
|next "Court_Of_Farondis_WQ"
step
label quest-43452
Follow the path |goto Stormheim/0 54.92,70.67 < 20 |only if walking
Cross the water |goto 55.59,69.25 < 20 |only if walking
Follow the path |goto 58.09,66.99 < 30 |only if walking
Follow the path |goto 61.01,64.36 < 20 |only if walking
accept WANTED: Isel the Hammer##43452 |goto Stormheim/0 61.67,61.19
|tip You will accept this quest automatically.
step
Enter the building |goto 61.87,60.80 < 10 |walk
kill Isel the Hammer##94413 |q 43452/1 |goto Stormheim/0 62.05,60.49
|next "Court_Of_Farondis_WQ"
step
label quest-43624
Follow the path |goto Stormheim/0 54.92,70.67 < 20 |only if walking
Cross the water |goto 55.59,69.25 < 20 |only if walking
Follow the path |goto 58.09,66.99 < 30 |only if walking
Follow the path |goto 61.01,64.36 < 20 |only if walking
accept WANTED: Isel the Hammer##43624 |goto Stormheim/0 61.67,61.19
|tip You will accept this quest automatically.
step
Enter the building |goto 61.87,60.80 < 10 |walk
kill Isel the Hammer##94413 |q 43624/1 |goto Stormheim/0 62.05,60.49
|next "Court_Of_Farondis_WQ"
step
label quest-43438
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 64.65,48.84 < 30 |only if walking
Follow the path |goto 66.04,43.82 < 30 |only if walking
accept WANTED: Nameless King##43438 |goto Stormheim/0 67.24,39.95
|tip You will accept this quest automatically.
step
click Offering Shrine
kill The Nameless King##92763 |q 43438/1 |goto 67.24,39.95
|next "Court_Of_Farondis_WQ"
step
label quest-43625
Follow the path down |goto Stormheim/0 60.67,52.18 < 20 |only if walking
Follow the path |goto 64.65,48.84 < 30 |only if walking
Follow the path |goto 66.04,43.82 < 30 |only if walking
accept WANTED: Nameless King##43625 |goto Stormheim/0 67.24,39.95
|tip You will accept this quest automatically.
step
click Offering Shrine
kill The Nameless King##92763 |q 43625/1 |goto 67.24,39.95
|next "Court_Of_Farondis_WQ"
step
label quest-43437
Cross the bridge |goto Stormheim/0 44.15,60.37 < 30 |only if walking
click Grapple Point |goto 44.91,63.97 < 10 |only if walking
|tip It's a grey hook on the wall. |only if walking
Follow the path |goto 44.42,67.93 < 20 |only if walking
Follow the path up |goto 43.51,69.68 < 20 |only if walking
Enter the building |goto Stormheim/0 41.82,71.28 < 15 |walk
accept WANTED: Thane Irglov##43437 |goto Stormheim/0 41.18,71.90
|tip You will accept this quest automatically.
step
kill Erling the Lightningborn##91893
kill Asger Jarlborn##91895
kill Strider Cuyler##91894
Watch the dialogue
kill Thane Irglov the Merciless##91892 |q 43437/1 |goto 40.81,72.25
|next "Court_Of_Farondis_WQ"
step
label quest-43626
Cross the bridge |goto Stormheim/0 44.15,60.37 < 30 |only if walking
click Grapple Point |goto 44.91,63.97 < 10 |only if walking
|tip It's a grey hook on the wall. |only if walking
Follow the path |goto 44.42,67.93 < 20 |only if walking
Follow the path up |goto 43.51,69.68 < 20 |only if walking
Enter the building |goto Stormheim/0 41.82,71.28 < 15 |walk
accept WANTED: Thane Irglov##43626
|tip You will accept this quest automatically.
step
kill Erling the Lightningborn##91893
kill Asger Jarlborn##91895
kill Strider Cuyler##91894
Watch the dialogue
kill Thane Irglov the Merciless##91892 |q 43626/1 |goto 40.81,72.25
|next "Court_Of_Farondis_WQ"
step
label quest-43450
Follow the path |goto Stormheim/0 44.79,56.60 < 30 |only if walking
Cross the bridge |goto 45.17,53.02 < 20 |only if walking
accept WANTED: Tiptog the Lost##43450 |goto Stormheim/0 45.70,49.90
|tip You will accept this quest automatically.
step
kill Tiptog the Lost##93166 |q 43450/1 |goto 45.87,49.64
|tip He's a big ettin that walks around this area, so you may have to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-43627
Follow the path |goto Stormheim/0 44.79,56.60 < 30 |only if walking
Cross the bridge |goto 45.17,53.02 < 20 |only if walking
accept WANTED: Tiptog the Lost##43627 |goto Stormheim/0 45.70,49.90
|tip You will accept this quest automatically.
step
kill Tiptog the Lost##93166 |q 43627/1 |goto 45.87,49.64
|tip He's a big ettin that walks around this area, so you may have to search for him.
|next "Court_Of_Farondis_WQ"
step
label quest-43451
Follow the path down |goto Stormheim/0 60.68,52.17 < 10 |only if walking
Drop down |goto 63.94,52.98 < 20 |only if walking
accept WANTED: Urgev the Flayer##43451 |goto Stormheim/0 64.84,51.74
|tip You will accept this quest automatically.
step
kill Urgev the Flayer##93401 |q 43451/1 |goto 64.84,51.74
|next "Court_Of_Farondis_WQ"
step
label quest-43628
Follow the path down |goto Stormheim/0 60.68,52.17 < 10 |only if walking
Drop down |goto 63.94,52.98 < 20 |only if walking
accept WANTED: Urgev the Flayer##43628 |goto Stormheim/0 64.84,51.74
|tip You will accept this quest automatically.
step
kill Urgev the Flayer##93401 |q 43628/1 |goto 64.84,51.74
|next "Court_Of_Farondis_WQ"
step
label quest-43598
Follow the path down |goto Stormheim/0 55.81,85.71 < 20 |only if walking
Follow the path down |goto 59.25,86.96 < 20 |only if walking
accept Warden Tower Assault: Blackhawk's Bulwark##43598 |goto Stormheim/0 61.62,91.89
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Blackhawks_Bulwark"
step
Slay the Gilneas Brigade Captain |q 43598/2 |goto 62.10,93.92
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Blackhawks_Bulwark"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43598/1 |goto 61.62,91.89
|next "Court_Of_Farondis_WQ"
step
label quest-43599
Follow the path down |goto Stormheim/0 55.81,85.71 < 20 |only if walking
Follow the path down |goto 59.25,86.96 < 20 |only if walking
accept Warden Tower Assault: Blackhawk's Bulwark##43599 |goto Stormheim/0 61.62,91.89
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Blackhawks_Bulwark"
step
Slay the Queensguard Captain |q 43599/2 |goto 62.10,93.92
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Blackhawks_Bulwark"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43599/1 |goto 61.62,91.89
|next "Court_Of_Farondis_WQ"
step
label quest-43600
Follow the path |goto Stormheim/0 52.53,30.41 < 30 |only if walking
Follow the path |goto 51.74,26.32 < 30 |only if walking
accept Warden Tower Assault: Whisperwind's Citadel##43600 |goto Stormheim/0 47.15,21.74
|tip You will accept this quest automatically.
stickystart "Alliance_Forces_Whisperwinds_Citadel"
step
Slay the Gilneas Brigade Captain |q 43600/2 |goto 48.96,20.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Alliance_Forces_Whisperwinds_Citadel"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Alliance Forces or Players |q 43600/1 |goto 47.15,21.74
|next "Court_Of_Farondis_WQ"
step
label quest-43601
Follow the path |goto Stormheim/0 52.53,30.41 < 30 |only if walking
Follow the path |goto 51.74,26.32 < 30 |only if walking
accept Warden Tower Assault: Whisperwind's Citadel##43601 |goto Stormheim/0 47.15,21.74
|tip You will accept this quest automatically.
stickystart "Horde_Forces_Whisperwinds_Citadel"
step
Slay the Queensguard Captain |q 43601/2 |goto 48.96,20.26
|tip They walk around at the top of the tower.
|tip The npc you have to kill isn't always the same.
step
label "Horde_Forces_Whisperwinds_Citadel"
Kill enemies around this area
|tip WARNING: You will be flagged for PvP by being in this area.
Kill Horde Forces or Players |q 43601/1 |goto 47.15,21.74
|next "Court_Of_Farondis_WQ"
step
label quest-41297
accept Work Order: Fjarnskaggl##41297 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Fjarnskaggl##124104
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Fjarnskaggl##41297 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41678
accept Work Order: Gunpack##41678 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Gunpack>_
collect 1 Gunpack##132513
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Gunpack##41678 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41313
accept Work Order: Leystone##41313 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Leystone##41313 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41636
accept Work Order: Leystone Breastplate##41636 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Breastplate>_
collect 1 Leystone Breastplate##123891
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Leystone Breastplate##41636 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41654
accept Work Order: Queen's Opal Loop##41654 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Queen's Opal Loop>_
collect 1 Queen's Opal Loop##136711
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Queen's Opal Loop##41654 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41648
accept Work Order: Silkweave Bracers##41648 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Bracers>_
collect 1 Silkweave Bracers##126994
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Silkweave Bracers##41648 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41660
accept Work Order: Skaggldrynk##41660 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Skaggldrynk>_
collect 5 Skaggldrynk##127840
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Skaggldrynk##41660 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41277
accept Work Order: Stormrays##41277 |goto Stormheim/0 60.36,50.98
|tip You will accept this quest automatically.
step
collect 40 Stormray##124110
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Stormrays##41277 |goto Stormheim/0 60.28,51.37
|next "Court_Of_Farondis_WQ"
step
label quest-41344
accept Work Order: Stormscales##41344 |goto Stormheim/0 60.36,50.98
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Leatherworking or purchase them from the Auction House.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Stormscales##41344 |goto Stormheim/0 60.28,51.37
|next "Court_Of_Farondis_WQ"
step
label quest-41642
accept Work Order: Warhide Footpads##41642 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Footpads>_
collect 1 Warhide Footpads##128877
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Warhide Footpads##41642 |goto Stormheim/0 60.28,51.37
|next "Court_Of_Farondis_WQ"
step
label quest-41672
accept Work Order: Word of Haste##41672 |goto Stormheim/0 60.26,51.39
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Haste>_
collect 1 Enchant Ring - Word of Haste##128538
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Valdemar Stormseeker##106904
turnin Work Order: Word of Haste##41672 |goto 60.26,51.39
|next "Court_Of_Farondis_WQ"
step
label quest-41936
Cross the water |goto Stormheim/0 55.64,69.46 < 20 |only if walking
Follow the path |goto 58.05,67.29 < 30 |only if walking
Follow the path |goto 59.63,66.18 < 20 |only if walking
accept You Have Been Challenged##41936 |goto Stormheim/0 61.06,68.13
|tip You will accept this quest automatically.
step
Watch the dialogue
kill Bretta the Bold##105399
Defeat the Challenger |q 41936/1 |count 1 |goto 61.06,68.13
step
Watch the dialogue
kill Lafayla Mightblade##105432
Defeat the Challenger |q 41936/1 |count 2 |goto 61.06,68.13
step
Watch the dialogue
kill Silent Shale##105433
Defeat the Challenger |q 41936/1 |count 3 |goto 61.06,68.13
step
Watch the dialogue
kill Froijla Axebearer##105424
Defeat the Challenger |q 41936/1 |count 4 |goto 61.06,68.13
|next "Court_Of_Farondis_WQ"
step
label quest-42859
accept A Draught of Hope##42859 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
Follow the path |goto 48.84,83.60 < 20 |only if walking
Follow the path |goto 50.91,82.41 < 20 |only if walking
talk Ciele##109442
Obtain Arcwine from Ciele |q 42859/1 |goto 51.87,79.89
step
talk Nightborne Wretch##109409+
|tip All around this whole area, you will likely have to search for them.
Feed #8# Nightborne Wretches |q 42859/2 |goto 49.85,76.88
|next "Court_Of_Farondis_WQ"
step
label quest-42969
accept A Spy in Our Midst##42969 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
Hide at the Rendezvous Location |q 42969/1 |goto 46.16,75.04
|tip Upstairs inside the building.
step
Watch the dialogue
Follow the Nightborne Spy |q 42969/2 |goto 50.26,76.89
|tip Keep him in your sights as he walks, but don't follow too close.
|tip Stay out of the blue circle on the ground around him.
step
kill Lieutenant Piet##109408 |q 42969/3 |goto 50.42,77.24
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-42111
accept Aggressive Reconnaisance##42111 |goto Suramar/0 32.58,58.95
|tip You will accept this quest automatically.
step
Kill enemies around this area
kill Abhorrent Artificer##106339+
collect Legion Ammunition##141022 |n
click Fel Cannons
|tip They look like big metal demon cannons around this area.
|tip You need Legion Ammunition to use them.
|tip Shoot the enemies flying in the air with the Fel Cannons.
Complete the Attack on Felsoul Hold |q 42111/1 |goto 31.73,63.65
|next "Court_Of_Farondis_WQ"
step
label quest-43445
accept Air Superiority##43445 |goto Suramar/0 25.27,27.99
|tip You will accept this quest automatically.
step
clicknpc Moonfall Riding Hippogryph##110565
Kill the enemies on the ground as you fly
|tip Use the Unstable Mana ability on your action bar.
Slay #100# Nightborne |q 43445/1 |goto 27.43,21.83
|next "Court_Of_Farondis_WQ"
step
label quest-43512
Follow the path |goto Suramar/0 34.14,54.10 < 25 |only if walking
Follow the path |goto 33.13,56.57 < 25 |only if walking
Follow the path down |goto 32.46,59.13 < 25 |only if walking
Follow the path |goto 32.08,63.67 < 25 |only if walking
accept Ana-Mouz##43512 |goto 31.11,65.96
|tip You will accept this quest automatically.
step
kill Ana-Mouz##109943 |q 43512/1 |goto 31.11,65.96
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Avoid standing in front of Ana-Mouz. |only if grouprole("DAMAGE")
|tip Kill Lesser Minions spawned by Gaseous Breath. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing in front of Ana-Mouz. |only if grouprole("HEALER")
|tip Dispel Mother's Embrace. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Don't face Ana-Mouz towards the raid. |only if grouprole("TANK")
_EVERYONE:_
|tip Avoid standing in Fel Geyser.
|next "Court_Of_Farondis_WQ"
step
label quest-44802
accept Ancient Guidance##44802 |goto Suramar/0 30.83,11.03
|tip You will accept this quest automatically.
step
Go up the stairs |goto 31.01,9.34 < 15 |only if walking
Go up the stairs |goto 31.71,8.15 < 15 |only if walking
Go up the stairs |goto 34.01,10.48 < 15 |only if walking
Follow the path |goto 36.68,12.57 < 15 |only if walking
Follow the path |goto 39.17,14.85 < 25 |only if walking
kill Vis'ileth##115881 |q 44802/1 |goto 41.44,18.42
|next "Court_Of_Farondis_WQ"
step
label quest-41283
Follow the path |goto Suramar/0 25.29,28.06 < 25 |only if walking
Follow the path |goto 27.05,21.31 < 25 |only if walking
Follow the path |goto 24.55,19.88 < 25 |only if walking
accept The Angler Mangler##41283 |goto 25.87,15.81
|tip You will accept this quest automatically.
step
kill Gobo##104331 |q 41283/1 |goto 25.87,15.81
|tip Gobo swims up and down the river.
|next "Court_Of_Farondis_WQ"
step
label quest-44769
accept Arming the Populace##44769 |goto Suramar/0 52.07,79.12
|tip You will accept this quest automatically.
step
click Nightborne Arms Caches
|tip They look like chests made of wood and metal on the ground all around this area.
collect Nightborne Armaments##142216 |n
Use the Nightborne Armaments near Rebellious Citizens |use Nightborne Armaments##142216
|tip They are all around this area.
Arm #6# Rebellious Citizens |q 44769/1 |goto 51.25,78.79
|next "Court_Of_Farondis_WQ"
step
label quest-44780
Follow the path |goto Suramar/0 51.51,79.19 < 20 |only if walking
Follow the path |goto 50.03,79.90 < 15 |only if walking
Follow the path |goto 48.84,79.73 < 15 |only if walking
accept Backlash##44780 |goto 47.60,81.60
|tip You will accept this quest automatically.
step
kill Duskwatch Punisher##115806+, Vengeful Wrathguard##114876+, Wyrmtongue Pilferer##114874+
Avenge the Waning Crescent |q 44780/1 |goto 48.43,83.65
|next "Court_Of_Farondis_WQ"
step
label quest-45068
accept Barrels o' Fun##45068 |goto Suramar/0 36.02,47.07
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45068/1 |goto 36.02,47.07
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-43435
accept The Battle Rages On##43435 |goto Suramar/0 34.19,20.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the Summon Trap Rune ability that appears as a button on the screen.
|tip Lure enemies into the trap you place on the ground.
Slay #50# Nightborne Forces |q 43435/1 |goto 34.19,20.54
|next "Court_Of_Farondis_WQ"
step
label quest-41493
Go up the path |goto Suramar/0 21.41,19.81
Continue up |goto 20.68,17.04
Follow the path |goto 22.12,13.44
accept Brimstone Destroyer##41493 |goto 24.45,10.87
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41493/1 |goto 24.45,10.87
|next "Court_Of_Farondis_WQ"
step
label quest-41492
Follow the path |goto Azsuna/0 64.18,31.07 < 25 |only if walking
Follow the path |goto 66.12,31.51 < 25 |only if walking
Follow the path |goto 67.53,33.00 < 25 |only if walking
Follow the path |goto 67.34,35.07 < 25 |only if walking
Follow the path |goto Suramar/0 24.81,88.80 < 25 |only if walking |notravel
Follow the path |goto 27.08,90.43 < 25 |only if walking
accept Brimstone Destroyer##41492 |goto 24.45,10.87
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41492/1 |goto 29.01,91.15
|next "Court_Of_Farondis_WQ"
step
label quest-41491
Follow the path |goto Suramar/0 32.57,48.48 |only if walking
Follow the path |goto 29.05,47.94 < 25 |only if walking
Follow the path |goto 25.56,52.01 < 25 |only if walking
Follow the path |goto 23.29,57.91 < 25 |only if walking
accept Brimstone Destroyer##41491 |goto 23.10,61.27
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41491/1 |goto 23.10,61.27
|next "Court_Of_Farondis_WQ"
step
label quest-41990
accept Chopped##41990 |goto Suramar/0 62.96,60.73
|tip You will accept this quest automatically.
step
talk Varenne##105674
Tell him "Let's do battle!"
Defeat Varenne |q 41990/1 |goto Suramar/0 62.96,60.73
|next "Court_Of_Farondis_WQ"
step
label quest-45307
Follow the path down |goto Suramar/0 67.37,44.56 < 20 |only if walking
Follow the path |goto Suramar/0 69.66,47.91 < 30 |only if walking
accept Claws for Alarm!##45307 |goto Suramar/0 73.63,52.14
|tip You will accept this quest automatically.
step
Follow the water |goto 81.04,53.61 < 30 |only if walking
click Murky's Egg
Locate Murky's Egg |q 45307/1 |goto 82.05,54.38
stickystart "Assault_Sashjtar_Ruins_Claws_For_Alarm_WQ"
step
Follow the path up |goto 82.14,56.05 < 20 |only if walking
Run down the stairs |goto 82.26,59.04 < 20 |only if walking
Follow the path |goto 81.74,60.70 < 20 |only if walking
kill Sashj'tar Culinarian##116489 |q 45307/2 |goto 83.56,61.63
step
label "Assault_Sashjtar_Ruins_Claws_For_Alarm_WQ"
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Sashj'tar Ruins |q 45307/3 |goto 82.26,61.38
step
Stop Controlling Murky |outvehicle |c
|tip Click the yellow arrow on your action bar.
|tip Get to a safe place first.
|next "Court_Of_Farondis_WQ"
step
label quest-41914
Enter the building |goto Suramar/0 59.36,43.01
accept Clear the Catacombs##41914 |goto Suramar/35 54.24,87.58
|tip You will accept this quest automatically.
step
Click the Ancient Catacomb Eggs
Defeat the Ancient Catacomb Egg |q 41914/1 |goto Suramar/35 54.24,87.58
|next "Court_Of_Farondis_WQ"
step
label quest-42151
accept Clear the Skies##42151 |goto Suramar/0 32.48,59.11
|tip You will accept this quest automatically.
step
kill Abhorrent Artificer##106339+
collect Legion Ammunition##141022 |n
click Fel Cannons
|tip They look like big metal machines around this area.
|tip You need Legion Ammunition to use the Fel Cannons.
|tip Use the abilities on your action bar to shoot at Sinister Shriekers flying in the sky.
Shoot Down #12# Sinister Shriekers |q 42151/1 |goto 31.89,63.71
|next "Court_Of_Farondis_WQ"
step
label quest-44067
accept Consolidating Power##44067 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
Run through the bushes |goto 58.01,63.05 < 20 |only if walking
Use the Nightblade Pendant on Leleyna |use Nightblade Pendant##141253
kill Leleyna##112531 |q 44067/3 |goto 57.82,62.04
|tip Inside the building.
step
Use the Nightblade Pendant on Callus |use Nightblade Pendant##141253
kill Callus##112489 |q 44067/1 |goto 59.91,58.33
|tip Inside the building.
step
Follow the path |goto 60.75,61.30 < 30 |only if walking
Use the Nightblade Pendant on Garion |use Nightblade Pendant##141253
kill Garion##112530  |q 44067/2 |goto 61.93,60.92
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-44816
Follow the path |goto Suramar/0 33.04,53.03 < 25 |only if walking
Follow the path |goto 33.10,56.69 < 25 |only if walking
accept Continued Exposure##44816 |goto 32.53,59.01
|tip You will accept this quest automatically.
step
Follow the path down |goto 32.53,59.01 < 15 |only if walking
Follow the path |goto 31.82,63.52 < 25 |only if walking
Follow the path |goto 30.78,69.21 < 25 |only if walking
Follow the path |goto 29.96,78.92 < 25 |only if walking
Follow the path |goto 32.92,82.24 < 25 |only if walking
click Volatile Fel##116084
|tip They look like green spheres floating in the air.
Use the targeting orb to expose Withered mobs to the fel |use Withered Targeting Orb##142509
Withered Exposed to Volatile Fel |q 44816/1 |goto 34.25,80.92
|next "Court_Of_Farondis_WQ"
step
label quest-44856
Cross the bridge |goto Suramar/0 24.26,31.92 < 30 |only if walking
accept Cut the Cattitude##44856 |goto Suramar/0 22.40,30.22
|tip You will accept this quest automatically.
step
Chase Defiant Feathermoon Kittens
|tip They're running around on the ground all around this area.
|tip Position yourself and run towards the Defiant Feathermoon Kittens so that they run southwest to Yowlon.
|tip You can see Yowlon as a yellow circle on your minimap.
Herd #3# Lost Feathermane Kittens |q 44856/1 |goto 22.35,28.23
|next "Court_Of_Farondis_WQ"
step
label quest-44113
Leave the water here |goto Suramar/0 52.82,74.34 < 20 |only if walking
Run onto the teleport pad |goto Suramar/0 53.12,71.47 < 10 |only if walking
Follow the path |goto Suramar/0 54.77,72.45 < 20 |only if walking
accept DANGER: Achronos##44113 |goto Suramar/0 55.82,73.97
|tip You will accept this quest automatically.
step
kill Achronos##112705 |q 44113/1 |goto 56.24,74.65
|tip Up on the walkway.
|next "Court_Of_Farondis_WQ"
step
label quest-44118
accept DANGER: Auditor Esiel##44118 |goto Suramar/0 57.05,67.71
|tip You will accept this quest automatically.
step
kill Auditor Esiel##112758 |q 44118/1 |goto Suramar/0 57.05,67.71
|tip You will need a group to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-44121
accept DANGER: Az'jatar##44121 |goto Suramar/0 80.70,60.72
|tip You will accept this quest automatically.
step
kill Az'jatar##112759 |q 44121/1 |goto 81.32,62.73
|tip This is a group quest, you will likely need help to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-41697
Follow the path |goto Suramar/0 33.11,52.91 < 25 |only if walking
Follow the path |goto 29.89,53.68 < 25 |only if walking
Follow the path |goto 27.53,53.74 < 25 |only if walking
accept DANGER: Colerian, Alteria, and Selenyi##41697 |goto 24.40,54.36
|tip You will accept this quest automatically.
step
kill Colerian##104519, Alteria##104521, Selenyi##104522 |q 41697/1 |goto 24.40,54.36
|next "Court_Of_Farondis_WQ"
step
label quest-44114
Follow the path |goto Suramar/0 50.09,79.96 < 20 |n |only if walking
Follow the path |goto Suramar/0 49.39,80.50 < 20 |n |only if walking
Run up the stairs |goto Suramar/0 48.56,79.15 < 20 |n |only if walking
Cross the water |goto Suramar/0 47.59,77.22 < 20 |n |only if walking
Run up the stairs |goto Suramar/0 46.57,76.31 < 20 |c |q 44114 |future
step
Run up the stairs |goto 46.95,77.60 < 20 |only if walking
Continue up the stairs |goto 46.60,78.04 < 20 |only if walking
Cross the bridge |goto 46.32,76.60 < 20 |only if walking
Follow the path |goto 47.42,76.38 < 20 |only if walking
accept DANGER: Magistrix Vilessa##44114 |goto 48.30,77.53
|tip You will accept this quest automatically.
step
kill Magistrix Vilessa##112757 |q 44114/1 |goto 49.65,79.48
|tip She walks around on the roof of the building.
|tip You may need help to kill her.
|next "Court_Of_Farondis_WQ"
step
label quest-42799
accept DANGER: Oglok the Furious##42799 |goto Suramar/0 66.97,55.54
|tip You will accept this quest automatically.
step
kill Oglok the Furious##105899 |q 42799/1 |goto 66.97,55.54
|next "Court_Of_Farondis_WQ"
step
label quest-42797
accept DANGER: Scythemaster Cil'raman##42797 |goto Suramar/33 60.02,58.32
|tip You will accept this quest automatically.
step
kill Scythemaster Cil'raman##105728 |q 42797/1 |goto 60.02,58.32
|next "Court_Of_Farondis_WQ"
step
label quest-44122
accept DANGER: Sorallus##44122 |goto Suramar/0 29.33,88.91
|tip You will accept this quest automatically.
step
Enter the Halls of the Eclipse |goto 28.93,85.06 < 20 |walk
Run down the stairs |goto 27.05,87.29 < 15 |walk
kill Sorallus##112756 |q 44122/1 |goto 29.33,88.91
|next "Court_Of_Farondis_WQ"
step
label quest-44119
accept DANGER: Volshax, Breaker of Will##44119 |goto Suramar/0 49.20,58.45
|tip You will accept this quest automatically.
step
kill Volshax, Breaker of Will##112760 |q 44119/1 |goto 49.21,58.40
|next "Court_Of_Farondis_WQ"
step
label quest-41446
accept Darkened Felslate Deposits##41446 |goto Suramar/0 30.92,29.26
|tip You will accept this quest automatically.
step
click Darkened Felslate Deposit##195122
collect Darkened Felslate##141249 |q 41446/1 |goto 30.86,29.10
|next "Court_Of_Farondis_WQ"
step
label quest-44801
accept Defending Shal'aran##44801 |goto Suramar/0 34.07,49.34
|tip You will accept this quest automatically.
stickystart "Slay_Duskwatch_Forces_Defend_ShalAran"
step
Follow the path up |goto 32.93,48.35 < 20 |only if walking
kill Duskrider Silaryn##117155 |q 44801/2 |goto 30.88,53.56
step
label "Slay_Duskwatch_Forces_Defend_ShalAran"
Kill Duskwatch enemies around this area
|tip Starving Felstalkers will also give credit for the quest.
Slay #12# Duskwatch Forces |q 44801/1 |goto 31.69,53.18
|next "Court_Of_Farondis_WQ"
step
label quest-41347
Follow the path |goto Suramar/0 34.19,50.86 < 25 |only if walking
Follow the path |goto 33.26,52.89 < 20 |only if walking
Follow the path down |goto 32.75,58.78 < 20 |only if walking
Follow the path |goto 31.89,63.59 < 20 |only if walking
Follow the path down |goto 31.62,68.59 < 25 |only if walking
Follow the path down |goto 30.26,74.95 < 25 |only if walking
accept Extra-Rancid Felhound Hide##41347 |goto 29.75,81.10
|tip You will accept this quest automatically.
step
Follow the path down |goto 29.65,81.16 < 20 |only if walking
kill Felsoul Ravener##108314+
|tip Skin the corpses.
collect 12 Extra-Rancid Felhound Hide##134819 |q 41347/1 |goto 32.91,76.90
|next "Court_Of_Farondis_WQ"
step
label quest-42089
accept The Fallen Ones##42089 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
stickystart "Kill_Fal'dorei"
step
Carefully jump down into the water |goto Suramar/0 21.16,42.92 > 10000 |only if walking
kill Webbed Victim##105676+
|tip They look like squirming white cocoons on the around this area.
Free #6# Webbed Victims |q 42089/2 |goto Suramar/33 46.56,43.32
step
label "Kill_Fal'dorei"
Kill Fal'dorei enemies around this area
Kill #10# Fal'dorei |q 42089/1 |goto Suramar/33 46.56,43.32
|next "Court_Of_Farondis_WQ"
step
label quest-41573
Follow the path |goto Suramar/0 64.41,43.13 < 25 |only if walking
Follow the path |goto 67.41,44.64 < 25 |only if walking
Follow the path |goto 69.65,47.93 < 25 |only if walking
Follow the path |goto 71.35,47.03 < 25 |only if walking
accept Felhide##41573 |goto 73.99,48.43
|tip You will accept this quest automatically.
step
Follow the path |goto 75.01,49.19 < 25 |only if walking
Follow the path |goto 72.58,47.22 < 25 |only if walking
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41573/1 |goto 73.56,47.46
|next "Court_Of_Farondis_WQ"
step
label quest-41572
Follow the path |goto Suramar/0 32.91,47.17 < 25 |only if walking
Follow the path |goto 34.53,42.43 < 25 |only if walking
Follow the path |goto 32.88,40.16 < 25 |only if walking
Follow the path |goto 33.62,39.26 < 18 |only if walking
Follow the path |goto 32.98,34.61 < 25 |only if walking
Follow the path |goto 35.15,30.23 < 25 |only if walking
accept Felhide##41572 |goto 36.84,30.30
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41572/1 |goto 36.84,30.30
|next "Court_Of_Farondis_WQ"
step
label quest-41508
accept Felslate Basilisks##41508 |goto Suramar/0 31.99,54.70
|tip You will accept this quest automatically.
step
kill Felslate Basilisk##114113+
click Felslate Basilisk##114113
|tip Mine the basilisk corpses.
collect Felslate-Encrusted Spike##134105 |q 41508/1 |goto 31.99,54.70
|next "Court_Of_Farondis_WQ"
step
label quest-41352
Follow the path |goto Suramar/0 34.14,54.10 < 25 |only if walking
Follow the path |goto 33.13,56.57 < 25 |only if walking
Follow the path down |goto 32.46,59.13 < 25 |only if walking
Follow the path |goto 32.08,63.67 < 25 |only if walking
Follow the path down |goto 30.53,69.66 < 25 |only if walking
Follow the path |goto 30.28,79.47 < 25 |only if walking
Follow the path |goto 35.67,78.51 < 25 |only if walking
accept Felslate Basilisks##41352 |goto 33.22,76.04
|tip You will accept this quest automatically.
step
kill Felslate Basilisk##114113+
|tip Mine the corpses.
collect 60 Felslate-Encrusted Spike##134105 |q 41352/1
|next "Court_Of_Farondis_WQ"
step
label quest-41522
Follow the path |goto Suramar/0 32.92,47.16 < 25 |only if walking
Follow the path |goto 31.14,41.93 < 25 |only if walking
Follow the path |goto 31.71,36.32 < 25 |only if walking
accept Felled Experiment##41522 |goto Suramar/0 33.26,33.34
|tip You will accept this quest automatically.
step
click Felwort##0
Felwort gathered |q 41522/1 |goto Suramar/0 33.26,33.34
|next "Court_Of_Farondis_WQ"
step
label quest-43930
accept Fiends of Tel'anor##43930 |goto Suramar/0 45.91,40.65
|tip You will accept this quest automatically.
stickystart "Slay_Disturbed_Spirits"
step
Kill Cliffclutch enemies around this area
Slay #8# Harpies |q 43930/1 |goto 45.61,36.58
step
label "Slay_Disturbed_Spirits"
Kill Disturbed enemies around this area
Slay #10# Disturbed Spirits |q 43930/2 |goto 45.61,36.58
|next "Court_Of_Farondis_WQ"
step
label quest-40337
Follow the path |goto Suramar/0 33.02,53.00 < 25 |only if walking
Follow the path |goto 30.30,53.55 < 25 |only if walking
Follow the path |goto 25.85,55.11 < 25 |only if walking
Follow the path |goto 24.30,59.20 < 25 |only if walking
Drop down to the ledge below |goto 24.77,62.79 < 25 |only if walking
accept Flummoxed##40337 |goto 25.20,62.49
|tip You will accept this quest automatically.
step
talk Master Tamer Flummox##97709
Tell him "Let's do battle!"
Defeat Master Tamer Flummox |q 40337/1 |goto 25.20,62.49
|next "Court_Of_Farondis_WQ"
step
label quest-43932
accept Forces of Oppression##43932 |goto Suramar/0 48.45,76.36
|tip You will accept this quest automatically.
step
Kill enemies around this area
Assault the Guards and Demons |q 43932/1 |goto 48.45,76.36
|next "Court_Of_Farondis_WQ"
step
label quest-42209
accept Freeing the Taken##42209 |goto Suramar/0 46.03,64.99
|tip You will accept this quest automatically.
step
kill Duskwatch Scion##108096+
collect 4 Control Orb##138301 |n
click Containment Fields
|tip They look like purple bubble cages around this area.
Free #4# Prisoners |q 42209/1 |goto 47.91,65.39
|next "Court_Of_Farondis_WQ"
step
label quest-42071
accept Honoring the Past##42071 |goto Suramar/0 45.63,42.65
|tip You will accept this quest automatically.
step
click Ancient Monument##3365+
|tip They look like stone stools on the ground around this area.
Activate #10# Monuments |q 42071/1 |goto 45.50,36.05
|next "Court_Of_Farondis_WQ"
step
label quest-41617
Follow the path |goto Suramar/0 26.16,29.85 < 25 |only if walking
Follow the path |goto 28.69,29.79 < 8 |only if walking
Follow the path |goto 29.30,28.83 < 8 |only if walking
Follow the path |goto 31.21,28.23 < 15 |only if walking
Follow the path |goto 32.56,26.87 < 25 |only if walking
accept Huge Runescale Koi##41617 |goto 34.41,25.60
|tip You will accept this quest automatically.
step
Fish from the Huge Runescale Koi School |cast Fishing##131474
collect 10 Huge Runescale Koi##134574 |q 41617/1 |goto 34.41,25.60
|next "Court_Of_Farondis_WQ"
step
label quest-44805
accept In the Thick of It##44805 |goto Suramar/0 61.05,45.11
|tip You will accept this quest automatically.
stickystart "Troops"
step
Follow the path |goto 63.00,44.55 < 25 |only if walking
Follow the path |goto 60.66,46.40 < 25 |only if walking
Enter the building |goto 60.19,47.83 < 15 |walk
kill Captain Fiora##116223 |q 44805/2 |goto Suramar/0 60.61,48.24
step
label "Troops"
kill Nightborne Trapper##100778+, Felborne Torturer##116225+, Felborne Punisher##116218+ |q 44805/1 |goto 61.05,45.11
|next "Court_Of_Farondis_WQ"
step
label quest-42169
accept Left for Dead##42169 |goto Suramar/0 28.90,81.69
|tip You will accept this quest automatically.
step
click Prison Shackles
|tip They look like gray columns with Nightfallen standing next to them inside this cave.
Free #8# Shackled Nightfallen |q 42169/1 |goto 28.90,81.69
|next "Court_Of_Farondis_WQ"
step
label quest-43774
accept Ley Race##43774 |goto Suramar/0 31.79,46.70
|tip You will accept this quest automatically.
step
clicknpc Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43774/1 |goto 31.79,46.70
|next "Court_Of_Farondis_WQ"
step
label quest-43583
accept Life Finds a Way##43583 |goto Suramar/0 51.85,59.71
|tip You will accept this quest automatically.
step
Run up the stairs |goto 52.01,57.58 < 20 |only if walking
Follow the path |goto 51.58,54.42 < 20 |only if walking
Follow the path |goto 50.16,52.58 < 20 |only if walking
Enter the cave |goto 47.87,52.29 < 15 |walk
clicknpc Su'esh##111062
Release Su'esh |q 43583/1 |goto 46.99,53.06
step
Follow the path |goto 50.21,52.62 < 15 |walk
|tip Use the abilities on your action bar to kill enemies.
Escape the Menagerie |q 43583/2 |goto 52.08,56.14
step
Kill enemies around this area
|tip Use the abilities on your action bar to kill enemies.
Assault the Court of Stars |q 43583/3 |goto 54.22,58.01
|tip Click the yellow arrow button on your action bar to stop controlling Su'esh when you are finished.
|tip You will be taken to a safe place.
|next "Court_Of_Farondis_WQ"
step
label quest-44744
accept Lifelines##44744 |goto Suramar/0 47.45,81.97
|tip You will accept this quest automatically.
step
Cross the bridge |goto 48.38,80.46 < 20 |only if walking
Run up the stairs |goto 48.49,79.06 < 20 |only if walking
Follow the path |goto 49.34,76.27 < 20 |only if walking
Follow the path |goto 49.85,74.84 < 20 |only if walking
Kill enemies around this area
Defend the Arcwine Distribution |q 44744/1 |goto 49.27,71.30
|next "Court_Of_Farondis_WQ"
step
label quest-45032
Follow the path |goto Suramar/0 30.97,9.45 < 25 |only if walking
Follow the path |goto 32.75,9.19 < 10 |only if walking
Follow the path |goto 36.73,12.62 < 25 |only if walking
Follow the path |goto 40.40,16.58 < 25 |only if walking
accept Like the Wind##45032 |goto 41.21,21.40
|tip You will accept this quest automatically.
step
Goal Reached |q 45032/1 |goto 40.87,21.38
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Court_Of_Farondis_WQ"
step
label quest-41279
Follow the path |goto Suramar/0 34.83,50.52 < 25 |only if walking
Follow the path |goto 36.78,52.83 < 20 |only if walking
accept Lively Runescale Koi##41279 |goto 37.42,55.66
|tip You will accept this quest automatically.
step
Fish from the Lively Runescale Koi schools |cast Fishing##131474
collect 10 Lively Runescale Koi##134573 |q 41279/1 |goto 37.42,55.66
|next "Court_Of_Farondis_WQ"
step
label quest-43777
accept The Magic of Flight##43777 |goto Suramar/0 38.52,23.69
|tip You will accept this quest automatically.
step
Follow the path down |goto 38.81,24.54 < 15 |only if walking
click Arcane Artifact
|tip The item is floating under the bridge.
|tip Jump up into a floating bubble and swim in the bubble to reach the item.
Find the Item |q 43777/1 |goto 38.47,23.53
|next "Court_Of_Farondis_WQ"
step
label quest-41931
Follow the path |goto Suramar/0 24.44,32.07 < 25 |only if walking
Follow the path |goto 22.69,30.51 < 25 |only if walking
Follow the path |goto 20.99,32.70 < 25 |only if walking
accept Mana Tap##41931 |goto 19.95,35.26
|tip You will accept this quest automatically.
step
Click Surging Mana Crystal##0
Defeat the Manafiends |q 41931/1 |goto 19.95,35.26
|next "Court_Of_Farondis_WQ"
step
label quest-41895
accept The Master of Pets##41895 |goto Suramar/0 51.99,54.89
|tip You will accept this quest automatically.
step
talk Aulier##105250
Tell him "Let's do battle!"
Defeat Aulier |q 41895/1 |goto Suramar/0 51.99,54.89
|next "Court_Of_Farondis_WQ"
step
label quest-42880
accept Meeting their Quota##42880 |goto Suramar/0 60.66,56.59
|tip You will accept this quest automatically.
step
talk Vintner Iltheux##109202
|tip Inside the building.
Speak with Vintner Iltheux |q 42880/1 |goto 60.66,56.59
step
Produce Unfortified Arcwine |q 42880/2 |goto 60.52,56.50
|tip Click the 3 objects on the table when Vintner Iltheux tells you to add certain ingredients.
|tip Jump repeatedly in the tub nearby when she tells you to.
|next "Court_Of_Farondis_WQ"
step
label quest-43513
Follow the path |goto Suramar/0 25.19,32.79 < 25 |only if walking
Follow the path |goto 25.73,37.91 < 25 |only if walking
Follow the path |goto 23.15,39.86 < 20 |only if walking
Follow the path |goto 21.09,39.06 < 20 |only if walking
Follow the path |goto 19.44,41.44 < 20 |only if walking
Drop off the ledge into the water |goto 20.39,42.16 < 10 |only if walking
Enter the tunnels |goto Suramar/33 46.56,42.76 < 200 |noway |c
step
Follow the path |goto 40.18,42.24 < 15 |only if walking
Follow the path |goto 44.85,55.14 < 15 |only if walking
Follow the path |goto 41.18,68.30 < 15 |only if walking
accept Na'zak the Fiend##43513 |goto 41.18,68.30
|tip You will accept this quest automatically.
step
kill Na'zak the Fiend##110321 |q 43513/1 |goto 41.18,68.30
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Avoid standing infront of Na'zak during Corroding Spray. |only if grouprole("DAMAGE")
|tip Collect rubble on the ground before Na'zak can absorb them. |only if grouprole("DAMAGE")
|tip Free allies by attacking Web Wrap. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Avoid standing infront of Na'zak during Corroding Spray. |only if grouprole("HEALER")
|tip Collect rubble on the ground before Na'zak can absorb them. |only if grouprole("HEALER")
|tip Be prepared for big heals during Ley Infusion. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Face Na'zak away from the raid during Corroding Spray. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-44857
Cross the bridge |goto Suramar/0 24.33,31.99 < 30 |only if walking
Follow the road |goto Suramar/0 21.74,29.12 < 30 |only if walking
Follow the path |goto Suramar/0 19.06,25.55 < 30 |only if walking
accept Not There, Not Then, Not Forever##44857 |goto Suramar/0 18.98,23.74
|tip You will accept this quest automatically.
step
Kill Darkfiend enemies around this area
collect Satyr Horn##137189+ |n
|tip You need these to destroy the totems.
Use the Satyr Horns next to Darkfiend Totmes |use Satyr Horn##137189
|tip They look like white totem poles with red cratches in them around this area.
Purify the Corruption |q 44857/1 |goto 18.99,23.31
|next "Court_Of_Farondis_WQ"
step
label quest-42106
accept Party Crasher##42106 |goto Suramar/0 52.99,71.66
|tip You will accept this quest automatically.
step
talk Eo'vyn##112288
Speak with Eo'vyn |q 42106/1 |goto 52.99,71.66
step
talk Eo'vyn##112288
collect Flask of Arcflame##140346 |goto 52.99,71.66 |q 42106
step
Use the Flask of Arcflame on Pleasure Boats |use Flask of Arcflame##140346
|tip They look like large boats docked around this area.
|tip Aim the green circle to be on the deck of the ship.
Burn #5# Pleasure Boats |q 42106/2 |goto 53.89,72.30
|next "Court_Of_Farondis_WQ"
step
label quest-42830
accept Pest Management##42830 |goto Suramar/0 61.97,57.05
|tip You will accept this quest automatically.
stickystart "Tattered_Silkwings"
step
clicknpc Shadescale Flyeater##109023+
|tip They look like Mana Wyrms around this area.
Collect #8# Shadescale Flyeaters |q 42830/1 |goto 61.97,57.05
step
label "Tattered_Silkwings"
kill 8 Tattered Silkwing##109180 |q 42830/2 |goto 61.97,57.05
|next "Court_Of_Farondis_WQ"
step
label quest-44812
Follow the path |goto Suramar/0 63.63,42.81 < 25 |only if walking
Follow the path |goto 61.11,46.30 < 25 |only if walking
Follow the path |goto 61.87,51.99 < 25 |only if walking
accept Running on Empty##44812 |goto 59.30,55.06
|tip You will accept this quest automatically.
stickystart "Water"
step
click Shal'dorei Foodstuff##3365
|tip They look like rectangle boxes on the ground.
|tip Check inside buildings and around crates for these.
Steal #5# Shal'dorei Foodstuffs |q 44812/1 |goto 59.30,55.06
step
label "Water"
click Magically Purified Water##3365
|tip They look like small barrels on the ground.
Steal #3# Magically Purified Water |q 44812/2 |goto 59.30,55.06
|next "Court_Of_Farondis_WQ"
step
label quest-44799
Run down the stairs |goto Suramar/0 46.00,66.43 < 20 |only if walking
accept Safe Keeping##44799 |goto Suramar/0 46.81,69.83
|tip You will accept this quest automatically.
step
Cross the bridge |goto 47.03,75.61 < 20 |only if walking
Follow the path up |goto 45.56,76.98 < 20 |only if walking
talk Desperate Refugee##115705+
|tip They look like scared or kneeling npc's all around this area.
|tip Any nearby enemies will attack you after talking to Desperate Refugees.
|tip They will follow you. Bring them to this building to rescue them.
Rescue #5# Desperate Refugees |q 44799/1 |goto 45.96,79.77
|next "Court_Of_Farondis_WQ"
step
label quest-42962
accept Secret Correspondence##42962 |goto Suramar/0 46.10,64.66
|tip You will accept this quest automatically.
step
Use the Nightborne Spellblade on Nightborne Couriers |use Nightborne Spellblade##137299
|tip They run into and out of the building here, so just wait here for them to run to you.
|tip Loot them after you kill them with the quest item.
collect 3 Stack of Letters##137601 |q 42962/1 |goto 46.10,64.66
|next "Court_Of_Farondis_WQ"
step
label quest-42725
accept Sharing the Wealth##42725 |goto Suramar/0 47.46,81.97
|tip You will accept this quest automatically.
step
click Bottles of Arcwine
|tip They look like tall skinny-necked blue bottles sitting on countertops around this area.
click Casks of Arcwine
|tip They look like purple barrels laying on the ground around this area.
|tip Bring the Casks of Arcwine to Deline and click the Gondola boat nearby to deliver them.
Deliver #20# Bottles of Arcwine to Deline |q 42725/1 |goto 51.18,76.14
|next "Court_Of_Farondis_WQ"
step
label quest-42082
Enter the Temple of Fal'adora |goto Suramar/0 22.86,35.79 < 10
Follow the path |goto Suramar/32 44.82,32.02 < 10
accept The Shattered Locus##42082 |goto 36.24,50.64
|tip You will accept this quest automatically.
step
kill Shardmaiden##105554+, Shardback Skitterer##105613+
click Energetic Shard##6477
Charge Farodin's Lodestone |q 42082/1 |goto 36.24,50.64
|next "Court_Of_Farondis_WQ"
step
label quest-44815
accept Sick of the Sycophants##44815 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
Use the Telemancy Orbs on groups of Loyalist Sycophants |use Telemancy Orbs##142401
|tip They are all around this area.
kill 20 Loyalist Sycophant##113705 |q 44815/1 |goto 58.55,62.75
|next "Court_Of_Farondis_WQ"
step
label quest-42090
accept Skittering Subjects##42090 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
step
Carefully jump down into the water |goto 21.16,42.92 > 10000 |only if walking
Use the Satchel of Locklimb Powder on Leyline Spiderlings |use Satchel of Locklimb Powder##140916
|tip They look like small purple spiders on the ground around this area.
clicknpc Leyline Spiderling##105756+
Collect #12# Leyline Spiderlings |q 42090/1 |goto Suramar/33 46.56,43.32
|next "Court_Of_Farondis_WQ"
step
label quest-41557
Follow the path up |goto Suramar/0 40.39,26.19
Follow the path up |goto Suramar/0 40.19,28.30
accept Slab of Bacon##41557 |goto Suramar/0 39.42,29.36
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect Thick Slab of Bacon##135511 |q 41557/1 |goto Suramar/0 38.94,29.54
|next "Court_Of_Farondis_WQ"
step
label quest-41558
Follow the path |goto Suramar/0 32.74,48.46 < 25 |only if walking
Follow the path |goto 29.23,47.76 < 25 |only if walking
Follow the path |goto 25.38,51.82 < 25 |only if walking
accept Slab of Bacon##41558 |goto 24.53,49.49
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect 1 Thick Slab of Bacon##135511 |q 41558/1 |goto 24.53,49.49
|next "Court_Of_Farondis_WQ"
step
label quest-41262
Follow the path |goto Suramar/0 64.57,43.31 < 25 |only if walking
Follow the path |goto 67.37,44.59 < 15 |only if walking
Follow the path |goto 68.47,45.74 < 20 |only if walking
Follow the path |goto 68.12,48.63 < 25 |only if walking
Follow the path |goto 69.70,47.94 < 25 |only if walking
Follow the path |goto 71.54,47.02 < 25 |only if walking
Follow the path |goto 72.98,49.39 < 25 |only if walking
accept Slab of Bacon##41262 |goto 75.89,50.12
|tip You will accept this quest automatically.
step
kill Baconlisk##103787
collect 1 Thick Slab of Bacon##135511 |q 41262/1 |goto 75.89,50.12
|next "Court_Of_Farondis_WQ"
step
label quest-41301
Follow the path |goto Suramar/0 33.18,47.79 < 25 |only if walking
Follow the path |goto 32.53,46.40 < 25 |only if walking
Follow the path |goto 35.14,43.33 < 25 |only if walking
Follow the path |goto 34.45,39.31 < 25 |only if walking
accept Starlight Rose Cluster##41301 |goto 35.59,38.35
|tip You will accept this quest automatically.
step
click Starlight Rose Cluster##0
Starlight Rose Cluster gathered |q 41301/1 |goto 35.59,38.35
|next "Court_Of_Farondis_WQ"
step
label quest-41548
Follow the path |goto Suramar/0 32.69,48.44 < 25 |only if walking
Follow the path |goto 28.89,45.53 < 25 |only if walking
Follow the path |goto 27.38,48.68 < 25 |only if walking
accept Starlight Rose Cluster##41548 |goto 25.63,50.53
|tip You will accept this quest automatically.
step
click Starlight Rose Cluster##0
|tip A Starlight Saber will jump out of the tree and attack you.
Starlight Rose Cluster gathered |q 41548/1 |goto 25.63,50.53
|next "Court_Of_Farondis_WQ"
step
label quest-43959
accept Stelleris Shakedown##43959 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
kill Stelleris Libertine##112005+
|tip Fight them until they submit, then click them.
|tip You may have to fight multiple of them to complete the goal.
Persuade a Stelleris Libertine |q 43959/1 |goto 59.78,60.43
step
kill Corvelyn##112016 |q 43959/2 |goto 55.38,65.15
|next "Court_Of_Farondis_WQ"
step
label quest-44817
Follow the path |goto Suramar/0 64.38,43.17 < 25 |only if walking
Follow the path |goto 64.52,46.87 < 25 |only if walking
Follow the path |goto 63.72,50.95 < 25 |only if walking
accept Stirring the Swarm##44817 |goto 62.01,52.28
|tip You will accept this quest automatically.
stickystart "Duskwatch"
step
click Leypulse Beacon##116529
East Beacon Activated |q 44817/1 |goto 62.71,52.86
step
click Leypulse Beacon##116529
West Beacon Activated |q 44817/2 |goto 61.18,51.20
step
label "Duskwatch"
kill Duskwatch Spellfury##116555+, Duskwatch Sentry##116554+ |q 44817/3 |goto 62.01,52.28
|next "Court_Of_Farondis_WQ"
step
label quest-42082
Follow the path |goto Suramar/32 51.36,38.27 < 15 |walk
Enter the cave |goto Suramar/32 43.26,33.06 < 15 |walk
accept Studying the Reaction##42082 |goto Suramar/32 35.24,54.11
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Energetic Shards
Charge Farodin's Lodestone |q 42082/1 |goto 35.24,54.11
|next "Court_Of_Farondis_WQ"
step
label quest-41318
accept Supplies Needed: Felslate##41318 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Felslate##123919
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Felslate##41318 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41303
accept Supplies Needed: Starlight Roses##41303 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Starlight Rose##124105
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Starlight Roses##41303 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41351
accept Supplies Needed: Stonehide Leather##41351 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Supplies Needed: Stonehide Leather##41351 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-42015
accept Threads of Fate##42015 |goto Suramar/0 33.61,83.18
|tip You will accept this quest automatically.
step
talk Felsoul Seer##105779
Tell him "Let's do battle!"
Defeat Felsoul Seer |q 42015/1 |goto 33.65,83.16
|next "Court_Of_Farondis_WQ"
step
label quest-44002
accept Undersea Survey##44002 |goto Suramar/0 73.39,51.95
|tip You will accept this quest automatically.
step
click Western Surveying Pylon
|tip Underwater.
|tip Enemies will attack you.
Activate the Western Pylon |q 44002/2 |goto 74.43,56.66
step
click Northern Surveying Pylon
|tip Underwater.
|tip Enemies will attack you.
Activate the Northern Pylon |q 44002/1 |goto 78.61,55.99
step
click Eastern Surveying Pylon
|tip Underwater.
|tip Enemies will attack you.
Activate the Eastern Pylon |q 44002/3 |goto 79.54,63.11
step
Follow the path |goto 79.76,66.87 < 20 |only if walking
click Southern Surveying Pylon
|tip Underwater.
|tip Enemies will attack you.
Activate the Southern Pylon |q 44002/4 |goto 80.36,70.52
|next "Court_Of_Farondis_WQ"
step
label quest-43814
accept Unspeakable Collaborators##43814 |goto Suramar/0 54.27,59.86
|tip You will accept this quest automatically.
step
Run up the stairs |goto 57.89,61.47 < 15 |only if walking
kill Felborne Collaborator##111750+
kill Felsworn Noble##111730+
Slay #8# Nightborne Collaborators |q 43814/1 |goto 58.55,62.75
|next "Court_Of_Farondis_WQ"
step
label quest-41346
accept Velvety Stalker Hide##41346 |goto Suramar/0 32.33,35.61
|tip You will accept this quest automatically.
step
kill Moonwhisper Stalker##103616+
|tip Loot and Skin these.
collect 8 Velvety Stalker Hide##134818 |q 41346/1 |goto Suramar/0 35.18,29.25
|next "Court_Of_Farondis_WQ"
step
label quest-44017
accept WANTED: Apothecary Faldren##44017 |goto Suramar/0 42.27,56.73
|tip You will accept this quest automatically.
step
kill Apothecary Faldren##110870 |q 44017/1 |goto 42.27,56.73
|next "Court_Of_Farondis_WQ"
step
label quest-44032
accept WANTED: Apothecary Faldren##44032 |goto Suramar/0 42.25,54.80
|tip You will accept this quest automatically.
step
kill Apothecary Faldren##110870 |q 44032/1 |goto Suramar/0 42.35,56.57
|next "Court_Of_Farondis_WQ"
step
label quest-42422
accept WANTED: Broodmother Shu'malis##44186 |goto Suramar/33 65.79,50.75
|tip You will accept this quest automatically.
step
kill Broodmother Shu'malis##105632 |q 42422/1 |goto 65.79,50.75
|next "Court_Of_Farondis_WQ"
step
label quest-42796
accept WANTED: Broodmother Shu'malis##42796 |goto Suramar/0 22.96,42.03
|tip You will accept this quest automatically.
step
Carefully jump down into the water |goto Suramar/0 21.16,42.92 > 10000 |only if walking
Run up the stairs |goto Suramar/33 53.92,43.25 < 20 |walk
kill Broodmother Shu'malis##105632 |q 42796/1 |goto Suramar/33 67.22,51.80
|next "Court_Of_Farondis_WQ"
step
label quest-44016
Follow the road |goto Suramar/0 63.63,42.98 < 20 |only if walking
Follow the path up |goto Suramar/0 62.52,46.63 < 15 |only if walking
accept WANTED: Cadraeus##44016 |goto Suramar/0 62.72,48.88
|tip You will accept this quest automatically.
step
kill Cadraeus##110726 |q 44016/1 |goto 62.72,48.88
|tip He walks around.
|next "Court_Of_Farondis_WQ"
step
label quest-44031
accept WANTED: Cadraeus##44031 |goto Suramar/0 62.58,46.77
|tip You will accept this quest automatically.
step
kill Cadraeus##110726 |q 44031/1 |goto Suramar/0 62.53,48.00
|next "Court_Of_Farondis_WQ"
step
label quest-44013
accept WANTED: Guardian Thor'el##44013 |goto 57.19,49.64
|tip You will accept this quest automatically.
step
kill Guardian Thor'el##110944 |q 44013/1 |goto 56.76,50.43
|tip He walks along this path, so you may have to search for him.
|tip You may need help to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-44030
accept WANTED: Guardian Thor'el##44030 |goto Suramar/0 57.06,49.63
|tip You will accept this quest automatically.
step
kill Guardian Thor'el##110944 |q 44030/1 |goto Suramar/0 56.91,50.60
|tip He pats around this area.
|next "Court_Of_Farondis_WQ"
step
label quest-44021
accept WANTED: Hertha Grimdottir##44021 |goto Suramar/0 61.29,39.66
|tip You will accept this quest automatically.
step
kill Hertha Grimdottir##103223 |q 44021/1 |goto 61.29,39.66
|next "Court_Of_Farondis_WQ"
step
label quest-44029
accept WANTED: Hertha Grimdottir##44029 |goto Suramar/0 61.96,39.55
|tip You will accept this quest automatically.
step
kill Hertha Grimdottir##103223 |q 44029/1 |goto Suramar/0 61.30,39.63
|next "Court_Of_Farondis_WQ"
step
label quest-44019
Follow the path |goto Suramar/0 47.50,64.36 < 20 |only if walking
Walk onto the teleport pad inside the building |goto Suramar/0 49.89,60.19 < 5 |only if walking
accept WANTED: Lieutenant Strathmar##44019 |goto Suramar/0 48.77,57.34
|tip You will accept this quest automatically.
step
kill Lieutenant Strathmar##102303 |q 44019/1 |goto 48.53,56.69
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-44028
Follow the path |goto Suramar/0 47.50,64.36 < 20 |only if walking
Walk onto the teleport pad inside the building |goto Suramar/0 49.89,60.19 < 5 |only if walking
accept WANTED: Lieutenant Strathmar##44028 |goto Suramar/0 48.77,57.34
|tip You will accept this quest automatically.
step
kill Lieutenant Strathmar##102303 |q 44028/1 |goto 48.53,56.69
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-44018
accept WANTED: Magister Phaedris##44018 |goto Suramar/0 41.97,79.89
|tip You will accept this quest automatically.
step
kill Magister Phaedris##109954 |q 44018/1 |goto 41.97,79.89
|next "Court_Of_Farondis_WQ"
step
label quest-44027
accept WANTED: Magister Phaedris##44027 |goto Suramar/0 41.97,79.89
|tip You will accept this quest automatically.
step
kill Magister Phaedris##109954 |q 44027/1 |goto 41.97,79.89
|next "Court_Of_Farondis_WQ"
step
label quest-44015
accept WANTED: Mal'Dreth the Corruptor##44015 |goto Suramar/0 34.18,60.94
|tip You will accept this quest automatically.
step
kill Mal'Dreth the Corruptor##110024 |q 44015/1 |goto 34.14,60.96
|next "Court_Of_Farondis_WQ"
step
label quest-44026
accept WANTED: Mal'Dreth the Corruptor##44026 |goto Suramar/0 34.18,60.94
|tip You will accept this quest automatically.
step
kill Mal'Dreth the Corruptor##110024 |q 44026/1 |goto 34.14,60.96
|next "Court_Of_Farondis_WQ"
step
label quest-44010
accept WANTED: Oreth the Vile##44010 |goto Suramar/0 24.57,47.41
|tip You will accept this quest automatically.
step
kill Oreth the Vile##110577 |q 44010/1 |goto 24.57,47.41
|tip IHe walks around inside the building.
|tip You may need help to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-44025
accept WANTED: Oreth the Vile##44025 |goto Suramar/0 24.57,47.41
|tip You will accept this quest automatically.
step
kill Oreth the Vile##110577 |q 44025/1 |goto 24.57,47.41
|tip IHe walks around inside the building.
|tip You may need help to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-42795
Carefully jump down into the water |goto Suramar/0 21.16,42.92 |n
Enter the Falanaar Tunnels |goto Suramar/33 38.34,33.32 < 10000 |noway |c |q 42795 |future
step
accept WANTED: Sanaar##42795 |goto Suramar/33 43.43,36.80
|tip You will accept this quest automatically.
step
kill Sanaar##105739 |q 42795/1 |goto 40.45,34.63
|next "Court_Of_Farondis_WQ"
step
label quest-44185
Carefully jump down into the water |goto Suramar/0 21.16,42.92 |n
Enter the Falanaar Tunnels |goto Suramar/33 38.34,33.32 < 10000 |noway |c |q 44185 |future
step
accept WANTED: Sanaar##44185 |goto Suramar/33 43.43,36.80
|tip You will accept this quest automatically.
step
kill Sanaar##105739 |q 44185/1 |goto 40.45,34.63
|next "Court_Of_Farondis_WQ"
step
label quest-44022
accept WANTED: Shal'an##44022 |goto Suramar/0 26.07,39.82
|tip You will accept this quest automatically.
step
kill Shal'an##109054 |q 44022/1 |goto 26.24,41.18
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-44024
accept WANTED: Shal'an##44024 |goto Suramar/0 26.24,41.18
|tip You will accept this quest automatically.
step
kill Shal'an##109054 |q 44024/1 |goto 26.24,41.18
|tip Inside the building.
|next "Court_Of_Farondis_WQ"
step
label quest-44012
accept WANTED: Siegemaster Aedrin##44012 |goto Suramar/0 37.00,21.17
|tip You will accept this quest automatically.
step
kill Siegemaster Aedrin##110438 |q 44012/1 |goto 37.00,21.17
|tip He spawns here.
|tip You may need help killing him.
|next "Court_Of_Farondis_WQ"
step
label quest-44023
accept WANTED: Siegemaster Aedrin##44023 |goto Suramar/0 37.00,21.17
|tip You will accept this quest automatically.
step
kill Siegemaster Aedrin##110438 |q 44023/1 |goto 37.00,21.17
|tip He spawns here.
|tip You may need help killing him.
|next "Court_Of_Farondis_WQ"
step
label quest-43943
accept Withered Army Training##43943 |goto Suramar/0 36.88,46.61 |region suramar_shalaran
|tip You will accept this quest automatically.
step
talk First Arcanist Thalyssra##97140
Tell her _"I've come to help the withered with their combat training."_
|tip This requires you to have at least 400 Ancient Mana.
_Choose the Amount of Withereds for your Army:_
|tip Starting with more withereds increases your chances of completing the entire Collapse scenario.
|tip Completing the entire scenario will reward you with more Nightfallen reputation and items.
Bring at Least 400 Ancient Mana to Thalyssra |q 43943/1 |goto 36.88,46.60 |region suramar_shalaran
step
Begin the Collapse Scenario |scenariostart |q 43943
step
Click the Quest Complete Box:
turnin Withered Army Training##43943
step
Travel to the Ruins of Falanaar |goto 22.69,36.69 < 50 |noway |c |q 43943
|tip You will be teleported automatically.
step
talk First Arcanist Thalyssra##109008
Speak with Thalyssra |scenariostage 1 |goto 22.85,36.20
|only if _G.C_Scenario.IsInScenario()
step
Enter the building |goto 22.88,35.62 > 1000 |c
|only if _G.C_Scenario.IsInScenario()
step
_Follow the path and kill all enemies:_
|tip As your withereds get more powerful from training, you'll be able to make it further through this area.
|tip Enter all of the doors you come across that you can.
|tip You will find chests, more withereds to recruit, and bosses to kill.
Use the Mayhem! and Follow Me! abilities as you fight
|tip They appear as a button on the screen.
talk Withered Exile##110141+
|tip You will come across them as you walk.
|tip Talk to them to recruit them to your army.
|tip Your withered will sometimes run away when they are hurt. Click them to prevent them from leaving.
Proceed as Far as you can into the Collapse |scenariostage 2
|only if _G.C_Scenario.IsInScenario()
step
click Glimmering Treasure Chest
|tip There may be more chests, depending on how far you got into the Collapse.
Receive the Spoils of War |scenarioend |goto Suramar/0 22.79,36.15
|tip Use the items you get in your bags to increase your reputation with The Nightfallen.
|only if _G.C_Scenario.IsInScenario()
step
click Telemancy Beacon |goto 22.91,36.07 |n
Return to Shal'Aran |goto 36.72,46.63 < 50 |noway |c
|only if completedq(43943)
step
click Traveler's Banking Chest
Place the Banking Chest in Shal'aran |q 44176/1 |goto 37.90,47.49 |region suramar_shalaran
|only if havequest(44176)
step
click Traveler's Banking Chest |only if havequest(44176)
turnin The Conveniences of Home##44176 |goto 37.90,47.49 |only if havequest(44176) |region suramar_shalaran
|next "Court_Of_Farondis_WQ"
step
label quest-44158
accept Withered Wrangling: Falanaar##44158 |goto Suramar/0 21.79,44.18
|tip You will accept this quest automatically.
step
Use the Spellstone of Kel'danath on Withered and Hungering enemies
|tip It appears as a button on the screen.
Send #10# Withered to Shal'Aran |q 44158/1 |goto 21.17,45.54
|next "Court_Of_Farondis_WQ"
step
label quest-43807
Follow the path |goto Suramar/0 26.16,34.67 < 30 |only if walking
accept Withered Wrangling: Ambervale##43807 |goto Suramar/0 25.47,42.23
|tip You will accept this quest automatically.
step
Use the Spellstone of Kel'danath on Withered enemies
|tip It appears as a button on the screen.
|tip It could also be the Branch of Arcan'dor ability.
Send #10# Withered to Shal'Aran |q 43807/1 |goto 25.47,42.23
|next "Court_Of_Farondis_WQ"
step
label quest-44157
accept Withered Wrangling: Tel'anor##44157 |goto Suramar/0 42.13,35.37
|tip You will accept this quest automatically.
step
Use the Branch of Arcan'dor ability on Feral enemies
|tip It appears as a button on the screen.
|tip They look like Withered enemies around this area.
Send #10# Withered to Shal'Aran |q 44157/1 |goto 42.80,36.09
|next "Court_Of_Farondis_WQ"
step
label quest-41643
accept Work Order: Battlebound Leggings##41643 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Battlebound Leggings>_
collect 1 Battlebound Leggings##128896
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Battlebound Leggings##41643 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41314
accept Work Order: Felslate##41314 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Felslate##123919
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Felslate##41314 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41637
accept Work Order: Leystone Pauldrons##41637 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Pauldrons>_
collect 1 Leystone Pauldrons##123896
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Leystone Pauldrons##41637 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41655
accept Work Order: Queen's Opal Pendant##41655 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Queen's Opal Pendant>_
collect 1 Queen's Opal Pendant##136712
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Queen's Opal Loop##41655 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41282
accept Work Order: Runescale Koi##41282 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Runescale Koi##124111
|tip You can farm these with Fishing or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Runescale Koi##41282 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41649
accept Work Order: Silkweave Slippers##41649 |goto Suramar/0 36.55,46.89
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Slippers>_
collect 1 Silkweave Slippers##126988
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Silkweave Slippers##41649 |goto 36.55,46.89
|next "Court_Of_Farondis_WQ"
step
label quest-41661
accept Work Order: Skystep Potions##41661 |goto Suramar/0 36.55,46.89
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 5 Skystep Potions>_
collect 5 Skystep Potion##127841
|tip You can purchase these from the Auction House if you don't have the recipe.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Skystep Potions##41661 |goto 36.55,46.89
|next "Court_Of_Farondis_WQ"
step
label quest-41302
accept Work Order: Starlight Roses##41302 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 10 Starlight Rose##124105
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Starlight Roses##41302 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41350
accept Work Order: Stonehide Leather##41350 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
collect 40 Stonehide Leather##124113
|tip You can farm these with Leatherworking or purchase them from the Auction House.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Stonehide Leather##41350 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-41673
accept Work Order: Word of Mastery##41673 |goto Suramar/0 36.44,46.87
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Mastery>_
collect 1 Enchant Ring - Word of Mastery##128539
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk First Arcanist Thalyssra##97140
|tip Thalyssra may be in a slightly different spot, depending upon your progress in the Suramar questline.
turnin Work Order: Word of Mastery##41673 |goto 36.44,46.87
|next "Court_Of_Farondis_WQ"
step
label quest-42442
accept Fight Night: Amalia##42442 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Amalia##107489
Tell her "Let's do battle!"
Defeat Amalia |q 42442/1 |goto Dalaran L/10 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-40299
accept Fight Night: Bodhi Sunwayver##40299 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Bodhi Sunwayver##99210
Tell him "Let's do battle!".
Defeat Bodhi Sunwayver |q 40299/1 |goto Dalaran L/10 27.92,23.39
|next "Court_Of_Farondis_WQ"
step
label quest-41881
accept Fight Night: Heliosus##41881 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
Click Heliosus
Defeat Heliosus |q 41881/1 |goto Dalaran L/10 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-41886
accept Fight Night: Rats!##41886 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
click Splint Jr.##105241
Defeat Splint Jr. |q 41886/1 |goto Dalaran L/10 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-40298
accept Fight Night: Sir Galveston##40298 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
click Sir Galveston##99182
Defeat Sir Galveston |q 40298/1 |goto 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-42062
accept Fight Night: Stitches Jr. Jr.##42062 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
click Stiches Jr. Jr.##105840
|tip Stiches Jr. Jr. Ignores attacks that do less then 500 damage, so get some high damaging pets that counter Undead.
Defeat Stiches Jr. Jr. |q 42062/1 |goto Dalaran L/10 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-40277
accept Fight Night: Tiffany Nelson##40277 |goto Dalaran L/10 29.31,29.24
|tip You will accept this quest automatically.
step
talk Tiffany Nelson##97804
Tell her "Let's do battle!"
Defeat Tiffany Nelson |q 40277/1 |goto Dalaran L/10 28.28,24.04
|next "Court_Of_Farondis_WQ"
step
label quest-46135
accept Gemcutter Needed##46135 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Create a _red_ gem |q 46135/1 |goto 40.06,34.37
|next "Court_Of_Farondis_WQ"
step
label quest-46138
accept Gemcutter Needed##46138 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Create a _blue_ gem |q 46138/1 |goto 40.06,34.37
|next "Court_Of_Farondis_WQ"
step
label quest-46136
accept Gemcutter Needed##46136 |goto Dalaran L/10 40.27,34.68
|tip You will accept this quest automatically.
step
click Tiffany's Carving Machine##0
|tip Use the abilities on your action bar to rotate the gem.
|tip Right-click the jagged shards to cut the gem.
Create a _yellow_ gem |q 46136/1 |goto 40.06,34.37
|next "Court_Of_Farondis_WQ"
step
label quest-41668
accept Vantus Rune Work Order: Il'gynoth, The Heart of Corruption##41668 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Inscription Crafting Panel:
_<Create 1 Vantus Rune: Il'gynoth, The Heart of Corruption>_
collect 1 Vantus Rune: Il'gynoth, The Heart of Corruption##128989
step
talk Warmage Silva##32725
turnin Vantus Rune Work Order: Il'gynoth, The Heart of Corruption##41668 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41662
accept Work Order: Ancient Rejuvenation Potions##41662 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Alchemy Crafting Panel:
_<Create 1 Ancient Rejuvenation Potion>_
collect 1 Ancient Rejuvenation Potion##127836
|tip You can purchase one of these from the Auction House if you don't have the recipe.
step
talk Warmage Silva##32725
turnin Work Order: Ancient Rejuvenation Potions##41662 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41656
accept Work Order: Azsunite Loop##41656 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Azsunite Loop>_
collect 1 Azsunite Loop##130225
|tip You can purchase one of these from the Auction House if you don't have the design.
step
talk Warmage Silva##32725
turnin Work Order: Azsunite Loop##41656 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41680
accept Work Order: Failure Detection Pylon##41680 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Engineering Crafting Panel:
_<Create 1 Failure Detection Pylon>_
collect 1 Failure Detection Pylon##132515
|tip You can purchase one of these from the Auction House if you don't have the schematic.
step
talk Warmage Silva##32725
turnin Work Order: Failure Detection Pylon##41680 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41638
accept Work Order: Leystone Gauntlets##41638 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Leystone Gauntlets>_
collect 1 Leystone Gauntlets##123893
|tip You can purchase one of these from the Auction House if you don't have the plans.
step
talk Warmage Silva##32725
turnin Work Order: Leystone Gauntlets##41638 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41650
accept Work Order: Silkweave Hood##41650 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Tailoring Crafting Panel:
_<Create 1 Silkweave Hood>_
collect 1 Silkweave Hood##126990
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Warmage Silva##32725
turnin Work Order: Silkweave Hood##41650 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41644
accept Work Order: Warhide Gloves##41644 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Warhide Gloves>_
collect 1 Warhide Gloves##128878
|tip You can purchase one of these from the Auction House if you don't have the pattern.
step
talk Warmage Silva##32725
turnin Work Order: Warhide Gloves##41644 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-41674
accept Work Order: Word of Intellect##41674 |goto Dalaran L/10 33.47,47.38
|tip You will accept this quest automatically.
step
Open Your Enchanting Crafting Panel:
_<Create 1 Word of Intellect>_
collect 1 Enchant Cloak - Word of Intellect##128547
|tip You can purchase one of these from the Auction House if you don't have the formula.
step
talk Warmage Silva##32725
turnin Work Order: Word of Intellect##41674 |goto 33.47,47.38
|next "Court_Of_Farondis_WQ"
step
label quest-43711
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: ... With Fire!##43711 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Ancient Widow##98637 |q 43711/1
|tip The Ancient Widow is located in a room off the stairs before Illysana Ravencrest.
|tip When you see the spiders, you are close.
|tip If you pull the Widow to the stairs, adds will not spawn during the fight.
step
kill Dantalionax##99611 |q 43711/2
|next "Court_Of_Farondis_WQ"
step
label quest-43712
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: The Mad Arcanist##43712 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Archmage Galeorn##111068 |q 43712/1
|tip Galeorn is located just before Illysana Ravencrest.
|tip You will need to kill the two waves of enemies and open the gates.
step
kill Dantalionax##99611 |q 43712/2
|next "Court_Of_Farondis_WQ"
step
label quest-43642
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: The Sorrow##43642 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill General Tel'arn##110993, kill Ranger General Feleor##110995 |q 43642/1
|tip The Generals are located in the war room just after The Amalgam of Souls.
step
kill Dantalionax##99611 |q 43642/2
|next "Court_Of_Farondis_WQ"
step
label quest-43762
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: Traitor's Demise##43762 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Kelorn Nightblade##111361 |q 43762/1
|tip Kelorn is located in a room just before the final boss. You will encounter him along the way.
step
kill Dantalionax##99611 |q 43762/2
|next "Court_Of_Farondis_WQ"
step
label quest-43714
_Enter the Black Rook Hold Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Black Rook Hold: Worst of the Worst##43714 |goto Black Rook Hold/1 0.00,0.00
|tip You will accept this quest automatically.
step
kill Braxas the Fleshcarver##111290 |q 43714/1
|tip Braxas is located in a hallway before Smashspite the Hateful.
|tip You will pass near him progressing through the instance.
step
kill Dantalionax##99611 |q 43714/2
|next "Court_Of_Farondis_WQ"
step
label quest-42769
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |goto Court of Stars/1 6.84,68.64 < 10000
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
accept Court of Stars: Bring Me the Eyes##42769 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
Run up the stairs |goto Court of Stars/1 55.49,65.09 > 10000 |walk
kill Velimar##108740 |q 42769/1 |goto Court of Stars/3 17.76,48.88
|tip Use the Court of Stars dungeon guide to accomplish this.
step
Run down the stairs |goto 12.80,39.23 < 15 |walk
Follow the path |goto 13.01,24.30 > 10000 |c
step
kill Advisor Melandrus##104218 |q 42769/2 |goto Court of Stars/3 65.85,78.15
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Court_Of_Farondis_WQ"
step
label quest-42781
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |goto Court of Stars/1 6.84,68.64 < 10000
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
accept Court of Stars: Disarming the Watch##42781 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
collect 6 Duskwatch Weaponry##138432 |q 42781/1
|tip These are located all around the first floor of the dungeon.
|tip Make sure your group members help clear, as most are surrounded by enemies.
step
kill Advisor Melandrus##104218 |q 42781/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Court_Of_Farondis_WQ"
step
label quest-42784
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |goto Court of Stars/1 6.84,68.64 < 10000
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
accept Court of Stars: The Deceitful Student##42784 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Arcanist Malrodi##108796 |q 42784/1
|tip Avoid the Wild Magic explosions on the ground.
step
kill Advisor Melandrus##104218 |q 42784/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Court_Of_Farondis_WQ"
step
label quest-42783
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |goto Court of Stars/1 6.84,68.64 < 10000
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
accept Court of Stars: They Bloom at Night##42783 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
click Cultivated Manabloom##251323
collect 9 Cultivated Manabloom##138435 |q 42783/1
|tip These are located around the courtyard in front of Talixae Flamewreath.
step
kill Advisor Melandrus##104218 |q 42783/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Court_Of_Farondis_WQ"
step
label quest-42764
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |goto Court of Stars/1 6.84,68.64 < 10000
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
accept Court of Stars: Wraith in the Machine##42764 |goto Court of Stars/1 6.84,68.64
|tip You will accept this quest automatically.
step
kill Ataxius##108701 |q 42764/1
|tip Ataxius is located in the building. Go up the long stairs northeast of Patrol Captain Gerdo.
step
kill Advisor Melandrus##104218 |q 42764/2
|tip Use the Court of Stars dungeon guide to accomplish this.
|next "Court_Of_Farondis_WQ"
step
label quest-42745
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: A Burden to Bear##42745
|tip You will accept this quest automatically.
step
kill Festerhide Grizzly##95779+ |q 42745/1
|tip You will find Grizzly mobs along the path to the first boss.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42745/2
|next "Court_Of_Farondis_WQ"
step
label quest-42743
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Kudzilla##42743
|tip You will accept this quest automatically.
step
kill Kudzilla##99362 |q 42743/1
|tip Kudzilla is located behind the building between Archdruid Glaidalis and Oakheart.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42743/2
|next "Court_Of_Farondis_WQ"
step
label quest-42714
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Mythana##42714
|tip You will accept this quest automatically.
step
kill Mythana##101641 |q 42714/1
|tip Mythana is located in an alcove off the final path to the first boss.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42714/2
|next "Court_Of_Farondis_WQ"
step
label quest-42744
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Preserving the Preservers##42744
|tip You will accept this quest automatically.
step
click Injured Preserver Druid##108460
Revive #5# Preservers |q 42744/1
|tip The first three are located near the entrance to the instance.
|tip The fourth is located behind the building between Archdruid Glaidalis and Oakheart.
|tip The last is located near the beginning of the water between Oakheart and Dresaron.
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42744/2
|next "Court_Of_Farondis_WQ"
step
label quest-42742
_Enter the Darkheart Thicket Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Darkheart Thicket: Rage Rot##42742
|tip You will accept this quest automatically.
step
Follow the path |goto Darkheart Thicket/0 36.46,23.60 < 30 |walk
Follow the path |goto Darkheart Thicket/0 27.97,24.13 < 30 |walk
kill Rage Rot##101660 |q 42742/1 |goto Darkheart Thicket/0 17.95,20.18
step
kill Shade of Xavius##101403
|tip Finish the entire dungeon.
|tip Use the Darkheart Thicket dungeon guide to accomplish this.
Defeat Shade of Xavius |q 42742/1 |goto 82.80,87.15
|next "Court_Of_Farondis_WQ"
step
label quest-42723
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: A Tough Shell##42723
|tip You will accept this quest automatically.
step
kill Jaggen-Ra##101467 |q 42723/1
|tip You will encounter Jaggen-Ra on the way to King Deepbeard.
step
kill Wrath of Azshara##96028 |q 42723/2
|next "Court_Of_Farondis_WQ"
step
label quest-42755
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Azsunian Pearls##42755
|tip You will accept this quest automatically.
step
collect 5 Massive Azsunian Pearl##138398 |q 42755/1
|tip You will find plenty of these around the beach in the center of the instance.
step
kill Wrath of Azshara##96028 |q 42755/2
|next "Court_Of_Farondis_WQ"
step
label quest-42746
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Dread End##42746
|tip You will accept this quest automatically.
step
kill Dread Captain Thedon##108543 |q 42746/1
|tip You will find Thedon northwest of Lady Hatecoil along the shore.
step
kill Wrath of Azshara##96028 |q 42746/2
|next "Court_Of_Farondis_WQ"
step
label quest-42713
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Slug It Out##42713
|tip You will accept this quest automatically.
step
kill Shellmaw##91788 |q 42713/1
|tip Shellmaw is west of Lady Hatecoil along the rocks.
step
kill Wrath of Azshara##96028 |q 42713/2
|next "Court_Of_Farondis_WQ"
step
label quest-42712
_Enter the Eye of Azshara Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Eye of Azshara: Termination Claws##42712
|tip You will accept this quest automatically.
step
kill Gom Crabbar##101411 |q 42712/1
|tip Gom Crabbar is among the small islands west of Serpentrix.
step
kill Wrath of Azshara##96028 |q 42712/2
|next "Court_Of_Farondis_WQ"
step
label quest-42241
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: A Worthy Challenge##42241
|tip You will accept this quest automatically.
step
kill Volynd Stormbringer##106320 |q 42241/1
|tip You will find Volynd immediately after Hymdall.
step
kill Odyn##95676 |q 42241/2
|next "Court_Of_Farondis_WQ"
step
label quest-42243
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: Deeds of the Past##42243
|tip You will accept this quest automatically.
step
click Book of Exalted Deeds##249777
collect Book of Exalted Deeds##137110 |q 42243/1
step
kill Odyn##95676 |q 42243/2
|next "Court_Of_Farondis_WQ"
step
label quest-42240
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: Ponderous Poaching##42240
|tip You will accept this quest automatically.
step
kill Earlnoc the Beastbreaker##96647 |q 42240/1
|tip Earlnoc is located on the west side of the Field of the Eternal Hunt, just before Fenryr.
step
kill Odyn##95676 |q 42240/2
|next "Court_Of_Farondis_WQ"
step
label quest-42239
_Enter the Halls of Valor Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Halls of Valor: The Bear King##42239
|tip You will accept this quest automatically.
step
kill Arthfael##99802 |q 42239/1
|tip Arthfael is located on the south side of the Field of the Eternal Hunt, inside the cave.
step
kill Odyn##95676 |q 42239/2
|next "Court_Of_Farondis_WQ"
step
label quest-42780
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: From Hell's Mouth##42780
|tip You will accept this quest automatically.
step
kill Plaguemaw##103045 |q 42780/1
|tip Plaguemaw is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42780/2
|next "Court_Of_Farondis_WQ"
step
label quest-42757
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: Menace of the Seas##42757
|tip You will accept this quest automatically.
step
kill Soulfiend Tagerma##108494 |q 42757/1
|tip Soulfiend Tagerma is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42757/2
|next "Court_Of_Farondis_WQ"
step
label quest-42788
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Maw of Souls: Return of the Beast##42788
|tip You will accept this quest automatically.
step
kill Shroudseeker##103605 |q 42788/1
|tip Shroudseeker is located in The Hold of the ship, before Harbaron.
step
kill Helya##96759 |q 42788/2
|next "Court_Of_Farondis_WQ"
step
label quest-41866
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Blighted Bat##41866
|tip You will accept this quest automatically.
step
kill Ragoul##103199 |q 41866/1
|tip Ragoul is located in a small side room at the southwest corner of the map.
|tip This passage starts just before Ularogg Cragshaper.
step
kill Dargrul##91007 |q 41866/2
|next "Court_Of_Farondis_WQ"
step
label quest-41864
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Crystalline Crusher##41864
|tip You will accept this quest automatically.
step
kill Ultanok##103247 |q 41864/1
|tip Ultanok is located in a small underwater cave.
|tip After falling down the waterfall following Rokmora, swim under the water between the two smaller falls.
step
kill Dargrul##91007 |q 41864/2
|next "Court_Of_Farondis_WQ"
step
label quest-41865
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Mother of Stone##41865
|tip You will accept this quest automatically.
step
kill Kraxa##103271 |q 41865/1
|tip Kraxa is located in a cave right after Ularogg Cragshaper.
|tip After killing Ularogg, swim across the water ahead, staying close to the left side.
step
kill Dargrul##91007 |q 41865/2
|next "Court_Of_Farondis_WQ"
step
label quest-41211
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Neltharion's Treasure##41211
|tip You will accept this quest automatically.
step
click Neltharion's Treasure##247348
Retrieve Neltharion's Treasure |q 41211/1
|tip After the barrel ride, the treasure is located in one of the small caves before Ularogg Cragshaper.
step
kill Dargrul##91007 |q 41211/2
|next "Court_Of_Farondis_WQ"
step
label quest-41857
_Enter the Maw of Souls Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Neltharion's Lair: Stonedark Slaves##41857
|tip You will accept this quest automatically.
step
kill Understone Lasher##103597+
Kill #5# Understone Lashers |q 41857/1
|tip You will find these as you progress through the instance.
step
kill Dargrul##91007 |q 41857/2
|next "Court_Of_Farondis_WQ"
step
label quest-42926
_Enter the Vault of the Wardens Dungeon:_
|tip Use the Group Finder to enter the dungeon.
accept Vault of the Wardens: How'd He Get Up There?##42926
|tip You will accept this quest automatically.
step
kill Frenzied Animus##96579 |q 42926/1
|tip The Frenzied Animus can be found after Tirathon Saltheril.
step
kill Cordana Felsong##95888 |q 42926/2
|next "Court_Of_Farondis_WQ"
step
label "Court_Of_Farondis_WQ"
talk Veridis Fallon##107376 |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
|tip Inside the building. |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
turnin Court of Farondis##42420 |goto Azsuna/0 46.90,41.43 |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
|next "The_Dreamweavers_WQ"
step
label "The_Dreamweavers_WQ"
talk Sylvia Hartshorn##106901 |only if ZGV.questsbyid[42170] and ZGV.questsbyid[42170].complete
turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25 |only if ZGV.questsbyid[42170] and ZGV.questsbyid[42170].complete
|next "Highmountain_Tribes_WQ"
step
label "Highmountain_Tribes_WQ"
talk Ransa Greyfeather##106902 |only if ZGV.questsbyid[42233] and ZGV.questsbyid[42233].complete
turnin Highmountain Tribes##42233 |goto Thunder Totem/0 38.06,46.04 |only if ZGV.questsbyid[42233] and ZGV.questsbyid[42233].complete
|next "The_Valarjar_WQ"
step
label "The_Valarjar_WQ"
talk Valdemar Stormseeker##106904 |only if ZGV.questsbyid[42234] and ZGV.questsbyid[42234].complete
turnin The Valarjar##42234 |goto Stormheim/0 60.26,51.38 |only if ZGV.questsbyid[42234] and ZGV.questsbyid[42234].complete
|next "The_Nightfallen_WQ"
step
label "The_Nightfallen_WQ"
talk First Arcanist Thalyssra##97140 |only if ZGV.questsbyid[42421] and ZGV.questsbyid[42421].complete
turnin The Nightfallen##42421 |goto Suramar/0 36.88,46.61 |only if ZGV.questsbyid[42421] and ZGV.questsbyid[42421].complete |region suramar_shalaran
|next "The_Wardens_WQ"
step
label "The_Wardens_WQ"
talk Marin Bladewing##107379 |only if ZGV.questsbyid[42422] and ZGV.questsbyid[42422].complete
turnin The Wardens##42422 |goto Azsuna/0 48.17,73.90 |only if ZGV.questsbyid[42422] and ZGV.questsbyid[42422].complete
|next "The_Kirin_Tor_Of_Dalaran_WQ"
step
label "The_Kirin_Tor_Of_Dalaran_WQ"
talk Warmage Silva##32725 |only if ZGV.questsbyid[43179] and ZGV.questsbyid[43179].complete
turnin The Kirin Tor of Dalaran##43179 |goto Dalaran L/10 33.44,47.35 |only if ZGV.questsbyid[43179] and ZGV.questsbyid[43179].complete
|next "Choose_World_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Brawler's Guild\\Legion Brawler's Guild", {
startlevel=110,
description="This guide will help you achieve rank 8 in the Brawler's Guild.",
},[[
step
kill Helarjar Priest##111326+, Helarjar Mystcaller##111325+, Helarjar Soulhunter##111328+
|tip Kill any and all of the elite mobs on this island.
|tip You may need a group to accomplish this.
collect 1 Blood-Soaked Invitation##144363 |goto Stormheim/0 85.32,11.34 |n
click Blood-Soaked Invitation##144363 |use Blood-Soaked Invitation##144363
Earn the Achievement "The First Rule of Brawler's Guild" |achieve 11559
step
talk Paul North## |goto Brawl'gar Arena 50.9,26.9 |n
|tip We also suggest that you purchase potions from Paul North, located here. Once you have the potions, use the buff of your choice right before the fight, and then again during the fight to maximize your dps.
_WARNING_
|tip There is an enrage timer on all Brawler's Guild fights. You have 2 minutes to kill the current opponent before it activates. If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
Click here after buying potions
|tip You can only have a maximum of 10 potions of each at a time.
|confirm
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Oso begins casting Shotgun Blast move out from in front of him
|tip He may occasionally knock you back and then cast Grizzly Leap run out of this circle
only if ZGV:GetReputation(2010).friendRep<250
step
kill Oso##117753
|tip When Oso begins casting Shotgun Blast move out from in front of him
|tip He may occasionally knock you back and then cast Grizzly Leap run out of this circle
Defeat Oso |condition ZGV:GetReputation(2010).friendRep>=250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Do Not step on the Luckydont dolls that he places around the room, these will be red and white
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over
|tip When he reached 50 percent HP he will knock you back, be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts, this will hop toward you, be sure not to hit any of these.
|tip Interrupt Cantata of Flooting this is a channel that will heal him every .5 seconds.
only if ZGV:GetReputation(2010).friendRep<500
step
kill Grandpa Grumplefloot##70678
|tip Do Not step on the Luckydont dolls that he places around the room, these will be red and white
|tip The Blue Luckydo dolls will give a health boost, these are ok to run over
|tip When he reached 50 percent HP he will knock you back, be sure your back is not facing any of these bad dolls.
|tip After he hits 50 percent he will start summoning the white Luckydonts, this will hop toward you, be sure not to hit any of these.
|tip Interrupt Cantata of Flooting this is a channel that will heal him every .5 seconds.
Defeat Grandpa Grumplefloot |condition ZGV:GetReputation(2010).friendRep>=500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Run away from him when he casts Horrific Pursuit this will one shot you
only if ZGV:GetReputation(2010).friendRep<750
step
kill Ooliss##117133
|tip Run away from him when he casts Horrific Pursuit this will one shot you
Defeat Ooliss |condition ZGV:GetReputation(2010).friendRep>=750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds, be sure to keep moving while the cast is about to complete
|tip There will be 3 enemies in this fight, but they all share the same health pool.
only if ZGV:GetReputation(2010).friendRep<1000
step
kill Altor Direvith##115294, Arstad the Wild##115295, Ulrich Forgeworth##115292
|tip Move out of Molten Slag.
|tip If Arstad the Wild finishes his Lightning Crash cast he will jump on where you are and stun you for 3 seconds, be sure to keep moving while the cast is about to complete
|tip There will be 3 enemies in this fight, but they all share the same health pool.
Defeat The Warhammer Council |condition ZGV:GetReputation(2010).friendRep>=1000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you
|tip When Dippy takes damage, he is knocked back
|tip You should prioritize fast attacks
only if ZGV:GetReputation(2010).friendRep<1250
step
kill Dippy##68255
|tip Dippy has a melee ability called Peck. If you are in melee range when the cast is finished, it will kill you
|tip When Dippy takes damage, he is knocked back
|tip You should prioritize fast attacks
Defeat Dippy |condition ZGV:GetReputation(2010).friendRep>=1250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Bill will cast Summon Broom if this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out you will die.
|tip These can be slowed and stunned
only if ZGV:GetReputation(2010).friendRep<1500
step
kill Bill the Janitor##117077
|tip Bill will cast Summon Broom if this cast goes off he will one of 2 brooms.
|tip Boom Broom will have a explosion timer and if it is near you when it runs out you will die.
|tip These can be slowed and stunned
Defeat Bill the janitor |condition ZGV:GetReputation(2010).friendRep>=1500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through
|tip Always Interrupt Pyroblast
only if ZGV:GetReputation(2010).friendRep<1750
step
kill Sanoriak##67268
|tip Avoid Sanoriak's Firewall ability. There is always a safe opening to run through
|tip Always Interrupt Pyroblast
Defeat Sanoriak |condition ZGV:GetReputation(2010).friendRep>=1750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Once the fight begins your character will continuously run forward
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles
|tip While Whirling Kick is active you can not damage the monks, to cancel this collect one of the Yellow Orbs around the room
only if ZGV:GetReputation(2010).friendRep<2000
step
kill Master Paku##115645
|tip Once the fight begins your character will continuously run forward
|tip You gain a buff that allows you to cast while running.
|tip Run through the maze without hitting any of the blue tiles
|tip While Whirling Kick is active you can not damage the monks, to cancel this collect one of the Yellow Orbs around the room
Defeat Master Paku |condition ZGV:GetReputation(2010).friendRep>=2000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip He doesn't do anything special, just auto attacks
only if ZGV:GetReputation(2010).friendRep<2250
step
kill Doomflipper##117145
|tip He doesn't do anything special, just auto attacks
Defeat Doomflipper |condition ZGV:GetReputation(2010).friendRep>=2250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies
|tip Avoid the copies of Splat and kill him before the copies overwhelm you
only if ZGV:GetReputation(2010).friendRep<2500
step
kill Splat##70736
|tip As the fight goes on, Splat will make copies of himself. These copies move slow and die when Splat dies
|tip Avoid the copies of Splat and kill him before the copies overwhelm you
Defeat Splat |condition ZGV:GetReputation(2010).friendRep>=2500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Shadowmaster will cast 2 spells Shadow Torch and Shadow Blast
|tip His Shadow Torch ability will put a torch on the ground
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch
|tip Be sure not to stand in these Shadow Blasts by not standing in between Shadow Torches
only if ZGV:GetReputation(2010).friendRep<2750
step
kill Shadowmaster Aameen##116743
|tip Shadowmaster will cast 2 spells Shadow Torch and Shadow Blast
|tip His Shadow Torch ability will put a torch on the ground
|tip His Shadow Blast ability will create a ball of energy that travels toward a Shadow Torch
|tip Be sure not to stand in these Shadow Blasts by not standing in between Shadow Torches
Defeat Shadowmaster Aameen |condition ZGV:GetReputation(2010).friendRep>=2750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Johnny Awesome will have a pet called, Dazzle
|tip To kill his pet put his pet inbetween yourself and Johnny Awesome while he is casting Powershot
|tip Once his pet is dead Johnny will start casting Revive Dazzle
|tip This is a long cast and he will stop all other abilities to do this, also he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground
|tip Don't stand in front of him when he casts Volley
only if ZGV:GetReputation(2010).friendRep<3000
step
kill Johnny Awesome##115058
|tip Johnny Awesome will have a pet called, Dazzle
|tip To kill his pet put his pet inbetween yourself and Johnny Awesome while he is casting Powershot
|tip Once his pet is dead Johnny will start casting Revive Dazzle
|tip This is a long cast and he will stop all other abilities to do this, also he will take 100 percent more damage when casting the revive ability.
|tip Don't stand in Rain of Arrows indicated by green circles on the ground
|tip Don't stand in front of him when he casts Volley
Defeat Johnny Awesome |condition ZGV:GetReputation(2010).friendRep>=3000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield preventing all damage except players with the Water Shield buff
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one shot you.
|tip You will need to find a new rain cloud path before the buff runs out as a new Water Shield bubble will not spawn until your buff runs out.
only if ZGV:GetReputation(2010).friendRep<3250
step
kill Burnstachio##115023
|tip This is the first damage test of Brawler's Guild!
|tip Burnstachio will have a buff called Ember Shield preventing all damage except players with the Water Shield buff
|tip You must obtain the Water Shield by following the rain clouds that make a path rhough the fire
|tip This is a RNG type fight.
|tip Once you gain the Water Shield buff you will be immune to the fire and able to attack Burnstachio for 15 seconds.
|tip Hitting the fire without the Water Shield buff will one shot you.
|tip You will need to find a new rain cloud path before the buff runs out as a new Water Shield bubble will not spawn until your buff runs out.
Defeat Burnstachio |condition ZGV:GetReputation(2010).friendRep>=3250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Meatball has a 60 second enrage timer
|tip Meatball drops purple orbs which will increase your damage and heal you
|tip Stacking these orbs is the only way to defeat him before the enrage timer
|tip Spend the first 30-45 seconds colleting these orbs
only if ZGV:GetReputation(2010).friendRep<3500
step
kill Meatball##67573
|tip Meatball has a 60 second enrage timer
|tip Meatball drops purple orbs which will increase your damage and heal you
|tip Stacking these orbs is the only way to defeat him before the enrage timer
|tip Spend the first 30-45 seconds colleting these orbs
Defeat Meatball |condition ZGV:GetReputation(2010).friendRep>=3500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Max Megablast will spam Goblin Rocket Barrage
|tip Avoid these rockets and lead Bo Bobble into them
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it
|tip 3 rockets will disable the shield
|tip These 2 share one Health Pool.
only if ZGV:GetReputation(2010).friendRep<3750
step
kill Max Megablast##67488, Bo Bobble##67487
|tip Max Megablast will spam Goblin Rocket Barrage
|tip Avoid these rockets and lead Bo Bobble into them
|tip Periodically, Bo will retreat to a corner and put up a shield. Stand under the shield so Goblin Rocket Barrage will hit it
|tip 3 rockets will disable the shield
|tip These 2 share one Health Pool.
Defeat GG Engineering |condition ZGV:GetReputation(2010).friendRep>=3750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Stiches will cast Stiches' Hook when the player is not in melee range
|tip This will also apply a stack of Hooked which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot, this applies a debuff every second or 2 increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you
|tip At around 7 or 8 stacks run out of the Aura asap, once out he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process, save your movement speed increases for when you have higher stacks of Hooked.
only if ZGV:GetReputation(2010).friendRep<4000
step
kill Stiches##117275
|tip Stiches will cast Stiches' Hook when the player is not in melee range
|tip This will also apply a stack of Hooked which reduces movement speed by 10 percent per stack.
|tip Surronding Stiches is an Aura of Rot, this applies a debuff every second or 2 increasing damage per stack.
|tip Do not get to 10 stacks or it will instantly kill you
|tip At around 7 or 8 stacks run out of the Aura asap, once out he will cast Stiches' Hook to bring you back in.
|tip Keep repeating this process, save your movement speed increases for when you have higher stacks of Hooked.
Defeat Stiches |condition ZGV:GetReputation(2010).friendRep>=4000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip You will be fighting Wes and Sunny along with a few dancers
|tip Throughout the fight Sunny will cast Sit Down, this can be interrupted, but if it goes off it will root you for 3 seconds
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit, you will want to avoid these, so you will want to also interrupt every Sit Down cast.
only if ZGV:GetReputation(2010).friendRep<4250
step
kill Wes##114945, Sonny##114944
|tip You will be fighting Wes and Sunny along with a few dancers
|tip Throughout the fight Sunny will cast Sit Down, this can be interrupted, but if it goes off it will root you for 3 seconds
|tip There will be Jukeboxes in the back that will shoot out Sound Waves which can be dodged or waves of Drop the Bass! which can be jumped over.
|tip These 2 abilities do about 50k-100k damage per hit, you will want to avoid these, so you will want to also interrupt every Sit Down cast.
Defeat Thwack U |condition ZGV:GetReputation(2010).friendRep>=4250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Razorgrin will flop around on the ground going toward the player, simply kite him if you are a ranged.
|tip If you are a melee you will need to get behind him and stay behind him at all times
|tip This is the next dps check in the Brawler's Guild.
only if ZGV:GetReputation(2010).friendRep<4500
step
kill Razorgrin##71085
|tip Razorgrin will flop around on the ground going toward the player, simply kite him if you are a ranged.
|tip If you are a melee you will need to get behind him and stay behind him at all times
|tip This is the next dps check in the Brawler's Guild.
Defeat Razorgrin |condition ZGV:GetReputation(2010).friendRep>=4500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When the gnomes spawn, Wheezy is the only one at full health
|tip Attack Queasy first, followed by the next lowest health gnome
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer
only if ZGV:GetReputation(2010).friendRep<4750
step
kill Fleasy##67515, Greazy##67514, Sleazy##67513, Wheezy##67516, Queasy##67511
|tip When the gnomes spawn, Wheezy is the only one at full health
|tip Attack Queasy first, followed by the next lowest health gnome
|tip AoE damage is beneficial for this encounter, helping to beat the enrage timer
Defeat Leper Gnome Quintet |condition ZGV:GetReputation(2010).friendRep>=4750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon that cannon will fire, if you are in the row of that cannon its an instant kill
|tip You will need to side step to safe areas, those being lit fuses still going toward the cannons.
only if ZGV:GetReputation(2010).friendRep<5000
step
kill Blackmange##114902
|tip There will be a row of Cannons in the back of the room and long fuses going toward each one.
|tip When a Lit Fuse reaches a cannon that cannon will fire, if you are in the row of that cannon its an instant kill
|tip You will need to side step to safe areas, those being lit fuses still going toward the cannons.
Defeat Blackmange |condition ZGV:GetReputation(2010).friendRep>=5000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Topps will charge around the room, Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes he will gain a buff making his next Dashes cast faster, this stacks.
|tip This fight is more difficult for melee as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to kill it before the enrage.
only if ZGV:GetReputation(2010).friendRep<5250
step
kill Topps##116539
|tip Topps will charge around the room, Dino Dash, when dodged, will either give him a debuff called Dino Daze or will cast Dino Dash again.
|tip Simply dodge Dino Dash and save your cooldowns for when he is Dino Dazed.
|tip Everytime Topps Dashes he will gain a buff making his next Dashes cast faster, this stacks.
|tip This fight is more difficult for melee as you can not damage Topps when he is charging or about to charge.
|tip This is another DPS check and requires a minimum of 410k DPS to kill it before the enrage.
Defeat Topps |condition ZGV:GetReputation(2010).friendRep>=5250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip When Millie casts Megafantastic Discombobumorphanator get ready to run into Electric Dynamite
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray
only if ZGV:GetReputation(2010).friendRep<5500
step
kill Millie Watt##67591
|tip When Millie casts Megafantastic Discombobumorphanator get ready to run into Electric Dynamite
|tip Electric Dynamite will put a lightning circle on the ground.
|tip When the cast of Megafantastic Discombobumorphanator is almost finished, step into Electric Dynamite.
|tip Use defensive cooldowns to help mitigate Photoplasm Buster Ray
Defeat Millie Watt |condition ZGV:GetReputation(2010).friendRep>=5500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Carl is a giant worm that will Burrow across the room
|tip Periodicaly he will spawn Lava Pools at a random location, when these spawn they will shot out Lava Waves in 4 directions
|tip If one of these Lava Waves hits another Lava Pool it will spawn another 2 waves out of that pool
only if ZGV:GetReputation(2010).friendRep<5750
step
kill Carl##115233
|tip Carl is a giant worm that will Burrow across the room
|tip Periodicaly he will spawn Lava Pools at a random location, when these spawn they will shot out Lava Waves in 4 directions
|tip If one of these Lava Waves hits another Lava Pool it will spawn another 2 waves out of that pool
Defeat Carl |condition ZGV:GetReputation(2010).friendRep>=5750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip There will be 3 bosses Hudson, Dupree, and Stuffshrew
|tip Hudson will put up a Barrier which will need to be destroyed just by dealing damage and he will also cast Tesla Cannon
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight you will need to kill him before this finishes casting
|tip Stuffshrew will cast Maniacal Laugh which when completed will explode dealing a high amount of damage and knock you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground indicated by red circles, avoid standing in these
only if ZGV:GetReputation(2010).friendRep<6000
step
kill Dupree##114955, Hudson##114951, Stuffshrew##114941
|tip There will be 3 bosses Hudson, Dupree, and Stuffshrew
|tip Hudson will put up a Barrier which will need to be destroyed just by dealing damage and he will also cast Tesla Cannon
|tip Interrupt Tesla Cannon.
|tip Dupree will only cast High Noon the entire fight you will need to kill him before this finishes casting
|tip Stuffshrew will cast Maniacal Laugh which when completed will explode dealing a high amount of damage and knock you back if you are within 6 yards.
|tip Run away from Stuffshrew when he casts this.
|tip Stuffshrew will also put 3 bombs on the ground indicated by red circles, avoid standing in these
Defeat Ogrewatch |condition ZGV:GetReputation(2010).friendRep>=6000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get to high
only if ZGV:GetReputation(2010).friendRep<6250
step
kill Nibbleh##70656
|tip Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
|tip Melee will need to constantly backpedal and kite him in a circle around the room.
|tip Kite Nibbleh and DPS him quickly before his stacks get to high
Defeat Nibbleh |condition ZGV:GetReputation(2010).friendRep>=6250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Serpent of Old will Spawn 4 Totems you will need to kite him to each of the totems around the room getting just enough stacks on each to where when you get back to the first those stacks will reset
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity This will give him a stacking damage bonus. 1% per stack
|tip Warding Totem This will give him buff reducing his damage taken. 1% per stack
|tip Healing Flume Totem This will give him a stacking healing buff. .01% per stack
|tip Invigorating Totem This will give him a stacking buff increasing his haste and movement speed. 6% haste and 2% movement speed per stack
|tip There will also be green barrels placed at your location throughout the fight, be sure to stay clear of these.
only if ZGV:GetReputation(2010).friendRep<6500
step
kill Serpent of Old##116692
|tip Serpent of Old will Spawn 4 Totems you will need to kite him to each of the totems around the room getting just enough stacks on each to where when you get back to the first those stacks will reset
|tip Around 12 stacks on each totem.
|tip If you have less dps and more defensives try to get more stacks of either the damage buff totem or the haste buff totem.
|tip Totem of Ferocity This will give him a stacking damage bonus. 1% per stack
|tip Warding Totem This will give him buff reducing his damage taken. 1% per stack
|tip Healing Flume Totem This will give him a stacking healing buff. .01% per stack
|tip Invigorating Totem This will give him a stacking buff increasing his haste and movement speed. 6% haste and 2% movement speed per stack
|tip There will also be green barrels placed at your location throughout the fight, be sure to stay clear of these.
Defeat Serpent of Old |condition ZGV:GetReputation(2010).friendRep>=6500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip Throughout the entire fight he will put sound wave circles all over the room, avoid these at all costs
|tip Periodically he will cast Destructolaser which will follow you around, avoid getting hit by this.
|tip He will also cast Blue Crush this needs to be interrupted asap.
|tip This is another high dps check and requires a minimum of 490k dps to beat the enrage timer.
only if ZGV:GetReputation(2010).friendRep<6750
step
kill Epicus Maximus##67490
|tip Throughout the entire fight he will put sound wave circles all over the room, avoid these at all costs
|tip Periodically he will cast Destructolaser which will follow you around, avoid getting hit by this.
|tip He will also cast Blue Crush this needs to be interrupted asap.
|tip This is another high dps check and requires a minimum of 490k dps to beat the enrage timer.
Defeat Epicus Maximus |condition ZGV:GetReputation(2010).friendRep>=6750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_
Wait to be teleported into the arena |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
_WHEN THE FIGHT BEGINS_
|tip This boss will transform into multiple different bosses from the raid Hellfire Citadel
|tip Siegemaster Mar'tak will cast Shockwave this need to be avoided at all costs
|tip Kormrok will cast Grasping Hand you will need switch to this and destroy it asap, if it is up to long you may need to use a defensive cooldown
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minuites which is the rest of the encounter.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes just side step these green circles
|tip Gorefiend will cast Crushing Darkness just side step these purple circles
|tip Fel Lord Zakuun will cast Fel Crystal try to place these in one of the 4 corners, and then run to the opposite side of the room
|tip The _Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant, you will need to use an immunity or a big defensive before this goes off
|tip Xhul'horacthat will cast Black Hole stay completly clear of this when it is put down
|tip Mannoroth will cast Fel Imp-losion this will need to be interrupted
|tip Archimonde will cast Shadowfel Burst this will knock you up high in the air
|tip You will need a minimum of 550k dps to beat the enrage timer.
only if ZGV:GetReputation(2010).friendRep<7000
step
kill Ray D. Tear##115040
|tip This boss will transform into multiple different bosses from the raid Hellfire Citadel
|tip Siegemaster Mar'tak will cast Shockwave this need to be avoided at all costs
|tip Kormrok will cast Grasping Hand you will need switch to this and destroy it asap, if it is up to long you may need to use a defensive cooldown
|tip Gurtogg Bloodboil will apply Acidic Wound which will deal 40k damage every 2 seconds and reduce your armor by 100 percent for 2 minuites which is the rest of the encounter.
|tip Watch your health and use your defensive cooldowns when needed.
|tip Kilrogg Deadeye will cast Death Throes just side step these green circles
|tip Gorefiend will cast Crushing Darkness just side step these purple circles
|tip Fel Lord Zakuun will cast Fel Crystal try to place these in one of the 4 corners, and then run to the opposite side of the room
|tip The _Fel Crystal will continiously spawn Fel Waves that need to be dodged.
|tip Tyrant Velhari will cast Gavel of the Tyrant, you will need to use an immunity or a big defensive before this goes off
|tip Xhul'horacthat will cast Black Hole stay completly clear of this when it is put down
|tip Mannoroth will cast Fel Imp-losion this will need to be interrupted
|tip Archimonde will cast Shadowfel Burst this will knock you up high in the air
|tip You will need a minimum of 550k dps to beat the enrage timer.
Defeat Ray D. Tear |condition ZGV:GetReputation(2010).friendRep>=7000
step
Congratulations you are now Rank 8 in the new Brawler's Guild!
Earn the Achievement "King of the Guild" |achieve 11566
]])
