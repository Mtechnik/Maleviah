local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Assault on Violet Hold",{
mapid=1066,
achieveid={10798},
condition_suggested="level>=105 and _G.GetAverageItemLevel()>500",
keywords={"Violet Hold VH AoVH"},
author="support@zygorguides.com",
description="This guide will walk you through the Assault on Violet Hold dungeon.",
},[[
step
Press _I_ and queue for Assault on Violet Hold or enter the dungeon with your group |goto Violet Hold/1 57.5,70.2 < 100 |c
step
label "First_Bosses"
Kill enemies around this area
|tip Green portals will appear where Lord Malgath moves too.
|tip Lord Malgath is in a green sphere floating in the air.
|tip Kill Portal Guardians to close the green portals.
|tip Enemies will appear after you close the portals.
Defeat the Invasion Forces
Choose the Boss that Appears:
|tip Click the line with the name of the boss that appears after you defeat the invasion forces.
Festerface |confirm |next "Festerface"
Shivermaw |confirm |next "Shivermaw"
Blood-Princess Thal'ena |confirm |next "Blood-Princess Thal'ena"
Mindflayer Kaahrj |confirm |next "Mindflayer Kaahrj"
Millificent Manastorm |confirm |next "Millificent Manastorm"
Anub'esset |confirm |next "Anub'esset"
step
label "Festerface"
kill Festerface##101995
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind Festerface to avoid Congealing Vomit. |grouprole DAMAGE
|tip Kill the Congealing Goo that spawns after Congealing Vomit. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Group members standing near Congealing Goo will take damage every 2 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Festerface to a Recongealing Goo after the DPS kill it, so that he eats it. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto Violet Hold/1 38.09,33.30 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 38.09,33.30 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Shivermaw"
kill Shivermaw##101951
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from the center of the room and up the stairs when Shivermaw starts to cast Ice Bomb. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Attack Shivermaw from the sides to avoid its Wing Buffet and Tail Sweep. |grouprole DAMAGE
|tip Free players from Ice Blocks if they fail to move from the center of the room during Ice Bomb. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Large AoE heals will be needed for Ice Bomb. |grouprole HEALER
|tip If possible, remove Frost Breath from the Tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face Shivermaw away from the group. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto 62.22,62.76 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 62.22,62.76 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Blood-Princess Thal'ena"
kill Blood-Princess Thal'ena##102431
_DAMAGE:_ |grouprole DAMAGE
|tip Save your cooldowns for the Essence of the Blood Princess buff. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip As your group becomes infected with Essence of the Blood Princess, group members who aren't  |grouprole HEALER
|tip afflicted will take more damage from Shroud of Sorrow. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Blood-Princess Thal'ena out of the Blood pool when she casts Blood Swarm. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto 34.16,55.11 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 34.16,55.11 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Mindflayer Kaahrj"
kill Mindflayer Kaahrj##101950
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of Shadow Crash when you see the swirl on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Faceless Tendrils when they spawn from Eternal Darkness. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Tank will take massive damage when Mindflayer Kaahrj casts Doom. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to use damage mitigating abilities when Mindflayer Kaahrj casts Doom. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto 68.99,46.39 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 68.99,46.39 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Millificent Manastorm"
kill Millificent Manastorm##101976
_EVERYONE:_ |grouprole EVERYONE
|tip Disarm Elementium Squirrel Bombs as they appear. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Thorium Rocket Chickens as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid Rocket Chicken Rockets. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Kill the Thorium Rocket Chickens as they appear. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto 40.26,41.12 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 40.26,41.12 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Anub'esset"
kill Anub'esset##102246
_EVERYONE:_ |grouprole EVERYONE
|tip When you are targeted by Impale, move away from other players. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Spitting Scarabs that spawn after Call of the Swarm. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Mandible Strike reduces healing to the Tank and deals heavy damage, so be ready to use large heals. |grouprole HEALER
|tip Be ready for AoE heals if the Spitting Scarabs don't get killed quickly. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid standing in front of Anub'esset when he casts Impale. |grouprole TANK
Defeat the First Escaped Prisoner |scenariostage 1 |goto 62.89,30.46 |next "First_Bosses" |only if _G.select(2,_G.C_Scenario.GetInfo())==1
Defeat the Second Escaped Prisoner |scenariostage 2 |goto 62.89,30.46 |next "Final_Boss" |only if _G.select(2,_G.C_Scenario.GetInfo())==2
step
label "Final_Boss"
Kill enemies around this area
|tip Green portals will appear where Lord Malgath moves too.
|tip Lord Malgath is in a green sphere floating in the air.
|tip Kill Portal Guardians to close the green portals.
|tip Enemies will appear after you close the portals.
kill Lord Malgath##102282 |goto 51.19,36.08 |n
Choose the Boss that Appears:
|tip Click the line with the name of the boss that appears after you defeat Lord Malgath.
Sael'orn |next "Sael'orn" |confirm
Fel Lord Betrug |next "Fel Lord Betrug" |confirm
step
label "Sael'orn"
kill Sael'orn##102387
|tip EVERYONE: |grouprole EVERYONE
|tip Turn to face Phase Spiders that are targeting you with Creeping Slaughter to stop them from approaching. |grouprole EVERYONE
Defeat the Invasion Commander |scenarioend |goto 51.19,36.08
|next "Congrats"
step
label "Fel Lord Betrug"
kill Fel Lord Betrug##102446
|tip EVERYONE: |grouprole EVERYONE
|tip Avoid players targeted by Fel Slash. |grouprole EVERYONE
|tip If you are targeted by Fel Slash, move away from other players. |grouprole EVERYONE
|tip When Fel Lord Betrug begins to Execute an ally, run up the platform and free them. |grouprole EVERYONE
Defeat the Invasion Commander |scenarioend |goto 51.19,36.08
|next "Congrats"
step
label "Congrats"
_Congratulations!_
You completed the Assault on Violet Hold dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Black Rook Hold",{
mapid=1081,
achieveid={10804},
condition_suggested="level>=110 and _G.GetAverageItemLevel()>500",
keywords={"Black Rook Hold BRH"},
author="support@zygorguides.com",
description="This guide will walk you through the Black Rook Hold dungeon.",
},[[
step
Press _I_ and queue for Black Rook Hold or enter the dungeon with your group |goto Black Rook Hold/1 29.6,16.3 < 100 |c
step
map Black Rook Hold/1
path follow loose; loop off; ants curved; dist 20
path	40.28,24.06	52.26,37.13	41.66,56.98
Go through whichever gate is open and follow the corridor to the first boss
|tip The gate on the other side may be open, it gives a straight shot path to the boss.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Amalgam of Souls##98542
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players if you become afflicted by Soul Echoes. |grouprole EVERYONE
|tip Keep your distance, if possible, to avoid bouncing damage from Glaive Toss. |grouprole EVERYONE
|tip Move away from other players if you are targeted with Swirling Scythe. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Try to spread out around the boss if you're melee. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Try to keep the tank at full health. |grouprole HEALER
|tip Be prepared for big heals when the boss uses Reap Soul. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to use cooldowns to decrease incoming damage of Reap Soul, it deals massive damage. |grouprole TANK
Defeat the Amalgam of Souls |scenariogoal 1/29464
step
Go up the stairs |goto 49.71,73.86 < 20
click The Fel Tome of Vorgalus Dor##3365
collect The Fel Tome of Vorgalus Dor |q 43823/3 |goto 56.57,75.03
|only if havequest(43823)
step
map Black Rook Hold/1
path follow loose; loop off; ants curved; dist 20
path	45.9,69.6	52.7,76.9	59.1,84.0
path	61.82,87.99	65.32,87.29	64.43,86.74
Follow the Hidden Passageway and go through the Chamber of War
|tip There will be a war table in the center.
Go up the spiraling stairs to The Grand Hall
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Rook Hold/2
path follow loose; loop off; ants curved; dist 20
path	19.07,41.10	26.22,30.36	41.58,44.21
path	37.00,52.45	45.12,72.17	67.72,75.41
Follow the carpet on the ground and kill the two waves of mobs at the end
Go through the gate on the right and to the top of the stairs
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Illysanna Ravencrest##98696
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted by Dark Rush, gather with other players so less Felblazed Ground appears on the ground. |grouprole EVERYONE
|tip Spread out to avoid Brutal Glaive bouncing between group members. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Arcane Blitz. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be ready for big heals when Illysanna uses Vengeful Shear. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on the Risen Vanguards that spawn. |grouprole TANK
|tip Use cooldowns to mitigate damage from Illysanna uses Vengeful Shear. |grouprole TANK
Defeat Illysanna Ravencrest |scenariogoal 1/29465
step
map Black Rook Hold/2
path follow loose; loop off; ants curved; dist 20
path	48.0,29.8
map Black Rook Hold/3
path	78.09,58.38	58.44,52.09	34.66,44.32
path	41.89,71.31	47.69,54.89	38.98,59.34
Follow the balcony around the right side and go through the door
Go up the spiraling stairs to Ravenshold
Follow the corridor right and go up the second set of spiraling stairs to Rook's Rise
|tip Avoid the boulders that roll down the steps.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Rook Hold/4
path follow loose; loop off; ants curved; dist 20
path	43.99,77.86	41.02,88.34	51.70,59.41
path	62.07,43.86
Follow the stairs to the top
|tip Bats will continually spawn until you reach Smashspite's room.
Go through the first room on the right to Rook's Roost
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Smashspite the Hateful##98949
_EVERYONE:_ |grouprole EVERYONE
|tip Stand between Smashspite and his target for Hateful Charge, if the target has the debuff from intercepting already. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When he uses Earthshaking Stomp, be prepared to use AoE Healing. |grouprole HEALER
|tip Tank will need heavy healing after he uses Brutal Haymaker. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use cooldowns if Smashspite is allowed to gain Brutality and use Brutal Haymaker. |grouprole TANK
Defeat Smashspite the Hateful |scenariogoal 1/29466
step
map Black Rook Hold/4
path follow loose; loop off; ants curved; dist 20
path	58.69,44.14	47.11,65.90
Leave Rook's Roost the same way you came in and cross the hall
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Black Rook Hold/5
path follow loose; loop off; ants curved; dist 20
path	36.89,46.36	25.58,64.17	44.89,85.85
path	57.22,65.07
Go through the open gates and run to the top of the stairs into Lord Ravencrest's Chamber
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Kur'talos Ravencrest##113046
kill Dantalionax##99611
_EVERYONE:_ |grouprole EVERYONE
|tip Move along the edges in a circular motion when Dantalionax casts Dark Obliteration. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Stinging Swarms as they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel Cloud of Hynosis. |grouprole HEALER
|tip Prepare big heals for the Tank when Unerring Shear is used. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use cooldowns to mitigate damage from Unerring Shear. |grouprole TANK
|tip Kill Stinging Swarms as they spawn. |grouprole TANK
Redeem Lord Ravencrest |scenarioend
step
_Congratulations!_
You completed the Black Rook Hold dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Darkheart Thicket",{
mapid=1067,
achieveid={10783},
condition_suggested="level>=98 and _G.GetAverageItemLevel()>500",
keywords={"Darkheart Thicket DT"},
author="support@zygorguides.com",
description="This guide will walk you through the Darkheart Thicket dungeon.",
},[[
step
Press _I_ and queue for Darkheart Thicket or enter the dungeon with your group |goto Darkheart Thicket/0 36.6,14.1 < 100 |c
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	36.83,15.80	35.81,24.42	29.15,25.62
path	23.48,24.40	22.68,30.12	25.37,33.84
path	25.81,46.17	24.77,53.41	24.38,58.57
Follow the path around to the right, then back to the left when you reach the tangled trees
When you reach the Rotting Grotto, continue down the path to the right towards the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Archdruid Glaidalis##96512
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stand behind him while he casts Primal Rampage. |grouprole HEALER
|tip Heal allies afflicted by Grevious Tear. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep him facing away from the group. |grouprole TANK
Defeat Archdruid Glaidalis |scenariogoal 1/29271 |goto 24.70,62.11
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	25.77,65.18	26.42,74.32	32.37,81.02
path	36.90,78.16	41.62,70.01	42.52,60.78
path	43.19,49.45
Follow the stone path as it curves left to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Oakheart##103344
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him to avoid taking damage from Nightmare Breath. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay behind him to avoid taking damage from Nightmare Breath. |grouprole HEALER
|tip Be ready to heal the Tank when Oakheart uses Crushing Grip. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Keep him facing away from the group. |grouprole TANK
|tip Use cooldowns to mitigate the incoming damage when Oakheart uses Crushing Grip. |grouprole TANK
Defeat Oakheart |scenariogoal 1/30602 |goto 44.07,45.75
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	46.92,39.38	51.18,35.53	58.71,33.12
path	61.58,36.45	64.40,41.60
Take the northeast passage and follow the water to the second boss
|tip Avoid touching the eggs, as they will spawn whelps.
|tip Keep your back faced away from eggs as well. Getting knocked back into eggs will spawn whelps.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dresaron##99200
_EVERYONE:_ |grouprole EVERYONE
|tip Run towards the boss when he uses Down Draft to avoid spawning Hatch Whelplings. |grouprole EVERYONE
|tip Hatch Whelpings spawn when you get too close to the eggs. |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Try to keep him at the center of the room, so allies aren't blown into eggs when he uses Down Draft. |grouprole TANK
Defeat Dresaron |scenariogoal 1/29274 |goto 65.7,46.1
step
map Darkheart Thicket/0
path follow loose; loop off; ants curved; dist 20
path	62.86,49.12	59.35,54.65	57.71,60.05
path	62.82,67.99	70.71,76.86	75.50,80.77
path	80.36,84.78
Go through the wood arch to the southwest and drop down
Drop down again into the ravine and follow it south to reach the last boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Shade of Xavius##101403
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from allies if you are afflicted by Induced Paranoia. |grouprole EVERYONE
|tip Move next to an ally if you are afflicted by Waking Nightmare. |grouprole EVERYONE
Defeat Shade of Xavius |scenarioend |goto 82.80,87.15
step
_Congratulations!_
You completed the Darkheart Thicket dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Eye of Azshara",{
mapid=1046,
achieveid={10780},
condition_suggested="level>=98 and _G.GetAverageItemLevel()>500",
keywords={"Eye of Azshara EoA"},
author="support@zygorguides.com",
description="This guide will walk you through the Eye of Azshara dungeon.",
},[[
step
Press _I_ and queue for Eye of Azshara or enter the dungeon with your group |goto Eye of Azshara/1 47.4,87.5 < 100 |c
step
map 1046/1
path follow loose; loop off; ants curved; dist 20
path	46.79,83.06	51.94,72.80
Enter the Eye of Azshara |q 38286/1 |goto 46.86,84.48 |only if not completedq(38286)
Follow the path forward to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Warlord Parjesh##91784
_DAMAGE:_ |grouprole DAMAGE
|tip Kill adds as they spawn after he uses Call Reinforcements. |grouprole DAMAGE
|tip Stay behind him at all times. |grouprole DAMAGE
|tip Position an enemy between yourself and the red arrow if you are targeted with Impaling Spear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Position an enemy between yourself and the red arrow if you are targeted with Impaling Spear. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on the adds after he uses Call Reinforcements. |grouprole TANK
kill Warlord Parjesh##91784 |q 38286/2 |goto 54.39,68.18 |only if havequest(38286) or completedq(38286)
Defeat Warlord Parjesh |scenariogoal 1/28776 |goto 54.39,68.18
step
map 1046/1
path follow loose; loop off; ants curved; dist 20
path	43.42,72.00	39.14,60.22	38.90,51.86
Follow the path to the west and continue north
|tip You will need to kill one or more Hatecoil Arcanists to drop the lightning from Lady Hatecoil.
|tip Hatecoil Arcanists are located in the bright blue patches of flora.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Lady Hatecoil##91789
_EVERYONE:_ |grouprole EVERYONE
|tip Move onto the mounds when she begins to cast Static Nova. |grouprole EVERYONE
|tip Move away from mounds when she casts Focused Lightning, so they won't be destroyed. |grouprole EVERYONE
|tip Move away from the group if you get the Curse of the Witch debuff. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip People who get Curse of the Witch will need extra healing. |grouprole HEALER
|tip Be prepared for any player getting knocked out of Hatecoil's arena, as they will take massive damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Lady Hatecoil casts Beckon Storm, gain threat on the adds that spawn. |grouprole TANK
Defeat Lady Hatecoil |scenariogoal 1/28777 |goto 46.49,49.88
step
Go northeast to Serpentrix's island
kill Serpentrix##91808
|tip Kill all the enemies around Serpentix before attacking Serpentix.
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players if you are targeted with Toxic Wound. |grouprole EVERYONE
|tip Stand behind him when he casts Poison Spit. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Rampage. |grouprole DAMAGE
|tip Kill Blazing Hydras when they spawn. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Gain threat on Blazing Hydras when they spawn. |grouprole TANK
Defeat Serpentrix |scenariogoal 1/28779 |goto 52.59,35.50
step
map 1046/1
path follow loose; loop off; ants curved; dist 20
path	65.27,34.60	75.32,37.40	76.11,48.17
path	70.13,51.15
Enter the large cave to the east and follow the right wall to the exit
Curve around to the southwest and kill the two Skrog giants
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill King Deepbeard##91797
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of the circles that appear on the ground. |grouprole EVERYONE
|tip If you get a bubble cast on from Gaseous Bubbles, stand in the AoE damage spots on the ground to remove the bubble. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Move away from him when he casts Call the Seas. |grouprole DAMAGE
|tip Move away from the cracks on the ground after he uses Quake. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay very close to him to avoid Quake. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to keep him from attacking the Healer. |grouprole TANK
Defeat King Deepbeard |scenariogoal 1/28778 |goto 66.32,50.04
step
map 1046/1
path follow loose; loop off; ants curved; dist 20
path	68.3,47.1	63.2,45.4
Follow the north passage and drop down by the broken ship
confirm
step
kill Wrath of Azshara##96028
|tip Kill the enemies channeling him before attacking him.
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from the circle on the ground for Arcane Bomb. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Do not stand in front of him. |grouprole DAMAGE
|tip Try not to stand too close to other players. |grouprole DAMAGE
|tip When Mystic Tornado is cast, avoid running into other players. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispell Arcane Bomb when it's cast on an ally. |grouprole HEALER
|tip Prepare big AoE heals when he starts casting Heaving Sands. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay right on top of the boss. It will cause AoE damage if you don't. |grouprole TANK
kill Wrath of Azshara##96028 |q 38286/3 |goto 54.57,55.16 |only if  havequest(38286) or completedq(38286)
Defeat Wrath of Azshara |scenarioend |goto 54.57,55.16
step
click Tidestone of Golganneth
|tip It appears after you kill Wrath of Azshara.
turnin Wrath of Azshara##38286 |goto 55.58,54.04
only if havequest(38286) or completedq(38286)
step
_Congratulations!_
You completed the Eye of Azshara dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Halls of Valor",{
mapid=1041,
achieveid={10786},
condition_suggested="level>=98 and _G.GetAverageItemLevel()>500",
keywords={"Halls of Valor HoV"},
author="support@zygorguides.com",
description="This guide will walk you through the Halls of Valor dungeon.",
},[[
step
Press _I_ and queue for Halls of Valor or enter the dungeon with your group |goto Halls of Valor/2 47.6,8.6 < 100 |c
step
map Halls of Valor/2
path follow loose; loop off; ants curved; dist 20
path	47.75,12.21	47.0,25.0	47.72,39.23
Follow the bridge to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Hymdall##94960
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from Dancing Blade when he throws it at a random player. |grouprole EVERYONE
|tip Avoid the blue lightning that appears on the ground after he uses the Horn of Valor. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay behind him. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay behind him. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Face him away from the group. |grouprole TANK
Defeat Hymdall |scenariogoal 1/28994
step
Continue forward and enter the Hearth of Revelry
confirm
step
label "Hearth_Of_Revelry"
What Is Your Group Doing Right Now?
|tip Click the line below that matches what your group is doing currently.
Heading Left to Kill Kill Hyrja |confirm |next "Hyrja"
Or
Heading Right to Kill Fenryr |confirm |next "Fenryr_Start"
Or
Already Killed Hyrja and Fenryr |confirm |next "Halls_Of_Valor_End"
step
label "Hyrja"
map Halls of Valor/2
path follow loose; loop off; ants curved; dist 20
path	54.61,71.56	62.17,82.91
Go left, following the banquet tables and going up the two sets of stairs
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Olmyr the Enlightened##97202
kill Solsten##97219
kill Hyrja##96646
_EVERYONE:_ |grouprole EVERYONE
|tip Stay away from other players when you are afflicted with Expel Light. |grouprole EVERYONE
|tip Avoid the yellow swirls after Sanctify is cast. |grouprole EVERYONE
|tip Stay inside the blue bubble that appears when Eye of the Storm is being cast. |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Move Hyrja so that only one NPC is channeling her. |grouprole TANK
Defeat Hyrja |scenariogoal 1/28995 |goto 63.56,85.03 |next "Hearth_Of_Revelry"
step
label "Fenryr_Start"
Go right and walk through the portal |goto 38.04,75.58
Travel to the Fields of the Eternal
confirm
step
Follow the bloody footprints on the ground ahead of you to Fenryr's first location
DPS Fenryr until he runs away. Then, follow his bloody trail
confirm
step
kill Fenryr##99868
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid allies being targeted by Ravenous Leap. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Melee: Stay close to other melee damage dealers to split the damage of Claw Frenzy among you. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay at least 12 yard back from the boss. |grouprole HEALER
|tip Run away if you are targeted by Scent of Blood. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Fenryr uses Scent of Blood, which causes him to attack a random party member and you won't be able to interrupt it. |grouprole TANK
Defeat Fenryr |scenariogoal 1/28996
step
Retrace your steps and walk through the portal |goto 66.56,27.21 |n
Return to the Hearth of Revelry
confirm |next "Hearth_Of_Revelry"
step
label "Halls_Of_Valor_End"
map Halls of Valor/3
path follow loose; loop off; ants curved; dist 20
path	51.38,12.76	51.37,74.80
Run through the previously barred doorway in the main hall
Run up the bridge of light
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
You may kill these in any order, but once the first 2 are talked to, challenged, and defeated the last 2 will gain those 2's abilities and aggro at the same time
confirm
step
Kill the 4 enemies in the room
|tip Talk to them to challenge them to fight.
|tip You can kill them in any order, but the last 2 enemies will attack together.
|tip The last 2 enemies will gain the abilities of the first 2 enemies that you killed.
Click Here After You Kill Them All |confirm
step
kill God-King Skovald##95675
_EVERYONE:_ |grouprole EVERYONE
|tip Click the Aegis of Aggramar shield that he drops on the ground to survive Ragnarok. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Stay away from allies when Skovald casts Felblaze Rush. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stay away from allies when Skovald casts Felblaze Rush. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use cooldowns to mitigate the incoming damage of Savage Blade. |grouprole TANK
click Aegis of Aggramar |only if havequest(40072)
|tip It looks like a golden shield that appears on the ground while fighting God-King Skovald. |only if havequest(40072)
Claim the Aegis of Aggramar |q 40072/1 |goto 51.44,88.83 |only if havequest(40072)
Defeat God-King Skovald |scenariogoal 1/28997
step
kill Odyn##95676
_EVERYONE:_ |grouprole EVERYONE
|tip Run away when he starts casting Radiant Tempest. |grouprole EVERYONE
|tip When you are afflicted by Runic Brand, run to the rune on the floor that matches the rune floating above your head. |grouprole EVERYONE
|tip Avoid the circles on the ground. |grouprole EVERYONE
|tip Avoid the glowing orbs that appear after he casts Shatter Spears. |grouprole EVERYONE
Defeat Odyn |q 40072/2 |goto 51.44,88.83 |only if havequest(40072)
Defeat Odyn |scenarioend
step
click The Aegis of Aggramar
turnin Securing the Aegis##40072 |goto 50.73,88.26
accept The Aegis of Aggramar##43349 |goto 50.73,88.26
|only if havequest(40072) or completedq(40072) or havequest(43349) or completedq(43349)
step
click The Aegis of Aggramar
turnin The Aegis of Aggramar##43349 |goto Dalaran L/12 49.26,62.13
|only if havequest(43349) or completedq(43349)
step
_Congratulations!_
You completed the Halls of Valor dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Maw of Souls",{
mapid=1042,
achieveid={10807},
condition_suggested="level>=110 and _G.GetAverageItemLevel()>500",
keywords={"Maw of Souls MoS"},
author="support@zygorguides.com",
description="This guide will walk you through the Maw of Souls dungeon.",
},[[
step
Press _I_ and queue for Maw of Souls or enter the dungeon with your group |goto Helmouth Cliffs/1 46.8,79.0 < 100 |c
step
kill Ymiron, the Fallen King##96756
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the circle that appears beneath him when he starts casting Screams of the Dead. |grouprole EVERYONE
|tip Avoid the purple orbs after he casts Bane. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready to heal after he casts Bane. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be prepared to use cooldowns when Ymiron's mana bar fills up. |grouprole TANK
Defeat Ymiron |scenariogoal 1/29340 |goto Helmouth Cliffs/1 52.89,27.62
step
Click the horn on the hill behind where Ymiron spawned
confirm
step
map Helmouth Cliffs/2
path follow loose; loop off; ants curved; dist 20
path 42.70,45.99	79.93,56.45
Cross the ship and go up the stairs to the top deck
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the cage to get free after you get teleported.
confirm
step
kill Harbaron##96754
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Cosmic Scythe. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Void Snap. Establish an interrupt order with other players, if you need to. |grouprole DAMAGE
|tip Kill Shackled Servitors and Destroy Soul Fragments as they appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players with Fragment cast on them will need lots of healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Void Snap. Coordinate with your group so interrupts aren't wasted. |grouprole TANK
Defeat Harbaron |scenariogoal 1/29341 |goto 1042/3 74.58,56.22
step
map Helmouth Cliffs/3
path follow loose; loop off; ants curved; dist 20
path	70.03,46.27	30.80,55.24
Cross the top deck of the ship, killing trash on one side
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Helya##96759
_EVERYONE:_ |grouprole EVERYONE
|tip When Helya starts to cast Corrupted Bellow, quickly move away from the area she's facing. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Quickly kill Destructor and Grasping Tentacles as the appear. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players afflicted with Taint of the Sea will take damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on Tentacles as the spawn. |grouprole TANK
Defeat Helya |scenarioend |goto 16.97,60.04
step
_Congratulations!_
You completed the Maw of Souls dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Neltharion's Lair",{
mapid=1065,
achieveid={10795},
condition_suggested="level>=98 and _G.GetAverageItemLevel()>500",
keywords={"Neltharion's Lair NL"},
author="support@zygorguides.com",
description="This guide will walk you through the Neltharion's Lair dungeon.",
},[[
step
Press _I_ and queue for Neltharion's Lair or enter the dungeon with your group |goto Neltharion's Lair/0 96.6,40.0 < 100 |c
step
Jump down the hole |condition not _G.HasFullControl()
step
map Neltharion's Lair/0
path follow loose; loop off; ants curved; dist 20
path	86.67,49.49	83.14,44.61	76.09,41.28
path	72.21,45.00
Follow the path, killing the mobs along the way
Jump off the platform at the end into the water below
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Rokmora##91003
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Blightshard Skitters as they spawn. Be sure to kill them before Rokmora casts Shatter. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be ready for AoE heals when Rokmora casts Shatter. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Make sure to face Rokmora away from the party, or they will take damage from Razor Shards. |grouprole TANK
Defeat Rokmora |scenariogoal 1/28560 |goto 66.50,50.14
step
click Empty Barrel
Ride in the Empty Barrel |goto 70.12,56.57 |condition not _G.HasFullControl()
|tip The barrel is located near the water after Rokmora.
step
map Neltharion's Lair/0
path follow loose; loop off; ants curved; dist 20
path	60.01,85.79	57.45,81.90	54.13,78.25
path	50.11,73.25	49.1,60.8
Continue forward and go up the ramp
|tip Do not take any side passages.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ularogg Cragshaper##105300
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Bellowing Idols quickly to prevent damage from Falling Debris. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When Ularogg uses Sunder, be ready to use heavy healing on the Tank. |grouprole HEALER
|tip The longer Ularogg is in the Bellowing Idol, the more damage over time he will increase to your party. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use your cooldowns to mitigate damage from Sunder. |grouprole TANK
Defeat Ularogg Cragshaper |scenariogoal 1/28561 |goto 44.52,50.90
step
map Neltharion's Lair/0
path follow loose; loop off; ants curved; dist 20
path	42.78,50.33	45.00,43.70	46.73,41.00
path	47.10,33.73	41.93,30.84	37.85,33.44
Continue through the dungeon, following the path as it curves to the left
|tip You can skip the pack of mobs immediately following Ularogg by hugging the left wall.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Naraxas##91005
_EVERYONE:_ |grouprole EVERYONE
|tip Make sure at least 1 group member in melee range, if possible, or the group will take damage from Putrid Skies. |grouprole EVERYONE
|tip Avoid the green circles and green gas on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready to heal the Tank when Naraxas uses Spiked Tongue. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Naraxas uses Spiked Tongue, move away as far as you can. |grouprole TANK
Defeat Naraxas |scenariogoal 1/28562
step
Jump down the hole |goto 33.50,37.59 |condition not _G.HasFullControl()
step
map Neltharion's Lair/0
path follow loose; loop off; ants curved; dist 20
path	29.86,41.63	26.98,47.20	24.23,52.25
path	19.88,55.62	18.08,59.74
Continue straight ahead towards the final boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Dargrul the Underking##91007
_EVERYONE:_ |grouprole EVERYONE
|tip Take cover behind Crystal Spikes to avoid taking damage from Magma Wave. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Molten Charskins as they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Molten Crash will cause heavy damage to the entire group. |grouprole HEALER
|tip If left alone, Molten Charskins will AoE damage the group as they walk around. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Mitigate damage from Molten Crash with defensive abilities. |grouprole TANK
Defeat Dargrul the Underking |scenarioend |goto 17.46,62.50
step
_Congratulations!_
You completed the Neltharion's Lair dungeon!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Vault of the Wardens",{
mapid=1045,
achieveid={10801},
condition_suggested="level>=110 and _G.GetAverageItemLevel()>500",
keywords={"Vault of the Wardens VotW"},
author="support@zygorguides.com",
description="This guide will walk you through the Vault of the Wardens dungeon.",
},[[
step
Press _I_ and queue for Vault of the Wardens or enter the dungeon with your group |goto Azsuna/0 48.29,80.22 |c |or
|confirm |or
step
map 1045/1
path follow loose; loop off; ants curved; dist 20
path	63.23,77.25	37.20,77.54	27.10,77.78
path	24.29,70.81
Go through the first large room and down the following hallway
Enter the Warden's Court
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Tirathon Saltheril##99198
_EVERYONE:_ |grouprole EVERYONE
|tip This fight requires a lot of interrupts, so coordinate with your group so interrupts don't get wasted. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Dark Energies.  |grouprole DAMAGE
|tip Note: You must interrupt Darkstrikes to be able to interrupt Dark Energies. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip If Furious Blast isn't interrupted, be prepared to use AoE heals. |grouprole HEALER
|tip If Metamorphoses isn't interrupted, be prepared to use AoE heals. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use damage mitigation abilities when he activates Darkstrikes. |grouprole TANK
Defeat Tirathon Saltheril |scenariogoal 1/29369
step
map 1045/1
path follow loose; loop off; ants curved; dist 20
path	20.68,46.42	24.39,26.95	24.35,18.73
Exit the Warden's Court through one of the north doors
Enter The Demon Ward and ride the elevator to the bottom
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Inquisitor Tormentorum##96015
|tip He may be in a different spot in this room.
_EVERYONE:_ |grouprole EVERYONE
|tip If you get afflicted by Sapped Soul, the next ability you use will have its cooldown increased by 10 seconds. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Sap Soul. |grouprole DAMAGE
|tip Kill adds as they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip If you are afflicted by Sapped Soul, only use abilities that are unimportant. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Sap Soul. |grouprole TANK
|tip Gain threat on the enemies he releases when he is at 70% and 40% health. |grouprole TANK
Defeat Inquisitor Tormentorum |scenariogoal 1/29528
step
label "Vault_Of_Wardens_Router"
What Is Your Group Doing Right Now?
|tip Click the line below that matches what your group is doing currently.
Heading East to Kill Glazer |confirm |next "Glazer"
Heading South to Kill Ash'Golm |confirm |next "Ash'Golm"
Already Killed Glazer and Ash'Golm |confirm |next "Vault_Of_Wardens_End"
step
label "Glazer"
map 1045/2
path follow loose; loop off; ants curved; dist 20
path	57.01,48.54	62.64,48.59
Enter the Vault of Mirrors to the east
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Glazer##99865
_DAMAGE:_ |grouprole DAMAGE
|tip Glazer will cast Pulse, which bounce off the walls towards the nearest player. |grouprole DAMAGE
|tip Use the Mirrors along the edge of the platform to reflect the blue Focused beam onto Glazer's back. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip You will need AoE healing until the blue Focused beam phase. |grouprole HEALER
|tip The group will take damage from Radiation as long as Glazer is focusing his beam. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Help direct the mirrors when he focuses his beam. |grouprole TANK
Defeat Glazer |scenariogoal 1/29371
|next "Vault_Of_Wardens_Router"
step
label "Ash'Golm"
map 1045/2
path follow loose; loop off; ants curved; dist 20
path	46.73,58.98	46.72,66.75
Enter the Vault of Ice to the south
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ash'Golm##95886
_EVERYONE:_ |grouprole EVERYONE
|tip Walk on the moving orange lava patches, if necessary, to avoid letting the Ember adds touch them. |grouprole EVERYONE
|tip Ember adds will explode if they touch lava patches. |grouprole EVERYONE
|tip Avoid the circles on the ground if you are at range. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Save damage increasing cooldowns for when Ash'golm or his adds are frozen. |grouprole DAMAGE
|tip Quickly kill the adds that spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip If Ash'Golm doesn't get frozen midway through the fight, the whole group will take damage from Smoldering. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Help direct the aim of Ash'golm's Fissure, so it doesn't hit other players. |grouprole TANK
|tip You cannot tank the Ember adds that spawn, and they attack random players. |grouprole TANK
Defeat Ash'Golm |scenariogoal 1/29370
|next "Vault_Of_Wardens_Router"
step
label "Vault_Of_Wardens_End"
map 1045/2
path follow loose; loop off; ants curved; dist 20
path	40.10,48.44	34.14,48.41
Enter the Fallen Passage to the west
Ride the elevator down
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map 1045/3
path follow loose; loop off; ants curved; dist 20
path	53.29,13.84	51.96,22.62	47.23,28.16
path	44.69,34.66
click Elune's Light
|tip Only one person can carry the Elune's Light. Usually the Tank carries it.
Follow the path occasionally covered with webs
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click Fel-Ravaged Tome##143394
accept Fel-Ravaged Tome##44486 |goto 54.75,35.85
step
Enter the Vault of the Betrayer to the south
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Cordana Felsong##95888
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Creeping Doom spirits, which are invisible unless revealed by Elune's Light. |grouprole EVERYONE
|tip If you pick up Elune's Light, use the ability that appears as a button on the screen to dispel Creeping Doom. |grouprole EVERYONE
|tip Use Elune's Light to remove the Deepening Shadows spreading patch that forms on the ground. |grouprole EVERYONE
|tip Use Elune's Light to reveal her when she disappears.  She goes to a random location around the edge of the platform. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use Elune's Light to reveal Avatars of Vengeance which are found around the Sentries in the corners. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Allies caught by the green spinning projectiles will take more damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid the green spinning projectiles she throws. |grouprole TANK
|tip Gain threat on the Avatars of Vengeance once they are revealed with Elune's Light. |grouprole TANK
Defeat Cordana |scenarioend
step
talk Robert Newhearth##112441
|tip Upstairs inside the building.
turnin Fel-Ravaged Tome##44486 |goto Dalaran L/10 25.44,44.71
only if havequest(44486) or completedq(44486)
step
_Congratulations!_
You completed the Vault of the Wardens dungeon!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\The Arcway",{
mapid=1045,
achieveid={10813},
condition_suggested="level>=110 and _G.GetAverageItemLevel()>830",
keywords={"Arcway"},
author="support@zygorguides.com",
description="This guide will walk you through the Arcway dungeon in Suramar.",
},[[
step
Follow the path |goto Suramar/0 42.77,61.25 < 15 |walk |region suramar_sanctum_of_order
Follow the path |goto Suramar/0 41.51,60.63 < 15 |walk |region suramar_sanctum_of_order
Walk into the swirling portal |goto Suramar/0 41.04,61.83 |n |region suramar_sanctum_of_order
Enter the Arcway Dungeon |scenariostart
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
step
map The Arcway/1
path follow loose; loop off; ants curved; dist 20
path	48.04,29.01	53.32,35.97	58.68,35.93
path	67.38,28.51	73.2,42.2
Enter The Grand Hall and go through the first passage on the left
Go down the stairs in front of you
Go through the passage in the northeast corner of the room
Make a right and go down the hall to the first boss
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill General Xakal##98206
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of the way when you are targeted with Shadow Slash. |grouprole EVERYONE
|tip Avoid the green Fel Fissure circles on the ground. |grouprole EVERYONE
|tip You will get knocked back when he casts Wicked Slam, so be careful to position |grouprole EVERYONE
|tip yourself so you don't land on the green circles. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready for big heals when he casts Wicked Slam. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Make sure to taunt the Dread Felbats that appear. |grouprole TANK
Defeat General Xakal |scenariogoal 2/29147 |goto 77.08,49.99
step
map The Arcway/1
path follow loose; loop off; ants curved; dist 20
path	69.88,55.17	66.82,56.16	64.25,64.36
Drop down from the ledge in the southwest corner of the room
|tip Watch out for the patrols underneath the bridge.
Go up the stairs on the left and go into the next room
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Nal'tira##98207
_EVERYONE:_ |grouprole EVERYONE
|tip If you get tethered to another player with Tangled Web, run away from each other to break it. |grouprole EVERYONE
|tip Avoid the yellow patches that appear on the ground. |grouprole EVERYONE
|tip Move out of the way if you are targeted by Blink Strikes. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready for big heals when she casts Temporal Displacement. |grouprole HEALER
Defeat Nal'tira |scenariogoal 2/29148 |goto 61.66,74.80
step
map The Arcway/1
path follow loose; loop off; ants curved; dist 20
path	57.43,75.04	49.67,74.32	48.04,67.56
path	46.66,64.39	42.98,64.96
Exit the room through the west opening
Go up the stairs and make a right, going north
Take the first passage to your left and go up the stairs
Enter the first room on your left
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Corstilax##98205
_EVERYONE:_ |grouprole EVERYONE
|tip Click the huge crystal that appears when players are targeted by Quarantine to free them. |grouprole EVERYONE
|tip Avoid the swirling circles on the ground when he casts Suppression Protocol. |grouprole EVERYONE
|tip Walk into the purple patches of Nightwell Energy to increase your haste by 15% per stack. |grouprole EVERYONE
|tip Run against Cleansing Force. He does an AoE blast when he finishes casting it, which deal heavy damage. |grouprole EVERYONE
|tip Cleansing Force removes Nightwell Energy haste buff stacks. If you have have any left when he finishes casting it, |grouprole EVERYONE
|tip and you get hit by the AoE blast, you will get stunned. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be alert when he casts Suppression Protocol, the group can take a good amount of damage. |grouprole HEALER
Defeat Corstilax |scenariogoal 2/29146 |goto 39.17,77.70
step
map The Arcway/1
path follow loose; loop off; ants curved; dist 20
path	37.93,67.86	34.41,61.53	28.55,65.99
Go through the northwest passage and enter the first room on your left
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Ivanyr##98203
_EVERYONE:_ |grouprole EVERYONE
|tip Move away from other players if you are afflicted by Volatile Magic. |grouprole EVERYONE
|tip Run toward each other if you are targeted by Nether Link. |grouprole EVERYONE
|tip The space between players linked by Nether Link becomes a damage patch on the ground when Nether Link expires. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt him when he starts casting Overcharge Mana. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be ready when he casts Volatile Magic, it hits the target hard, as well as allies near the target when it expires. |grouprole HEALER
Defeat Ivanyr |scenariogoal 2/29145 |goto 18.56,74.01
step
map The Arcway/1
path follow loose; loop off; ants curved; dist 20
path	25.58,68.32	32.82,62.56	35.79,62.22
path	38.39,67.88	41.90,67.63	44.81,63.12
path	48.03,64.24	49.18,57.34	52.12,50.34
Exit the chamber the way you came in
Make a left in the hallway and go down the stairs
Go through the passage to the left and make a right in the hallway
Go down the stairs and into the left room at the bottom of the stairs
|tip You should be in the center ring.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Advisor Vandros##98208
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the blue floating Chrono Shards, they explode after 8 seconds. |grouprole EVERYONE
|tip Avoid the purple orb Force Bombs, they explode. |grouprole EVERYONE
|tip Run through the shock waves after the Force Bombs explode. |grouprole EVERYONE
|tip You will get teleported away midway through the fight when he casts Banish In Time. |grouprole EVERYONE
|tip The place you get teleported to is random. Make your way back to him within 2 minutes, or you die. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Make sure to interrupt Accelerating Blast as often as you can. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Be ready when he casts Force Bombs, it can deal heavy damage to the whole group. |grouprole HEALER
Defeat Advisor Vandros |scenarioend |goto 48.04,42.48
step
_Congratulations!_
You completed The Arcway dungeon!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Court of Stars",{
mapid=1045,
achieveid={10816},
condition_suggested="level>=110 and _G.GetAverageItemLevel()>830",
keywords={"Court of Stars CoS"},
author="support@zygorguides.com",
description="This guide will walk you through the Court of Stars dungeon in Suramar.",
},[[
step
Jump down here |goto Suramar/0 48.34,65.22 < 20 |only if walking
Enter the building |goto Suramar/0 48.99,65.02 < 20 |walk
Walk into the swirling portal |goto Suramar/0 50.99,65.59 |n
Enter the Court of Stars Dungeon |scenariostart
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
step
click Signal Lantern
|tip It's at the end of the dock in front of you after you enter the dungeon.
|tip Jump onto the boat that arrives.
Ride the Boat to Moonlit Landing |goto Court of Stars/1 42.52,76.82 < 25
confirm
step
map Court of Stars/1
path follow loose; loop off; ants curved; dist 7
path	42.36,65.29	42.48,63.33	44.42,62.19
path	42.15,60.49
Enter the building through the doorway to your left
Run up the stairs
Leave the building through the doorway on the top floor
|tip Kill Duskwatch Sentries before they reach Arcane Beacons, or they will call for reinforcements.
|tip Arcane Beacons look like pulsing big columns with spiral metal pointed scultures on top of them.
|tip Click Arcane Beacons to destroy them.
Leave the building and enter the courtyard
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
map Court of Stars/1
path follow loose; loop off; ants curved; dist 20
path	38.98,53.91	32.01,41.45
Cross the bridge directly in front of you
Cross the second bridge to the north
|tip Kill Duskwatch Sentries before they reach Arcane Beacons, or they will call for reinforcements.
|tip Arcane Beacons look like pulsing big columns with spiral metal pointed scultures on top of them.
|tip Click Arcane Beacons to destroy them.
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
kill Patrol Captain Gerdo##104215
|tip He walks around this area.
|tip Clear the area of trash mobs before engaging him, or they will come to his aid during the fight.
|tip If you have a Rogue or Alchemist in your group, get them to click the Flask of the Solemn Night before engaging him.
|tip The flask is located on the circular bar area in the middle of the courtyard.
|tip This will poison the flask and he will die instantly upon drinking it during the fight.
_EVERYONE:_ |grouprole EVERYONE
|tip When you get the Arcane Lockdown debuff, jump multiple times to remove the stacks of it. |grouprole EVERYONE
|tip Triangle patches appear on the ground in front and behind him when he casts Resonant Slash. Move to his left or right. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the enemies quickly that appear to help him. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When he is at low health, he will run to drink his Flask of the Solemn Night. |grouprole HEALER
|tip After drinking, he will deal more damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on the enemies quickly that appear to help him. |grouprole TANK
Defeat Patrol Captain Gerdo |scenariogoal 1/29612 |goto 34.28,28.10
step
map Court of Stars/1
path follow loose; loop off; ants curved; dist 20
path	38.57,24.65	42.62,26.75<10	49.15,28.20<7
path	47.85,30.27<7	46.32,35.04<7	45.36,36.14<7
path	45.92,38.93<7	44.89,37.39<7	46.00,40.50<7
path	48.63,39.27<10
Run up the stairs on the east side of the center plaza and enter the building
Run to the top of the spiraling stairs on the far side of the room and leave the building
Enter the building directly across from the one you left and go all the way downstairs
Leave the building
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Cross the bridge to the right of the building's exit |goto 51.11,43.69 < 20
Go to the courtyard on the other side of the bridge
kill Felbound Enforcer##104278+
|tip They walk around this area, so you may need to search a bit for them.
|tip You can see them as yellow circles on your minimap.
|tip After you kill a Felbound Enforcer, a named enemy will run to your location to investigate.
|tip Do this 3 times.
kill Imacu'tya##104275
kill Baalgar the Watchful##104274
kill Jazshariu##104273
Click Here After Defeating All Three Enemies |confirm |goto 47.70,60.07
step
Go to the front of the Jeweled Estate
kill Talixae Flamewreath##104217
_EVERYONE:_ |grouprole EVERYONE
|tip Group together when she starts casting Infernal Eruption, Infernal Imps spawn at the location of all players. |grouprole EVERYONE
|tip Keep the Infernal Imps grouped together and kill them with AoE damage as fast as possible. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Quickly kill the Infernal Imps that spawn after she cass Infernal Eruption. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The Infernal Imps hit hard and can be hard to keep focused on the tank, so be ready for big heals when they spawn. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Gain threat on the Infernal Imps that spawn after she cass Infernal Eruption. |grouprole TANK
Defeat Talixae Flamewreath |scenariogoal 1/29613 |goto 34.28,28.10
step
talk Ly'leth Lunastre##106468
Gain the Masquerade Disguise |havebuff Interface\Icons\inv_helm_mask_fittedalpha_b_01_nightborne_02 |goto 60.46,61.74
step
Enter the Jeweled Estate behind Ly'leth Lunastre
talk Chatty Rumormonger##107486+
|tip They are 5 of them all around inside this building, upstairs and downstairs.
|tip You can see them as yellow circles on your minimap.
|tip Talk to them to get random clues as to what the spy looks like.
|tip With the clues in mind, inspect the Suspicious Nobles inside the building to find the one that matches the description.
talk Suspicious Noble##107435
|tip The correct npc will start talking and walking away.
Click Here After You've Found the Spy |confirm |goto Court of Stars/2 42.15,46.55
step
Go up the stairs and through the northeast door |goto Court of Stars/3 56.88,33.25 < 10 |walk
Watch the dialogue
|tip Follow the Suspicious Noble.
kill Gerenth the Vile##108151
|tip Click his corpse to loot the key needed to continue.
Click Here Once You Have The Key |confirm |goto Court of Stars/3 66.36,19.09
step
map Court of Stars/3
path follow loose; loop off; ants curved; dist 15
path	56.95,33.22	57.93,54.69	60.40,69.83
Exit the terrace and go to the southeast door
|tip Opening the world map will display an ant trail guiding you through the current floor.
|tip Click the big Skyward Terrace door to open it.
Watch the dialogue
kill Advisor Melandrus##104218
_EVERYONE:_ |grouprole EVERYONE
|tip He will cast Blade Surge on a random player and rush to their location, leaving a copy of himself at that location. |grouprole EVERYONE
|tip These copies cast his abilities when he does, so he becomes more difficult in longer fights, due to these copies. |grouprole EVERYONE
|tip Distance yourself from other players, if possible, to avoid Blade Surge damaging multiple players at once. |grouprole EVERYONE
|tip Avoid the grey lines on the ground when he casts Piercing Gale. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be ready to big heals if the fight takes a long time, since his abilities increase in damage as the fight progresses. |grouprole HEALER
Defeat Advisor Melandrus |scenarioend |goto 65.85,78.15
step
_Congratulations!_
You completed the Court of Stars dungeon!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Karazhan\\Karazhan Attunement",{
condition_suggested="level>=110 and _G.GetAverageItemLevel()>840",
keywords={"Karazhan Kara"},
author="support@zygorguides.com",
description="This guide will walk you through the Attunement for the Karazhan dungeon.",
},[[
step
talk Archmage Khadgar##90417
accept Edict of the God-King##45422 |goto Dalaran L/10 28.59,48.39
step
Enter the Halls of Valor on Mythic difficulty
kill God-King Skovald##95675 |q 45422/1 |goto Halls of Valor/3 51.44,88.83
step
click the Quest Completion box
turnin Edict of the God-King##45422
accept Unwanted Evidence##44886
step
talk Archmage Khadgar##90417
turnin Unwanted Evidence##44886 |goto Dalaran L/10 28.59,48.39
accept Uncovering Orders##44887 |goto Dalaran L/10 28.59,48.39
step
Enter the Vault of the Wardens on Mythic difficulty
kill Inquisitor Tormentorum##96015
|tip This is the 2nd boss in the instance.
collect Fragment of Torment |q 44887/3
step
Enter the Violet Hold on Mythic difficulty
Kill the first boss in this instance it can be one of 6 different bosses
collect Fragment of Power |q 44887/2
step
Enter the Black Rook Hold on Mythic difficulty
kill Smashspite the Hateful
|tip This is the 3rd boss in this instance.
collect Fragment of Spite |q 44887/1
step
talk Archmage Khadgar##90417
turnin Uncovering Orders##44887 |goto Dalaran L/10 28.59,48.39
accept Aura of Uncertainty##44944 |goto Dalaran L/10 28.59,48.39
step
talk Archmage Khadgar##90417
Tell him "Let's us begin." |goto Dalaran L/10 28.59,48.39
Watch the Dialogue
Unravel the Mystery |q 44944/1 |goto Dalaran L/10 28.59,48.39
step
talk Archmage Khadgar##90417
turnin Aura of Uncertainty##44944 |goto Dalaran L/10 28.59,48.39
accept Return to Karazhan##44556 |goto Dalaran L/10 28.59,48.39
step
click Portal to Karazhan |goto Dalaran L/10 29.51,46.87
Take the Portal to Karazhan |q 44556/1
step
talk Archmage Khadgar##114310
turnin Return to Karazhan##44556 |goto Deadwind Pass/0 47.03,75.28
accept Finite Numbers##44557 |goto Deadwind Pass/0 47.03,75.28
accept Holding the Lines##44683 |goto Deadwind Pass/0 47.03,75.28
step
talk Archmage Karlain##114631
accept Corruption Runs Deep##44684 |goto Deadwind Pass/0 46.95,75.40
stickystart "Demons!"
step
Enter the Eastern Caverns beneath Deadwind Pass |goto Deadwind Pass/0 48.62,78.85
click the Fel Spreader
Secure the Eastern Ley Line |q 44683/1 |goto Deadwind Pass/22 57.81,38.59
step
click Legion Portal
Disable the Legion Portal |q 44557/1 |count 1 |goto Deadwind Pass/22 58.60,23.16
step
Use your Arcane-Infused Vial to get a sample of the soil |use Arcane-infused Vial##141878
Collect a Corrupted Essence of Soil |q 44684/1 |goto Deadwind Pass/22 59.88,13.72
step
click Legion Portal
Disable the Legion Portal |q 44557/1 |count 2 |goto Deadwind Pass/22 63.43,31.56
step
click Legion Portal
Disable the Legion Portal |q 44557/1 |count 3 |goto Deadwind Pass/22 64.02,45.88
step
click Legion Portal
Disable the Legion Portal |q 44557/1 |count 4 |goto Deadwind Pass/22 55.81,88.83
step
Exit the Masters Cellar |goto Deadwind Pass/22 36.90,35.82
Enter the Weastern Caverns beneath Deadwind Pass |goto Deadwind Pass/0 47.80,78.25
click the Fel Spreader
Secure the Western Ley Line |q 44683/2 |goto Deadwind Pass/24 54.69,87.29
step
Use your Arcane-Infused Vial to get a sample of the water |use Arcane-infused Vial##141878
Collect a Corrupted Essence of Water |q 44684/2 |goto Deadwind Pass/24 53.76,81.35
step
label "Demons!"
Slay 20 Legion Forces |q 44557/2
step
Exit the Masters Cellar |goto Deadwind Pass/23 73.79,80.09
talk Archmage Khadgar##114310
turnin Finite Numbers##44557 |goto Deadwind Pass/0 47.03,75.28
turnin Holding the Lines##44683 |goto Deadwind Pass/0 47.03,75.28
step
talk Archmage Karlain##114631
turnin Corruption Runs Deep##44684 |goto Deadwind Pass/0 46.95,75.40
accept Thought Collection##44686 |goto Deadwind Pass/0 46.95,75.40
step
talk Archmage Khadgar##114310
accept Reclaiming the Ramparts##44685 |goto Deadwind Pass/0 47.03,75.28
step
Stand in the Blue Arcane Circle on the ground
Place the Empowered arcane ward |use Empowered Arcane Ward##142213
Plant the Southern Ward |q 44685/2 |goto Deadwind Pass/0 44.62,76.79
|tip It's up on top of the building you have to fly up to it.
step
Stand in the Blue Arcane Circle on the ground
Place the Empowered arcane ward |use Empowered Arcane Ward##142213
Plant the Northern Ward |q 44685/1 |goto Deadwind Pass/0 47.26,69.52
|tip It's on the bridge, you will need to fly up to it.
step
talk Captured Wyrmtongue##114822
Interrogate the captured Wyrmtongue |q 44686/1 |goto Deadwind Pass/0 48.70,69.54
|tip Keep going through the speech suggestions until this is completed.
|tip He is on top of this building you can fly to him.
step
Stand in the Blue Arcane Circle on the ground
Place the Empowered arcane ward |use Empowered Arcane Ward##142213
Plant the Eastern Ward |q 44685/3 |goto Deadwind Pass/0 47.34,71.79
|tip It's at the top of this building, you will need to fly up to it.
step
talk Archmage Khadgar##114310
turnin Reclaiming the Ramparts##44685 |goto Deadwind Pass/0 47.03,75.28
step
talk Archmage Karlain##114631
turnin Thought Collection##44686 |goto Deadwind Pass/0 46.95,75.40
accept Demon in Disguise##44764 |goto Deadwind Pass/0 46.95,75.40
step
talk Archmage Khadgar##114310
turnin Demon in Disguise##44764 |goto Deadwind Pass/0 47.03,75.28
accept The Power of Corruption##44733 |goto Deadwind Pass/0 47.03,75.28
step
Use your Essence of the Wyrmtongue |use Essence of Wyrmtongue##142208
Enter the Masters Cellar |goto Deadwind Pass/0 47.76,78.28
Stand on this green platform |goto Deadwind Pass/24 45.47,51.53
Obtain Chamber Access |q 44733/1
step
_REMOVE YOUR DISGUISE_ once inside
kill Thar'zul##115172 |q 44733/2 |goto Deadwind Pass/24 41.22,17.09
kill Elux'ara Darkscorn##115179 |q 44733/3 |goto Deadwind Pass/24 45.14,11.15
step
Exit the Masters Cellar |goto Deadwind Pass/23 73.79,80.09
talk Archmage Khadgar##114310
turnin The Power of Corruption##44733 |goto Deadwind Pass/0 47.03,75.28
accept In the Eye of the Beholder##44735 |goto Deadwind Pass/0 47.03,75.28
accept Fragments of the Past##44734 |goto Deadwind Pass/0 47.03,75.28
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Legion Dungeons\\Karazhan\\Return to Karazhan",{
mapid=1115,
condition_suggested="level>=110 and _G.GetAverageItemLevel()>855",
keywords={"Karazhan Kara"},
author="support@zygorguides.com",
description="This guide will walk you through the Return to Karazhan dungeon.",
},[[
step
Enter the dungeon with your group |goto Karazhan L/6 63.9,61.3 |c
|tip You cannot use the Group Finder to enter this dungeon, since this is a Mythic dungeon.
|tip You will need to create a group yourself, composed of friends or guildmates, etc.
step
Click here if you would like to do a Normal clear of the instance |next "Normal Clear"
Click here if you would like to do the Nightbane instance clear |next "Nightbane Clear"
|tip The Nightbane Clear is considered a speed run to summon him and Nightbane itself is significantly harder then the rest of the instance.
confirm
step
label "Nightbane Clear"
_Warning_
To get to summon Nightbane you must collect all 5 Soul Fragments in a short amount of time
You will have 8 minuites once inside to click the first Soul Fragment, once the first one is clicked within the required time you will recieve a 6 minuite buff, for each crystal after that you will get 5 more minuites added on
Your group will need a little more gear to complete this speed run and to kill Nightbane suggesting an itemlevel of _865_
confirm
step
Once Inside go to your right and follow the stairs down to the Opera room clearing trash along the way
map Karazhan L/6
path follow loose; loop off; ants curved; dist 20
path	48.8,47.1	42.4,34.7	41.2,13.0
path	Karazhan L/5 67.0,32.3	Karazhan L/5 67.1,81.1	Karazhan L/5 43.1,82.9
|tip Opening the world map will display an ant trail guiding you through
talk Barnes##114339 |goto Karazhan L/4 21.2,35.4
|tip This will begin the event.
The Opera Event can be one of 3 bosses
Click here for the Opera Hall: Wikket |next "Wikket 2"
Click here for the Opera Hall: Westfall Story |next "Westfall Story 2"
Click here for the Opera Hall: Beautiful Beast |next "Beautiful Beast 2"
confirm
step
label "Wikket 2"
kill Elfyra##114284
kill Galindre##114251
_EVERYONE:_ |grouprole EVERYONE
|tip These bosses have shared Health so if you damage one you damage them both |grouprole EVERYONE
|tip Elfyra will cast a spell called Defy Gravity which will put a swirling purple circle on the ground, keep away from these until Galindra casts Magic Magnificent |grouprole EVERYONE
|tip You will need the Defy Gravity debuff when the Magic Magnificent cast is completed to prevent death |grouprole EVERYONE
|tip Galindra will cast a spell called Wondrious Radiance, this will appear as a big purple circle, never stand in this |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Elfyra will periodically summon monkey adds be sure to switch to them and kill them fast |grouprole DAMAGE
|tip Interrupt any casts you can from either of the bosses |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When adds are out be wary of your group as they have no aggro table and randomly attack members of your team |grouprole HEALER
|tip Be sure to pop cooldowns if any of your team is not able to get the Defy Gravity debuff when Magic Magnificent is cast |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to move the bosses away from any of the purple swirls on the ground |grouprole TANK
|tip When the adds are out try to move the bosses on top of them so they can be cleaved down |grouprole TANK
Defeat the Wikket Event |killboss 1651/2
|next "first crystal 2"
step
label "Westfall Story 2"
kill Toe Knee##114261
kill Mrrgria##114260
There are 3 phases in this fight in each phase there will be 2 bosses and in the last phase there will be one from each of the previous 2 phases
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Flaming Gate and Burning Leg Sweep casted by Toe Knee, he will be in phases 1 and 3. |grouprole EVERYONE
|tip Avoid Wash Away which will send waves across the room, this will be created by Mrrgria and he will be in phases 2 and 3. |grouprole EVERYONE
|tip When Mrrgria casts Thunder Ritual on all players in your group be sure to spread out. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Be sure to interrupt Bubble Blast, Shoreline Tidespeaker will cast this and these are active in phase 2. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal any player inflicted by Poisonous Shank, healers that can dispell poisons should dispell this. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be sure to pick up the enemies as they come up in each phase. |grouprole TANK
|tip Move the bosses out of any Waves or Tornados that they might be in. |grouprole TANK
Defeat the Westfall Story Event |killboss 1651/2
|next "first crystal 2"
step
label "Beautiful Beast 2"
kill Coggleston##114328
You must defeat all 3 mini bosses before you can attack Coggleston
_EVERYONE:_ |grouprole EVERYONE
|tip Whenever one of these mini bosses die they will buff the damage of the other enemies by 25 percent. |grouprole EVERYONE
|tip When fixated by Babblet do not lead it into Burning Blaze this will buff its movement speed making it impossible to run away. |grouprole EVERYONE
|tip If you have the Drenched debuff you are able to clear patches of Burning Blaze. |grouprole EVERYONE
|tip When Mrs. Cauldrons casts Leftovers get 10 yards away from it, or Interrupt it. |grouprole EVERYONE
|tip If fixated by Babblet you must run away from it and try not to get hit, if hit it will deal damage and blind you for 4 seconds. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Luminore's Heat Wave ability if it is not interrupted it will do high damage to the entire group. |grouprole DAMAGE
|tip Try to kill all 3 mini bosses at once to prevent them from getting buffed. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tank during this encounter they will be taking a lot of damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Dinner Bell! this is casted by Coggleston, if let off it will increase the haste of all allies by 100 percent. |grouprole TANK
Defeat the Beautiful Beast Event |killboss 1651/2
|next "first crystal 2"
step
label "first crystal 2"
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	21.4,27.4	12.7,26.1	11.3,41.8
path	20.0,42.6	24.6,25.8	28.5,23.8
Follow this path through the back stage to get to the audience room
The First Crystal is in the Audience after killing the Opera event
Aquire the Opera Hall Soul Fragment |goto Karazhan L/4 26.4,36.0
|tip Opening the world map will display an ant trail guiding you through
confirm
step
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	40.8,38.8	56.2,37.5	62.0,31.6
path	76.0,38.3
The Second Crystal is in the left most room just before Maiden of Virtue
Aquire the Guest Chambers Soul Fragment |goto Karazhan L/4 82.4,22.9
|tip Opening the world map will display an ant trail guiding you through
confirm
step
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	76.0,38.3	62.0,31.6	56.6,36.8
path	44.0,49.4
Jump Down here |goto Karazhan L/4 44.0,49.4
|tip Opening the world map will display an ant trail guiding you through
confirm
step
kill Moroes##15687 |goto Karazhan L/3 27.1,63.5
_EVERYONE:_ |grouprole EVERYONE
|tip Use Ghost Traps on Moroes's Dinner Guests, these can be found in this room. They look like grey traps with lights on the sides that are able to be picked up. |grouprole EVERYONE
|tip Use these traps and decided which of his dinner guests you would like to Crowdcontrol first and kill later. |grouprole EVERYONE
|tip Kill all the Dinner Guests before kill Moroes. |grouprole EVERYONE
|tip If you get Garrote be sure to use your personal cooldowns as this debuff doesn't disappear until the fight is over. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt and kill all of the dinner guests before killing Moroes. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the people with Garrote up, once it is applied on someone it doesn't go away until the fight is completed. |grouprole HEALER
|tip Keep the tank up when they get the debuff Coat Check, this is applied by Moroes and reduces their protection by 75 percent. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use cooldowns when Coat Check is applied to you. |grouprole TANK
Defeat Moroes |killboss 1651/16
step
Once Moroes is defeated he will drop his Rusty Keys
Be sure to pick these up
confirm
step
The Third Crystal is located behind Moroes
Aquire the Banquet Hall Soul Fragment |goto Karazhan L/3 22.4,63.0
confirm
step
map Karazhan L/3
path follow loose; loop off; ants curved; dist 20
path	47.1,57.8	52.3,66.1	52.5,89.5
path	Karazhan L/1 58.9,69.1	Karazhan L/1 57.7,58.1	Karazhan L/1 56.0,49.0
path	Karazhan L/1 59.3,36.4	Karazhan L/1 60.5,23.2	Karazhan L/1 74.1,20.8
The Fourth Crystal is located in a room filled with spiders to the north of Attumen the Huntsman
Aquire the Servent's Quarters Soul Fragment |goto Karazhan L/1 74.1,20.8
Once this is obtained click the portal to Karazhan's Entrance right next to this Fragment
|tip Opening the world map will display an ant trail guiding you through
confirm
step
map Karazhan L/6
path follow loose; loop off; ants curved; dist 20
path	Karazhan L/6 55.4,74.7	Karazhan L/6 66.0,66.5	Karazhan L/7 57.7,24.3
path	Karazhan L/7 48.8,62.0	Karazhan L/8 58.6,53.9	Karazhan L/8 44.0,42.0
path	Karazhan L/8 45.9,75.6	Karazhan L/8 45.9,27.5	Karazhan L/9 62.4,29.5
path	Karazhan L/9 39.7,29.5	Karazhan L/9 32.2,39.2
Follow this path that leads back to The Curator	|goto Karazhan L/9 32.2,39.2
|tip Opening the world map will display an ant trail guiding you through
confirm
step
kill Curator##114247 |goto Karazhan L/9 49.3,71.3
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in Power Discharge this ability creates a large blue circle on the ground that does damage on impact and stays there for the entire fight if stood in at any point will continue dealing daamge to you. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip This is an add control fight whenever a Volatile Energy spawns they need to be switched to and killed asap. |grouprole DAMAGE
|tip When The Curator gets to 0 percent mana he will Evocate increasing his damage taken by 100 percent this is where you must use your cooldowns. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip After The Curator finishes casting Evocation he will explode doing high damage to the group be ready for this. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Power Discharge it will leave a pool on the ground be sure to move the boss to places away from these so your team doesnt run into them. |grouprole TANK
Defeat the Curator |killboss 1651/32
step
Curator will drop the last Soul Fragment
Aquire the Menagerie Soul Fragment |goto Karazhan L/9 49.3,71.3
confirm
step
map Karazhan L/9
path follow loose; loop off; ants curved; dist 20
path	32.2,39.2	39.7,29.5	62.4,29.5
path	Karazhan L/8 45.9,27.5	Karazhan L/8 49.7,46.4
Jump down here |goto Karazhan L/8 49.7,46.4
Jump down a second time to get back to the entrance quickly |goto Karazhan L/7 49.1,34.7
|tip Opening the world map will display an ant trail guiding you through
confirm
step
Enter Nightbanes room |goto Karazhan L/6 59.0,78.9
If you collected all 5 Soul Fragments Medivh should be on this balcony waiting for you.
Talk to him to begin the fight
|tip If you wipe don't worry he will be there waiting for you everytime once summoned.
kill Nightbane##114895 |goto Karazhan L/6 45.8,92.5
_EVERYONE:_ |grouprole EVERYONE
|tip Ignite Soul, when this is targeted on a player you must run into the fire patches that are on the ground and get to around 20 percent hp before it goes off.  |grouprole EVERYONE
|tip This debuff will explode hitting everyone in the group once the timer expires equal to the current health of the target. |grouprole EVERYONE
|tip During phase 3 Nightbane will gain a spell, this spell will periodically fear the entire group for 3 seconds use your personal cooldowns for this. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Reverberating Shadows this will happen every 12 or so seconds. |grouprole DAMAGE
|tip If there are any adds out during any phase cleave off the boss or the big add to kill them. |grouprole DAMAGE
|tip If you are a ranged class stand in the ranged on one side of the room to place Charred Earth. |grouprole DAMAGE
|tip Save your cooldowns for the air phase(phase 2) the Bonecurse needs to die asap.|grouprole DAMAGE
|tip Never stand directly behind Hightbane or directly infront of him, he has a tail swipe and a breathe. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Stand in the ranged on one side of the room to place Charred Earth. |grouprole HEALER
|tip Periodically players will get a debuff called Burning Bones, this wil ldeal high damage for the entire time it is on a player, this can be dispelled but only when needed. |grouprole HEALER
|tip The longer this debuff is on a player the less mobs will spawn when it is dispelled. If it just expirers it will still spawn one add. |grouprole HEALER
|tip DO NOT heal players with the debuff Ignite Soul unless they are going to die. |grouprole HEALER
|tip During the 2nd phase the Bonecurse will spawn the longer this is up the more stacks of Jagged Shards will be put on the entire group, this debuff lasts the rest of the encounter. |grouprole HEALER
|tip Jagged Shards deals damage when applied and deals damage every 3 seconds after that, it also applies a movement speed debuff. |grouprole HEALER
|tip During Phase 2 adds will spawn and put a debuff on players called Absorb Vitality this debuff will absorb the next 1 million + healing on them and they will also take damage over time, this needs to be healed through to be taken off. |grouprole HEALER
|tip Never stand directly behind Hightbane or directly infront of him, he has a tail swipe and a breathe. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Reverberating Shadows this will happen every 12 or so seconds. |grouprole TANK
|tip Never have Nightbanes tail or head toward the group. |grouprole TANK
|tip Use cooldowns when he gains the buff Concentrated Power. |grouprole TANK
|tip Pick up any adds that spawn during each phase. |grouprole TANK
Defeat Nightbane |killboss 1651/128
|next "Congrats 2"
step
label "Normal Clear"
Once Inside go to your right and follow the stairs down to the Opera room clearing trash along the way
map Karazhan L/6
path follow loose; loop off; ants curved; dist 20
path	48.8,47.1	42.4,34.7	41.2,13.0
path	Karazhan L/5 67.0,32.3	Karazhan L/5 67.1,81.1	Karazhan L/5 43.1,82.9
|tip Opening the world map will display an ant trail guiding you through
talk Barnes##114339 |goto Karazhan L/4 21.2,35.4
|tip This will begin the event.
The Opera Event can be one of 3 bosses
Click here for the Opera Hall: Wikket |next "Wikket 1"
Click here for the Opera Hall: Westfall Story |next "Westfall Story 1"
Click here for the Opera Hall: Beautiful Beast |next "Beautiful Beast 1"
confirm
step
label "Wikket 1"
kill Elfyra##114284
kill Galindre##114251
_EVERYONE:_ |grouprole EVERYONE
|tip These bosses have shared Health so if you damage one you damage them both |grouprole EVERYONE
|tip Elfyra will cast a spell called Defy Gravity which will put a swirling purple circle on the ground, keep away from these until Galindra casts Magic Magnificent |grouprole EVERYONE
|tip You will need the Defy Gravity debuff when the Magic Magnificent cast is completed to prevent death |grouprole EVERYONE
|tip Galindra will cast a spell called Wondrious Radiance, this will appear as a big purple circle, never stand in this |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Elfyra will periodically summon monkey adds be sure to switch to them and kill them fast |grouprole DAMAGE
|tip Interrupt any casts you can from either of the bosses |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When adds are out be wary of your group as they have no aggro table and randomly attack members of your team |grouprole HEALER
|tip Be sure to pop cooldowns if any of your team is not able to get the Defy Gravity debuff when Magic Magnificent is cast |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Try to move the bosses away from any of the purple swirls on the ground |grouprole TANK
|tip When the adds are out try to move the bosses on top of them so they can be cleaved down |grouprole TANK
Defeat the Wikket Event |killboss 1651/2
|next "first crystal 1"
step
label "Westfall Story 1"
kill Toe Knee##114261
kill Mrrgria##114260
There are 3 phases in this fight in each phase there will be 1 boss and in the last phase there will be one from each of the previous 2 phases
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid Flaming Gate and Burning Leg Sweep casted by Toe Knee, he will be in phases 1 and 3. |grouprole EVERYONE
|tip Avoid Wash Away which will send waves across the room, this will be created by Mrrgria and he will be in phases 2 and 3. |grouprole EVERYONE
|tip When Mrrgria casts Thunder Ritual on all players in your group be sure to spread out.
_DAMAGE:_ |grouprole DAMAGE
|tip Be sure to interrupt Bubble Blast, Shoreline Tidespeaker will cast this and these are active in phase 2. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal any player inflicted by Poisonous Shank, healers that can dispell poisons should dispell this. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be sure to pick up the enemies as they come up in each phase. |grouprole TANK
|tip Move the bosses out of any Waves or Tornados that they might be in. |grouprole TANK
Defeat the Westfall Story Event |killboss 1651/2
|next "first crystal 1"
step
label "Beautiful Beast 1"
kill Coggleston##114328
You must defeat all 3 mini bosses before you can attack Coggleston
_EVERYONE:_ |grouprole EVERYONE
|tip Whenever one of these mini bosses die they will buff the damage of the other enemies by 25 percent. |grouprole EVERYONE
|tip When fixated by Babblet do not lead it into Burning Blaze this will buff its movement speed making it impossible to run away. |grouprole EVERYONE
|tip If you have the Drenched debuff you are able to clear patches of Burning Blaze. |grouprole EVERYONE
|tip When Mrs. Cauldrons casts Leftovers get 10 yards away from it, or Interrupt it. |grouprole EVERYONE
|tip If fixated by Babblet you must run away from it and try not to get hit, if hit it will deal damage and blind you for 4 seconds. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Luminore's Heat Wave ability if it is not interrupted it will do high damage to the entire group. |grouprole DAMAGE
|tip Try to kill all 3 mini bosses at once to prevent them from getting buffed. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch the tank during this encounter they will be taking a lot of damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Dinner Bell! this is casted by Coggleston, if let off it will increase the haste of all allies by 100 percent. |grouprole TANK
Defeat the Beautiful Beast Event |killboss 1651/2
|next "first crystal 1"
step
label "first crystal 1"
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	21.4,27.4	12.7,26.1	11.3,41.8
path	20.0,42.6	24.6,25.8	28.5,23.8
Follow this path through the back stage to get to the audience room |goto 28.5,23.8
|tip Opening the world map will display an ant trail guiding you through
confirm
step
The First Crystal is in the Audience after killing the Opera event
Aquire the Opera Hall Soul Fragment |q 44734/4 |goto Karazhan L/4 26.4,36.0
|only if havequest(44734)
step
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	40.8,38.8	56.2,37.5	62.0,31.6
path	76.0,38.3
Follow this path to the Maidan of Virtue |goto 76.0,38.3
|tip Opening the world map will display an ant trail guiding you through
confirm
step
The Second Crystal is in the left most room just before Maiden of Virtue
Aquire the Guest Chambers Soul Fragment |q 44734/1 |goto Karazhan L/4 82.4,22.9
|only if havequest(44734)
step
|tip This is an optional boss
kill Maidan of Virtue##113971 |goto Karazhan L/4 83.7,50.0
_EVERYONE:_ |grouprole EVERYONE
|tip If you get the Sacred Ground be sure to run to the outside of the room to place it down then immediatly run out so you don't get any stacks. |grouprole EVERYONE
|tip When she casts Mass Repentance be sure to run in and only get one stack from the Sacred Ground puddles to prevent from being stunned for 30 seconds. |grouprole EVERYONE
|tip Once Mass Repentance is completed she will then cast Holy Wrath, this needs to be interrupted but first the group must do 4.6 million damage to destroy the shield she gets. |grouprole EVERYONE
|tip Be sure to be at least 6 yards away from anyone else in the group so that Holy Bolt doesn't bounce to your team. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Holy Shock, none should get through as the debuff it applies lasts the entire fight. |grouprole DAMAGE
|tip Use your cooldowns to destroy her shield while she is casting Holy Wrath, once her shield is destroyed interrupt Holy Wrath. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When people get the Sacred Ground debuff they will take a large amount of ticking damage every 2 seconds be sure to keep these people up. |grouprole HEALER
|tip Watch out for people if they get the Holy Shock debuff they will take increased damage from every spell. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Holy Shock, none should get through as the debuff it applies lasts the entire fight. |grouprole TANK
Defeat the Maiden of Virtue |killboss 1651/1
step
map Karazhan L/4
path follow loose; loop off; ants curved; dist 20
path	76.0,38.3	62.0,31.6	56.2,37.5
path	44.0,49.4
Jump Down here |goto 44.0,49.4
|tip Opening the world map will display an ant trail guiding you through
confirm
step
kill Moroes##15687 |goto Karazhan L/3 27.1,63.5
_EVERYONE:_ |grouprole EVERYONE
|tip Use Ghost Traps on Moroes's Dinner Guests, these can be found in this room. They look like grey traps with lights on the sides that are able to be picked up. |grouprole EVERYONE
|tip Use these traps and decide which of his dinner guests you would like to Crowdcontrol first and kill later. |grouprole EVERYONE
|tip Kill all the Dinner Guests before kill Moroes. |grouprole EVERYONE
|tip If you get Garrote be sure to use your personal cooldowns as this debuff doesn't disappear until the fight is over. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt and kill all of the dinner guests before killing Moroes. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Keep the people with Garrote up, once it is applied on someone it doesn't go away until the fight is completed. |grouprole HEALER
|tip Keep the tank up when they get the debuff Coat Check, this is applied by Moroes and reduces their protection by 75 percent. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use cooldowns when Coat Check is applied to you. |grouprole TANK
Defeat Moroes |killboss 1651/16
step
Once Moroes is defeated he will drop his Rusty Keys
Be sure to pick these up
confirm
step
The Third Crystal is located behind Moroes
Aquire the Banquet Hall Soul Fragment |q 44734/2 |goto Karazhan L/3 22.4,63.0
|only if havequest(44734)
step
map Karazhan L/3
path follow loose; loop off; ants curved; dist 20
path	40.0,82.0	Karazhan L/2 42.6,37.7	Karazhan L/2 52.5,64.3
path	Karazhan L/2 29.6,81.2	Karazhan L/1 39.8,77.3	Karazhan L/1 42.4,80.2
Follow this path that leads to Attumen the Huntsman |goto Karazhan L/1 42.4,80.2
|tip Opening the world map will display an ant trail guiding you through
confirm
step
Be sure to kill all of the mobs surrounding Attumen before starting the fight, they will pull with the boss if they are not killed
|tip This is an optional boss.
kill Attumen the Huntsman##114262 |goto Karazhan L/1 45.3,82.3
_EVERYONE:_ |grouprole EVERYONE
|tip When the boss casts Mighty Stomp be sure to stop casting or you will get interrupted. This happens when they are Horse and Rider as One |grouprole EVERYONE
|tip They will summon Spectral Charge these will be lines of horses that need to be dodged. This happens when they are Horse and Rider as One. |grouprole EVERYONE
|tip DO NOT stand in Mezair it will be a cone of fire that Midnight will run through. This is when they are Fighting on Foot. |grouprole EVERYONE
|tip Everyone must stand in Shared Suffering this will deal a huge amount of damage split between everyone in the ability. This is when they are Fighting on Foot. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill which ever one is targetable. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip An ability called Intangible Presense will put a debuff on everyone in the group |grouprole HEALER
|tip This debuff will also mark one person and that marked person needs to be the one dispelled or it will deal a huge amount of damage to the entire group. |grouprole HEALER
|tip Keep the tank up when Mortal Strike and Sharded Suffering goes out. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Use your cooldowns for when Sharded Suffering is going out you may still have Mortal Strike on you. |grouprole TANK
Defeat Attumen the Huntsman |killboss 1651/8
step
map Karazhan L/1
path follow loose; loop off; ants curved; dist 20
path	50.4,72.8	58.9,69.1	57.7,58.1
path	56.0,49.0	59.3,36.4	60.5,23.2
path	74.1,20.8
The Fourth Crystal is located in a room filled with spiders to the north of Attumen the Huntsman
Aquire the Servent's Quarters Soul Fragment |q 44734/3 |goto Karazhan L/1 74.1,20.8
Once this is obtained click the portal to Karazhan's Entrance right next to this Fragment
|tip Opening the world map will display an ant trail guiding you through
|only if havequest(44734)
step
map Karazhan L/1
path follow loose; loop off; ants curved; dist 20
path	39.8,77.3	Karazhan L/2 29.6,81.2	Karazhan L/2 44.5,84.9
path	Karazhan L/6 58.9,81.5
Follow this path back up to the Entrance |goto Karazhan L/6 58.9,81.5
|tip Opening the world map will display an ant trail guiding you through
confirm
|only if not havequest(44734)
step
map Karazhan L/6
path follow loose; loop off; ants curved; dist 20
path	Karazhan L/6 55.4,74.7	Karazhan L/6 66.0,66.5	Karazhan L/7 57.7,24.3
path	Karazhan L/7 48.8,62.0	Karazhan L/8 58.6,53.9	Karazhan L/8 44.0,42.0
path	Karazhan L/8 45.9,75.6	Karazhan L/8 45.9,27.5	Karazhan L/9 62.4,29.5
path	Karazhan L/9 39.7,29.5	Karazhan L/9 32.2,39.2
Follow this path that leads to The Curator |goto Karazhan L/9 32.2,39.2
|tip Opening the world map will display an ant trail guiding you through
confirm
step
Before starting this fight kill all of the trash mobs in this room, you will need the space
kill Curator##114247 |goto Karazhan L/9 49.3,71.3
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in Power Discharge this ability creates a large blue circle on the ground that does damage on impact and stays there for the entire fight if stood in at any point will continue dealing daamge to you. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip This is an add control fight whenever a Volatile Energy spawns they need to be switched to and killed asap. |grouprole DAMAGE
|tip When The Curator gets to 0 percent mana he will Evocate increasing his damage taken by 100 percent this is where you must use your cooldowns. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip After The Curator finishes casting Evocation he will explode doing high damage to the group be ready for this. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Power Discharge it will leave a pool on the ground be sure to move the boss to places away from these so your team doesnt run into them. |grouprole TANK
Defeat the Curator |killboss 1651/32
step
Curator will drop the last Soul Fragment
Aquire the Menagerie Soul Fragment |q 44734/5 |goto Karazhan L/9 49.3,71.3
|only if havequest(44734)
step
Enter the portal |goto Karazhan L/9 49.3,71.3
map Karazhan L/10
path follow loose; loop off; ants curved; dist 20
path	23.2,23.8	22.9,40.7	27.1,46.6
path	41.6,46.4	66.8,45.7
Follow this path to the Shade of Medivhs room. |goto Karazhan L/10 66.8,45.7
|tip Opening the world map will display an ant trail guiding you through
confirm
step
kill Shade of Medivh##114350 |goto Karazhan L/10 66.8,45.7
_EVERYONE:_ |grouprole EVERYONE
|tip When Flame Wreath goes out DO NOT MOVE until it is over. |grouprole EVERYONE
|tip When Ceaseless Winter is active keep moving around despite what Medivh says. |grouprole EVERYONE
|tip Be sure to spread out |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt Frostbite. |grouprole DAMAGE
|tip When Guardian's Image is out kill all 3 of the Guardian's Images quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Watch out for people targeted by Piercing Missiles this will do a high amount of damage. |grouprole HEALER
|tip Watch out for people If they get multiple stacks of Inferno Bolt. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Interrupt Frostbite. |grouprole TANK
Defeat the Shade of Medivh |killboss 1651/256
step
Jump down here and enjoy the scenery |goto Karazhan L/10 73.1,59.6
confirm
step
Jump down the stacks of books to get to the bottom
kill Mana Devourer##114252 |goto Karazhan L/11 58.3,25.8
_EVERYONE:_ |grouprole EVERYONE
|tip If the Boss gets to 100 percent mana it will instant wipe the group. |grouprole EVERYONE
|tip When Loose Mana is out, these are arcane orbs spread across the area, they need to all be absorbed before they hit the boss. |grouprole EVERYONE
|tip Each stack of Loose Mana that is absorbed will apply a stack of Unstable Mana, to remove this debuff the player will need to stand in the Energy Voids until the debuff is gone. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Watch people that get to many stacks of Unstable Mana, they will be taking a lot of ticking damage until they remove it. |grouprole HEALER
|tip Keep the raid up as it will cast Energy Discharge throughout the fight dealing a high amount of damage to the entire group. |grouprole HEALER
Defeat the Mana Devourer |killboss 1651/4
step
kill 10 Mana Devourer##116494 |q 45291/1 |goto Karazhan L/12 20.8,31.4
|only if havequest(45291)
step
Run up the stairs |goto Karazhan L/12 22.6,19.5
Check upstairs for escaping books |q 45291/2
|only if havequest(45291)
step
click Flying Book
|tip All these flying books are up the stairs on the 2nd floor.
Shelve 5 Flying Books |q 45291/3 |goto Karazhan L/12 20.1,25.7
|only if havequest(45291)
step
Follow the path to the Chess event
map Karazhan L/12
path follow loose; loop off; ants curved; dist 20
path	23.8,26.2	59.6,25.8	57.3,82.5
This is Chess event, it is just trash but there are a few things you need to do and look out for.
|tip Opening the world map will display an ant trail guiding you through
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of any glowing colored squares these will one shot. |grouprole EVERYONE
|tip Killing the king will defeat the trash, but to attack the king you must kill one of his pieces first. |grouprole EVERYONE
|tip When a piece dies the King becomes vulnerable for a short time, kill one piece attack the king until the debuff wears off then kill another piece and keep doing this until the king is dead. |grouprole EVERYONE
Defeat the Chess Event |goto Karazhan L/13 48.2,36.6
confirm
step
Follow the path into the Netherspace |goto Karazhan L/14 37.4,53.0
kill Viz'aduum the Watcher##114790 |goto Karazhan L/14 41.4,81.2
This is a 3 phase fight
_EVERYONE:_ |grouprole EVERYONE
|tip Everyone must run through the Green Portal that spawns when phase 2 and 3 start. |grouprole EVERYONE
|tip If you are targeted by Disintegrate move out of the way, this will do a lot of damage and knock you back this will be fatal in phases 2 and 3. |grouprole EVERYONE
|tip When people that are effected by Chaotic Shadows blow up Explosive Shadows will come out from every direction from themselves these need to be dodged. |grouprole EVERYONE|grouprole EVERYONE
|tip In Phase 2 when you arrive on the first ship you must run through the guantlet avoiding Disintegrate and the green lasors on the sides. |grouprole EVERYONE
|tip In all phases dodge the infernal circles that appear on the ground. |grouprole EVERYONE
|tip If you are targeted by Fel Beam run away and don't move it into your group. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip In Phase 3 you must kill the adds once they are dead activate the boss. |grouprole DAMAGE
|tip Save heroism for the last phase. |grouprole DAMAGE
|tip Interrupt Burning Blast. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal people effected by Chaotic Shadows, this can be dispelled early but during later phases you can not dispell them all before the timer runs out. |grouprole HEALER
|tip Dispelling these players will still activate Explosive Shadows so do not dispell when that player is in a bad place. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip In phase 3 pick up the adds and kill them before activating the boss. |grouprole TANK
|tip Interrupt Burning Blast. |grouprole TANK
Defeat Viz'aduum the Watcher |q 44735/1 |only if havequest(44735)
Defeat Viz'aduum the Watcher |killboss 1651/64
|next "Congrats 1"
step
label "Congrats 2"
Congratulations you have Defeated Nightbane the secret boss in Return to Karazhan!
step
label "Congrats 1"
Congratulations you have completed the Return to Karazhan Mythic Dungeon!
|next "Turnin Quests"
step
label "Turnin Quests"
Archmage Khadgar will appear after you defeat Viz'aduum
talk Archmage Khadgar##115497
turnin In the Eye of the Beholder##44735 |goto Karazhan L/14 41.4,81.2
turnin Fragments of the Past##44734 |goto Karazhan L/14 41.4,81.2
|only if havequest(44735)
|only if havequest(44734)
]])
