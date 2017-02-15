local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Dwarf (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
condition_suggested="raceclass('Dwarf') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
step
kill 6 Rockjaw Invader##37070+ |q 24469/1 |goto 63.6,50.7
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto 67.1,41.3
accept Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
accept Aid for the Wounded##24471 |goto 65.7,43.1
step
kill 3 Rockjaw Goon##37073+ |q 24470/1
Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
|tip They look like dwarves kneeling in the snow around this area You can use Shift+v to mark them and they'll be easier to spot (Use v to mark enemies again).
Aid 4 Wounded Coldridge Mountaineers |q 24471/1 |goto 69.3,55.2
modelnpc Wounded Coldridge Mountaineer##37080
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
turnin Aid for the Wounded##24471 |goto 65.7,43.1
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto 67.1,41.3
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto 60.6,21.0
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto 61.7,22.1
step
click Keg of Gnomenbrau##319
|tip It's outside next to some trees
collect Cask of Gnomenbrau |q 24474/3 |goto 68.2,27.9
step
click Keg of Stormhammer Stout##319
|tip Also outside, next to a big tree
collect Cask of Stormhammer Stout |q 24474/1 |goto 56.7,28.3
step
click Keg of Theramore Pale Ale##319
collect Cask of Theramore Pale Ale |q 24474/2 |goto 40.0,29.1
step
click Forgotten Dwarven Artifacts##5333
|tip They look like little mounds of snow on the ground.
collect 5 Forgotten Dwarven Artifact |q 24477/1 |goto 25.9,35.4
You can find more at [Coldridge Valley,44.5,30.9]
And also at [Coldridge Valley,72.8,24.5]
step
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto 61.7,22.1
accept Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
turnin First Things First: We're Gonna Need Some Beer##24474 |goto 61.8,22.5
accept All the Other Stuff##24475 |goto 61.8,22.5
step
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact |q 24486/1 |goto 51.6,47.6
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide |q 24475/2 |goto 49.5,57.7
step "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch |q 24475/1 |goto 49.5,57.7
You can find more of both of these at [Coldridge Valley,35.9,67.1]
step
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
turnin All the Other Stuff##24475 |goto 61.8,22.5
accept Whitebeard Needs Ye##24487 |goto 61.8,22.5
step
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto 42.7,62.2
accept The Troll Menace##182 |goto 42.7,62.2
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto 43.2,63.1
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto 41.9,63.5
step
Kill Frostmane Troll Whelps as you walk
click Felix's Box##2350
collect Felix Box##10438 |q 3361/1 |goto 21.4,64.1
kill Frostmane Troll Whelps##706
step
Kill Frostmane Troll Whelps as you walk
Stand here and listen to Soothsayer Mirim'koa talk
Scout Soothsayer Mirim'koa |q 24489/3 |goto 21.1,67.5
kill Frostmane Troll Whelps##706
modelnpc Soothsayer Mirim'koa##37174
step
Kill Frostmane Troll Whelps as you walk
click Felix's Chest##318
|tip It is next to the fire
collect Felix Chest##16313 |q 3361/2 |goto 31.4,84.4
kill Frostmane Troll Whelps##706
step
Kill Frostmane Troll Whelps as you walk
Stand here and listen to Soothsayer Rikkari talk
Scout Soothsayer Rikkari |q 24489/2 |goto 30.3,85.7
kill Frostmane Troll Whelps##706
modelnpc Soothsayer Rikkari##37173
step
Kill Frostmane Troll Whelps as you walk
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 48.9,80.6
kill Frostmane Troll Whelps##706
step
Kill Frostmane Troll Whelps as you walk
Stand here and listen to Soothsayer Shi'kala talk
Scout Soothsayer Shi'kala |q 24489/1 |goto 49.1,81.4
kill Frostmane Troll Whelps##706
modelnpc Soothsayer Shi'Kala##37108
step
kill 10 Frostmane Troll Whelp##706+ |q 182/1 |goto 50.4,78.9
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto 43.2,63.1
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto 42.7,62.2
accept Ice and Fire##218
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto 41.9,63.5
step
kill Wayward Fire Elemental##37112 |q 218/2 |goto Coldridge Valley/9 66.7,29.2
step
kill Grik'nir the Cold##808 |q 218/1 |goto 76.1,30.8
step
kill 6 Frostmane Blade##37507 |q 218/4 |goto 74.0,24.9
kill 3 Frostmane Novice##946 |q 218/3 |goto 74.0,24.9
|tip They are all around this cave.
step
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Coldridge Valley/0 42.7,62.2
accept A Trip to Ironforge##24490
step
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto Dun Morogh 40.9,70.7
accept Follow that Gyro-Copter!##24491
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto Coldridge Valley 69.9,44.21
accept Pack Your Bags##24492
step
talk Jona Ironstock##37087
accept Don't Forget About Us##24493 |goto 61.8,22.5
step
click Leftover Boar Meat##114
|tip They are on this small square table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto 62.2,23.6
step
click Beer Barrel##32
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto 62.5,23.5
step
click Wolf-Hide Cloak##286
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto 62.2,24.0
step
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto 69.9,44.21
You will fly to Kharanos |goto Dun Morogh,53.3,49.8
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh 53.1,50.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Gnome (1-5)",{
author="support@zygorguides.com",
condition_suggested="raceclass('Gnome') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
next "normalstart" |only Gnome
next "oddstart" |only !Gnome
step
label "normalstart"
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto 39.9,32.0
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto 34.0,32.2
accept Report to Carvo Blastbolt##28167 |goto 34.0,32.2
step
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto 50.9,31.9
accept See to the Survivors##27671 |goto 50.9,31.9
step
Use your Teleport Beacon on Survivors |use Teleport Beacon##62057 |modelnpc 46268
Rescue 6 Survivors |q 27671/1 |goto 61.3,34.8
step
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto 50.9,31.9
accept Withdraw to the Loading Room!##28169 |goto 50.9,31.9
step
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto 53.1,82.2
accept Decontamination##27635 |goto 53.1,82.2
step
click Sanitron 500
Complete Decontamination Process |q 27635/1 |goto 58.8,81.7
modelnpc Sanitron 500##46185
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto 66.3,81.6
accept To the Surface##27674 |goto 66.3,81.6
step
talk Torben Zapblast##46293 |goto 67.2,84.0
Tell him to send you to the surface |goto New Tinkertown |noway |c
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674 |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##26202 |only Gnome Warlock |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##26197 |only Gnome Mage |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##26203 |only Gnome Warrior |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##26206 |only Gnome Rogue |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##26199 |only Gnome Priest |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##31135 |only Gnome Monk |goto New Tinkertown 39.5,38.4
accept The Future of Gnomeregan##42396 |only Gnome Hunter |goto New Tinkertown 39.5,38.4
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto 39.4,28.4
accept Meet the High Tinker##26422 |goto 39.4,28.4
only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto 38.0,33.6
accept Meet the High Tinker##26423 |goto 38.0,33.6
only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto 40.6,35.4
accept Meet the High Tinker##26425 |goto 40.6,35.4
only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto 41.1,29.1
accept Meet the High Tinker##26421 |goto 41.1,29.1
only Gnome Mage
step
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto 37.7,38.0
accept Meet the High Tinker##26424 |goto 37.7,38.0
only Gnome Warlock
step
talk Xi, Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto 40.1,35.6
accept Meet the High Tinker##31137 |goto 40.1,35.6
only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##42396 |goto 41.9,31.6
accept Meet the High Tinker##41218 |goto 41.9,31.6
only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |only Gnome Monk |goto 38.7,32.8
turnin Meet the High Tinker##26424 |only Gnome Warlock |goto 38.7,32.8
turnin Meet the High Tinker##26421 |only Gnome Mage |goto 38.7,32.8
turnin Meet the High Tinker##26425 |only Gnome Warrior |goto 38.7,32.8
turnin Meet the High Tinker##26423 |only Gnome Rogue |goto 38.7,32.8
turnin Meet the High Tinker##26422 |only Gnome Priest |goto 38.7,32.8
turnin Meet the High Tinker##41218 |only Gnome Hunter |goto 38.7,32.8
accept The Fight Continues##26208 |goto 38.7,32.8
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto 38.8,32.7
accept A Triumph of Gnomish Ingenuity##26566 |goto 38.8,32.7
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto 40.6,28.1
accept Scrounging for Parts##26222 |goto 40.6,28.1
step
click Spare Part##6681+
collect 7 Spare Part |q 26222/1 |goto 37.6,30.8
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto 40.6,28.1
accept A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto 39.2,26.6
step
talk Corporal Fizzwhistle##42630
accept Dealing with the Fallout##26265 |goto 38.2,40.2
step
kill 6 Living Contamination##42185+ |q 26265/1
kill Toxic Sludge##42184+
collect 6 Recovered Possession |q 26264/1
Stand next to Toxic Pools
|tip They look like green spots on the ground that spew liquid around this area.
Clean 5 Toxic Pools |q 26205/1 |goto 37.1,50.6
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto 38.2,40.2
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto 39.2,26.6
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Jessup?##26316 |goto 38.4,33.5
step
talk Jessup McCree##42708
turnin What's Keeping Jessup?##26316 |goto 37.3,65.2
accept Get Me Explosives Back!##26285
accept Missing in Action##26284
step
kill Rockjaw Marauder##42222+, Rockjaw Bonepicker##42221+
collect 7 Stolen Powder Keg |q 26285/1
Attack Makeshift Cages to destroy them
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue 6 Captured Demolitionists |q 26284/1 |goto 36.8,68.4
modelnpc Captured Demolitionists##42645
step
talk Jessup McCree##42708
turnin Get Me Explosives Back!##26285 |goto 37.3,65.2
turnin Missing in Action##26284
accept Finishin' the Job##26318
step
Follow the path to the back of the cave
kill Boss Bruggor##42773 |q 26318/2 |goto New Tinkertown/8 29.6,49.5
step
click Detonator##9277
Detonate the Trogg Tunnel |q 26318/1 |goto New Tinkertown/8 35.4,40.9
step
talk Jessup McCree##42708
turnin Finishin' the Job##26318 |goto New Tinkertown 37.3,65.2
accept One More Thing##26329 |goto New Tinkertown 37.3,65.2
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto 38.8,32.7
accept Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto 38.2,33.7
step
kill Irradiated Technician##42223+
Kill 8 Crushcog's Minions |q 26331/1
Use your Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200
|tip They look like yellow crab machines around this area.
Destroy 5 Repaired Mechano-Tanks |q 26333/1 |goto 53.2,24.0
step
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto 38.2,33.7
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto 38.0,33.6
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto 48.7,52.9
accept Paint it Black##26342 |goto 48.7,52.9
step
Use your Paintinator on Crushcog Sentry-Bots |use Paintinator##58203
Blind 5 Crushcog's Sentry-Bots |q 26342/1 |goto 53.5,45.8
modelnpc 42291
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto 48.7,52.9
accept Down with Crushcog!##26364 |goto 48.7,52.9
step
talk High Tinker Mekkatorque##42849
Tell him you're ready to start the assault |q 26364/1
Use your Orbital Targeting Device to direct attacks onto Razlo Crushcog |use Orbital Targeting Device##58253
Defeat Razlo Crushcog |q 26364/2 |goto 57.2,47.5
modelnpc Razlo Crushcog##42839
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto 48.7,52.9
accept On to Kharanos##26373 |goto 48.7,52.9
step
label "oddstart"
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh,49.9,45.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Human (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn Forest",
condition_suggested="raceclass('Human') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)",
startlevel=1,
dynamic=true,
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Northshire 33.6,53.0 |only Human Mage
accept Beating them Back!##28762 |goto Northshire 33.6,53.0 |only Human Paladin
accept Beating them Back!##28763 |goto Northshire 33.6,53.0 |only Human Priest
accept Beating them Back!##28764 |goto Northshire 33.6,53.0 |only Human Rogue
accept Beating them Back!##28765 |goto Northshire 33.6,53.0 |only Human Warlock
accept Beating them Back!##28766 |goto Northshire 33.6,53.0 |only Human Warrior
accept Beating them Back!##28767 |goto Northshire 33.6,53.0 |only Human Hunter
accept Beating Them Back!##31139 |goto Northshire 33.6,53.0 |only Human Monk
accept Beating Them Back!##29078 |goto Northshire 33.6,53.0 |only !Human
step
kill 6 Blackrock Battle Worg##49871+ |q 28757/1 |goto 29.0,42.9 |only Human Mage
kill 6 Blackrock Battle Worg##49871+ |q 28762/1 |goto 29.0,42.9 |only Human Paladin
kill 6 Blackrock Battle Worg##49871+ |q 28763/1 |goto 29.0,42.9 |only Human Priest
kill 6 Blackrock Battle Worg##49871+ |q 28764/1 |goto 29.0,42.9 |only Human Rogue
kill 6 Blackrock Battle Worg##49871+ |q 28765/1 |goto 29.0,42.9 |only Human Warlock
kill 6 Blackrock Battle Worg##49871+ |q 28766/1 |goto 29.0,42.9 |only Human Warrior
kill 6 Blackrock Battle Worg##49871+ |q 28767/1 |goto 29.0,42.9 |only Human Hunter
kill 6 Blackrock Battle Worg##49871+ |q 31139/1 |goto 29.0,42.9 |only Human Monk
kill 6 Blackrock Battle Worg##49871+ |q 29078/1 |goto 29.0,42.9 |only !Human
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto 33.6,53.0 |only Human Mage
accept Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
turnin Beating them Back!##28762 |goto 33.6,53.0 |only Human Paladin
accept Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
turnin Beating them Back!##28763 |goto 33.6,53.0 |only Human Priest
accept Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
turnin Beating them Back!##28764 |goto 33.6,53.0 |only Human Rogue
accept Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
turnin Beating them Back!##28765 |goto 33.6,53.0 |only Human Warlock
accept Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
turnin Beating them Back!##28766 |goto 33.6,53.0 |only Human Warrior
accept Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
turnin Beating them Back!##28767 |goto 33.6,53.0 |only Human Hunter
accept Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
turnin Beating Them Back!##31139 |goto 33.6,53.0 |only Human Monk
accept Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
turnin Beating Them Back!##29078 |goto 33.6,53.0 |only !Human
accept Lions for Lambs##29079 |goto 33.6,53.0 |only !Human
step
kill 8 Blackrock Spy##49874+ |q 28769/1 |goto 25.4,41.1 |only Human Mage
kill 8 Blackrock Spy##49874+ |q 28770/1 |goto 25.4,41.1 |only Human Paladin
kill 8 Blackrock Spy##49874+ |q 28771/1 |goto 25.4,41.1 |only Human Priest
kill 8 Blackrock Spy##49874+ |q 28772/1 |goto 25.4,41.1 |only Human Rogue
kill 8 Blackrock Spy##49874+ |q 28773/1 |goto 25.4,41.1 |only Human Warlock
kill 8 Blackrock Spy##49874+ |q 28774/1 |goto 25.4,41.1 |only Human Warrior
kill 8 Blackrock Spy##49874+ |q 28759/1 |goto 25.4,41.1 |only Human Hunter
kill 8 Blackrock Spy##49874+ |q 31140/1 |goto 25.4,41.1 |only Human Monk
kill 8 Blackrock Spy##49874+ |q 29079/1 |goto 25.4,41.1 |only !Human
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
accept Join the Battle!##28784 |only Human Mage
turnin Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
accept Join the Battle!##28785 |only Human Paladin
turnin Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
accept Join the Battle!##28786 |only Human Priest
turnin Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
accept Join the Battle!##28787 |only Human Rogue
turnin Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
accept Join the Battle!##28788 |only Human Warlock
turnin Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
accept Join the Battle!##28789 |only Human Warrior
turnin Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
accept Join the Battle!##28780 |only Human Hunter
turnin Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
accept Join the Battle!##31143 |only Human Monk
turnin Lions for Lambs##29079 |goto 33.6,53.0 |only !Human
accept Join the Battle!##29080 |goto 33.6,53.0 |only !Human
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto 35.7,39.8 |only Human Warrior
accept They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
turnin Join the Battle!##28785 |goto 35.7,39.8 |only Human Paladin
accept They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
turnin Join the Battle!##28780 |goto 35.7,39.8 |only Human Hunter
accept They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
turnin Join the Battle!##28786 |goto 35.7,39.8 |only Human Priest
accept They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
turnin Join the Battle!##28788 |goto 35.7,39.8 |only Human Warlock
accept They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
turnin Join the Battle!##28784 |goto 35.7,39.8 |only Human Mage
accept They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
turnin Join the Battle!##28787 |goto 35.7,39.8 |only Human Rogue
accept They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
turnin Join the Battle!##31143 |goto 35.7,39.8 |only Human Monk
accept They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
turnin Join the Battle!##29080 |goto 35.7,39.8 |only !Human
accept They Sent Assassins##29081 |goto 35.7,39.8 |only !Human
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto 34.7,38.8 |only Human Warrior
accept Fear No Evil##28809 |goto 34.7,38.8 |only Human Paladin
accept Fear No Evil##28806 |goto 34.7,38.8 |only Human Hunter
accept Fear No Evil##28810 |goto 34.7,38.8 |only Human Priest
accept Fear No Evil##28812 |goto 34.7,38.8 |only Human Warlock
accept Fear No Evil##28808 |goto 34.7,38.8 |only Human Mage
accept Fear No Evil##28811 |goto 34.7,38.8 |only Human Rogue
accept Fear No Evil##29082 |goto 34.7,38.8 |only !Human
only !Monk
stickystart "injuredsoldiers"
step
kill 8 Goblin Assassin##50039+ |q 28797/1 |goto 30.7,29.1 |only Human Warrior
kill 8 Goblin Assassin##50039+ |q 28793/1 |goto 30.7,29.1 |only Human Paladin
kill 8 Goblin Assassin##50039+ |q 28791/1 |goto 30.7,29.1 |only Human Hunter
kill 8 Goblin Assassin##50039+ |q 28794/1 |goto 30.7,29.1 |only Human Priest
kill 8 Goblin Assassin##50039+ |q 28796/1 |goto 30.7,29.1 |only Human Warlock
kill 8 Goblin Assassin##50039+ |q 28792/1 |goto 30.7,29.1 |only Human Mage
kill 8 Goblin Assassin##50039+ |q 28795/1 |goto 30.7,29.1 |only Human Rogue
kill 8 Goblin Assassin##50039+ |q 31144/1 |goto 30.7,29.1 |only Human Monk
kill 8 Goblin Assassin##50039+ |q 29081/1 |goto 30.7,29.1 |only !Human
step "injuredsoldiers"
clicknpc Injured Stormwind Infantry##50047+ |goto 30.7,29.1 |only !Monk
|tip They look like dead Alliance soldiers laying on the ground around this area. |only !Monk
Revive 4 Injured Soldiers |q 28813/1 |only Human Warrior
Revive 4 Injured Soldiers |q 28809/1 |only Human Paladin
Revive 4 Injured Soldiers |q 28806/1 |only Human Hunter
Revive 4 Injured Soldiers |q 28810/1 |only Human Priest
Revive 4 Injured Soldiers |q 28812/1 |only Human Warlock
Revive 4 Injured Soldiers |q 28808/1 |only Human Mage
Revive 4 Injured Soldiers |q 28811/1 |only Human Rogue
Revive 4 Injured Soldiers |q 29082/1 |only !Human
only !Monk
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto 34.7,38.8 |only Human Warrior
turnin Fear No Evil##28809 |goto 34.7,38.8 |only Human Paladin
turnin Fear No Evil##28806 |goto 34.7,38.8 |only Human Hunter
turnin Fear No Evil##28810 |goto 34.7,38.8 |only Human Priest
turnin Fear No Evil##28812 |goto 34.7,38.8 |only Human Warlock
turnin Fear No Evil##28808 |goto 34.7,38.8 |only Human Mage
turnin Fear No Evil##28811 |goto 34.7,38.8 |only Human Rogue
turnin Fear No Evil##29082 |goto 34.7,38.8 |only !Human
only !Monk
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
turnin They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
turnin They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
turnin They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
turnin They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
turnin They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
turnin They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
turnin They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
turnin They Sent Assassins##29081 |goto 35.7,39.8 |only !Human
accept The Rear is Clear##28823 |goto 35.7,39.8 |only Human Warrior
accept The Rear is Clear##28819 |goto 35.7,39.8 |only Human Paladin
accept The Rear is Clear##28817 |goto 35.7,39.8 |only Human Hunter
accept The Rear is Clear##28820 |goto 35.7,39.8 |only Human Priest
accept The Rear is Clear##28822 |goto 35.7,39.8 |only Human Warlock
accept The Rear is Clear##28818 |goto 35.7,39.8 |only Human Mage
accept The Rear is Clear##28821 |goto 35.7,39.8 |only Human Rogue
accept The Rear is Clear##31145 |goto 35.7,39.8 |only Human Monk
accept The Rear is Clear##29083 |goto 35.7,39.8 |only !Human
step
talk Marshal McBride##197
turnin The Rear is Clear##28823 |goto 33.6,53.0 |only Human Warrior
turnin The Rear is Clear##28819 |goto 33.6,53.0 |only Human Paladin
turnin The Rear is Clear##28817 |goto 33.6,53.0 |only Human Hunter
turnin The Rear is Clear##28820 |goto 33.6,53.0 |only Human Priest
turnin The Rear is Clear##28822 |goto 33.6,53.0 |only Human Warlock
turnin The Rear is Clear##28818 |goto 33.6,53.0 |only Human Mage
turnin The Rear is Clear##28821 |goto 33.6,53.0 |only Human Rogue
turnin The Rear is Clear##31145 |goto 33.6,53.0 |only Human Monk
turnin The Rear is Clear##29083 |goto 33.6,53.0 |only !Human
accept Blackrock Invasion##26389 |goto 33.6,53.0
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto 33.4,54.7
stickystart "vineyardfires"
step
kill Blackrock Invader##42937+
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto 54.4,78.6
step "vineyardfires"
Use Milly's Fire Extinguisher Fires |use Milly's Fire Extinguisher##58362 |goto 54.4,78.6
Extinguish #8# Vineyard Fires |q 26391/1 |goto 54.4,78.6
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto 33.4,54.7
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto 33.6,53.0
accept Ending the Invasion!##26390 |goto 33.6,53.0
step
kill Kurtok the Slayer##42938 |q 26390/1 |goto 65.1,48.1
step
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto 33.6,53.0
accept Report to Goldshire##54 |goto 33.6,53.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Death Knight (55-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Death Knight 55-58",
condition_invalid="not raceclass('DeathKnight') ",
condition_invalid_msg="Death Knight only.",
condition_suggested="raceclass('DeathKnight') and not completedq(13188)",
condition_suggested_exclusive=true,
condition_end="completedq(13188)",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)",
startlevel=55,
dynamic=true,
endlevel=58
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave,51.3,35.2
step
talk Instructor Razuvious##28357
turnin In Service Of The Lich King##12593 |goto 48,28.5
accept The Emblazoned Runeblade##12619 |goto 48,28.5
step
click Battle-worn Sword##7961
collect Battle-worn Sword##38607 |n
Click the Battle-worn Sword in your bags next to a runeforge |use Battle-worn Sword##38607
|tip The Runforges look like big demon skull furnaces with blue fire in them.
collect Runebladed Sword|q 12619/1 |goto 47.4,31
step
talk Instructor Razuvious##28357
turnin The Emblazoned Runeblade##12619 |goto 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto 48,28.5
step
Use your Runeforging ability while standing near the Runeforge |cast Runeforging
|tip They look like big skull furnaces.
Engrave your sword with the rune of your choice |q 12842/1 |goto 47.4,31
model 8176
step
talk Instructor Razuvious##28357
turnin Runeforging: Preparation For Battle##12842 |goto 48,28.5
accept The Endless Hunger##12848 |goto 48,28.5
step
Equip the Runed Soulblade |use Runed Soulblade##38707
click Acherus Soul Prison##8115
|tip It looks like a horned skull on the wall, chaining the prisoners
kill Unworthy Initiate##29519, Unworthy Initiate##29565, Unworthy Initiate##29567, Unworthy Initiate##29566, Unworthy Initiate##29520
Dominate an Unworthy Initiate |q 12848/1 |goto 48.9,28.7
step
talk Instructor Razuvious##28357
turnin The Endless Hunger##12848 |goto 48,28.5
accept The Eye Of Acherus##12636 |goto 48,28.5
step
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.3,35.2
accept Death Comes From On High##12641 |goto 51.3,35.2
step
click Eye of Acherus Control Mechanism##8123
You will take control over the Eye of Acherus |havebuff Spell_Shadow_UnholyFrenzy |q 12641
Your World Map will NOT show your current position anymore!
If you stay floating high enough, the soldiers will not attack you.
Once the Eye stops moving, go immediately northeast to the blacksmith building.
Use your Siphon of Acherus ability near the floating red arrow |petaction 1
Analyze the New Avalon Forge |q 12641/1 |goto 52.1,35.2
step
Go south to the big fort
Use your Siphon of Acherus ability near the floating red arrow |petaction 1
Analyze Scarlet Hold |q 12641/3
step
Go west to the town hall building with a clock tower
|tip It has a red roof and looks like an inn. NOT the big white building.
Use your Siphon of Acherus ability near the floating red arrow |petaction 1
Analyze the New Avalon Town Hall |q 12641/2
step
Go south to the small church
Use your Siphon of Acherus ability near the floating red arrow |petaction 1
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use your Recall Eye of Acherus ability to return to Ebon Hold |nobuff Spell_Shadow_UnholyFrenzy |petaction 5
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.3,35.2
accept The Might Of The Scourge##12657 |goto 51.3,35.2
step
Go through the pink teleporter |goto Plaguelands: The Scarlet Enclave 50.5,33.3 < 5 |c |walk
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto 48.9,29.7
accept Report To Scourge Commander Thalanor##12850 |goto 48.9,29.7
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.5,26.5 |instant
step
talk Scourge Commander Thalanor##28510
turnin Report To Scourge Commander Thalanor##12850 |goto 51.6,34.5
accept The Scarlet Harvest##12670 |goto 51.6,34.5
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave,53.2,31.1 < 5 |noway |c
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.3,34
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Salanar the Horseman##28653
accept Grand Theft Palomino##12680 |goto 52.5,34.6
step
talk Olrun the Battlecaller##29047
accept Death's Challenge##12733 |goto 54.6,34.2
step
Walk around Death's Breach
Challenge Death Knight Initiates to duel
kill Death Knight Initiate##28392+, Death Knight Initiate##28394+
Defeat 5 Death Knights in a duel |q 12733/1 |goto 51.7,35.1
step
talk Olrun the Battlecaller##29047
turnin Death's Challenge##12733 |goto 54.6,34.2
step
talk Orithos the Sky Darkener##28647
accept Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
kill Scarlet Captain##28611+, Scarlet Infantryman##28609+, Scarlet Medic##28608+, Scarlet Peasant##28557+
kill 10 Scarlet Crusader |q 12678/1 |goto 52.2,45.9
step
click Abandoned Mail##4851
|tip It's a roll of parchment on top of the mailbox, avoid clicking the mailbox itself.
accept Abandoned Mail##12711 |goto 55.2,46.2 |instant
step
kill 10 Citizen of Havenshire##28660+ |q 12678/2 |goto 56.4,45
step
click Saronite Arrow##8094+
|tip Usually more than one spawn on top of each other, so you can click more than once
collect 15 Saronite Arrow |q 12679/1 |goto 56.2,49.4
step
Click on a Havenshire Colt to ride it. |clicknpc Havenshire Colt##28607 |invehicle |c |q 12680 |goto 55.6,43.2
|tip Watch out for the Stable Master, he's elite and will pull you off the horse
Once on the horse, run back here |goto 52.8,34.1 <5 |c
Use your Deliver Stolen Horse ability on your bar when standing next to Salanar the Horseman |petaction Deliver Stolen Horse
step
talk Salanar the Horseman##28653
turnin Grand Theft Palomino##12680 |goto 52.5,34.6
accept Into the Realm of Shadows##12687 |goto 52.5,34.6
step
kill Dark Rider of Acherus##28768
clicknpc Acherus Deathcharger##28302 |goto 55.6,43.2 |invehicle |c
|tip They walk around on horses.
Run back to Death's Breach quickly |goto Plaguelands: The Scarlet Enclave 50.6,38.4 |noway |c |q 12687
step
Use your Horseman's Call ability on your bar when standing next to Salanar the Horseman |petaction Horseman's Call
talk Salanar the Horseman##28653
turnin Into the Realm of Shadows##12687 |goto 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Orithos the Sky Darkener##28647
turnin Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.1,35
accept The Gift That Keeps On Giving##12698 |goto 54.1,35
step
Use your Gift of the Harvester on Scarlet Miners inside this mine |use Gift of the Harvester##39253
|tip It has a pretty low success rate, just keep trying
Create 5 Scarlet Ghouls to follow you |goto 58.2,31
confirm
modelnpc 28819
modelnpc 28897
step
Stand next to Gothik the Harvester
|tip He is standing in front of a small roundish stone altar thing.  He has a goat skull on his head.
Return 5 Scarlet Ghouls |q 12698/1
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.1,35
accept An Attack Of Opportunity##12700 |goto 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.3,34
accept Massacre At Light's Point##12701 |goto 52.3,34
step
click Inconspicuous Mine Car##7997
|tip It's a little mine car sitting next to an outhouse.
The miner takes you to a ship
click Scarlet Cannon##245
|tip On the side of the ship.
Shoot the soldiers on the beach with the cannon
kill Scarlet Fleet Defender##28834+ |q 12701/1 |goto 58.5,33
step
Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach |goto 52.6,34.5 < 5
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.3,34
accept Victory At Death's Breach!##12706 |goto 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto 53.1,32.5 |n
Arrive at Archerus |goto 51.1,34.7 < 5 |noway |c
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.9,29.7
accept The Will Of The Lich King##12714 |goto 48.9,29.7
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave,53.2,31.1 < 5 |noway |c
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.5,36.6
accept The Crypt of Remembrance##12715 |goto 53.5,36.6
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.9,52.4
step
Go down into the crypt |goto 54.3,58.1 < 5 |c |walk
talk Prince Keleseth##28911
turnin The Crypt of Remembrance##12715
accept Nowhere To Run And Nowhere To Hide##12719
step
talk Baron Rivendare##28910
accept Lambs To The Slaughter##12722 |goto 54.7,57.4
step
click Empty Cauldron##7199
|tip In the basement of the building that looks like an inn.
collect Empty Cauldron|q 12716/1 |goto 57.8,61.8
step
click Iron Chain##8040
|tip It's inside the Forge.
collect Iron Chain|q 12716/2 |goto 62,60.2
step
kill Mayor Quimby##28945 |q 12719/1 |goto 52.2,71.2
step
click New Avalon Registry##928
collect New Avalon Registry|q 12719/2 |goto 52.5,71
step
Run around the town and do the following:
kill 10 Scarlet Commander##28936+, Scarlet Commander Rodrick##29000+, Scarlet Lord Jesseriah McCree##28964+, Scarlet Preacher##28939+, Scarlet Commander##54386+, Scarlet Crusader##28940+, Scarlet Marksman##28610+ |q 12722/1
kill 15 Citizen of New Avalon##28942+, Citizen of New Avalon##28941+ |q 12722/2
collect 10 Crusader Skull|q 12716/3
modelnpc High Inquisitor Valroth##29001
step
Go down into the crypt |goto 54.3,58.1 < 5
talk Prince Keleseth##28911
turnin Nowhere To Run And Nowhere To Hide##12719
accept How To Win Friends And Influence Enemies##12720
step
talk Baron Rivendare##28910
turnin Lambs To The Slaughter##12722 |goto 54.7,57.4
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.9,52.4
accept Noth's Special Brew##12717 |goto 55.9,52.4
step
click Plague Cauldron##4271
turnin Noth's Special Brew##12717 |goto 56.1,52.1
step
Open the Ornate Jeweled Box in your bags |use Ornate Jeweled Box##39418
Equip the Keleseth's Persuader swords |use Keleseth's Persuader##39371
Attack Scarlet soldiers and stop hitting them when they start talking, so you don't kill them too fast
Repeat until a soldier gives you information
Reveal the "Crimson Dawn" |q 12720/1 |goto 55.8,65.8
modelnpc Scarlet Commander##54386
modelnpc Scarlet Preacher##28939
modelnpc Scarlet Crusader##28940
modelnpc Scarlet Marksman##28610
step
Go down into the crypt |goto 54.3,58.1 < 5
talk Prince Keleseth##28911
turnin How To Win Friends And Influence Enemies##12720
accept Behind Scarlet Lines##12723
step
talk Orbaz Bloodbane##28914
|tip He is upstairs
turnin Behind Scarlet Lines##12723 |goto 56.3,79.8
accept The Path Of The Righteous Crusader##12724 |goto 56.3,79.8
step
talk Thassarian##28913
accept Brothers In Death##12725 |goto 56.3,80.2
step
Go northeast into Scarlet Hold and into the basement
talk Koltira Deathweaver##28912
turnin Brothers In Death##12725 |goto 63.0,67.8
accept Bloody Breakout##12727 |goto 63.0,67.8
step
Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves
Stay inside the bubble, it reduces spell damage done to you, so you'll live
kill High Inquisitor Valroth##29001
click High Inquisitor Valroth's Remains##2951
collect Valroth's Head |q 12727/1
step
Go upstairs in the fort
click New Avalon Patrol Schedule##8051
collect New Avalon Patrol Schedule|q 12724/1 |goto 63.0,68.3
step
talk Orbaz Bloodbane##28914
turnin The Path Of The Righteous Crusader##12724 |goto 56.3,79.8
step
talk Thassarian##28913
turnin Bloody Breakout##12727 |goto 56.3,80.2
accept A Cry For Vengeance!##12738 |goto 56.3,80.2
step
talk Knight Commander Plaguefist##29053
turnin A Cry For Vengeance!##12738 |goto 52.9,81.5
accept A Special Surprise##12742 |only Human
accept A Special Surprise##12743 |only NightElf
accept A Special Surprise##12744 |only Dwarf
accept A Special Surprise##12745 |only Gnome
accept A Special Surprise##12746 |only Draenei
accept A Special Surprise##28649 |only Worgen
step
kill Valok the Righteous##29070 |q 12746/1 |goto 54.5,83.4
only Draenei
step
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.2,83.9
only NightElf
step
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.9,83.8
only Gnome
step
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.5,83.8
only Human
step
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54,83.3
only Dwarf
step
kill Lord Harford##49355 |q 28649/1 |v
only Worgen
step
talk Knight Commander Plaguefist##29053
turnin A Special Surprise##12742 |goto 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
accept A Sort Of Homecoming##12751 |goto 52.9,81.5
step
talk Thassarian##28913
turnin A Sort Of Homecoming##12751 |goto 56.3,80.2
step
talk Orbaz Bloodbane##28914
accept Ambush At The Overlook##12754 |goto 56.3,79.8
step
Use your Makeshift Cover while standing on the edge of the hill |use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings |q 12754/1 |goto 60,78.5
collect Scarlet Courier's Message |q 12754/2 |goto 60,78.5
step
talk Orbaz Bloodbane##28914
turnin Ambush At The Overlook##12754 |goto 56.3,79.8
accept A Meeting With Fate##12755 |goto 56.3,79.8
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.6,83.8
accept The Scarlet Onslaught Emerges##12756 |goto 65.6,83.8
step
talk Orbaz Bloodbane##28914
turnin The Scarlet Onslaught Emerges##12756 |goto 56.3,79.8
accept Scarlet Armies Approach...##12757 |goto 56.3,79.8
step
click Portal to Acherus##8046
Teleport to Acherus |goto 50.2,32.6 < 5 |noway |c
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.9,29.7
accept The Scarlet Apocalypse##12778 |goto 48.9,29.7
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto Plaguelands: The Scarlet Enclave,53.2,31.1 < 5 |noway |c
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.6,36.9
accept An End To All Things...##12779 |goto 53.6,36.9
step
Click the Horn of the Frostbrood in your bags |use Horn of the Frostbrood##39700
This will summon a dragon for you to ride around on
Fly and and use your dragon abilities to do the following:
kill 150 Scarlet Soldier##4286+ |q 12779/1 |goto 55.8,61
Destroy 10 Scarlet Ballistas |q 12779/2 |goto 55.8,61
More can be found around [Plaguelands: The Scarlet Enclave,58.3,71.1]
step
Fly back to Death's Breach and click the red arrow on your hot bar to jump off the dragon |outvehicle |c |goto 52.8,37.3
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.6,36.9
accept The Lich King's Command##12800 |goto 53.6,36.9
step
The path over to Browman Mill starts here
Follow the path west |goto 33.9,30.4
talk Scourge Commander Thalanor##31082
turnin The Lich King's Command##12800 |goto 50.4,31.9,0.5
accept The Light of Dawn##12801 |goto 50.4,31.9,0.5
step
talk Highlord Darion Mograine##29173
|tip If he is not here then the battle has already started an you might be able to join the battle at the chapel to save some time.
Tell him you are ready for the siege (you may be unable to do this if someone else already has, don't worry)
Wait for the battle to start in 5 minutes
Help fight the epic battle at [Plaguelands: The Scarlet Enclave,38.9,38.2]
Uncover The Light of Dawn |q 12801/1 |goto 34.4,31.1
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.1,39
accept Taking Back Acherus##13165 |goto 39.1,39
step
Use your new Death Gate spell and click the purple portal to go to Ebon Hold |goto Eastern Plaguelands,83.7,50.0 < 5 |cast Death Gate |noway |c
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.4,49.4
accept The Battle For The Ebon Hold##13166 |goto 83.4,49.4
step
Stand on the purple circle to teleport upstairs |goto 83.2,48.9 <5 |c
kill Scourge Necromancer##31096+, Terrifying Abomination##31098+, Val'kyr Battle-maiden##31095+
kill 10 Scourge |q 13166/2
kill Patchwerk##31099 |q 13166/1 |goto 82.5,47.3
step
Stand on the purple circle to teleport downstairs |goto 83.3,49.1 <5 |c
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.4,49.4
accept Where Kings Walk##13188 |goto 83.4,49.4
step
Go to this spot |goto 83.7,51.2 <5 |c
Click the portal to Stormwind |goto Elwynn Forest 33.4,52
talk King Varian Wrynn##29611
turnin Where Kings Walk##13188 |goto Stormwind City 85.8,31.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn_2",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)",
startlevel=5.05,
dynamic=true,
},[[
step
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##37112 |goto Elwynn Forest 45.4,49.0
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto Elwynn Forest 42.1,65.9
accept The Fargodeep Mine##62 |goto Elwynn Forest 42.1,65.9
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto 42.1,67.3
step
talk William Pestle##253
accept Kobold Candles##60 |goto 43.3,65.7
step
talk Innkeeper Farley##295
turnin Rest and Relaxation##37112 |goto 43.8,65.8
step
talk Innkeeper Farley##295
home Goldshire |q 26393 |future |goto 43.8,65.8
step
talk Smith Argus##514
accept A Swift Message##26393 |goto 41.7,65.5
only Human
step
talk Bartlett the Brave##42983
turnin A Swift Message##26393 |goto 41.7,64.6
accept Continue to Stormwind##26394 |goto 41.7,64.6
only Human
step
talk Osric Strang##1323
turnin Continue to Stormwind##26394 |goto Stormwind City 77.2,61.0
accept Dungar Longdrink##26395 |goto Stormwind City 77.2,61.0
only Human
step
talk Dungar Longdrink##352
turnin Dungar Longdrink##26395 |goto 70.9,72.5
accept Return to Argus##26396 |goto 70.9,72.5
only Human
step
talk Dungar Longdrink##352 |goto Stormwind City 71.0,72.5
Take a flight to Goldshire |goto Elwynn Forest 41.8,64.6 < 50 |c |q 26396
only Human
step
talk Smith Argus##514
turnin Return to Argus##26396 |goto Elwynn Forest,41.7,65.5
only Human
step
Explore the Fargodeep Mine |q 62/1 |goto Elwynn Forest/1 55.2,59.6
stickystart "largecandles"
step
kill Kobold Tunneler##475+, Kobold Miner##40+
collect 10 Gold Dust##773 |q 47/1 |goto Elwynn Forest/1 53.8,60.1
step "largecandles"
kill Kobold Tunneler##475+, Kobold Miner##40+
collect 8 Large Candle##772 |q 60/1 |goto Elwynn Forest/1 53.8,60.1
step
talk William Pestle##253
turnin Kobold Candles##60 |goto Elwynn Forest 43.3,65.7
accept A Visit With Maybell##26150 |goto Elwynn Forest 43.3,65.7
step
talk Marshal Dughan##240
turnin The Fargodeep Mine##62 |goto 42.1,65.9
accept The Jasperlode Mine##76 |goto 42.1,65.9
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.1,67.3
step
talk Maybell Maclure##251
turnin A Visit With Maybell##26150 |goto 43.1,89.6
accept Young Lovers##106 |goto 43.1,89.6
step
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.5,84.3
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.8,86.0
accept Speak with Gramma##111 |goto 29.8,86.0
step
talk Gramma Stonefield##248
turnin Speak with Gramma##111 |goto 34.9,83.9
accept Note to William##107 |goto 34.9,83.9
step
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.1,85.7
accept Pie for Billy##86 |goto 43.1,85.7
step
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto 42.1,86.6
step
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.5,84.3
accept Back to Billy##84 |goto 34.5,84.3
step
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.1,85.7
accept Goldtooth##87 |goto 43.1,85.7
step
kill Goldtooth##327
collect Bernice's Necklace##981 |q 87/1 |goto 40.1,80.6
step
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.5,84.3
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto 34.7,84.5
step
kill Princess##330
collect Brass Collar##1006 |q 88/1 |goto 33.0,84.7
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto 34.7,84.5
step
talk Remy "Two Times"##241
accept A Fishy Peril##40 |goto 42.1,67.3
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.1,65.9
accept Further Concerns##35 |goto 42.1,65.9
step
talk William Pestle##253
turnin Note to William##107 |goto 43.3,65.7
accept Collecting Kelp##112
step
kill Murloc##285+, Murloc Streamrunner##735+
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto 49.5,66.3
step
talk William Pestle##253
turnin Collecting Kelp##112 |goto 43.3,65.7
accept The Escape##114 |goto 43.3,65.7
step
talk Maybell Maclure##251
turnin The Escape##114 |goto 43.1,89.6
step
talk Marshal Dughan##240 |goto Elwynn Forest,42.1,65.9
Tell him _"I wish to ride the Stormwind charger, sir."_
Ride to the Eastvale Logging Camp |goto Elwynn Forest 73.9,72.5 < 50 |noway |c |q 35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn_3",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)",
startlevel=7.2,
dynamic=true,
},[[
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto Elwynn Forest 74.0,72.2 |only if havequest(35)
accept Find the Lost Guards##37 |goto Elwynn Forest 74.0,72.2 |only if completedq(35)
accept Protect the Frontier##52 |goto Elwynn Forest 74.0,72.2
step
click Bounty Board##2491
accept Bounty on Murlocs##46 |goto 74.0,72.3
accept Wanted: James Clark##26152 |goto 74.0,72.3
step
talk Sara Timberlain##278
accept Fine Linen Goods##83 |goto 79.5,68.7
step
kill James Clark##13159
collect James Clark's Head##57122 |q 26152/1 |goto 78.7,67.1
collect Gold Pickup Schedule##1307 |n
Click the Gold Pickup Schedule |use Gold Pickup Schedule##1307
accept The Collector##123
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Marshal McCree##42256
turnin Wanted: James Clark##26152 |goto 81.8,66.0
turnin The Collector##123 |goto 81.8,66.0
accept Manhunt##147 |goto 81.8,66.0
stickystart "prowlerwolf"
stickystart "youngforestbear"
stickystart "bundlesofwood"
step
click Half-Eaten body##14
turnin Find the Lost Guards##37 |goto 72.7,60.3
accept Discover Rolf's Fate##45 |goto 72.7,60.3
only if completedq(35)
stickystop "prowlerwolf"
stickystop "youngforestbear"
stickystop "bundlesofwood"
step
kill Rogue Wizard##474+
collect 6 Linen Scrap##1019 |q 83/1 |goto 74.5,51.6
stickystart "tornmurlocfins"
step
click Rolf's Corpse##14
turnin Discover Rolf's Fate##45 |goto 79.8,55.5
accept Report to Thomas##71 |goto 79.8,55.5
only if completedq(35)
step "tornmurlocfins"
kill Murloc Lurker##732+, Murloc Forager##46+
collect 8 Torn Murloc Fin##780 |q 46/1 |goto 77.6,59.0
stickystart "youngforestbear"
stickystart "bundlesofwood"
step "prowlerwolf"
kill Prowler##118+, Gray Forest Wolf##1922+
Kill #8# Prowlers or Forest Wolves |q 52/1 |goto 80.9,61.5
You can find more Prowlers around [Elwynn Forest,87.8,64.7]
step "youngforestbear"
kill 5 Young Forest Bear##822+ |q 52/2 |goto 80.9,61.5
You can find more Young Forest Bears around [Elwynn Forest,87.8,64.7]
step "bundlesofwood"
click Bundles of Wood##1248+
|tip They look like small stacks of logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 80.9,61.5
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Sara Timberlain##278
turnin Fine Linen Goods##83 |goto 79.5,68.7
step
talk Guard Thomas##261
turnin Report to Thomas##71 |goto 74.0,72.2 |only if completedq(35)
accept Cloth and Leather Armor##59 |goto 74.0,72.2 |only if completedq(35)
turnin Protect the Frontier##52 |goto 74.0,72.2
turnin Bounty on Murlocs##46 |goto 74.0,72.2
step
kill Morgan the Collector##473
collect The Collector's Ring##2239 |q 147/1 |goto 71.0,80.8
step
talk Sara Timberlain##278
turnin Cloth and Leather Armor##59 |goto 79.5,68.7
only if completedq(35)
step
talk Marshal McCree##42256
turnin Manhunt##147 |goto 81.8,66.0
accept Hero's Call: Westfall##26378 |goto 81.8,66.0
|tip You may not be able to accept this quest. If not, don't worry, it's just a breadcrumb quest.
step
Explore the Jasperlode Mine |q 76/1 |goto Elwynn Forest/19 37.7,52.5
step
talk Marshal Dughan##240
turnin The Jasperlode Mine##76 |goto Elwynn Forest 42.1,65.9
accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest 42.1,65.9
step
click Wanted Poster##17
accept Wanted: "Hogger"##176 |goto 24.6,78.2
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.2,74.5
accept Riverpaw Gnoll Bounty##11 |goto 24.2,74.5
stickystart "gnollarmbands"
step
kill Hogger##448
|tip Don't worry that he's elite, he is pretty easy to kill.
Deal with "The Hogger Situation" |q 176/1 |goto 24.9,95.0
step
click the Westfall Deed##8032
|tip It's a rolled up scroll in the hand of a dead body on the ground.
accept Furlbrow's Deed##184 |goto 24.8,95.3
step "gnollarmbands"
kill Riverpaw Outrunner##478+, Riverpaw Runt##97+
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 25.2,92.9
step
talk Marshal Dughan##240
turnin Wanted:  "Hogger"##176 |goto 42.1,65.9
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.2,74.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Westfall",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)",
startlevel=10.5,
dynamic=true,
description="Westfall borders the Kingdom of Stormwind and is mostly populated by humans not under the Alliance's complete control. The region was stolen right under the Alliance's nose by its own bitter people. Once a rich agricultural center, this land has lain fallow and forgotten since the Second War, but was held by the Defias Brotherhood for a time before the Cataclysm. Stormwind claimed the land as its own, but found little time to be concerned with it, with insufficient funds and might to retake the region. A handful of farmers still tried to keep their land, and some even attempted a tithe to Stormwind every year, but most only grew enough to feed themselves. Bandits and gnolls raided those farms that remained, and Stormwind's resources were stretched too thin to protect the beleaguered populace. The Defias Brotherhood controlled much of the region, focused in the southern area of Moonbrook.",
},[[
step
click Hero's Call Board##10016
accept Hero's Call: Westfall!##28562 |goto Stormwind City 62.9,71.5
only Pandaren
step
talk Lieutenant Horatio Laine##42308
turnin Hero's Call: Westfall!##28562 |goto Westfall,60.1,19.3 |only Pandaren
|tip You may not have this breadcrumb quest.
turnin Hero's Call: Westfall##26378 |goto Westfall,60.1,19.3 |only !Pandaren
|tip You may not have this breadcrumb quest.
accept Murder Was The Case That They Gave Me##26209 |goto Westfall,60.1,19.3
turnin Furlbrow's Deed##184 |goto Westfall,60.1,19.3
step
talk Homeless Stormwind Citizen##42384
talk West Plains Drifter##42391
Offer them a couple copper and ask them who killed the Furlbrows
Obtain Clue #1 |q 26209/1 |goto 59.0,18.2
Obtain Clue #2 |q 26209/2 |goto 59.0,18.2
Obtain Clue #3 |q 26209/3 |goto 59.0,18.2
Obtain Clue #4 |q 26209/4 |goto 59.0,18.2
step
talk Lieutenant Horatio Laine##42308
turnin Murder Was The Case That They Gave Me##26209 |goto 60.1,19.3
accept Hot On the Trail: The Riverpaw Clan##26213 |goto 60.1,19.3
accept Hot On the Trail: Murlocs##26214 |goto 60.1,19.3
step
kill Riverpaw Gnoll##117+, Riverpaw Scout##500+
collect Riverpaw Gnoll Clue##57755 |q 26213/1 |goto 56.5,15.4
step
kill Murloc Raider##515+, Murloc Coastrunner##126+
collect Murloc Clue##57756 |q 26214/1 |goto 54.5,11.6
step
talk Lieutenant Horatio Laine##42308
turnin Hot On the Trail: The Riverpaw Clan##26213 |goto 60.1,19.3
turnin Hot On the Trail: Murlocs##26214 |goto 60.1,19.3
accept Meet Two-Shoed Lou##26215 |goto 60.1,19.3
step
talk Two-Shoed Lou##42405
turnin Meet Two-Shoed Lou##26215 |goto 49.6,19.4
accept Livin' the Life##26228 |goto 49.6,19.4
step
talk Jimb "Candles" McHannigan##42498
accept "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Mama Celeste##42497
accept Feast or Famine##26230 |goto 49.5,19.1
step
talk Hoboair##42406
fpath Furlbrow's Pumpkin Farm |goto Westfall 49.8,18.7
stickystart "freshdirt"
step
kill Coyote##834+
collect 6 Coyote Tail##57787 |q 26230/1 |goto 50.4,21.1
step "freshdirt"
click Fresh Dirt##20
|tip They look like brown mounds all around this area.
collect 5 Fresh Dirt##57789 |q 26230/2 |goto 50.4,21.1
stickystart "diggers"
step
Use Two-Shoed Lou's Old House |use Two-Shoed Lou's Old House##57761
|tip At the back of Jangolode Mine.
Learn about Livin' the Life |q 26228/1 |goto Westfall/5 64.8,28.0
step "diggers"
kill 12 Kobold Digger##1236+ |q 26229/1 |goto Westfall/0 44.8,25.8
step
talk Jimb "Candles" McHannigan##42498
turnin "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Two-Shoed Lou##42405
turnin Livin' the Life##26228 |goto 49.6,19.4
accept Lou Parting Thoughts##26232 |goto 49.6,19.4
step
talk Mama Celeste##42497
turnin Feast or Famine##26230 |goto 49.5,19.1
step
kill Thug##42387+
|tip Stand near the 4 Thugs behind the barn until they attack you.
Eavesdrop on the Thugs |q 26232/1 |goto 48.2,19.6
step
talk Lieutenant Horatio Laine##42558
turnin Lou Parting Thoughts##26232 |goto 49.7,19.5
accept Shakedown at the Saldean's##26236 |goto 49.7,19.5
step
talk Farmer Saldean##233
turnin Shakedown at the Saldean's##26236 |goto 56.0,31.2
accept Times are Tough##26237 |goto 56.0,31.2
step
talk Salma Saldean##235
accept Westfall Stew##26241 |goto 56.4,30.5
stickystart "fleshrippers"
step
kill Goretusk##157+, Young Goretusk##454+
collect 6 Goretusk Flank##57788 |q 26241/2 |goto 50.6,35.7
step "fleshrippers"
kill Fleshripper##1109+
|tip They are spread out and rare around this area, so you will need to search a little for them.
collect 6 Stringy Fleshripper Meat##57786 |q 26241/3 |goto 50.6,35.7
You can find more Fleshrippers:
Around [Westfall,49.5,29.8]
Around [Westfall,53.9,25.1]
Around [Westfall,59.1,32.5]
stickystart "okra"
step
kill 10 Harvest Watcher##114+ |q 26237/1 |goto 55.5,32.0
collect Harvest Watcher Heart##57935 |n
Click the Harvest Watcher Heart |use Harvest Watcher Heart##57935
accept Heart of the Watcher##26252
step "okra"
click Okra##371
|tip They look like big green bushes in the farm field around this area.
collect 6 Okra##57911 |q 26241/1 |goto 55.5,32.0
step
talk Farmer Saldean##233
turnin Times are Tough##26237 |goto 56.0,31.2
turnin Heart of the Watcher##26252 |goto 56.0,31.2
accept It's Alive!##26257 |goto 56.0,31.2
step
talk Salma Saldean##235
turnin Westfall Stew##26241 |goto 56.4,30.5
step
talk Farmer Saldean##233
accept You Have Our Thanks##26270 |goto 56.0,31.2
step
talk Salma Saldean##235
turnin You Have Our Thanks##26270 |goto 56.4,30.5
accept Hope for the People##26266 |goto 56.4,30.5
step
Use Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
Enable an Overloaded Harvest Golem |q 26257/1 |goto 49.8,34.4
modelnpc Overloaded Harvest Golem##42601
step
Use the abilities on your action bar:
kill 25 Energized Harvest Reaper##42342+ |q 26257/2 |goto 47.5,35.0
|tip Be sure to use the Sprint ability as much as possible to speed this quest up a bit.
step
talk Farmer Saldean##233
turnin It's Alive!##26257 |goto 56.0,31.2
step
talk Thor##523
fpath Sentinel Hill |goto 56.6,49.4
step
talk Hope Saldean##42575
turnin Hope for the People##26266 |goto 57.0,47.1
accept Feeding the Hungry and the Hopeless##26271 |goto 57.0,47.1
step
talk Marshal Gryan Stoutmantle##234
accept In Defense of Westfall##26286 |goto 56.3,47.5
step
talk Captain Danuvin##821
accept The Westfall Brigade##26287 |goto 56.5,47.6
step
talk Innkeeper Heather##8931
home Sentinel Hill |q 26287 |future |goto 52.9,53.7
stickystart "gnollattackorders"
step
kill Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
Slay #12# Attacking Riverpaw Gnolls |q 26287/1 |goto 53.9,50.0
step "gnollattackorders"
kill Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
collect Gnoll Attack Orders |q 26286/1 |goto 53.9,50.0
step
Use Westfall Stew on the Homeless |use Westfall Stew##57991
|tip Use it next to Homeless Stormwind Citizens, West Plains Drifters, and Transients.
Feed #20# Westfall Homeless |q 26271/1 |goto 56.9,57.6
You can find more at [58.2,40.2]
step
talk Marshal Gryan Stoutmantle##234
turnin In Defense of Westfall##26286 |goto 56.3,47.5
step
talk Captain Danuvin##821
turnin The Westfall Brigade##26287 |goto 56.5,47.6
accept Jango Spothide##26288 |goto 56.5,47.6
step
talk Hope Saldean##42575
turnin Feeding the Hungry and the Hopeless##26271 |goto 57.0,47.1
step
talk Marshal Gryan Stoutmantle##234
accept Find Agent Kearnen##26289 |goto 56.3,47.5
stickystart "riverpawmystics"
stickystart "riverpawtaskmasters"
step
kill Jango Spothide##42653 |goto 62.3,76.4 |q 26288/3
step "riverpawmystics"
kill 5 Riverpaw Mystic##453+ |q 26288/1 |goto 63.4,76.2
step "riverpawtaskmasters"
kill 5 Riverpaw Taskmaster##98+ |q 26288/2 |goto 63.4,76.2
step
talk Agent Kearnen##7024
turnin Find Agent Kearnen##26289 |goto 68.3,70.4
accept Secrets of the Tower##26290 |goto 68.3,70.4
step
Use your Potion of Shrouding inside the tower |use Potion of Shrouding##58112
|tip You can safely attack the elite mobs, Agent Kearnen will kill them for you.
Become Invisible |havebuff Interface\Icons\Ability_Mage_Invisibility |q 26290 |goto 70.5,74.5
step
Watch the dialogue
Reveal Helix's Secret |q 26290/1 |goto 70.6,74.1
|tip Go to the top of the tower.
step
talk Agent Kearnen##7024
turnin Secrets of the Tower##26290 |goto 68.3,70.4
accept Big Trouble in Moonbrook##26291 |goto 68.3,70.4
step
talk Marshal Gryan Stoutmantle##234
turnin Big Trouble in Moonbrook##26291 |goto 56.3,47.5
accept To Moonbrook!##26292 |goto 56.3,47.5
step
talk Captain Danuvin##821
turnin Jango Spothide##26288 |goto 56.5,47.6
step
talk Scout Galiaan##878
accept The Legend of Captain Grayson##26371 |goto 56.4,47.3
step
talk Captain Alpert##42425
turnin To Moonbrook!##26292 |goto 42.1,64.1
accept Propaganda##26295 |goto 42.1,64.1
step
talk Tina Skyden##42426
fpath Moonbrook |goto 42.1,63.3
step
kill Moonbrook Thug##42677
collect Red Bandana##58117 |n
Click the Red Bandana |use Red Bandana##58117
accept Evidence Collection##26296 |goto 41.5,67.5
stickystart "redbandanas"
step
click Informational Pamphlet##8128
|tip It's a small book sitting on a broken barrel in the back room of this building.
collect Informational Pamphlet##58113 |q 26295/1 |goto 41.6,66.4
step
click Mysterious Propaganda##9669
|tip Nailed to the wall in the back room of this buildings
collect Mysterious Propaganda##58116 |q 26295/4 |goto 41.3,66.5
step
click The Moonbrook Times##9130
collect Issue of the Moonbrook Times##58114 |q 26295/2 |goto 43.3,69.9
step
click Secret Journal##8135
|tip Upstairs in this building.
collect Secret Journal##58115 |q 26295/3 |goto 43.5,66.6
step "redbandanas"
kill Moonbrook Thug##42677+
|tip They are found inside the buildings around Moonbrook.
collect 6 Red Bandana##58117 |q 26296/1 |goto 42.5,69.5
step
talk Captain Alpert##42425
turnin Propaganda##26295 |goto 42.1,64.1
accept The Dawning of a New Day##26297 |goto 42.1,64.1
turnin Evidence Collection##26296 |goto 42.1,64.1
step
Watch the dialogue
Gather Information from the Moonbrook Rally |q 26297/1 |goto 43.6,69.5
step
talk Captain Alpert##42425
turnin The Dawning of a New Day##26297 |goto 42.1,64.1
accept Secrets Revealed##26319 |goto 42.1,64.1
step
talk Thoralius the Wise##42651
turnin Secrets Revealed##26319 |goto 43.0,65.0
accept A Vision of the Past##26320 |goto 43.0,65.0
step
Enter the Defias Hideout
Go through the swirling portal |goto Westfall/17 26.0,51.1 < 20
|tip Follow the trail of homeless people to the portal.
Enter the Deadmines |goto The Deadmines |q 26320 |c
step
Inside the Deadmines, right at the entrance:
Use your Incense Burner |use Incense Burner##58147
Watch the cutscene
Uncover a Vision of the Past |q 26320/1
step
Go back through the dungeon portal
Leave the Deadmines |goto Westfall/17 |q 26320 |c
step
Leave The Defias Hideout |goto Westfall,42.6,71.7 < 20 |q 26320 |c
|tip Follow the trail of homeless people to the exit.
step
talk Captain Grayson##392
turnin The Legend of Captain Grayson##26371 |goto Westfall,30.5,85.6
accept The Coast Isn't Clear##26348 |goto Westfall,30.5,85.6
accept Keeper of the Flame##26347 |goto Westfall,30.5,85.6
accept The Coastal Menace##26349 |goto Westfall,30.5,85.6
stickystart "murloctidehunters"
stickystart "murlocoracles"
stickystart "sanderstreasuremap"
step
kill Old Murk-Eye##391
|tip He's a gray murloc that walks along this beach, so you may need to search for him.
collect Scale of Old Murk-Eye##3636 |q 26349/1 |goto 32.8,82.6
step "murloctidehunters"
kill 7 Murloc Tidehunter##127+ |q 26348/1 |goto 32.8,82.6
step "murlocoracles"
kill 7 Murloc Oracle##517+ |q 26348/2 |goto 32.8,82.6
step "sanderstreasuremap"
kill Murloc Tidehunter##127+, Murloc Oracle##517+
collect Captain Sanders' Treasure Map##1357 |q 26353 |future
step
Click Captain Sanders' Treasure Map |use Captain Sanders' Treasure Map##1357
accept Captain Sanders' Hidden Treasure##26353
You can find more Murloc Tidehunters and Murloc Oracles at [Westfall,28.9,73.9]
step
click Captain's Footlocker##8
turnin Captain Sanders' Hidden Treasure##26353 |goto 25.9,47.8
accept Captain Sanders' Hidden Treasure##26354 |goto 25.9,47.8
step
click Broken Barrel##9
turnin Captain Sanders' Hidden Treasure##26354 |goto 40.5,47.8
accept Captain Sanders' Hidden Treasure##26355 |goto 40.5,47.8
step
kill Chasm Slime##42669+
collect 5 Chasm Ooze |q 26347/1 |goto 40.2,45.8
step
click Old Jug##7
turnin Captain Sanders' Hidden Treasure##26355 |goto 40.6,17.0
accept Captain Sanders' Hidden Treasure##26356 |goto 40.6,17.0
step
click Locked Chest##1
turnin Captain Sanders' Hidden Treasure##26356 |goto 26.0,16.9
step
talk Marshal Gryan Stoutmantle##234
turnin A Vision of the Past##26320 |goto 56.3,47.5
accept Rise of the Brotherhood##26322 |goto 56.3,47.5
step
Watch the dialogue
Witness the Rise of the Brotherhood |q 26322/1 |goto 56.3,47.5
step
talk Captain Grayson##392
turnin The Coast Isn't Clear##26348 |goto 30.5,85.6
turnin Keeper of the Flame##26347 |goto 30.5,85.6
turnin The Coastal Menace##26349 |goto 30.5,85.6
step
talk King Varian Wrynn##29611
turnin Rise of the Brotherhood##26322 |goto Stormwind City 85.8,31.7
accept Return to Sentinel Hill##26370 |goto Stormwind City 85.8,31.7
step
talk Marshal Gryan Stoutmantle##234
turnin Return to Sentinel Hill##26370 |goto Westfall 56.4,49.6
accept Threat to the Kingdom##26761 |goto Westfall 56.4,49.6
step
talk Captain Danuvin##821
accept Hero's Call: Redridge Mountains##26365 |goto 56.4,49.5
only Human
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)",
startlevel=5.05,
dynamic=true,
endlevel=8
},[[
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh,53.9,50.7
step
talk Innkeeper Belm##1247
turnin Bound for Kharanos##26380 |goto 54.5,50.8
only Gnome
step
talk Innkeeper Belm##1247
buy 1 Rhapsody Malt##2894 |q 384/2 |goto 54.5,50.8
home Thunderbrew Distillery |future |q 315
step
Go back outside the inn |goto Dun Morogh/0 54.1,50.4 < 5 |walk
talk Rejold Barleybrew##1374
|tip He is outside the inn
accept The Perfect Stout##315 |goto 54.2,51.2
step
talk Captain Tharran##40950
turnin On to Kharanos##26373 |goto 53.7,52.2 |only Gnome
accept Frostmane Aggression##25724 |goto 53.7,52.2
step
kill Crag Boar##1125+
collect 4 Tender Boar Rib |q 384/1 |goto 56.0,48.4
buy 1 Rhapsody Malt##2894 |q 384/2 |goto 56.0,48.4
step
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 53.9,50.7
step
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto 49.9,45.0
only Dwarf
stickystart "Frostmaneseer"
stickystart "Shimmerweed"
step "Frostmaneseer"
Follow the path up
kill 5 Frostmane Seer##41121+ |q 25724/1 |goto 51.5,40.7,0.5
kill 7 Frostmane Snowstrider##41122+ |q 25724/2 |goto 51.5,40.7,0.5
|tip The mobs also have a slight chance of dropping Shimmerweed
step "Shimmerweed"
click Shimmerweed Basket##644+
collect 7 Shimmerweed |q 315/1 |goto 48.6,38.0 |goto Dun Morogh/0 48.6,38.0
step
talk Innkeeper Belm##1247
turnin Bound for Kharanos##26380 |goto 54.5,50.9
only Dwarf
step
talk Rejold Barleybrew##1374
|tip He is outside the inn
turnin The Perfect Stout##315 |goto 54.2,51.2
step
talk Captain Tharran##40950
turnin Frostmane Aggression##25724 |goto 53.7,52.2
accept Culling the Wendigos##25667 |goto 53.7,52.2
accept Forced to Watch from Afar##313 |goto 53.7,52.2
step
talk Quartermaster Glynna##40951
accept Pilfered Supplies##25668 |goto 53.7,52.1
step
click Pilfered Supplies##335
talk Mountaineer Dunstan##40991
Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
Convey orders to Mountaineer Dunstan |q 313/1 |goto Dun Morogh/7 51.7,48.8
step
click Pilfered Supplies##335
talk Mountaineer Lewin##40994
Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
Convey orders to Mountaineer Lewin |q 313/2 |goto Dun Morogh/7 60.4,55.9
step
click Pilfered Supplies##335
talk Mountaineer Valgrum##41056
Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
Convey orders to Mountaineer Valgrum |q 313/3 |goto Dun Morogh/7 61.4,22.6
stickystart "Wendigo"
stickystart "Pilferedsupplies"
step "Wendigo"
kill 10 Wendigo |q 25667/1 |goto Dun Morogh/7 53.8,48.1
step "Pilferedsupplies"
click Pilfered Supplies##335
collect 6 Pilfered Supplies |q 25668/1 |goto Dun Morogh/7 53.8,48.1
modelnpc Young Wendigo##40940
step
talk Quartermaster Glynna##40951
turnin Pilfered Supplies##25668 |goto Dun Morogh/0 53.7,52.1
step
talk Captain Tharran##40950
turnin Culling the Wendigos##25667 |goto 53.7,52.2
turnin Forced to Watch from Afar##313 |goto 53.7,52.2
accept Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
accept Operation Recombobulation##412 |goto 53.3,51.9
stickystart "Constrictiontotems"
stickystart "Gyromechanic"
step "Constrictiontotems"
Use the Rune of Fire in your bags next to Constriction Totems |use Rune of Fire##56009
|tip They look like wooden spiked rods with green orbs at the top of them around this area.
Burn 4 Constriction Totems |q 25792/1 |goto 57.3,56.8
step "Gyromechanic"
kill Frostmane Scavenger##41146+
collect 8 Gyromechanic Gear |q 412/1 |goto 57.3,56.8
step
talk Captain Tharran##40950
turnin Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
turnin Operation Recombobulation##412 |goto 53.3,51.9
step
talk Captain Tharran##40950
accept Help from Steelgrill's Depot##25838 |goto 53.7,52.2
step
talk Delber Cranktoggle##41363
turnin Help from Steelgrill's Depot##25838 |goto 56.8,47.1
accept The Ultrasafe Personnel Launcher##25839 |goto 56.8,47.1
step
clicknpc Ultrasafe Personnel Launcher##41398
Use the Ultrasafe Personnel Launcher to deploy to Frostmane Retreat |q 25839/1 |goto 56.7,46.5
step
talk Slamp Wobblecog##41298
turnin The Ultrasafe Personnel Launcher##25839 |goto 62.5,53.7
accept Eliminate the Resistance##25840 |goto 62.5,53.7
accept Strike From Above##25841 |goto 62.5,53.7
step
talk Snevik the Blade##50601
accept The View from Down Here##28868 |goto 62.5,53.8
step
Use your Signal Flare while standing in this circle of stones on the ground |use Signal Flare##56048
Attack the Northern Frostmane Retreat |q 25841/1 |goto 64.5,54.4
step
kill Battok the Berserker##41284 |q 25840/1 |goto 63.8,55.7
step
Use your Signal Flare in this spot |use Signal Flare##56048
Attack the Southern Frostmane Retreat |q 25841/2 |goto Dun Morogh/0 63.1,57.4
stickystart "Frostmanebuilder"
stickystart "Frostmanewarrior"
step "Frostmanebuilder"
Use your Viewpoint Equalizer to shrink Frostmane Builders |use Viewpoint Equalizer##67249
Shrink 5 Frostmane Builders |q 28868/1 |goto 62.7,55.1
modelnpc Frostmane Builder##41251
step "Frostmanewarrior"
kill 5 Frostmane Warrior##41258+ |q 25840/2 |goto 62.7,55.1
step
talk Snevik the Blade##50601
turnin The View from Down Here##28868 |goto 62.5,53.8
step
talk Slamp Wobblecog##41298
turnin Eliminate the Resistance##25840 |goto 62.5,53.7
turnin Strike From Above##25841 |goto 62.5,53.7
accept A Hand at the Ranch##25882 |goto 62.5,53.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)",
startlevel=8.2,
dynamic=true,
endlevel=9
},[[
step
Follow the path up |goto Dun Morogh/0 69.2,51.3 < 5 |only if walking
talk Sergeant Flinthammer##41578
turnin A Hand at the Ranch##25882 |goto 70.4,48.9
accept It's Raid Night Every Night##25932
step
Help Sergeant Flinthammer and his mountaineers fight off the Frostmane Raiders
Defend Amberstill Ranch |q 25932 |goto 70.4,48.9
step
talk Sergeant Flinthammer##41578
turnin It's Raid Night Every Night##25932 |goto 70.4,48.9
step
talk Veron Amberstill##1261
accept Rams on the Lam##25905 |goto 70.7,48.9
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto 70.3,48.1
step
Follow the path up |goto 69.3,49.6 < 5 |only if walking
kill Vagash##1388
collect Fang of Vagash |q 314/1 |goto 69.7,44.4
step
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto 70.3,48.1
step
Whistle while standing next to Stolen Rams |script DoEmote("WHISTLE")
|tip They look like different colored rams around this area.
Recover 6 Stolen Rams |q 25905/1 |goto 67.6,55.0
step
talk Veron Amberstill##1261
turnin Rams on the Lam##25905 |goto 70.7,48.9
step
talk Sergeant Flinthammer##41578
accept Help for the Quarry##25933 |goto 70.4,48.9
step
Go to the road |goto 69.9,53.2 < 5 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Help for the Quarry##25933 |goto 76.3,54.7
accept Those Blasted Troggs!##432 |goto 76.3,54.7
step
talk Prospector Drugan##50631
accept Priceless Treasures##25937 |goto 76.2,53.0
step
kill 8 Rockjaw Skullthumper##1115+ |q 432/1 |goto Dun Morogh/0 77.6,56.2
stickystart "Trappedminers"
stickystart "Bonesnapper"
stickystart "Frozenartifact"
step "Trappedminers"
Use Runes of Return on Trapped Miners |use Runes of Return##56222
|tip They look like scared dwarves along the walls inside the cave.
Rescue 7 Trapped Miners |q 433/1 |goto Dun Morogh/11 39.0,82.6
step "Bonesnapper"
kill 8 Rockjaw Bonesnapper##1117+ |q 432/2 |goto Dun Morogh/11 39.0,82.6
step "Frozenartifact"
click Frozen Artifact##6752+
collect 8 Frozen Artifact |q 25937/1 |goto Dun Morogh/11 39.0,82.6
step
Follow the path up |goto Dun Morogh/0 75.1,55.9 < 5 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 76.3,54.7
step
talk Prospector Gehn##1255
turnin Priceless Treasures##25937 |goto 76.2,53.0
step
talk Senator Mehr Stonehallow##1977
accept Trouble at the Lake##25986 |goto 75.9,54.3
step
Follow the path up to the road |goto 75.0,53.5 < 5 |only if walking
Follow the road |goto Dun Morogh/0 74.5,51.2 <20 |only if walking
talk Khurgorn Singefeather##41804
accept Dealing with the Surge##25979 |goto 82.6,48.3
step
talk Sergeant Bahrum##41786
turnin Trouble at the Lake##25986 |goto 82.8,48.4
accept Entombed in Ice##25978 |goto 82.8,48.4
stickystart "Bedsurger"
stickystart "Icytombs"
step "Bedsurger"
kill 6 Helm's Bed Surger##41762+ |q 25979/1 |goto 83.0,51.5
step "Icytombs"
Attack Icy Tombs
Free 6 Frozen Mountaineers |q 25978/1 |goto 83.0,51.5
modelnpc Icy Tomb##41768
step
talk Sergeant Bahrum##41786
turnin Entombed in Ice##25978 |goto 82.9,48.4
step
talk Khurgorn Singefeather##41804
turnin Dealing with the Surge##25979 |goto 82.6,48.3
step
talk Sergeant Bahrum##41786
accept Dark Iron Scheming##25997 |goto 82.9,48.4
step
kill Captain Beld##6124
|tip He's inside of the house at the bottom of the stairs
collect Dark Iron Attack Plans |q 25997/2 |goto 85.2,60.6
step
kill 5 Dark Iron Spy##6123+ |q 25997/1 |goto 84.0,58.1
step
talk Sergeant Bahrum##41786
turnin Dark Iron Scheming##25997 |goto 82.9,48.4
accept Get to the Airfield##25998 |goto 82.9,48.4
step
clicknpc Mathel's Flying Machine##41848 |goto Dun Morogh 75.3,52.8
You will fly to the Ironforge Airfield |goto Dun Morogh 76.0,16.0 |noway |c
step
talk Commander Stonebreaker##41853
turnin Get to the Airfield##25998 |goto 78.3,20.5
accept Extinguish the Fires##26078 |goto 78.3,20.5
step
Use the Firefighting Gear on fires that are on the runway |use Firefighting Gear##56803
Extinguish 6 Fires |q 26078/1 |goto 78.3,24.6
step
talk Commander Stonebreaker##41853
turnin Extinguish the Fires##26078 |goto 78.3,20.5
accept Rallying the Defenders##26085 |goto 78.3,20.5
step
Use the Ironforge Banner while standing next to Loose Snow |use Ironforge Banner##56809
|tip They look like piles of white snow on the ground around this area.
Plant 8 Ironforge Banners |q 26085/1 |goto 77.7,30.1
step
talk Commander Stonebreaker##41853
turnin Rallying the Defenders##26085 |goto 78.3,20.5
accept Striking Back##26094 |goto 78.3,20.5
step
clicknpc Repaired Bomber##42092
Use Iron Hammer Bomb on the Dark Iron forces below |use Iron Hammer Bomb##56814
Kill 30 Dark Iron Attackers |q 26094/1 |goto 77.1,18.5
step
talk Commander Stonebreaker##41853
turnin Striking Back##26094 |goto 78.3,20.5
accept Grimaxe's Demise##26102 |goto 78.3,20.5
step
kill Dark Iron Golem##42008 |n
kill General Grimaxe##42010 |q 26102/1 |goto 78.5,34.4
|tip You will need to kill the Dark Iron Golem first.
step
talk Commander Stonebreaker##41853
turnin Grimaxe's Demise##26102 |goto 78.3,20.5
accept Demanding Answers##26112 |goto 78.3,20.5
step
clicknpc Rixa's Flying Machine##42175 |goto Dun Morogh 76.0,16.8
You will fly back to the Gol'Bolar Quarry |goto Dun Morogh 75.7,53.5 |noway |c
step
talk Gremlock Pilsnor##1699
|tip He's in the back room of the Thunderbrew Distillery.
accept Honor Students##6387 |goto 54.7,50.8
only Dwarf
step
talk Gremlock Pilsnor##1699
|tip He's in the back room of the Thunderbrew Distillery.
accept Honor Students##6387 |goto 54.7,50.8
only Gnome
step
talk Brolan Galebeard##43701
turnin Honor Students##6387 |goto 53.8,52.8
accept Ride to Ironforge##6391 |goto 53.8,52.8
only Dwarf
step
talk Brolan Galebeard##43701
turnin Honor Students##6387 |goto 53.8,52.8
accept Ride to Ironforge##6391 |goto 53.8,52.8
only Gnome
step
talk Golnir Bouldertoe##4256
turnin Ride to Ironforge##6391 |goto Ironforge/0 51.6,26.4
accept Gryth Thurden##6388 |goto Ironforge/0 51.6,26.4
only Dwarf
step
talk Golnir Bouldertoe##4256
turnin Ride to Ironforge##6391 |goto Ironforge/0 51.6,26.4
accept Gryth Thurden##6388 |goto Ironforge/0 51.6,26.4
only Gnome
step
talk Mountaineer Barleybrew##1959
accept Reinforcements for Loch Modan##26131 |goto Ironforge,41.4,52.3
step
talk Moira Thaurissan##42129
turnin Demanding Answers##26112 |goto 39.9,57.2
accept Seize the Ambassador##26118 |goto 39.9,57.2
step
Use the Sturdy Manacles on Ambassador Slaghammer |goto Ironforge/0 36.6,43.2 |use Sturdy Manacles##56837
|tip He is upstairs.
Take Ambassador Slaghammer to [Ironforge,43.6,50.6]
Arrest Ambassador Slaghammer and bring him to the High Seat |q 26118/1
modelnpc Ambassador Slaghammer##42146
step
talk Moira Thaurissan##42129
turnin Seize the Ambassador##26118 |goto 39.9,57.2
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.5,47.7
accept Return to Gremlock##6392 |goto 55.5,47.7
only Dwarf
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.5,47.7
accept Return to Gremlock##6392 |goto 55.5,47.7
only Gnome
step
talk Gremlock Pilsnor##1699
turnin Return to Gremlock##6392 |goto Dun Morogh/0 54.8,50.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)",
startlevel=10.75,
dynamic=true,
endlevel=12
},[[
step
talk Pilot Hammerfoot##1960
turnin Reinforcements for Loch Modan##26131 |goto Loch Modan,14.0,56.5
|tip You will only be able to turn in this quest if you completed the Dun Morogh Guide.
accept The Lost Pilot##26854 |goto Loch Modan,14.0,56.5
step
Enter the tunnel |goto 12.7,58.5 < 5 |only if walking
click A Dwarven Corpse##211
turnin The Lost Pilot##26854 |goto Dun Morogh,87.6,50.1
accept A Pilot's Revenge##26855 |goto Dun Morogh,87.6,50.1
step
kill Mangeclaw##1961
|tip He will walk down the mountain
collect Mangy Claw |q 26855/1 |goto 87.5,50.2
step
Enter the tunnel |goto 89.6,51.8 < 5 |only if walking
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##26855 |goto Loch Modan,14.0,56.5
accept South Gate Status Report##13635 |goto Loch Modan,14.0,56.5
step
Enter the tunnel |goto 16.4,58.5 < 5 |only if walking
talk Captain Rugelfuss##1092
turnin South Gate Status Report##13635 |goto 23.4,75.0
accept In Defense of the King's Lands##26146 |goto 23.4,75.0
step
talk Mountaineer Cobbleflint##1089
accept The Trogg Threat##26145 |goto 23.3,74.9
step
Follow the path here |goto 22.8,77.8 < 10 |only if walking
kill 12 Stonesplinter Trogg##1161+ |q 26146/1
collect 8 Trogg Stone Tooth##2536 |q 26145/1 |goto 31.5,74.6
modelnpc Stonesplinter Scout##1162
You can find more mobs in the cave at [Loch Modan,32.9,69.5]
step
Go back to the road |goto 30.9,78.5 |only if walking
talk Captain Rugelfuss##1092
turnin In Defense of the King's Lands##26146 |goto 23.4,75.0
accept A Decisive Strike##26148 |goto 23.4,75.0
step
talk Mountaineer Cobbleflint##1089
turnin The Trogg Threat##26145 |goto 23.3,74.9
step
talk Mountaineer Wallbang##1090
accept Bigger and Uglier##26147 |goto 23.3,75.1
stickystart "Troggs"
step
Follow the path southeast |goto 29.3,66.7 < 15 |only if walking
Enter the cave here |goto Loch Modan 32.9,70.1 |walk
Follow the path in the cave down, around, and then up again |goto Loch Modan 34.3,61.0 |subzone Grizzlepaw Ridge
kill Grawmug##42230 |q 26148/1
step "Troggs"
kill 8 Stonesplinter Bonesnapper##1164 |q 26147/2 |goto 35.5,64.9 |subzone Grizzlepaw Ridge
kill 8 Stonesplinter Shaman##1197 |q 26147/1 |goto 35.5,64.9
step
Go back to the road |goto 30.5,69.7 < 5 |only if walking
talk Captain Rugelfuss##1092
turnin A Decisive Strike##26148 |goto 23.4,75.0
accept Onward to Thelsamar##26176 |goto 23.4,75.0
step
talk Mountaineer Wallbang##1090
turnin Bigger and Uglier##26147 |goto 23.3,75.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_2",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)",
startlevel=12.55,
dynamic=true,
endlevel=13
},[[
step
talk Mountaineer Kadrell##1340
turnin Onward to Thelsamar##26176 |goto Loch Modan 35.1,46.6
|tip You will only be able to turn in this quest if you completed the Loch Modan 10-12 section.
accept Out of Gnoll-Where##26842 |goto Loch Modan 35.1,46.6
accept Stormpike's Order##13636 |goto Loch Modan 35.1,46.6
step
talk Innkeeper Hearthstove##6734
home Stoutlager Inn |goto 35.5,48.4 |future |q 13636
step
talk Vidra Hearthstove##1963
accept Thelsamar Blood Sausages##26860 |goto 34.8,49.3
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto Loch Modan 33.9,50.9
step
talk Dakk Blunderblast##1777
|tip He walks around, and may be outside
accept Looking for Lurkers##25118 |goto 35.4,42.8
step
click Wanted! Poster##17
accept Wanted: The Dark Iron Spy##13648 |goto 37.3,46.5
step
Follow the path up |goto 40.7,58.4 < 5 |only if walking
kill Gorick Guzzledraught##33456 |q 13648/1 |goto 36.8,61.1
click Stolen Explorers' League Document##8032
accept Explorers' League Document (1 of 6)##13656 |goto 36.8,61.1
step
kill Mosshide Scout##44161+, Mosshide Basher##44162+
collect 12 Mosshide Ear |q 26842/1 |goto 26.9,56.3
You can find more around [Loch Modan,27.3,43.8]
stickystart "Blackbear"
stickystart "Forestlurker"
step "Blackbear"
kill Black Bear##1186+
collect 8 Bear Rumps |q 26860/1 |goto 34.6,29.6
You can find more:
Around [Loch Modan,29.8,17.3]
Around [Loch Modan,39.8,52.3]
step "Forestlurker"
kill 8 Forest Lurker##1195+ |q 25118/1
step
click Stolen Explorers' League Document##3365
accept Explorers' League Document (2 of 6)##13655 |goto 41.35,39.04
step
talk Magistrate Bluntnose##1139
turnin Wanted: The Dark Iron Spy##13648 |goto 34.6,43.1
step
talk Dakk Blunderblast##1777
turnin Looking for Lurkers##25118 |goto 35.4,42.8
step
talk Mountaineer Kadrell##1340
turnin Out of Gnoll-Where##26842 |goto 35.1,46.6
step
talk Vidra Hearthstove##1963
turnin Thelsamar Blood Sausages##26860 |goto 34.8,49.3
step
talk Torren Squarejaw##1153
turnin Explorers' League Document (2 of 6)##13655 |goto 37.2,47.8
step
talk Torren Squarejaw##1153
turnin Explorers' League Document (1 of 6)##13656 |goto 37.2,47.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_3",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)",
startlevel=13.94,
dynamic=true,
endlevel=16
},[[
step
talk Mountaineer Stormpike##1343
turnin Stormpike's Order##13636 |goto Loch Modan,25.4,18.0
|tip You will only be able to turn in this quest if you completed the Loch Modan 12-13 section.
accept A Tiny, Clever Commander##26843
step
kill "Commander" Nazrim##44197 |q 26843/1 |goto 26.2,31.8
step
talk Mountaineer Stormpike##1343
turnin A Tiny, Clever Commander##26843 |goto 25.4,18.0
accept Kobold and Kobolder##26844
step
kill 5 Tunnel Rat Forager##1176 |q 26844/2 |goto 35.5,12.5
kill 5 Tunnel Rat Surveyor##1177 |q 26844/1
There are more deeper in, around [Loch Modan 35.3,16.1]
step
talk Mountaineer Stormpike##1343
turnin Kobold and Kobolder##26844 |goto 25.4,18.0
accept Who's In Charge Here?##26845
accept Filthy Paws##26863
step
talk Scout Dorli##44200
accept A Nasty Exploit##26846 |goto 25.4,17.8
step
Click Miner's League Crates and get Miners' Gear |model Miners' League Crate##36
kill Foreman Sharpsneer##44198
collect Foreman Sharpsneer's Head |q 26845/1 |goto 34.7,27.2 |indoors Silver Stream Mine
stickystart "Tunnelrat"
stickystart "Minersgear"
step "Tunnelrat"
kill 5 Tunnel Rat Geomancer##1174+ |q 26846/1 |goto 35.5,27.8
step "Minersgear"
Click Miner's League Crates and get Miners' Gear |model Miners' League Crate##36
collect 6 Miners' Gear |q 26863/1 |goto 35.5,27.8 |indoors Silver Stream Mine
step
talk Mountaineer Stormpike##1343
turnin Who's In Charge Here?##26845 |goto 25.4,18.0
accept The Bearer of Gnoll-edge##26864
turnin Filthy Paws##26863
step
talk Scout Dorli##44200
turnin A Nasty Exploit##26846 |goto 25.4,17.8
step
talk Mountaineer Kadrell##1340
turnin The Bearer of Gnoll-edge##26864 |goto 35.1,46.6
accept Suddenly, Murlocs!##26927
step
talk Cannary Caskshot##44345
turnin Suddenly, Murlocs!##26927 |goto 34.8,49.1
accept Smells Like A Plan##26928
accept A Load of Croc##26929
step
talk Mountaineer Kadrell##1340
accept Buzz Off##26932 |goto 35.1,46.6
step
click Stolen Explorers' League Document##8032
|tip It is laying on the ground under the small bridge
accept Explorers' League Document (2 of 6)##13655 |goto 41.4,39.0
step
kill Bluegill Wanderer##44176+, Bluegill Mudskipper##44292+
collect 7 Murloc Scent Gland |q 26928/1 |goto 42.5,39.5
You can find more Bluegill murlocs at [Loch Modan,45.9,50.1]
And also at [Loch Modan,49.0,56.1]
stickystart "Lochcrocolisk"
stickystart "Lochbuzzard"
step "Lochcrocolisk"
kill Loch Crocolisk##1693+
collect 6 Intact Crocolisk Jaw |q 26929/1 |goto 50.8,62.8
step "Lochbuzzard"
kill 8 Loch Buzzard##44184 |q 26932/1
More of these can be found at [Loch Modan,57.2,52.8]
step
talk Cannary Caskshot##44345
turnin Smells Like A Plan##26928 |goto 34.8,49.1
accept Axis of Awful##26868
turnin A Load of Croc##26929
step
Use Cannary's Cache |use Cannary's Cache##60681
collect Clever Plant Disguise Kit##60502 |q 26868
collect Potent Murloc Pheromones##60503 |q 26868
step
talk Mountaineer Kadrell##1340
turnin Buzz Off##26932 |goto 35.1,46.6
step
Use your Clever Plant Disguise Kit |use Clever Plant Disguise Kit##60502
Wear your Clever Plant Disguise |havebuff Interface\Icons\Ability_Stealth |c |q 26868 |goto 49.9,57.7
step
While disgued as the plant:
Use your Potent Murloc Pheromones on the Mosshide Representative |use Potent Murloc Pheromones##60503
Tag the Mosshide |q 26868/1 |goto 50.5,55.9
modelnpc Mosshide Representative##44262
step
Follow the path up |goto 45.7,64.1 < 5 |only if walking
talk Cannary Caskshot##44345
turnin Axis of Awful##26868 |goto 34.8,49.1
step
talk Jern Hornhelm##1105
|tip He walks around a bit, you may have to look for him
accept Resupplying the Excavation##13639 |goto 37.2,47.4
step
Go to this spot
Find Huldar, Miran, and Saean |q 13639/1 |goto 56.4,66.0
modelnpc Huldar##2057
modelnpc Miran##1379
modelnpc Saean##1380
step
talk Huldar##2057
turnin Resupplying the Excavation##13639 |goto 56.4,66.0
accept Protecting the Shipment##309
Kill the Dark Iron dwarves that attack
kill Saean##1380
Protect the Ironband Caravan |q 309/1
step
Follow this path up to the cave |goto 58.1,68.8 |walk
click Stolen Explorers' League Document##8032
|tip Watch out for the rare spider inside the cave!
accept Explorers' League Document (3 of 6)##13657 |goto Loch Modan 61.7,73.1
step
talk Magmar Fellhew##1345
accept Gathering Idols##26961 |goto 64.9,66.7
step
talk Prospector Ironband##1344
turnin Protecting the Shipment##309 |goto 65.3,66.0
accept Keep Your Hands Off The Goods!##13650
step
Follow the path |goto 67.2,68.7 < 5 |only if walking
Follow the path up |goto 69.9,67.6 < 5 |only if walking
click Stolen Explorers' League Document##8032
accept Explorers' League Document (4 of 6)##13658 |goto 68.1,66.1
step
Inspect the Artifact of the Broken Tablet |q 13650/1 |goto 70.7,67.6
step
Inspect the Artifact of the Overdressed Woman |q 13650/3 |goto 72.7,65.5
step
Inspect the Artifact of the Upturned Giant |q 13650/2 |goto 70.1,60.0
step
kill Stonesplinter Digger##1167+, Stonesplinter Geomancer##1165+
collect 8 Carved Stone Idol |q 26961/1 |goto 70.3,61.9
step
talk Prospector Ironband##1344
turnin Keep Your Hands Off The Goods!##13650 |goto 65.3,66.0
step
talk Magmar Fellhew##1345
turnin Gathering Idols##26961 |goto 64.9,66.7
accept Joining the Hunt##13647
step
Follow this road east |goto 66.4,51.9 < 5
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_4",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)",
startlevel=16.66,
dynamic=true,
endlevel=19
},[[
step
talk Safety Warden Pipsy##44859
accept Thistle While You Work##27025 |goto Loch Modan,82.8,63.5
step
talk Marek Ironheart##1154
turnin Joining the Hunt##13647 |goto 81.8,61.7
|tip You will only be able to turn in this quest if you completed the Loch Modan 13-16 section.
accept Hornet Hunting##27028
accept Foxtails By The Handful##27030
step
talk Bingles Blastenheimer##6577
accept Wing Nut##27031 |goto 81.6,64.8
step
talk Vyrin Swiftwind##1156
home Farstrider Lodge |goto 81.9,64.6 |future |q 27016
step
talk Eeryven Grayer##41332
fpath Farstrider Lodge |goto Loch Modan 81.9,64.1
step
talk Daryl the Youngling##1187
accept The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
kill Golden Eagle##44628+ |goto 78.3,65.5
collect 3 Pristine Flight Feather |q 27031/1
step
click Stolen Explorers' League Document##8032
accept Explorers' League Document (6 of 6)##13659 |goto 73.2,35.9
stickystart "Hillfox"
stickystart "Stabthistle"
step "Hillfox"
kill Hill Fox##44635+
collect 7 Fluffy Fox Tail |q 27030/1
step "Stabthistle"
Click Stabthistle Seed
|tip You can find a lot of these around the base of trees
collect 6 Stabthistle Seed |q 27025/1 |goto 74.9,44.6
model Stabthistle Seed##7918
step
click Stolen Explorers' League Document##8032
accept Explorers' League Document (5 of 6)##13660 |goto 53.7,38.1
stickystart "Marshhornet"
stickystart "Mudbellyboar"
step "Marshhornet"
kill Marsh Hornet##44620+
collect 6 Glassy Hornet Wing |q 27028/1 |goto 61.4,42.0
step "Mudbellyboar"
kill 10 Mudbelly Boar##44627+ |q 27016/1
You can find more at [Loch Modan,54.6,39.6]
step
talk Bingles Blastenheimer##6577
turnin Wing Nut##27031 |goto 81.6,64.8
accept Bird is the Word##27032 |goto 81.6,64.8
step
talk Safety Warden Pipsy##44859
turnin Thistle While You Work##27025 |goto 82.8,63.5
accept Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Marek Ironheart##1154
turnin Hornet Hunting##27028 |goto 81.8,61.7
turnin Foxtails By The Handful##27030 |goto 81.8,61.7
step
talk Daryl the Youngling##1187
turnin The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
talk Vyrin Swiftwind##1156
accept Vyrin's Revenge##27036 |goto 81.9,64.6
step
kill 8 Bobcat##44188+ |q 27026/1 |goto 79.2,67.2
You can find more Bobcats around [Loch Modan,72.0,72.0]
step
Follow the path inside the cave to the very end
talk Rusted Skystrider##44618
turnin Bird is the Word##27032 |goto 78.6,76.2 |indoors Ironwing Cavern
accept Skystrider's Heart##27033 |goto 78.6,76.2 |indoors Ironwing Cavern
step
Follow the path up |goto 77.0,51.6 < 5 |only if walking
kill Ol' Sooty##1225
collect Ol' Sooty's Head |q 27036/1 |goto 80.3,52.1
step
talk Safety Warden Pipsy##44859
turnin Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Bingles Blastenheimer##6577
turnin Skystrider's Heart##27033 |goto 81.7,64.7
accept He's That Age##27034 |goto 81.7,64.7
step
talk Daryl the Youngling##1187
turnin Vyrin's Revenge##27036 |goto 83.5,65.5
accept Vyrin's Revenge##27037 |goto 83.5,65.5
step
talk Vyrin Swiftwind##1156
turnin Vyrin's Revenge##27037 |goto 81.9,64.6
step
talk Ando Blastenheimer##44870
turnin He's That Age##27034 |goto 58.5,29.1
accept Standing Up##27035 |goto 58.5,29.1
step
kill Twilight Landshaper##44724
Destroy the Twilight Landshaper |q 27035/1 |goto 50.6,23.8
step
talk Ando Blastenheimer##44870
turnin Standing Up##27035 |goto 58.5,29.1
accept Fight the Hammer##27074 |goto 58.5,29.1
step
talk Ashlan Stonesmirk##1073
turnin Fight the Hammer##27074 |goto 64.3,26.6
accept Servants of Cho'gall##27075 |goto 64.3,26.6
accept Clutching at Chaos##27077 |goto 64.3,26.6
stickystart "Mogrosh"
stickystart "Nascentelementium"
step "Mogrosh"
kill 7 Mo'grosh Darkmauler##44758+, Mo'grosh Earthbender##44760+ |q 27075/1
step "Nascentelementium"
click Nascent Elementium##9836+
collect 10 Nascent Elementium Spike |q 27077/1 |goto 68.5,22.2
step
talk Ashlan Stonesmirk##1073
turnin Servants of Cho'gall##27075 |goto 64.1,26.6
turnin Clutching at Chaos##27077 |goto 64.1,26.6
accept Gor'kresh##27078 |goto 64.1,26.6
step
Enter the cave |goto 74.8,19.8 < 5 |walk
kill Gor'kresh##44771a |q 27078/1 |goto 79.7,14.8 |indoors Mo'grosh Stronghold
step
Leave the cave |goto 74.8,19.8 < 5 |walk
talk Ashlan Stonesmirk##1073
turnin Gor'kresh##27078 |goto 64.3,26.6
accept Ando's Call##27115 |goto 64.3,26.6
step
talk Ando Blastenheimer##44870
turnin Ando's Call##27115 |goto 58.5,29.1
accept The Winds of Loch Modan##27116 |goto 58.5,29.1
You will fly to Algaz Station |goto 25.6,17.5 < 5 |noway |c |q 27116
step
talk Mountaineer Stormpike##1343 |goto 25.4,18.0
turnin The Winds of Loch Modan##27116
step
talk Torren Squarejaw##1153
turnin Explorers' League Document (2 of 6)##13655
turnin Explorers' League Document (3 of 6)##13657
turnin Explorers' League Document (4 of 6)##13658
turnin Explorers' League Document (6 of 6)##13659
turnin Explorers' League Document (5 of 6)##13660
accept Heartfelt Appreciation##13661 |goto 37.3,47.8
step
talk Torren Squarejaw##1153
turnin Heartfelt Appreciation##13661 |goto 37.3,47.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Wetlands",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (21-23)",
startlevel=19.65,
dynamic=true,
endlevel=21
},[[
step
talk Mountaineer Rharen##41075
accept The Stolen Keg##25395 |goto Wetlands,50.0,79.2
step
talk Mountaineer Grugelm##41074
accept Cleaning Hovel##25211 |goto 49.9,79.2
step
click Mountaineer's Ale##7490
collect Mountaineer's Ale |q 25395/1 |goto 47.8,74.3
step
kill Dragonmaw Grunt##41072+, Dragonmaw Scout##41080+
kill 5 Dragonmaw Orc |q 25211/1 |goto 47.7,76.3
step
talk Mountaineer Grugelm##41074
turnin Cleaning Hovel##25211 |goto 49.9,79.2
step
talk Mountaineer Rharen##41075
turnin The Stolen Keg##25395 |goto 50.0,79.2
accept Keg Run##25770 |goto 50.0,79.2
step
Follow this tunnel to the other side |goto 50.2,78.3 < 5 |walk
Follow this tunnel to the other side |goto 49.3,70.6 < 5 |walk
talk Forba Slabchisel##41086
turnin Keg Run##25770 |goto 57.5,71.8
accept Fight the Flood##25721 |goto 57.5,71.8
step
talk Surveyor Thurdan##41129
accept Sedimentary, My Dear##25722 |goto 57.5,71.4
step
talk Dunlor Marblebeard##41128
accept Thresh Out of Luck##25723 |goto 57.8,71.5
stickystart "Flood"
stickystart "Threshadon"
stickystart "Deposit"
step "Flood"
kill 10 Flood Elemental##41132 |q 25721/1
step "Threshadon"
kill Displaced Threshadon##41137+
collect 8 Threshadon Chunk |q 25723/1 |goto 61.7,70.4
step "Deposit"
click Sediment Deposit##49
collect 8 Flood Sediment Sample |q 25722/1
step
talk Dunlor Marblebeard##41128
turnin Thresh Out of Luck##25723 |goto 57.8,71.5
accept Fenbush Berries##25725 |goto 57.8,71.5
step
talk Surveyor Thurdan##41129
turnin Sedimentary, My Dear##25722 |goto 57.5,71.4
accept A Dumpy Job##25726 |goto 57.5,71.4
step
talk Forba Slabchisel##41086
turnin Fight the Flood##25721 |goto 57.5,71.8
accept Drungeld Glowerglare##25727 |goto 57.5,71.8
step
kill Silty Oozeling##41145+
collect Dumpy Level |q 25726/1 |goto 56.0,73.7
step
talk Surveyor Thurdan##41129
turnin A Dumpy Job##25726 |goto 57.5,71.4
accept Down In Thelgen Rock##25734 |goto 57.5,71.4
step
kill Drungeld Glowerglare##41151
|tip He's in a small cave.
collect Glowerglare's Beard |q 25727/1 |goto 63.8,78.2
step
click Fenberries##28
collect 15 Handful of Fenberries |q 25725/1 |goto 61.5,76.1
More can be found at [Wetlands,56.8,74.9]
step
talk Dunlor Marblebeard##41128
turnin Fenbush Berries##25725 |goto 57.8,71.5
accept Incendicite Ore##25735 |goto 57.8,71.5
step
talk Forba Slabchisel##41086
turnin Drungeld Glowerglare##25727 |goto 57.5,71.8
accept Get Out Of Here, Stalkers##25733 |goto 57.5,71.8
step
Enter the cave |goto Wetlands/0 52.5,63.5 < 20 |walk
Follow the path down |goto Wetlands/0 46.1,60.9 |walk |indoors Thelgen Rock
click Thelgen Seismograph##2091 |indoors Thelgen Rock
collect Thelgen Seismic Record |q 25734/1 |goto Wetlands/0 47.9,66.0 |indoors Thelgen Rock
step
kill Torrention##41167 |indoors Thelgen Rock
collect 1 Floodsurge Core##55243 |n |indoors Thelgen Rock
Click the Floodsurge Core |use Floodsurge Core##55243 |indoors Thelgen Rock
accept The Floodsurge Core##25736 |goto 47.6,65.5 |indoors Thelgen Rock
stickystart "Cavestalker"
stickystart "Pinkore"
step "Cavestalker"
kill 7 Cave Stalker##4040+ |q 25733/2 |indoors Thelgen Rock
step "Pinkore"
click Incendicite Mineral Vein##384 |indoors Thelgen Rock
|tip They look like pink ore deposits with pink smoke coming off of them on the ground inside this cave.
collect 8 Incendicite Ore |q 25735/1 |goto 46.0,60.3 |indoors Thelgen Rock
step
Leave the cave |goto 52.5,63.5 < 5 |walk
kill 7 Leech Stalker##1111+ |q 25733/1 |goto 54.0,64.1
step
talk Forba Slabchisel##41086
turnin Get Out Of Here, Stalkers##25733 |goto 57.5,71.8
turnin The Floodsurge Core##25736 |goto 57.5,71.8
step
talk Surveyor Thurdan##41129
turnin Down In Thelgen Rock##25734 |goto 57.5,71.4
step
talk Dunlor Marblebeard##41128
turnin Incendicite Ore##25735 |goto 57.8,71.5
step
talk Forba Slabchisel##41086
accept Onwards to Menethil##25777 |goto 57.5,71.8
step
clicknpc Brisket##41260 |goto 57.1,71.7
You will ride to Menethil Harbor |goto 12.4,50.4 < 5 |noway |c |q 25777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Redridge_Mountains_2",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)",
startlevel=15.6,
dynamic=true,
endlevel=21
},[[
step
click Wanted Poster##156
accept Wanted: Redridge Gnolls##26504 |goto Redridge Mountains,16.1,64.6
step
talk Darcy Parker##379 |goto 15.6,65.3
accept Franks and Beans##26506
step
talk Watch Captain Parker##464
turnin Hero's Call: Redridge Mountains##26365 |goto 15.3,64.6
|tip You may not have this breadcrumb quest to turn in.
|tip He is at the very top of the tower
accept Still Assessing the Threat##26503 |goto 15.3,64.6
stickystart "Tarantila"
stickystart "Direcondor"
step "Tarantila"
kill Tarantula##442+
collect 4 Tarantula Eye |q 26506/1 |goto 17.4,65.1
step "Direcondor"
kill Dire Condor##428+
|tip You can find them resting on rocks and flying around in the sky.
collect 4 Condor Giblet |q 26506/2
step
click Gnoll Battle Plan##222
collect Gnoll Battle Plans |q 26503/1 |goto 16.2,55.3
step
click Gnoll Strategy Guide##222
collect Gnoll Strategy Guide |q 26503/3 |goto 30.6,62.7
step
kill Great Goretusk##547
collect 4 Goretusk Kidney##58893 |q 26506/3 |goto 31.0,63.2
step
click Gnoll Orders##222+
collect Gnoll Orders |q 26503/2 |goto 28.0,74.9
step
kill Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
kill 15 Redridge Gnoll |q 26504/1 |goto 28.3,73.2
You can find more at [Redridge Mountains,30.5,62.0]
step
talk Darcy Parker##379
turnin Franks and Beans##26506 |goto 15.6,65.3
step
talk Watch Captain Parker##464
turnin Wanted: Redridge Gnolls##26504 |goto 15.3,64.6
turnin Still Assessing the Threat##26503 |goto 15.3,64.6
accept Parker's Report##26505 |goto 15.3,64.6
step
talk Ariena Stormfeather##931 |goto Redridge Mountains,29.4,53.8
fpath Lakeshire
step
talk Bailiff Conacher##900
accept Lake Everstill Clean Up##26511 |goto Redridge Mountains 28.7,41.0
step
talk Magistrate Solomon##344
turnin Parker's Report##26505 |goto 28.9,41.1
accept We Must Prepare##26510 |goto 28.9,41.1
turnin Threat to the Kingdom##26761 |goto 28.9,41.1
step
talk Innkeeper Brianna##6727 |goto 26.4,41.4
home Lakeshire |q 26509 |future |goto 26.4,41.4
step
talk Martie Jainrose##342
accept An Unwelcome Guest##26509 |goto 22.1,42.7
step
kill Bellygrub##345
collect Bellygrub's Tusk |q 26509/1 |goto 17.2,45.0
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##26509 |goto 22.1,42.7
step
talk Shawn##8965
accept Nida's Necklace##26508 |goto 28.4,48.9
step
click Glinting Mud##49
|tip It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
collect Nida's Necklace |q 26508/1 |goto 32.1,50.3
step
click Gnomecorder##7764
collect Gnomecorder |q 26510/1 |goto 37.8,42.1
kill Murloc Minor Tidecaller##548, Murloc Scout##578, Murloc Tidecaller##545, Murloc Nightcrawler##544, Murloc Shorestriker##1083 |q 26511/1
|tip You can find more out in the deeper water
step
talk Nida##8962
turnin Nida's Necklace##26508 |goto 28.3,48.9
step
talk Bailiff Conacher##900
turnin Lake Everstill Clean Up##26511 |goto Redridge Mountains/0 28.7,40.9
step
talk Magistrate Solomon##344
turnin We Must Prepare##26510 |goto 28.9,41.1
accept Tuning the Gnomecorder##26512 |goto 28.9,41.1
step
talk Marshal Marris##382
accept Like a Fart in the Wind##26513 |goto 31.9,44.9
step
Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1 |goto 32.3,39.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tuning the Gnomecorder##26512
accept Canyon Romp##26514
step
kill Redridge Basher##446+, Redridge Alpha##445+, Redridge Mystic##430+
collect 10 Redridge Gnoll Collar |q 26514/1 |goto 30.8,38.4
More Redridge Gnolls can be found around [22.7,33.9]
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Canyon Romp##26514
accept They've Wised Up...##26544
collect Dirt-Stained Scroll##58898 |n
Click the Dirt-Stained Scroll in your bags |use Dirt-Stained Scroll##58898
accept He Who Controls the Ettins##26519
click Redridge Supply Crate##9723+
collect 8 Redridge Supply Crate |q 26513/1
You can find more crates around [Redridge Mountains,36.5,27.7]
step
Enter the cave |goto 21.0,27.3 |walk
kill Blackrock Overseer##43185
collect Blackrock Orc Missive |q 26544/1 |goto 19.4,23.0 |indoors Rethban Caverns
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin They've Wised Up...##26544
accept Yowler Must Die!##26545
step
kill Ardo Dirtpaw##711 |q 26519/1 |goto 18.0,18.6 |indoors Rethban Caverns
|tip Follow the path in the cave to the left. He's at the very back of the cave on top of a rock platform.
step
click Ettin Control Orb##4891 |indoors Rethban Caverns
turnin He Who Controls the Ettins##26519 |indoors Rethban Caverns |goto 17.9,18.6
accept Saving Foreman Oslow##26520 |indoors Rethban Caverns |goto 17.9,18.6
step
Leave the cave |goto 21.0,27.3 |walk
Use your Ettin Control Orb on a Canyon Ettin |goto 24.1,32.2 |use Ettin Control Orb##58895
|tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
While controlling the Subdued Canyon Ettin, |goto 31.5,44.3
Use your Ettin Control Orb to make the Ettin pick up the Huge Boulder |use Ettin Control Orb##58895
Save Foreman Oslow |q 26520/1
modelnpc Canyon Ettin##43094
modelnpc Huge Boulder##43196
step
talk Marshal Marris##382
turnin Like a Fart in the Wind##26513 |goto 31.9,44.9
step
The path to Yowler starts here |goto 39.5,34.3 |only if walking
Follow the dirt path all the way north west |only if walking
kill Yowler##518 |q 26545/1 |goto 26.9,21.9
collect Blackrock Invasion Plans |q 26545/2 |goto 26.9,21.9
step
talk Magistrate Solomon##344
turnin Saving Foreman Oslow##26520 |goto 28.9,41.1
turnin Yowler Must Die!##26545 |goto 28.9,41.1
step
talk Colonel Troteman##43221
accept John J. Keeshan##26567 |goto 28.9,40.9
step
talk John J. Keeshan##43184
|tip He is in the basement of the inn
turnin John J. Keeshan##26567 |goto 26.3,40.1
accept This Ain't My War##26568 |goto 26.3,40.1
step
talk Colonel Troteman##43221
turnin This Ain't My War##26568 |goto 28.6,40.7
accept Weapons of War##26571 |goto 28.6,40.7
accept In Search of Bravo Company##26586 |goto 28.6,40.7
step
talk Foreman Oslow##43194
accept Surveying Equipment##26569 |goto 29.7,44.5
step
talk Marshal Marris##382
accept Render's Army##26570 |goto 29.7,44.5
step
talk Messner##43270
turnin In Search of Bravo Company##26586 |goto 47.5,41.9
accept Breaking Out is Hard to Do##26587 |goto 47.5,41.9
step
The path to the Blackrock Key Pouch starts here |goto 50.4,39.9
Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs
|tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
click Blackrock Key Pouch##7144
collect Messner's Cage Key |q 26587/1 |goto 49.2,38.0
step
talk Messner##43270
turnin Breaking Out is Hard to Do##26587 |goto 47.5,41.9
step
Next to you:
talk Messner##43300
accept Jorgensen##26560
step
kill Murduck##43327
collect Keeshan's Bow |q 26571/1 |goto 51.5,41.3
kill Homurk##43329
collect Keeshan's Survial Knife |q 26571/2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Weapons of War##26571
accept His Heart Must Be In It##26573
step
kill Utroka the Keymistress##43350
collect Jorgensen's Cage Key |q 26560/1 |goto 43.5,10.9
step
The path to Jorgensen starts here |goto 38.0,16.2 |only if walking
talk Jorgensen##43272
turnin Jorgensen##26560 |goto 33.6,11.8
step
Next to you:
talk Jorgensen##43305
accept Krakauer##26561
step
Enter the cave |goto 31.7,9.4 |walk
kill Ritualist Tarak##43363 |q 26561/1 |goto 26.0,10.5 |indoors Render's Rock
step
click Blackrock Coffer##10 |goto 26.6,10.5 |indoors Render's Rock
collect Keeshan's Red Headband |q 26573/1 |indoors Render's Rock
collect Keeshan's Jade Amulet |q 26573/2 |indoors Render's Rock
step
talk Krakauer##43274 |goto 25.9,10.5 |indoors Render's Rock
turnin Krakauer##26561 |goto 25.9,10.5 |indoors Render's Rock
step
Next to you:
talk Krakauer##43303
accept And Last But Not Least...Danforth##26562
step
Follow the path back and around inside the cave. |indoors Render's Rock |walk
kill Overlord Barbarius##43369 |q 26562/1 |goto Redridge Mountains 28.0,18.1 |indoors Render's Rock
collect Blackrock Lever Key |q 26562/2 |indoors Render's Rock
step
click Chain Level##9237 |goto 27.8,17.9 |indoors Render's Rock
Swim out to Danforth in middle of the pool of water. |indoors Render's Rock
talk Danforth##43275 |indoors Render's Rock
turnin And Last But Not Least...Danforth##26562 |indoors Render's Rock
step
Next to you:
talk Danforth##43302
accept Return of the Bravo Company##26563
step
Leave the cave |goto 31.7,9.4 |walk
kill Blackrock Renegade##437, Blackrock Summoner##4463, Murdunk##43327, Blackrock Scout##4064, Homurk##43329, Utroka the Keymistress##43350 |q 26570/1
collect 5 Blackrock Spyglass |q 26569/1 |goto 32.8,9.9
|tip If you end up needing more kills go back into the cave
step
talk Colonel Troteman##43221
turnin His Heart Must Be In It##26573 |goto 28.7,40.7
turnin Return of the Bravo Company##26563 |goto 28.7,40.7
accept They Drew First Blood##26607 |goto 28.7,40.7
step
talk John J. Keeshan##43184
|tip He is in the basement
turnin They Drew First Blood##26607 |goto 26.3,40.1
accept It's Never Over##26616 |goto 26.3,40.1
step
talk Foreman Oslow##43194
turnin Surveying Equipment##26569 |goto 29.6,44.5
step
talk Marshal Marris##382
turnin Render's Army##26570 |goto 29.7,44.5
step
clicknpc Keeshan's Riverboat##43443
Complete Keeshan's Riverboat Ride |q 26616/1 |goto 34.4,46.0
step
talk Arlen Marsters##43371 |goto 52.9,54.6
fpath Camp Everstill
step
talk John J. Keeshan##43458
turnin It's Never Over##26616 |goto 52.5,55.4
accept Point of Contact: Brubaker##26639 |goto 52.5,55.4
step
talk Danforth##43462
accept Hunting the Hunters##26638 |goto 52.5,55.6
step
talk Messner##43459
accept Bravo Company Field Kit: Chloroform##26637 |goto 52.4,55.5
step
talk Krakauer##43461
accept Bravo Company Field Kit: Camouflage##26636 |goto 52.4,55.4
step
kill Muckdweller##43532+
|tip They are underwater and found throughout the entire lake.
collect 8 Muckdweller Gland |q 26637/1 |goto 48.9,58.4
step
talk Messner##43459
turnin Bravo Company Field Kit: Chloroform##26637 |goto Redridge Mountains,52.4,55.5
step
talk Brubaker##43508
turnin Point of Contact: Brubaker##26639 |goto 53.1,67.8
accept Unspeakable Atrocities##26640 |goto 53.1,67.8
stickystart "Blackrockhunter"
stickystart "Pilesofleaves"
step "Blackrockhunter"
kill 8 Blackrock Hunter##4462+ |q 26638/1
step "Pilesofleaves"
click Piles of Leaves##6884+
collect 5 Pile of Leaves |q 26636/1 |goto 49.8,66.8
click Fox Poop##9572
collect 5 Fox Poop |q 26636/2
More of all of these can be found at [Redridge Mountains,41.8,68.5]
step
talk Danforth##43462
turnin Hunting the Hunters##26638 |goto 52.5,55.6
step
talk John J. Keeshan##43458
turnin Unspeakable Atrocities##26640 |goto 52.5,55.4
step
talk Krakauer##43461
turnin Bravo Company Field Kit: Camouflage##26636 |goto 52.4,55.4
step
talk John J. Keeshan##43458
accept Prisoners of War##26646 |goto 52.5,55.4
step
Use your Bravo Company Field Kit |use Bravo Company Field Kit##60384
Activate your Bravo Company Field Kit |havebuff Interface\Icons\INV_Misc_EngGizmos_20 |q 26646 |goto 53.9,57.7
step
Use the Camouflage ability on your hotbar
Hide your party from sight |havebuff Interface\Icons\Spell_Nature_ProtectionformNature |q 26646
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
click Blackrock Key Pouch##7144
collect Blackrock Holding Pen Key##59261 |q 26646 |goto 69.5,76.3
step
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
click Blackrock Holding Pen##9745
Free the Prisoners of War |q 26646/1 |goto 69.3,59.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Prisoners of War##26646
accept To Win a War, You Gotta Become War##26651
step
Activate you Bravo Company Field Kit again |havebuff Interface/Icons?Spell_Nature_ProtectionformNature |q 26651
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Use your Plant Seaforium ability in the small room at the top of the tower
Plant Seaforium at the Blackrock Tower |q 26651/2 |goto 66.4,71.4
step
Activate you Bravo Company Field Kit |havebuff Interface/Icons?Spell_Nature_ProtectionformNature |q 26651
Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them
|tip You must be behind the orc to use your Chloroform ability.
Use your Plant Seaforium ability inside this hut, next to all the Blackrock Explosive Devices
Plant Seaforium at the Munitions Hut |q 26651/1 |goto 63.8,70.4
step
The path up to John J. Keeshan starts here |goto 72.7,64.4 |only if walking
talk John J. Keeshan##43611
turnin To Win a War, You Gotta Become War##26651 |goto 77.7,65.5
accept Detonation##26668 |goto 77.7,65.5
step
Watch the cutscene
Blow up Render's Valley |q 26668/1
step
talk John J. Keeshan##43611
turnin Detonation##26668 |goto 77.7,65.5
accept The Dark Tower##26693 |goto 77.7,65.5
step
talk Danforth##43607
accept Shadowhide Extinction##26692 |goto 77.6,65.3
step
talk Nora Baldwin##43072 |goto 78.0,65.9
fpath Shalewind Canyon
step
kill General Fangore##703
collect Key of Ilgalar |q 26693/1 |goto 67.6,31.1
Click the Quest Completion box that pops up
turnin The Dark Tower##26693
accept The Grand Magus Doane##26694
step
click Ward of Ilgalar##8121
|tip It is a purple bubble blocking the doorway to this tower
Enter the tower and head to the top
kill Grand Magus Doane##397
Confront Grand Magus Doane |q 26694/1 |goto Redridge Mountains 72.1,44.9
step
kill 20 Shadowhide Gnoll##433+ |q 26692/1 |goto 68.3,34.6
You can find more Shadowhide Gnolls around [Redridge Mountains,75.4,51.5]
step
Follow the path up |goto 77.1,51.5 |only if walking
talk Danforth##43607
turnin Shadowhide Extinction##26692 |goto 77.6,65.3
step
talk John J. Keeshan##43611
turnin The Grand Magus Doane##26694 |goto 77.7,65.5
step
talk Colonel Troteman##43733
accept AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 77.2,65.9
step
clicknpc Bravo Company Siege Tank##43714 |invehicle |c |goto 76.9,66.0
step
Allow John J. Keeshan to kill Blackrock Invaders as you make your way to |goto Redridge Mountains,60.7,36.7
|tip He will do this automatically when you are in the area.
kill 200 Blackrock Invader##43775 |q 26708/1
Click the red arrow on your action bar to get off the siege tank |outvehicle |c |q 26708 |goto 75.1,51.7
step
talk Colonel Troteman##43733
turnin AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 60.7,36.7
accept Showdown at Stonewatch##26713 |goto 60.7,36.7
step
kill Tharil'zun##486 |q 26713/1 |goto 60.2,46.6
step
kill Gath'Ilzogg##334 |q 26713/2
|tip If you try and get close to knock him off, the quest will bug and he will reset-just kill him normally
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Showdown at Stonewatch##26713
accept Darkblaze, Brood of the Worldbreaker##26714
When Darkblaze attacks, fight him until he flies away
kill Darkblaze##43496
Defeated Darkblaze |q 26714/1 |goto 58.0,55.6
step
talk Colonel Troteman##43733
turnin Darkblaze, Brood of the Worldbreaker##26714 |goto 60.7,36.6
accept Triumphant Return##26726 |goto 60.7,36.6
step
talk Magistrate Solomon##344
turnin Triumphant Return##26726 |goto 28.9,41.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Blasted Lands",
next="Zygor's Alliance Leveling Guides\\The Burning Crusade (60-70)\\Hellfire Peninsula (60-62)",
startlevel=58.15,
dynamic=true,
endlevel=60
},[[
step
In order to complete the Blasted Lands questline for Loremaster of Eastern Kingdoms you will need to speak with Zidormi to change the zone back to normal
talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3
Tell her "Show me the Blasted Lands before the invasion."
confirm
only if havequest(34398) or completedq(34398)
step
talk Quartermaster Lungertz##5393
turnin Blasted Lands: The Other Side of the World##28857 |goto Blasted Lands,60.1,13.5 |only !DeathKnight
accept Minor Distractions##25710 |goto Blasted Lands,60.1,13.5
step
talk Mama Morton##44325
|tip She's on the ground floor.
home Nethergarde Keep |q 25715 |future |goto 60.7,14.0
step
talk Enohar Thunderbrew##9540
accept A Closer Look##25715 |goto 61.5,18.6
step
talk Alexandra Constantine##8609
fpath Nethergarde Keep |goto 61.3,21.6
step
kill Okril'lon Scout##42228 |q 25710/1 |goto 63.0,22.8
|tip They are stealthed around this area, so keep an eye out.
step
talk Quartermaster Lungertz##5393
turnin Minor Distractions##25710 |goto 60.1,13.5
accept Eliminate the Okril'lon##25711 |goto 60.1,13.5
step
talk Leyan Steelson##42262
accept Nethergarde Reigns##25712 |goto 60.2,13.4
step
talk Buttonwillow McKittrick##42264
accept Remove Their Arms##25713 |goto 60.5,13.8
step
kill Captain Metlek##42231 |q 25712/1 |goto 51.3,13.3
|tip He walks around on a wolf, so he may not be in this spot.
step
Use Buttonwillow's Hand Grenade on Okril'lon Weapons Crates |use Buttonwillow's Hand Grenade##57117
|tip They look like wooden crates with the Horde insignia on them.
Destroy 8 Okril'lon Weapons Crate |q 25713/1 |goto 52.8,15.9
kill 9 Okril'lon Infantry##42359+ |q 25711/1 |goto 52.8,15.9
step
talk Quartermaster Lungertz##5393
turnin Eliminate the Okril'lon##25711 |goto 60.1,13.5
step
talk Leyan Steelson##42262
turnin Nethergarde Reigns##25712 |goto 60.2,13.4
step
talk Buttonwillow McKittrick##42264
turnin Remove Their Arms##25713 |goto 60.5,13.8
step
Follow the path down |goto 63.9,23.8 |only if walking
Scout the ships on the Shattershore |q 25715/1 |goto 68.0,31.4
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Enohar Thunderbrew##9540 |goto Blasted Lands,61.5,18.6
turnin A Closer Look##25715
accept Our Fallen Friends##25708
accept Curtail the Darktail##25709
stickystart "Enohar"
stickystart "Drownedgilnean"
step "Enohar"
Follow the path down |goto 63.9,23.8 |only if walking
Use Enohar's Explosive Arrows on Darktail Bonepickers |use Enohar's Explosive Arrows##57119
|tip They are flying in the sky over the beach.
|tip If you shoot them once and they don't die, shoot them again before they get too close.
kill 20 Darktail Bonepicker##42235+ |q 25709/1 |goto 67.4,29.2
step "Drownedgilnean"
kill Drowned Gilnean Merchant##42244+, Drowned Gilnean Settler##42249+, Drowned Gilnean Sailor##42248+
Free 13 Drowned Gilnean Spirits |q 25708/1
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Enohar Thunderbrew##9540
turnin Our Fallen Friends##25708 |goto Blasted Lands,61.5,18.6
turnin Curtail the Darktail##25709 |goto Blasted Lands,61.5,18.6
accept Watcher Mahar Ba##25714 |goto Blasted Lands,61.5,18.6
step
talk Watcher Mahar Ba##5385
turnin Watcher Mahar Ba##25714 |goto 63.2,16.9
accept Cultists at our Doorstep##25716 |goto 63.2,16.9
step
Follow the path down |goto 63.9,23.8 |only if walking
kill Shadowsword Spellblade##42296+, Shadowsworn Occultist##42297+
collect 6 Intact Shadowsworn Spell Focus |q 25716/1 |goto 63.0,34.8
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Watcher Mahar Ba##5385
turnin Cultists at our Doorstep##25716 |goto 63.2,16.9
accept Kasim Sharim##26157 |goto 63.2,16.9
step
Follow the path down |goto 63.9,23.8 |only if walking
Enter the cave |goto 60.8,29.4 < 10 |walk
Continue through the cave |goto 63.0,28.3 < 10 |indoors Serpent's Coil
Follow the cave to the left |goto 63.6,26.9 < 10 |indoors Serpent's Coil
talk Kasim Sharim##42298 |indoors Serpent's Coil
turnin Kasim Sharim##26157 |goto 62.5,26.3 |indoors Serpent's Coil
accept Attune the Bloodstone##26158 |goto 62.5,26.3 |indoors Serpent's Coil
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9 |indoors Serpent's Coil
Use the Internal Bloodstone Teleporter |q 26158/1 |goto 61.4,29.9 < 5
confirm
step
click Bloodstone Teleporter##6837 |goto 63.2,25.9
Use the External Bloodstone Teleporter |q 26158/2 |goto 61.4,29.9 < 5
confirm
step
talk Kasim Sharim##42298 |indoors Serpent's Coil
turnin Attune the Bloodstone##26158 |goto 62.5,26.3 |indoors Serpent's Coil
accept The First Step##26159 |goto 62.5,26.3 |indoors Serpent's Coil
accept A Bloodmage's Gotta Eat Too##26172 |goto 62.5,26.3 |indoors Serpent's Coil
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9 |indoors Serpent's Coil
Teleport outside |goto 61.4,29.9 < 5
confirm
stickystart "Ashmaneboar"
stickystart "Redstonebasilisk"
step "Ashmaneboar"
kill Ashmane Boar##5992+
collect 5 Ashmane Steak |q 26172/1 |goto 53.3,31.2
step "Redstonebasilisk"
kill Redstone Basilisk##5990+
collect 9 Redstone Basilisk Blood |q 26159/2 |goto 53.3,31.2
kill Snickerfang Hyena##5985+
collect 9 Snickerfang Hyena Blood |q 26159/1 |goto 53.3,31.2
You can find more Ashmane Boars and Redstone Basilisk around |goto Blasted Lands,56.9,24.8
There are also some around [Blasted Lands,48.8,34.1]
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin The First Step##26159 |goto 62.5,26.3
accept Blood Ritual##26160 |goto 62.5,26.3
turnin A Bloodmage's Gotta Eat Too##26172 |goto 62.5,26.3
step
talk Kasim Sharim##42298 |goto 62.4,26.1
Tell him you would like to start the Blood Ritual
confirm
step
talk Kasim Sharim##42298
turnin Blood Ritual##26160 |goto 62.4,26.1
accept The Amulet of Allistarj##26167 |goto 62.4,26.1
accept The Amulet of Sevine##26168 |goto 62.4,26.1
accept The Amulet of Grol##26169 |goto 62.4,26.1
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Enter the cave |goto 60.8,29.4 |walk
click Allistarjian Vault##5743 |indoors Serpent's Coil
collect Amulet of Allistarj |q 26167/1 |goto 61.6,26.8 |indoors Serpent's Coil
step
Leave the cave |goto 60.8,29.4 |walk
click Head of Grol##4411
kill Spirit of Grol##41267
|tip It's underwater inside the top part of this sunken ship.
collect Amulet of Grol |q 26169/1 |goto 71.0,35.5
step
Follow the path up |goto 69.0,46.2 |only if walking
talk Salt-Flop##41265
accept Home...Gone...Naga...##25702 |goto 73.2,47.4
step
talk Salt-Flop##41265
Tell him you need the Amulet of Sevine.
collect Amulet of Sevine |q 26168/1 |goto 73.2,47.4
step
talk Neptool##41354
turnin Home... Gone... Naga...##25702 |goto 71.0,60.0
accept Atrocities##25703 |goto 71.0,60.0
step
kill 10 Bloodwash Barbarian##41386+ |q 25703/1 |goto 71.8,62.5
kill 10 Bloodwash Enchantress##41387+ |q 25703/2 |goto 71.8,62.5
step
talk Neptool##41354
turnin Atrocities##25703 |goto 71.0,60.0
accept False Idols##25705 |goto 71.0,60.0
accept Neptool's Revenge##25706 |goto 71.0,60.0
stickystart "Azhiridol"
stickystart "Bloodwashacolyte"
step "Azhiridol"
Enter the cave |goto 61.4,62.9 |walk
click Azh'ir Idol##4853+
Destroy 8 Azsh'ir Idols |q 25705/1 |goto 61.5,58.0
step "Bloodwashacolyte"
kill 8 Bloodwash Zealot##41422+ |q 25706/1
kill 8 Bloodwash Acolyte##41423+ |q 25706/2 |q 25706/2
step
Leave the cave |goto 61.4,62.9 |walk
clicknpc Abandoned Bloodwash Crate##41402
<Help the Rockpool tadpoles.>
accept The Future of the Rockpool##25707 |goto 62.9,64.2
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
kill 4 Bloodwash Idolater##41405+ |q 25706/4 |goto 60.2,71.0
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
kill 4 Bloodwash Gambler##41404+ |q 25706/3 |goto 65.9,74.5
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
Drag the Abandoned Bloodwash Crate to this spot
Return the Rockpool Tadpoles to the Forbidding Sea |q 25707/1 |goto 70.1,80.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Future of the Rockpool##25707
step
talk Neptool##41354
turnin False Idols##25705 |goto 71.0,60.0
turnin Neptool's Revenge##25706 |goto 71.0,60.0
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin The Amulet of Allistarj##26167 |goto 62.9,26.0
turnin The Amulet of Sevine##26168 |goto 62.9,26.0
turnin The Amulet of Grol##26169 |goto 62.9,26.0
accept Time is Short##26163 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
talk Watcher Grimeo##42299
turnin Time is Short##26163 |goto 55.1,49.6
accept The Charred Granite of the Dark Portal##26164 |goto 55.1,49.6
accept The Vile Blood of Demons##26165 |goto 55.1,49.6
step
talk Watch Commander Relthorn Netherwane##16841
accept Protecting Our Rear##26173 |goto 54.7,50.5
step
kill Shahandana##41165 |q 26173/2 |goto 59.9,43.1
step
kill Gomegaz##41166 |q 26173/3 |goto 52.3,41.9
step
kill Jarroc Torn-Wing##41164 |q 26173/1 |goto 43.9,47.7
stickystart "Felguardsentry"
stickystart "Granitechip"
step "Felguardsentry"
kill Felguard Sentry##6011+, Felhound##6010+, Oath-Chained Infernal##41253+
collect 7 Vile Demonic Blood |q 26165/1 |goto 48.9,46.0
step "Granitechip"
click Charred Granite Outcropping##9537+
collect 24 Charred Granite Chips |q 26164/1 |goto 48.9,46.0
step
talk Watcher Grimeo##42299
turnin The Charred Granite of the Dark Portal##26164 |goto 55.1,49.6
turnin The Vile Blood of Demons##26165 |goto 55.1,49.6
accept Enhancing the Stone##26166 |goto 55.1,49.6
step
talk Watch Commander Relthorn Netherwane##16841
turnin Protecting Our Rear##26173 |goto 54.7,50.5
accept Watching Our Back##26174 |goto 54.7,50.5
step
While the Horde Portal Sentry has his back turned to you, click the Horde Plans
|tip Click the plans as soon as the Horde Portal Sentry has his back turned to you while he's pacing, or else he will attack you when you try to get the plans. |model Horde Plans##222
Examine the Horde Plans |q 26174/1 |goto 53.9,50.0
modelnpc Horde Portal-Sentry##42301
step
talk Watch Commander Relthorn Netherwane##16841
turnin Watching Our Back##26174 |goto 54.7,50.5
accept Surwich##26175 |goto 54.7,50.5
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin Enhancing the Stone##26166 |goto 62.9,26.0
accept Not Just Any Body##26161 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Enter the cave |goto 41.4,33.2 |walk
click Dreadmaul Cache##4192 |indoors Dreadmaul Furnace
collect Loramus' Torso |q 26161/2 |goto 40.0,37.2 |indoors Dreadmaul Furnace
step
Leave the cave |goto 41.4,33.2 |walk
Enter the cave |goto 45.1,30.4 |walk
click Dreadmaul Cache##4192 |indoors Rise of the Defiler
collect Loramus' Head |q 26161/1 |goto 46.7,26.9 |indoors Rise of the Defiler
step
Leave the cave |goto 45.1,30.4 |walk
Enter the cave |goto 46.1,39.0 |walk
click Dreadmaul Cache##4192 |indoors Dreadmaul Post
collect Loramus' Legs |q 26161/3 |goto 47.0,39.5 |indoors Dreadmaul Post
step
Leave the cave |goto 46.1,39.0 |walk
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin Not Just Any Body##26161 |goto 62.9,26.0
accept The Altar of Storms##26162 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Follow the path up |goto 40.2,35.7 |only if walking
click Blood Altar##227
Defend Loramus' Body while he performs the ritual
Resurrect Loramus |q 26162/1 |goto 37.0,28.4
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Loramus Thalipedes##7783
turnin The Altar of Storms##26162 |goto 62.3,26.1
step
talk Kasim Sharim##42298
accept The Final Ritual##26170 |goto 62.9,26.0
step
talk Kasim Sharim##42298
Tell him you would like to start the Amulet Ritual
Speak with Kasim Sharim and participate in his ritual |q 26170/1 |goto 62.4,26.2
step
talk Loramus Thalipedes##7783
turnin The Final Ritual##26170 |goto 62.3,26.1
accept You Are Rakh'likh, Demon##26171 |goto 62.3,26.1
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
talk Deathly Usher##8816
Tell him you wish to face the Defiler
kill Razelikh the Defiler##41280
Destroy Razelikh's body |q 26171/1 |goto 46.5,21.9
Use the Stone Knife of Sealing on Loramus Thalipedes when he tells you to |use Stone Knife of Sealing##56012
Imprison Razelikh's soul |q 26171/2 |goto 46.5,21.9
step
Jump off here, and stand on the Rune of Return to teleport back down to the ground. |goto 44.8,26.3
|tip It Looks like a pulsing blue ring on the ground.
confirm
step
talk Watcher Grimeo##42299
turnin You Are Rakh'likh, Demon##26171 |goto 55.1,49.6
step
talk Mayor Charlton Connisport##42349
turnin Surwich##26175 |goto 46.4,87.2
accept Wormthorn's Dream##26184 |goto 46.4,87.2
step
talk Graham McAllister##43107
fpath Surwich |goto 47.1,89.2
step
kill 3 Felspore Bog Lord##45125 |q 26184/4 |goto 33.4,76.3
step
kill 5 Doomguard Destroyer##41470+ |q 26184/1 |goto 35.0,75.3
kill 5 Corrupted Darkwood Treant##45119+ |q 26184/3 |goto 35.0,75.3
kill 5 Dreadlord Defiler##41471+ |q 26184/2 |goto 35.0,75.3
step
talk Mayor Charlton Connisport##42349
turnin Wormthorn's Dream##26184 |goto 46.4,87.2
accept Advice from the Cenarion Circle##26185 |goto 46.4,87.2
step
talk Cenarion Observer Shayana##42352
|tip She walks around the town, so you may have to look for her.
turnin Advice from the Cenarion Circle##26185 |goto 45.8,87.6
accept Demoniac Vessel##26186 |goto 45.8,87.6
step
kill Tainted Nightstalker##42337
collect 20 Nightstalker Leg##57178 |q 26186 |goto 35.9,57.8
kill Tainted Black Bear##42336
collect 4 Tainted Hide##57177 |q 26186 |goto 35.9,57.8
kill Tainted Screecher##42338+
collect 2 Screecher Brain##57179 |q 26186 |goto 35.9,57.8
step
Use your Nightstalker Legs |use Nightstalker Leg##57178
collect 20 Crushed Nightstalker Leg##57181 |q 26186
step
Use your Screecher Brains |use Screecher Brain##57179
collect 2 Screecher Brain Paste##57182 |q 26186
step
Use your Tainted Hides |use Tainted Hide##57177
collect Tainted Hide Pouch##57180 |q 26186
step
Use your Crushed Nightstalker Legs |use Crushed Nightstalker Leg##57181
collect Demoniac Commixture##57183 |q 26186
step
Use your Demoniac Commixture |use Demoniac Commixture##57183
collect Demoniac Vessel |q 26186/1
step
talk Mayor Charlton Connisport##42349
turnin Demoniac Vessel##26186 |goto 46.4,87.2
accept The Downfall of Marl Wormthorn##26187 |goto 46.4,87.2
step
Kill the 4 Dreadlord Defilers
Use the Demoniac Vessel on Marl Wormthorn |use Demoniac Vessel##57185
kill Marl Wormthorn##42334 |q 26187/1 |goto 34.7,67.8
step
talk Mayor Charlton Connisport##42349
turnin The Downfall of Marl Wormthorn##26187 |goto 46.4,87.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Draenei (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_suggested="raceclass('Draenei') and level<=15",
condition_suggested_exclusive=true,
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
talk Megelon##16475 |goto Ammen Vale 61.2,29.5
accept You Survived!##9279
|only Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9280 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9369 |only !Draenei |goto 52.8,35.9
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |only Draenei |goto 50.9,28.8
collect 6 Vial of Moth Blood##22899 |q 9369/1 |only !Draenei |goto 50.9,28.8
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |only Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only Draenei |goto 52.8,35.9
turnin Replenishing the Healing Crystals##9369 |only !Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only !Draenei |goto 52.8,35.9
step
talk Zalduun##16502
turnin Urgent Delivery!##9409 |only Draenei |goto 52.5,41.2
accept Rescue the Survivors!##9283 |only Draenei |goto 52.5,41.2
accept Learning the Word##26970 |only Draenei Priest |goto 52.5,41.2
turnin Urgent Delivery!##9409 |only !Draenei |goto 52.5,41.2
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto 52.8,35.9
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 49.9,37.4
accept Volatile Mutations##10302 |goto 49.9,37.4
step
Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru##28880 |only Draenei
|tip They are Draenei lying on the ground around this area.  They spawn in random locations, so you may have to search for one. |only Draenei
Save a Draenei Survivor |q 9283/1 |goto 48.3,30.4 |only Draenei
kill 8 Volatile Mutation##16516+ |q 10302/1 |goto 48.3,30.4
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 49.9,37.4
accept What Must Be Done...##9293 |goto 49.9,37.4
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 49.7,37.5
step
talk Zalduun##16502 |only Draenei
turnin Rescue the Survivors!##9283 |only Draenei |goto 52.5,41.2
talk Technician Zhanaa##17071
accept Spare Parts##37445 |goto 50.5,47.9
step
talk Vindicator Aldar##16535 |goto 50.6,48.7
accept Inoculation##37444
stickystart "Lasher"
stickystart "Flower"
step "Lasher"
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample |q 9293/1 |goto 36.6,48.5
step "Flower"
click Corrupted Flower##6662
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 36.6,48.5
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 49.7,37.5
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 49.9,37.4
accept Healing the Lake##9294 |goto 49.9,37.4
step
use Neutralizing Agent##22955
Disperse the Neutralizing Agent |q 9294/1 |goto 45.5,64.7
stickystart "Nestlewoodowlkin"
stickystart "Emittersparepart"
step "Nestlewoodowlkin"
Follow this path up through the tunnel. |goto 54.1,65.2 < 15 |walk
Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
Inoculate 6 Nestlewood Owlkins |q 37444/1 |modelnpc 16518
step "Emittersparepart"
click Emitter Spare Part##6778+
collect 4 Emitter Spare Part##22978 |q 37445/1 |goto 65.2,81.2
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 49.9,37.4
step
talk Technician Zhanaa##17071
turnin Spare Parts##37445 |goto 50.5,47.9
step
talk Vindicator Aldar##16535
turnin Inoculation##37444 |goto 50.6,48.7
accept The Missing Scout##9309 |goto 50.6,48.7
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 33.9,69.3
accept The Blood Elves##10303 |goto 33.9,69.3
step
kill 10 Blood Elf Scout##16521+ |q 10303/1 |goto 28.5,78.0
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 33.9,69.3
accept Blood Elf Spy##9311 |goto 33.9,69.3
step
kill Surveyor Candress##16522 |q 9311/1 |goto 27.8,80.4
collect Blood Elf Plans##24414 |n
Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
accept Blood Elf Plans##9798
step
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 50.6,48.7
turnin Blood Elf Plans##9798 |goto 50.6,48.7
accept The Emitter##9312 |goto 50.6,48.7
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 50.5,47.9
accept Travel to Azure Watch##9313 |goto 50.5,47.9
step
The path through the mountains starts here |goto 27.1,54.8 <5 |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=5.43,
dynamic=true,
endlevel=11
},[[
step
talk Aeun##16554 |goto Azuremyst Isle,64.5,54
accept Word from Azure Watch##9314
step
talk Diktynna##17101 |goto Azuremyst Isle,61.1,54.2
accept Red Snapper - Very Tasty!##9452
step
Use your Draenei Fishing Net next on Schools of Red Snapper |use Draenei Fishing Net##23654
model School of Red Snapper##06883
collect 10 Red Snapper##23614 |q 9452/1 |goto Azuremyst Isle,61.9,51.6
step
talk Diktynna##17101 |goto Azuremyst Isle,61.1,54.2
turnin Red Snapper - Very Tasty!##9452
accept Find Acteon!##9453
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin Find Acteon!##9453
accept The Great Moongraze Hunt##9454
step
talk Anchorite Fateema##17214 |goto Azuremyst Isle,48.4,51.8
accept Medicinal Purpose##9463
only Draenei
step
talk Technician Dyvuun##16551 |goto Azuremyst Isle,48.7,50.3
turnin Travel to Azure Watch##9313
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
turnin Word from Azure Watch##9314
step
talk Caregiver Chellan##16553 |goto 48.3,49.2
home Azure Watch |future |q 9506
stickystart "Moongraze"
stickystart "Roottrapper"
step "Moongraze"
kill Moongraze Stag##17200+ |goto Azuremyst Isle,50.3,56.6
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1
step "Roottrapper"
kill Root Trapper##17196+ |only if havequest(9463)
collect 8 Root Trapper Vine##23685 |q 9463/1 |only if havequest(9463)
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
accept A Small Start##9506
step
talk "Cookie" McWeaksauce##17246 |goto Azuremyst Isle,46.7,70.5
accept Cookie's Jumbo Gumbo##9512
step
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto Azuremyst Isle,47.6,73
step
talk "Cookie" McWeaksauce##17246 |goto Azuremyst Isle,46.7,70.5
turnin Cookie's Jumbo Gumbo##9512
step
talk Priestess Kyleen Il'dinare##17241 |goto Azuremyst Isle,47.1,70.3
accept Reclaiming the Ruins##9513
step
talk Archaeologist Adamant Ironheart##17242 |goto Azuremyst Isle,47.2,70
accept Precious and Fragile Things Need Special Handling##9523
step
click Nautical Map##6817 |goto Azuremyst Isle,58.6,66.4
collect Nautical Map##23739 |q 9506/2
step
click Nautical Compass##6846 |goto Azuremyst Isle,59.6,67.6
collect Nautical Compass##23738 |q 9506/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin A Small Start##9506
accept I've Got a Plant##9530
step
click Hollowed Out Tree##6833 |goto Azuremyst Isle,45.9,65.7
collect Hollowed Out Tree##23790 |q 9530/1
click Piles of Leaves##6884+
collect 5 Pile of Leaves##23791 |q 9530/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin I've Got a Plant##9530
accept Tree's Company##9531
stickystart "Ancientrelic"
stickystart "Wrathscale"
step "Ancientrelic"
click Ancient Relic##6710+ |goto Azuremyst Isle,36.1,77
collect 8 Ancient Relic##23779 |q 9523/1
step "Wrathscale"
kill 5 Wrathscale Myrmidon##17194+ |q 9513/1 |goto Azuremyst Isle,36.1,77
kill 5 Wrathscale Naga##17193+ |q 9513/2 |goto Azuremyst Isle,36.1,77
kill 5 Wrathscale Siren##17195+ |q 9513/3 |goto Azuremyst Isle,36.1,77
step
kill Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
collect 1 Rune Covered Tablet##23759 |n
Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
accept Rune Covered Tablet##9514
step
Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |model Naga Flag##06825 |goto Azuremyst Isle,18.5,84.3
Watch the conversation
Uncover the Traitor |q 9531/1
step
talk Anchorite Fateema##17214 |goto 48.4,51.8
turnin Medicinal Purpose##9463
only Draenei
step
talk Daedal##17215 |goto 48.4,51.5
accept An Alternative Alternative##9473
only Draenei
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin The Great Moongraze Hunt##9454
accept The Great Moongraze Hunt##10324
step
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto Azuremyst Isle,50.6,46.2
step
kill Infected Nightstalker Runt##17202
collect 1 Faintly Glowing Crystal##23678 |n
Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
accept Strange Findings##9455 |goto Azuremyst Isle,50.6,46.2
step
click Azure Snapdragon##3251+
|tip If you are an Herbalist you can track these on your minimap.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto Azuremyst Isle,50.4,37.1
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin The Great Moongraze Hunt##10324
step
talk Daedal##17215 |goto Azuremyst Isle,48.4,51.5
turnin An Alternative Alternative##9473
only Draenei
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Strange Findings##9455
accept Nightstalker Clean Up, Isle 2...##9456
step
talk Dulvi##17488 |goto Azuremyst Isle,49,51.1
accept The Missing Fisherman##10428
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
accept Beds, Bandages, and Beyond##9603
only Draenei
step
talk Zaldaan##43991 |goto 49.7,49.1
turnin Beds, Bandages, and Beyond##9603
accept On the Wings of a Hippogryph##9604
only Draenei
step
talk Nurguni##16768 |goto The Exodar,57.0,50.1
turnin On the Wings of a Hippogryph##9604
accept Hippogryph Master Stephanos##9605
only Draenei
step
talk Stephanos##17555 |goto 54.5,36.3
turnin Hippogryph Master Stephanos##9605
accept Return to Caregiver Chellan##9606
only Draenei
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
turnin Return to Caregiver Chellan##9606
only Draenei
step
kill 8 Infected Nightstalker Runt##17202+ |q 9456/1 |goto Azuremyst Isle,45.7,43.9
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Nightstalker Clean Up, Isle 2...##9456
step
talk Admiral Odesyus##17240 |goto 47.0,70.2
turnin Tree's Company##9531
accept Show Gnomercy##9537
step
talk Priestess Kyleen Il'dinare##17241 |goto 47.1,70.3
turnin Reclaiming the Ruins##9513
turnin Rune Covered Tablet##9514
step
talk Archaeologist Adamant Ironheart##17242 |goto Azuremyst Isle,47.2,70
turnin Precious and Fragile Things Need Special Handling##9523
step
talk Priestess Kyleen Il'dinare##17241 |goto 47.1,70.3
|tip You may have to wait for her to finish her conversation with Archaeologist Adamant Ironheart.
accept Warlord Sriss'tiz##9515
step
talk Engineer "Spark" Overgrind##17243 |goto Azuremyst Isle,48.2,72.5
|tip He patrols the beach so you may have to look for him.
Tell him it's over
kill Engineer "Spark" Overgrind
collect Traitor's Communication##23899 |q 9537/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin Show Gnomercy##9537
accept Deliver Them From Evil...##9602
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Deliver Them From Evil...##9602
step
talk Cryptographer Aurren##17232 |goto Azuremyst Isle,49.40,51.0
accept Learning the Language##9538
step
Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1
step
clicknpc Totem of Akida##17360 |goto 49.4,51.0
turnin Learning the Language##9538
accept Totem of Coo##9539
step
Follow Stillpine Ancestor Akida as he runs up the hill
clicknpc Totem of Coo##17361 |goto 55.2,41.7
turnin Totem of Coo##9539
accept Totem of Tikti##9540
modelnpc Stillpine Ancestor Akida##17379
step
Follow Stillpine Ancestor Coo to the edge of the cliff
He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540 |goto 55.6,41.6
modelnpc Stillpine Ancestor Coo##17391
step
clicknpc Totem of Tikti##17362 |goto 64.5,39.8
turnin Totem of Tikti##9540
accept Totem of Yor##9541
step
Follow Stillpine Ancestor Tikti to the river
He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541 |goto 63.8,40.2
modelnpc Stillpine Ancestor Tikti##17392
step
clicknpc Totem of Yor##17363 |goto 63,67.9
|tip It is underwater.
turnin Totem of Yor##9541
accept Totem of Vark##9542
step
Follow Stillpine Ancestor Yor out of the water
He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542 |goto 61.0,69.5
modelnpc Stillpine Ancestor Yor##17393
step
Follow Stillpine Ancestor Yor as he runs
clicknpc Totem of Vark##17364 |goto 28.1,62.4
turnin Totem of Vark##9542
accept The Prophecy of Akida##9544
modelnpc Stillpine Ancestor Yor##15926
step
kill Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
collect Bristlelimb Key##23801 |n
click Bristlelimb Cage##1787
Free 8 Stillpine Captives |q 9544/1 |goto 28.5,66.4
step
Enter the cave |goto Azuremyst Isle 26.9,76.3 |walk
Follow the path to the bottom of the cave |walk
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto Azuremyst Isle/2 40.9,67.1
step
Leave the cave |goto Azuremyst Isle/2 59.7,88.5 |walk
talk Cowlen##17311 |goto Azuremyst Isle 16.6,94.5
turnin The Missing Fisherman##10428
accept All That Remains##9527
step
kill Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 14.8,92
step
talk Cowlen##17311 |goto 16.6,94.5
turnin All That Remains##9527
step
talk Arugoo the Stillpine##17114 |goto 49.41,51.0
turnin The Prophecy of Akida##9544
accept Stillpine Hold##9559
step
talk Priestess Kyleen Il'dinare##17241 |goto 47,70.2
turnin Warlord Sriss'tiz##9515
step
talk Moordo##17442 |goto 44.8,23.9
accept Beasts of the Apocalypse!##9560
step
talk Gurf##17441 |goto 44.7,23.6
accept Murlocs... Why Here? Why Now?##9562
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
turnin Stillpine Hold##9559
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 53.1,20.8
step
Follow the road around
kill Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
click Stillpine Grain##6484+
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 33.8,25.7
step
kill Murgurgala##17475
|tip He patrols the shoreline so you may have to look for him.
collect 1 Gurf's Dignity##23850 |n
Click Gurf's Dignity in your bags |use Gurf's Dignity##23850 |goto 33.8,25.7
accept Gurf's Dignity##9564
step
talk Gurf##17441 |goto 44.7,23.6
turnin Murlocs... Why Here? Why Now?##9562
turnin Gurf's Dignity##9564
step
talk Moordo##17442 |goto 44.8,23.9
turnin Beasts of the Apocalypse!##9560
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
accept Search Stillpine Hold##9565
step
talk Stillpine the Younger##17445 |goto 46.9,21.2
accept Chieftain Oomooroo##9573
step
Go to the upper level of the cave
kill Chieftain Oomooroo##17448 |q 9573/1 |goto Azuremyst Isle/3,38.2,53.3
step
click Blood Crystal##6835 |goto Azuremyst Isle/3,64.3,30.7
turnin Search Stillpine Hold##9565
accept Blood Crystals##9566
step
kill 9 Crazed Wildkin##17189+ |q 9573/2 |goto Azuremyst Isle/3,37.6,69.3
step
talk High Chief Stillpine##17440 |goto Azuremyst Isle,46.7,20.6
turnin Blood Crystals##9566
step
talk Stillpine the Younger##17445 |goto Azuremyst Isle,46.9,21.2
turnin Chieftain Oomooroo##9573
step
talk Kurz the Revelator##17443 |goto 47.0,22.3
accept The Kurken is Lurkin'##9570
step
kill The Kurken##17447
collect The Kurken's Hide##23860 |q 9570/1 |goto Azuremyst Isle/3,59.0,43.5
step
talk Kurz the Revelator##17443 |goto Azuremyst Isle,47.0,22.3
turnin The Kurken is Lurkin'##9570
accept The Kurken's Hide##9571
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
accept Warn Your People##9622
step
talk Moordo##17442 |goto 44.8,23.9
turnin The Kurken's Hide##9571
step
talk Exarch Menelaous##17116 |goto 47.1,50.6
turnin Warn Your People##9622
accept Coming of Age##9623
step
Follow the ramp up and outside The Exodar
talk Torallius the Pack Handler##17584 |goto 35.1,43.4
turnin Coming of Age##9623
step
Go to the Exodar portal to Darnassus |goto The Exodar 47.6,62.1 |n
Click the portal to Darnassus |goto Darnassus |noway |c
step
talk Sentinel Cordressa Briarbow##42936 |goto 43.9,76.1
accept Breaking Waves of Change##26383
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Bloodmyst",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)",
startlevel=11.58,
endlevel=12
},[[
step
talk Vorkhan the Elekk Herder##17586 |goto Bloodmyst Isle,63.0,87.9
turnin Elekks Are Serious Business##9625
|tip You may not have this breadcrumb quest to turn in.
accept Alien Predators##9634
step
talk Kessel##17649 |goto 63.0,87.5
accept The Kessel Run##9663
step
talk High Chief Stillpine##17440 |goto Azuremyst Isle,46.7,20.6
Warn High Chief Stillpine |q 9663/1
step
talk Exarch Menelaous##17116 |goto 47.1,50.6
Warn Exarch Menelaous |q 9663/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
Warn Admiral Odesyus |q 9663/3
step
talk Kessel##17649 |goto Bloodmyst Isle,63.0,87.5
turnin The Kessel Run##9663
accept Declaration of Power##9666
step
talk Aonar##17599 |goto 63.4,88.8
accept A Favorite Treat##9624
stickystart "Hatchling"
stickystart "Sandpearl"
step "Hatchling"
kill 10 Bloodmyst Hatchling##17525+ |q 9634/1 |goto 57.4,89.8
step "Sandpearl"
click Sand Pear##473+
collect 10 Sand Pear##23927 |q 9624/1 |goto 57.4,89.8
step
talk Vorkhan the Elekk Herder##17586 |goto 63.0,87.9
turnin Alien Predators##9634
step
talk Aonar##17599 |goto 63.4,88.8
turnin A Favorite Treat##9624
step
talk Princess Stillpine##17682 |goto 68.3,81.1
accept Saving Princess Stillpine##9667
only if completedq(9538)
step
Kill furbolgs in this camp until High Chief Bristlelimb appears
kill High Chief Bristlelimb##17702
collect The High Chief's Key##24099 |q 9667 |goto 64.5,77.7
only if completedq(9538)
step
kill Lord Xiz##17701 |q 9666/1
Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
Declare your Power |q 9666/2 |goto 68.8,68.1
step
click Princess Stillpine's Cage##1787
Save Princess Stillpine |q 9667/1 |goto 68.2,81.1
only if completedq(9538)
step
talk Kessel##17649 |goto 63.0,87.5
turnin Declaration of Power##9666
accept Report to Exarch Admetius##9668
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Bloodmyst",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",
startlevel=12.30,
endlevel=20
},[[
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
accept A Small Start##9506
step
click Nautical Map##6817 |goto Azuremyst Isle,58.6,66.4
collect Nautical Map##23739 |q 9506/2
step
click Nautical Compass##6846 |goto Azuremyst Isle,59.6,67.6
collect Nautical Compass##23738 |q 9506/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin A Small Start##9506
accept I've Got a Plant##9530
step
click Hollowed Out Tree##6833 |goto Azuremyst Isle,45.9,65.7
collect Hollowed Out Tree##23790 |q 9530/1
click Piles of Leaves##6884+
collect 5 Pile of Leaves##23791 |q 9530/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin I've Got a Plant##9530
accept Tree's Company##9531
step
Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792
|tip It's a red flag on a metal pole on the beach.
Watch the conversation
Uncover the Traitor |q 9531/1 |goto Azuremyst Isle,18.5,84.3
step
talk Admiral Odesyus##17240 |goto 47.0,70.2
turnin Tree's Company##9531
accept Show Gnomercy##9537
step
talk Engineer "Spark" Overgrind##17243
|tip He patrols the beach so you may have to look for him.
Tell him it's over
kill Engineer "Spark" Overgrind
collect Traitor's Communication##23899 |q 9537/1 |goto Azuremyst Isle,48.2,72.5
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin Show Gnomercy##9537
accept Deliver Them From Evil...##9602
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Deliver Them From Evil...##9602
step
click Wanted Poster##6901 |goto Bloodmyst Isle,55.2,59.1
accept WANTED: Deathclaw##9646
step
talk Caregiver Topher Loaal##17553 |goto 55.9,59.8
home Blood Watch |goto 55.9,59.8 |future |q 9629
step
talk Morae##17434 |goto 53.3,57.8
accept Catch and Release##9629
step
talk Stillpine Ambassador Frasaboo##18803 |goto 55.2,56.0
turnin Saving Princess Stillpine##9667
|tip You may not have this breadcrumb quest to turn in.
only if completedq(9538)
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
accept Mac'Aree Mushroom Menagerie##9648
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin Report to Exarch Admetius##9668
|tip You may not have this breadcrumb quest to turn in.
accept What Argus Means to Me##9693
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
accept Learning from the Crystals##9581
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin What Argus Means to Me##9693
accept Blood Watch##9694
step
talk Laando##17554 |goto Bloodmyst Isle 57.7,53.9
fpath Blood Watch
step
click Ruinous Polyspore##6432 |goto 60.7,42.0
collect Ruinous Polyspore##24042 |q 9648/3
step
click Blood Mushroom##6874 |goto 62.3,53.0
|tip It looks like a red-ish glowing mushroom on the ground.
collect Blood Mushroom |q 9648/2
step
kill Stinkhorn Striker##17673
collect Aquatic Stinkhorn |q 9648/1 |goto 59.7,71.0
step
Use the Crystal Mining Pick on Impact Site Crystal |use Crystal Mining Pick##23875
collect Impact Site Crystal Sample##23878 |q 9581/1 |goto 58.1,83.3
stickystart "Cruelfin"
stickystart "Tagger"
step "Cruelfin"
kill Cruelfin##17496
|tip He's an orange murloc that walks along this beach, so you may need to search for him.
collect 1 Red Crystal Pendant##23870 |n
Click the Red Crystal Pendant in your bags |use Red Crystal Pendant##23870 |goto 47.8,94.4
accept Cruelfin's Necklace##9576
step "Tagger"
Use the Murloc Tagger on Blacksilt Scout |use Murloc Tagger##23995
Tag 6 Blacksilt Scouts |q 9629/1
modelnpc Blacksilt Scout##17326
step
click Fel Cone Fungus##6879
collect Fel Cone Fungus |q 9648/4 |goto 44.4,82.4
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
turnin Mac'Aree Mushroom Menagerie##9648
step
talk Morae##17434 |goto 53.3,57.8
turnin Catch and Release##9629
accept Victims of Corruption##9574
turnin Cruelfin's Necklace##9576
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
accept Know Thine Enemy##9567
step
talk Vindicator Boros##17684 |goto 55.4,55.3
accept Irradiated Crystal Shards##9641
step
talk Prospector Nachlan##18804 |goto 56.3,54.2
accept Explorers' League, Is That Something for Gnomes?##10063
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin Learning from the Crystals##9581
accept The Missing Survey Team##9620
step
kill 10 Sunhawk Spy##17604+ |q 9694/1 |goto 49.5,47.4
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Blood Watch##9694
step
clicknpc Draenei Cartographer##17600 |goto 61.3,48.4
turnin The Missing Survey Team##9620
accept Salvaging the Data##9628
step
kill Wrathscale Marauder##17334+, Wrathscale Sorceress##17336+
collect Survey Data Crystal |q 9628/1 |goto 61.3,48.4
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin Salvaging the Data##9628
accept The Second Sample##9584
step
kill Corrupted Treant##17352+
collect 6 Crystallized Bark |q 9574/1 |goto 50.9,74
step
click Nazzivus Monument Glyph##5992+
collect Nazzivus Monument Glyph##23859 |q 9567/1 |goto 36.5,71.5
step
kill Tzerak##17528
|tip He is a felguard that walks around the whole Nazzivian area, so if he is not standing in this spot, you may need to search around for him.
collect 1 Tzerak's Armor Plate##23900 |n
Click Tzerak's Armor Plate in your bags |use Tzerak's Armor Plate##23900 |goto 36.5,71.5
accept Signs of the Legion##9594
step
kill 8 Nazzivus Satyr##17337+ |q 9594/1
kill 8 Nazzivus Felsworn##17339+ |q 9594/2
collect 10 Irradiated Crystal Shard |q 9641/1 |goto 37.7,76.7
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
turnin Know Thine Enemy##9567
turnin Signs of the Legion##9594
accept Containing the Threat##9569
step
talk Morae##17434 |goto 53.2,57.8
turnin Victims of Corruption##9574
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
accept Constrictor Vines##9643
accept The Bear Necessities##9580
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Irradiated Crystal Shards##9641
accept Intercepting the Message##9779
step
Use the Crystal Mining Pick on the Altered Bloodmyst Crystal |use Crystal Mining Pick##23876
collect Altered Crystal Sample |q 9584/1 |goto 45.7,47.7
step
kill Sunhawk Spy##17604+
collect Sunhawk Missive##24399 |q 9779/1 |goto 48.8,45.9
stickystart "Elderbrownbear"
stickystart "Mutatedconstrictor"
step "Elderbrownbear"
kill Elder Brown Bear##17348
collect 8 Elder Brown Bear Flank |q 9580/1
You can find more around [Bloodmyst Isle,37.5,44.5]
step "Mutatedconstrictor"
kill Mutated Constrictor##17344
collect 6 Thorny Constrictor Vine |q 9643/1 |goto 46.6,35.2
More can also be found around [Bloodmyst Isle,40.4,54]
step
kill Deathclaw##17661
collect Deathclaw's Paw |q 9646/1 |goto 37.1,30.3
step
talk Anchorite Paetheus##17424 |goto 54.7,54.0
accept Newfound Allies##9632
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Intercepting the Message##9779
accept Translations...##9696
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
turnin Constrictor Vines##9643
turnin The Bear Necessities##9580
accept Culling the Flutterers##9647
step
talk Messenger Hermesius##17703 |goto 54.6,58.0
|tip He walks around the camp
accept Urgent Delivery##9671 |instant
step
talk Interrogator Elysis##17825 |goto 54.4,54.5
turnin Translations...##9696
accept Audience with the Prophet##9698
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin The Second Sample##9584
accept The Final Sample##9585
turnin WANTED: Deathclaw##9646
step
talk Prophet Velen##17468 |goto The Exodar,32.9,54.4
turnin Audience with the Prophet##9698
accept Truth or Fiction##9699
step
talk Vindicator Boros##17684 |goto Bloodmyst Isle,55.4,55.3
turnin Truth or Fiction##9699
accept I Shoot Magic Into the Darkness##9700
step
kill 10 Royal Blue Flutterer##17350+ |q 9647/1 |goto 44.9,56.0
You can find more:
Around [Bloodmyst Isle,44.5,50.4]
Around [Bloodmyst Isle,47.3,32.2]
step
Go to this spot
Confirm the Sun Portal Site |q 9700/2
kill 5 Void Anomaly##17550+ |q 9700/1 |goto 52.5,22.3
step
talk Clopper Wizbang##17421 |goto 42.1,21.2
turnin Explorers' League, Is That Something for Gnomes?##10063
accept Pilfered Equipment##9548
accept Artifacts of the Blacksilt##9549
step
click Clopper's Equipment##336
|tip It can spawn in all the little murloc camps along this shore, so you may need to search for it.
collect Clopper's Equipment |q 9548/1 |goto 40.4,20.1
step
kill Blacksilt Seer##17330+
collect 3 Crude Murloc Idol |q 9549/1
kill Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+
collect 6 Crude Murloc Knife |q 9549/2 |goto 38.7,21.2
step
talk Clopper Wizbang##17421
turnin Pilfered Equipment##9548
turnin Artifacts of the Blacksilt##9549
collect 1 Weathered Treasure Map##23837 |n
Click the Weathered Treasure Map in your bags |use Weathered Treasure Map##23837 |goto 42.1,21.2
accept A Map to Where?##9550
step
kill Zevrax##17494 |q 9569/1 |goto 41.9,29.5
step
Use your Crystal Mining Pick next to the Axxarien Crystal |use Crystal Mining Pick##23877
|tip It looks like a huge red crystal in the ground.
collect Axxarien Crystal Sample |q 9585/1 |goto 41.3,30.9
step
kill 5 Axxarien Shadowstalker##17340+ |q 9569/3
kill 5 Axxarien Hellcaller##17342+ |q 9569/2
click Corrupted Crystal##6836+ |goto 38.2,37.4
collect 5 Corrupted Crystal |q 9569/4
step
Follow this little ramp up |goto 60.8,41.36 <5 |c
step
click Battered Ancient Book##6845 |goto 61.2,41.9
turnin A Map to Where?##9550
accept Deciphering the Book##9557
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
turnin Containing the Threat##9569
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin I Shoot Magic Into the Darkness##9700
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
turnin Culling the Flutterers##9647
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
accept Ysera's Tears##9649
step
talk Anchorite Paetheus##17424 |goto 54.7,53.9
turnin Deciphering the Book##9557
accept Nolkai's Words##9561
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin The Final Sample##9585
accept Talk to the Hand##10064
step
Click the Mailbox and retrieve the letter from Admiral Odesyus
collect 1 A Letter from the Admiral##24132 |n |goto 55.2,59.2
Click A Letter from the Admiral in your bags |use A Letter from the Admiral##24132
accept The Bloodcurse Legacy##9672
step
talk Morae##17434 |goto 53.3,57.7
accept Searching for Galaen##9578
step
click Mound of Dirt##49 |goto 61.1,49.7
turnin Nolkai's Words##9561
step
talk Prince Toreth##17674 |goto 74.2,33.5
accept Restoring Sanctity##9687
step
click Dragon Bone##6898+ |goto 59.9,35.7
collect 8 Dragon Bone |q 9687/1
You can find more around [Bloodmyst Isle,56.2,39.8]
step
talk Prince Toreth##17674 |goto 74.2,33.5
turnin Restoring Sanctity##9687
accept Into the Dream##9688
step
kill 5 Veridian Whelp##17588+ |q 9688/1
kill 5 Veridian Broodling##17589+ |q 9688/2 |goto 75.4,29.6
step
talk Prince Toreth##17674 |goto 74.2,33.5
turnin Into the Dream##9688
step
talk Captain Edward Hanes##17712 |goto 79.2,22.6
turnin The Bloodcurse Legacy##9672
accept The Bloodcursed Naga##9674
step
kill 10 Bloodcursed Naga##17713+ |q 9674/1 |goto 82.4,26.2
More can be found at [Bloodmyst Isle,81.4,18.3]
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin The Bloodcursed Naga##9674
accept The Hopeless Ones...##9682
step
kill Bloodcursed Voyager##17714+
collect 4 Bloodcursed Soul |q 9682/1 |goto 85.7,14.3
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin The Hopeless Ones...##9682
accept Ending the Bloodcurse##9683
step
click Ysera's Tear##6880+
|tip They are pretty rare, so you may need to search a little for them.
|tip They look like blue-green mushrooms
collect 2 Ysera's Tear |q 9649/1 |goto 75.7,28.5
step
Follow the path up |goto 82.9,48.8
click Statue of Queen Azshara##4853
kill Atoph the Bloodcursed##17715 |q 9683/1 |goto 85.9,54.3
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin Ending the Bloodcurse##9683
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
turnin Ysera's Tears##9649
step
talk Achelus##17676 |goto 53.2,57.0
accept The Missing Expedition##9669
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
accept The Cryo-Core##9703
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
accept What We Know...##9753
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin What We Know...##9753
accept What We Don't Know...##9756
step
talk Captured Sunhawk Agent##17824 |goto 54.4,54.3
Tell him you're a prisoner and the draenei filth captured you as you exited the sun gate
Recover the Sunhawk Information |q 9756/1
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin What We Don't Know...##9756
accept Vindicator's Rest##9760
stickystart "Corpse"
stickystart "Journal"
step "Corpse"
clicknpc Galaen's Corpse##17508
turnin Searching for Galaen##9578 |goto 37.5,61.2
accept Galaen's Fate##9579 |goto 37.5,61.2
step "Journal"
click Galaen's Journal##4431
accept Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 37.5,61.2
stickystart "Reclaimer"
stickystart "Supplies"
step "Reclaimer"
kill Sunhawk Reclaimer##17606+
collect Galaen's Amulet |q 9579/1 |goto 39.6,58.9
step "Supplies"
click Medical Supplies##6881+ |goto 39.6,58.9
The Reclaimers also have a chance to drop these
collect 12 Medical Supplies |q 9703/1
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
turnin The Cryo-Core##9703
turnin Galaen's Journal - The Fate of Vindicator Saruan##9706
accept Matis the Cruel##9711
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
accept Don't Drink the Water##9748
step
Use your Water Sample Flask at the bottom of the red waterfall |use Water Sample Flask##24318
collect Bloodmyst Water Sample |q 9748/1 |goto 34.4,33.6
step
Use your Flare Gun on Matis the Cruel before you engage him |use Flare Gun##24278
kill Matis the Cruel##17664
|tip He patrols along this road so you may need to search for him
Matis the Cruel Captured |q 9711/1 |goto 39.6,45.3
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Don't Drink the Water##9748
accept Limits of Physical Exhaustion##9746
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
turnin Matis the Cruel##9711
step
talk Morae##17434 |goto 53.3,57.7
turnin Galaen's Fate##9579
step
talk Scout Jorli##17927 |goto 30.2,45.9
turnin Talk to the Hand##10064
accept Cutting a Path##10065
step
talk Scout Loryi##17926 |goto 30.3,45.9
accept Critters of the Void##9741
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Vindicator's Rest##9760
accept Clearing the Way##9761
accept Fouled Water Spirits##10067
accept Oh, the Tangled Webs They Weave##10066
stickystart "Tangler"
stickystart "Ravager"
step "Tangler"
kill 8 Mutated Tangler##17346+ |q 10066/1 |goto 31.5,55.8
step "Ravager"
kill 10 Enraged Ravager##17527+ |q 10065/1 |goto 31.5,55.8
step
kill 8 Sunhawk Saboteur##17609+ |q 9761/1
kill 8 Sunhawk Agent##17610+ |q 9761/2 |goto 19.5,53.9
step
kill 10 Sunhawk Pyromancer##17608+ |q 9746/1
kill 10 Sunhawk Defender##17607+ |q 9746/2 |goto 25.4,56.9
step
kill 12 Void Critter##17887+ |q 9741/1 |goto 18.8,63.5
|tip They are underwater.
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Clearing the Way##9761
turnin Oh, the Tangled Webs They Weave##10066
step
talk Scout Jorli##17927 |goto 30.3,45.9
turnin Cutting a Path##10065
step
kill 6 Fouled Water Spirit##17358+ |q 10067/1 |goto 30.7,40.3
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Fouled Water Spirits##10067
step
talk Researcher Cornelius##17686 |goto 24.9,34.4
accept They're Alive! Maybe...##9670
stickystart "Zarakh"
stickystart "Creature"
stickystart "Myst"
step "Zarakh"
Follow the path up |goto 22.9,37.5
kill Zarakh##17683 |q 9669/3
step "Creature"
kill Webbed Creature##17680+
Free 5 Expedition Researchers |q 9670/1 |goto 18.2,37.5
modelnpc Expedition Researcher##17681
step "Myst"
kill 8 Myst Leecher##17523+ |q 9669/1
kill 8 Myst Spinner##17522+ |q 9669/2
step
talk Researcher Cornelius##17686 |goto Bloodmyst Isle,24.9,34.4
turnin They're Alive! Maybe...##9670
step
talk Achelus##17676 |goto 53.2,57.0
turnin The Missing Expedition##9669
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Critters of the Void##9741
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Limits of Physical Exhaustion##9746
accept The Sun Gate##9740
step
click Sunhawk Portal Controller##5811+
Destroy 4 Sunhawk Portal Controllers
Swim into the lake to [Bloodmyst Isle,18.9,63.5]
click Sun Gate##6927 |goto 19.5,62.5
Destroy the Sun Gate |q 9740/1
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin The Sun Gate##9740
step
Follow the big ramp up and outside to Azuremyst Isle
talk Huntress Kella Nightbow##17614 |goto Azuremyst Isle,24.2,54.3
turnin Newfound Allies##9632
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto Azuremyst Isle,49.40,51.0
step
Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.4,51.0
accept Totem of Coo##9539 |goto 49.4,51.0
step
Follow Stillpine Ancestor Akida as he runs up the hill
clicknpc Totem of Coo##17361
turnin Totem of Coo##9539 |goto 55.2,41.7
accept Totem of Tikti##9540 |goto 55.2,41.7
modelnpc Stillpine Ancestor Akida##17379
step
Follow Stillpine Ancestor Coo to the edge of the cliff
He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540 |goto 55.6,41.6
modelnpc Stillpine Ancestor Coo##17391
step
clicknpc Totem of Tikti##17362
turnin Totem of Tikti##9540 |goto Azuremyst Isle,64.5,39.8
accept Totem of Yor##9541 |goto Azuremyst Isle,64.5,39.8
step
Follow Stillpine Ancestor Tikti to the river
He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541 |goto 63.8,40.2
modelnpc Stillpine Ancestor Tikti##17392
step
clicknpc Totem of Yor##17363 |tip It is underwater.
turnin Totem of Yor##9541 |goto Azuremyst Isle,63,67.9
accept Totem of Vark##9542 |goto Azuremyst Isle,63,67.9
step
Follow Stillpine Ancestor Yor out of the water
He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542 |goto 61.0,69.5
modelnpc Stillpine Ancestor Yor##17393
step
Follow Stillpine Ancestor Yor as he runs
clicknpc Totem of Vark##17364
turnin Totem of Vark##9542 |goto Azuremyst Isle,28.1,62.4
accept The Prophecy of Akida##9544 |goto Azuremyst Isle,28.1,62.4
modelnpc Stillpine Ancestor Yor##15926
step
from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
collect Bristlelimb Key##23801 |n
click Bristlelimb Cage##1787
Free 8 Stillpine Captives |q 9544/1 |goto Azuremyst Isle,28.5,66.4
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto Azuremyst Isle,49.41,51.0
accept Stillpine Hold##9559 |goto Azuremyst Isle,49.41,51.0
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto Azuremyst Isle,46.7,20.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Night Elf (1-11)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\NightElf",
condition_suggested="raceclass('NightElf') and level<=15",
condition_suggested_exclusive=true,
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=1,
dynamic=true,
endlevel=11
},[[
step
talk Ilthalaine##2079 |goto Shadowglen 45.6,74.6
accept The Balance of Nature##28713
step
kill 6 Young Nightsaber##2031+ |q 28713/1 |goto 45.2,80.8
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto 45.6,74.6
accept Fel Moss Corruption##28714 |goto 45.6,74.6
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto 46.0,72.9
stickystart "Stolenbags"
step
kill Grell##1988+
collect 6 Fel Moss |q 28714/1 |goto 36.9,78.2
step "Stolenbags"
click Melithar's Stolen Bag##323+ |goto 36.9,78.2
collect 5 Melithar's Stolen Bags##46700 |q 28715/1
You can find more around [32.0,72.6]
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto 46.3,73.5
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto 46.0,72.9
step
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto 42.5,50.6
accept Iverron's Antidote##28724 |goto 42.5,50.6
only NightElf
step
click Moonpetal Lily##253+ |goto 40.1,52.6
collect 7 Moonpetal Lily |q 28724/1
only if havequest(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto 42.5,50.6
accept The Woodland Protector##28725 |goto 42.5,50.6
only NightElf
step
Go to the entrance of this cave to make Tarindrella appear
talk Tarindrella##49480
turnin The Woodland Protector##28725 |goto Teldrassil/2 44.5,82.2
accept Webwood Corruption##28726 |goto Teldrassil/2 44.5,82.2
only NightElf
step
kill 12 Webwood Spider##1986 |q Webwood Corruption##28726/1 |goto Teldrassil/2 46.3,46.3
only if havequest(28726)
step
Next to you:
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
only NightElf
step
kill Githyiss the Vile##1994+ |q 28727/1 |goto Teldrassil/2 44.9,28.1
only if havequest(28727)
step
Next to you:
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
only NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Shadowglen/0 42.5,50.2
accept Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.5,50.2
only NightElf
step
Use your Crystal Phial while standing in the water |use Crystal Phial##5185
collect Filled Crystal Phial |q 28729/1 |goto 50.3,33.7
only if havequest(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto 42.5,50.6
accept Precious Waters##28730 |goto 42.5,50.6
only NightElf
step
Follow the ramp up |goto 42.1,63.6 < 10 |c |only if walking
only NightElf
step
talk Tenaron Stormgrip##3514
turnin Precious Waters##28730 |goto 47.2,55.9
accept Teldrassil: Passing Awareness##28731 |goto 47.2,55.9
only NightElf
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto 54.6,84.7
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil 59.55,49.24
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang |q 488/1
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather |q 488/2
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk |q 488/3 |goto 60.5,52.5
There are more around [57.7,52.5]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 59.5,49.2
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 55.8,50.4
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto 55.5,50.0
step
talk Fidelio##40553
fpath Dolanaar |goto Teldrassil 55.5,50.4
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.7,52.0
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto 55.4,52.2
step
talk Innkeeper Keldamyr##6736 |goto 55.4,52.2
home Dolanaar |future |q 289
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto 55.8,53.9
accept Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
only NightElf
step
click Fel Cone##10405+
collect 3 Fel Cone |q 489/1 |goto Teldrassil 51.8,53.2
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 59.5,49.2
step
Use your Jade Phial while standing in the water |use Jade Phial##5619
collect Filled Jade Phial |q 929/1 |goto 62.1,50.8
only if havequest(929)
step
Go upstairs in the house
talk Gaerolas Talvethren##2107
turnin A Troubling Breeze##475 |goto 64.6,51.2
accept Gnarlpine Corruption##476 |goto 64.6,51.2
step
click Tallonkai's Dresser##1568 |goto 66.1,52.1
collect Emerald Dreamcatcher |q 2438/1
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.7,52.0
accept The Relics of Wakening##483 |goto 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto Teldrassil,55.6,52.0
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto 55.8,50.4
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto 55.5,50.0
accept Ferocitas the Dream Eater##2459 |goto 55.5,50.0
accept Twisted Hatred##932 |goto 55.5,50.0
step
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel |q 2459/2
kill 7 Gnarlpine Mystic##7235+ |q 2459/1 |goto 66.9,46.6
step
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto 55.5,50.0
stickystart "Seeds"
step
Follow this small path to the cave |goto 53.6,47.2 < 10 |walk
Follow the path to the right
kill Lord Melenas##2038
collect Melenas' Head |q 932/1 |goto Teldrassil/3 44.6,44.6
step "Seeds"
Use your Ireroot Seeds on Sprites in this cave |use Ireroot Seeds##46716
Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto Teldrassil/3 15.8,52.4
step
Leave the cave |goto Teldrassil 54.5,46.0 |walk
talk Syral Bladeleaf##2083
|tip You can continue using the Ireroot Seeds to kill Grellkin instantly.
turnin Nature's Reprisal##13946 |goto Teldrassil 55.8,50.5
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto 55.5,50.0
step
talk Citarre Mapleheart##34761 |goto Teldrassil,55.6,51.7
Tell her that you're ready to depart for Ban'ethil Barrow Den. |goto 45.7,50.5
confirm
step
talk Oben Rageclaw##7317 |goto Teldrassil/4 42.3,83.0
accept The Sleeping Druid##2541
step
Next to you:
talk Sentinel Huntress##34249
_Ask her_ where the Rune of Nesting is
|tip You can ask her as many times as you need.
_Follow the green mist_
click Chest of Nesting##10
collect Rune of Nesting |q 483/4
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
_Ask her_ where the Black Feather Quill is
|tip You can ask her as many times as you need.
_Follow the green mist_
click Chest of the Black Feather##10
collect Black Feather Quill |q 483/2
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
_Ask her_ where the Sapphire of Sky is
|tip You can ask her as many times as you need.
_Follow the green mist_
click Chest of the Sky##10
collect Sapphire of Sky |q 483/3
kill Gnarlpine Shaman##2009+
Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
Next to you:
talk Sentinel Huntress##34249
_Ask her_ where the Raven Claw Talisman is
|tip You can ask her as many times as you need.
_Follow the green mist_
click Chest of the Raven Claw##10
collect Raven Claw Talisman |q 483/1
kill Gnarlpine Shaman##2009+
collect Shaman Voodoo Charm |q 2541/1
step
Next to you:
talk Sentinel Huntress##34249
_Ask her_ where the exit is
|tip You can ask her as many times as you need.
_Follow the green mist_ until you see an area with 2 bridges |tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541 |goto Teldrassil/4 42.5,83.1
accept Druid of the Claw##2561 |goto Teldrassil/4 42.5,83.1
step
kill Rageclaw##7318
|tip He's through the doors in the room immediately next to you and Oben Rageclaw.  Just walk up to the door, even though it is locked, it will automatically open for you.
Use your Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
Release Oben Rageclaw's Spirit |q 2561/1 |goto Teldrassil/4 57.9,65.3
step
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto Teldrassil/4 42.3,83.0
step
Inside of the Den:
kill Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+ |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil 55.7,52.0
accept Ursal the Mauler##486 |goto Teldrassil 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto 55.6,52.0
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto 56.7,53.5
only NightElf
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto 55.5,50.4
accept To Darnassus##6341 |goto 55.5,50.4
only NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus,36.1,53.5
accept An Unexpected Gift##6342 |goto Darnassus,36.1,53.5
only NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto 36.6,47.9
accept Return to Nyoma##6343 |goto 36.6,47.9
only NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil,56.7,53.5
only NightElf
step
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto 49.4,44.7
step
Follow the path up |goto 49.4,43.2 |only if walking
Take the first path to the right that you come to
kill Ursal the Mauler##2039 |q 486/1
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto 51.7,39.4
step
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto 49.4,44.6
step
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 55.8,50.5
step
talk Denalan##2080
|tip Wait for him to plant the Rare Earth.
turnin Denalan's Earth##997 |goto 60.0,59.8
accept Timberling Seeds##918 |goto 60.0,59.8
accept Timberling Sprouts##919 |goto 60.0,59.8
step
click Strange Fruited Plant##369
accept The Glowing Fruit##930 |goto 57.6,62.9
step
kill Timberling##2022+
collect 6 Timberling Seed |q 918/1
click Timberling Sprout##391+
collect 10 Timberling Sprout |q 919/1 |goto 59.7,60.4
step
talk Denalan##2080
turnin Timberling Seeds##918 |goto 59.9,59.8
accept Rellian Greenspyre##922 |goto 59.9,59.8
turnin Timberling Sprouts##919 |goto 59.9,59.8
turnin The Glowing Fruit##930 |goto 59.9,59.8
step
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto 55.8,53.9
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto 44.0,44.2
accept Mossy Tumors##923 |goto 44.0,44.2
step
Follow the river north |only if walking
kill Timberling Trampler##2027+, Timberling Mire Beast##2029+
|tip Follow the water north.
collect 5 Mossy Tumor |q 923/1 |goto 43.6,37.4
step
Use your Amethyst Phial while standing in the water |use Amethyst Phial##18152
collect Filled Amerthyst Phial |q 7383/1 |goto 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 39.5,29.9
step
talk Priestess A'moora##7313
accept Tears of the Moon##2518 |goto 39.2,29.8
step
click Strange Fronded Plant##370
accept The Shimmering Frond##931 |goto 37.3,25.5
step
kill Lady Sathrah##7319
collect Silvery Spinnerets |q 2518/1 |goto 40.7,22.1
step
kill Bloodfeather Fury##2019+, Bloodfeather Matriarch##2021+, Bloodfeather Wind Witch##2020+
collect 6 Bloodfeather Belt |q 937/1 |goto 37.2,29.9
step
talk Priestess A'moora##7313
turnin Tears of the Moon##2518 |goto 39.3,29.7
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 39.5,29.9
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto 40.9,45.7
accept Teldrassil: The Coming Dawn##933 |goto 40.9,45.7
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto 44.0,44.2
|tip DO NOT TURN IN "THE SHIMMERING FROND" to Denalan here!
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto Teldrassil 59.9,59.8
step
talk Denalan##2080
accept Oakenscowl##2499 |goto Teldrassil 59.8,59.9
step
click Sprouted Frond##267 |goto Teldrassil 59.8,59.9
accept The Sprouted Fronds##2399 |instant
step
Use your Tourmaline Phial while standing in the water |use Tourmaline Phial##5621
collect Filled Tourmaline Phial |q 933/1 |goto 43.9,58.5
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto 42.5,58.2
accept The Vengeance of Elune##14005 |goto 42.5,58.2
step
Use the abilities on your hotbar to fight Bough of Corruption
kill Bough of Corruption##34521 |q 14005/1 |goto 40.7,69.3
step
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto 42.5,58.2
accept The Waters of Teldrassil##935 |goto 42.5,58.2
step
talk Corithras Moonrage##3515
turnin The Waters of Teldrassil##935 |goto 41.0,45.6
accept Home of the Kaldorei##14039 |goto 41.0,45.6
step
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor |q 2499/1 |goto 47.4,35.2
step
talk Denalan##2080
turnin Oakenscowl##2499 |goto 43.9,44.2
step
click Hero's Call Board##10016
accept Hero's Call: Darkshore!##28490 |goto Darnassus,45.0,49.9
only Draenei,Dwarf,Gnome,Human
step
talk Sentinel Cordressa Briarbow##42936
accept Breaking Waves of Change##26383 |goto 43.9,76.1
only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto 48.2,14.7
only Worgen
step
talk Tyrande Whisperwind##7999
turnin Home of the Kaldorei##14039 |goto 43.0,78.1
step
Go inside the pink portal |goto Darnassus 36.9,50.5
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)",
startlevel=11.58,
dynamic=true,
endlevel=16
},[[
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore,51.8,18.0 |only Dwarf,Gnome,Human
turnin Breaking Waves of Change##26383 |goto Darkshore,51.8,18.0 |only NightElf,Draenei
turnin Breaking Waves of Change##26385 |goto Darkshore,51.8,18.0 |only Worgen
accept The Last Wave of Survivors##13518 |goto Darkshore,51.8,18.0
step
talk Innkeeper Kyteran##43420
home Lor'danel |q 13522 |future |goto 51.0,18.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept Threat from the Water##13522 |goto 50.2,19.8
step
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto 45.0,18.2
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto 44.1,17.8
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto 44.6,19.9
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto 42.9,21.5
step
kill 8 Vile Spray##32928 |q 13522/1 |goto 43.1,20.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin Threat from the Water##13522 |goto 50.2,19.8
step
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto 51.8,18.0
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto 51.8,18.1
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto 51.1,19.7
step
click Encrusted Clam##261+
collect 16 Encrusted Clam Muscle |q 13520/1 |goto 52.4,18.8
step
kill Corrupted Tide Crawler##32935+
collect 4 Corrupted Tide Crawler Flesh |q 13521/1 |goto 53.4,19.5
step
click Buzzbox 413##356
turnin Buzzbox 413##13521 |goto 53.3,19.6
accept No Accounting for Taste##13527 |goto 53.3,19.6
step
clicknpc Decomposing Thistle Bear##32975
collect Foul Bear Carcass Sample |q 13527/1 |goto 55.1,21.0
step
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto 51.1,19.7
accept Buzzbox 723##13528 |goto 51.1,19.7
step
talk Serendia Oakwhisper##32972
turnin The Boon of the Seas##13520 |goto 50.8,18.1
step
kill Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+
|tip The green ones won't drop loot.
collect 6 Corrupted Thistle Bear Guts |q 13528/1 |goto 55.0,24.1
step
click Buzzbox 723##356
|tip It's a metal box with gears on it, sitting on a hill.
turnin Buzzbox 723##13528 |goto 54.2,29.3
accept A Cure In The Dark##13554 |goto 54.2,29.3
step
Follow the path up |goto 56.2,27.2 |only if walking
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto Darkshore/0 56.8,30.1
step
Enter the cave |goto 56.9,31.3 |walk
Go to the lower level of the cave |indoors Cliffspring Hollow
kill Zenn Foulhoof##33020 |q 13529/1 |goto 58.2,33.0 |indoors Cliffspring Hollow
collect Corruptor's Master Key##44927 |n |indoors Cliffspring Hollow
Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927 |indoors Cliffspring Hollow
accept Bearer of Good Fortune##13557 |indoors Cliffspring Hollow
stickystart "Freeanimals"
stickystart "Workbench"
stickystart "Vile"
step "Freeanimals"
Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |model 676 |indoors Cliffspring Hollow
Free 8 animals |q 13557/1 |goto 57.4,33.8 |indoors Cliffspring Hollow
step "Workbench"
click Disgusting Workbench##4391 |indoors Cliffspring Hollow
accept A Troubling Prescription##13831 |goto 57.4,33.8 |indoors Cliffspring Hollow
step "Vile"
kill Vile Corruptor##33022+ |indoors Cliffspring Hollow
collect 6 Foul Ichor |q 13554/1 |goto 57.0,33.2 |indoors Cliffspring Hollow
kill 8 Vile Grell##33021+ |q 13529/2 |goto 57.0,33.2 |indoors Cliffspring Hollow
step
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto 51.1,19.7
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto 51.1,19.7
turnin Bearer of Good Fortune##13557 |goto 51.1,19.7
turnin A Troubling Prescription##13831 |goto 51.1,19.7
step
talk Volcor##32960
accept A Lost Companion##13564 |goto 50.9,18.0
step
talk Cerellean Whiteclaw##32959
accept A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept The Final Flame of Bashal'Aran##13562 |goto 50.2,19.8
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto 46.8,33.3
step
click The Final Flame of Bashal'Aran##5151+
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto 45.9,34.2
step
kill Anaya Dawnrunner##33181 |q 13563/1 |goto 48.5,36.6
collect Anaya's Pendant |q 13563/2 |goto 48.5,36.6
step
kill 6 Cursed Highborne##33179+ |q 13561/1 |goto 48.2,36.4
kill 6 Writhing Highborne##33180+ |q 13561/2 |goto 48.2,36.4
step
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto 46.8,33.3
step
Go to this spot
Locate Grimclaw |q 13564/1 |goto 42.9,39.0
|tip He's a dead white bear laying on the ground.
|modelnpc Grimclaw##33053
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto 43.0,39.0
accept Unsavory Remedies##13598 |goto 43.0,39.0
accept Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
accept Twice Removed##13565 |goto 42.9,39.0
step
clicknpc Moonstalker##33127+
|tip Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
collect 3 Moonstalker Whisker |q 13566/1 |goto 42.4,39.8
step
clicknpc Mottled Doe##33313+
collect 3 Tuft of Mottled Doe Hair |q 13566/2 |goto 44.1,40.8
step
clicknpc Hungry Thistle Bear##33978+
collect 3 Thistle Bear Fur |q 13566/3 |goto 46.6,38.9
step
kill Lady Janira##33207 |q 13565/1 |goto 48.6,40.4
stickystart "Witheredents"
stickystart "Fumingtoadstool"
step "Witheredents"
kill Darkscale Scout##33206+
Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
Call 6 Withered Ents |q 13565/2 |goto 47.7,39.7
step "Fumingtoadstool"
click Fuming Toadstool##329+
collect 6 Fuming Toadstool |q 13598/1 |goto 47.7,39.7
step
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto 43.0,39.0
turnin Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto 42.9,39.0
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto 43.0,39.0
step
click Grovekeeper's Incense##8683
Breathe in the smoke to entice visions of the great animal spirits |havebuff Interface\Icons\Spell_Nature_Sleep |q 13569 |goto 42.9,39.0
step
talk Great Stag Spirit##33133
|tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
accept Spirit of the Stag##13567 |goto 43.8,40.2 |instant
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto 43.0,39.0
accept Grimclaw's Return##13599 |goto 43.0,39.0
step
talk Serendia Oakwhisper##32972
turnin Grimclaw's Return##13599 |goto 50.9,18.2
step
talk Cerellean Whiteclaw##32959
turnin A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin The Final Flame of Bashal'Aran##13562 |goto 50.7,19.4
accept The Shatterspear Invaders##13589 |goto 50.7,19.4
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto 51.0,19.2
step
click Decoy Bot Control Console##6424
As the robot, walk north underwater to get near a group of murlocs
Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
kill 50 Scavenging Greymist Murlocs |q 13560/1 |goto 53.0,11.0
|modelnpc Greymist Warrior##33277+
|modelnpc Greymist Tidehunter##33262+
step
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto 51.0,19.2
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto 58.9,19.5
stickystart "Shatterspear"
stickystart "Relic"
stickystart "Overseer"
step "Overseer"
kill Shatterspear Overseer##32863
collect Overseer's Orders##44979 |n
Click the Overseer's Orders in your bags |use Overseer's Orders##44979
accept Reason to Worry##13506 |goto 60.5,21.3
step "Shatterspear"
kill 10 Shatterspear Laborer##32861+ |q 13504/1 |goto 60.5,21.3
step "Relic"
click Highborne Relic##404+
collect 8 Highborne Relic |q 13505/1 |goto 60.5,21.3
step
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto 58.9,19.4
accept Swift Response##13508 |goto 58.9,19.4
accept War Supplies##13509 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto 58.9,19.4
stickystart "Torch"
stickystart "Kill"
step "Torch"
Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999
|tip They look like brown wooden crates around this area.
Burn 12 Shatterspear Armaments |q 13509/1 |goto 61.6,11.6
step "Kill"
kill 6 Horde Enforcer##32859+ |q 13507/1 |goto 61.6,11.6
kill 6 Shatterspear Mystic##34248+ |q 13507/2 |goto 61.6,11.6
step
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto 63.8,6.0
accept One Bitter Wish##13511 |goto 63.8,6.0
step
kill Rit'ko##32970 |q 13511/1 |goto 64.1,5.3
collect Shatterspear Torturer's Cage Key##45040 |q 13510 |goto 64.1,5.3 |future
step
click Shatterspear Cage##1787+
talk Sentinel Aynasha##32964 |goto 64.5,5.5
accept Timely Arrival##13510 |goto 64.5,5.5
step
Follow Sentinel Aynasha as she runs
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto 60.2,7.0
|modelnpc Sentinel Aynasha##32964
step
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto 58.9,19.4
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto 58.9,19.4
turnin War Supplies##13509 |goto 58.9,19.4
turnin Timely Arrival##13510 |goto 58.9,19.4
accept Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto 58.9,19.5
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto 59.1,19.6
step
Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995
|tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto 61.2,20.4
step
kill Teegan Holloway##34033 |q 13844/1 |goto 58.2,23.9
|tip He's an undead that walks around in this broken tower.
step
click Charred Book##2530
collect Narassin's Tome |q 13844/2 |goto 58.3,24.0
step
Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto 56.8,25.9
step
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet |q 13513/1 |goto 57.2,25.1
step
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto 58.9,19.4
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto 59.1,19.6
step
Follow the path up |goto 63.6,20.0 |only if walking
Enter the tunnel |goto 67.5,18.7 |only if walking
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto 69.1,19.3
step
Click the Vengeful Protector to ride on it |invehicle |q 13514 |goto 69.5,18.8 |modelnpc 43742
step
Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
kill Shatterspear Champion##32858+
kill Shatterspear Raider##33071+
kill Shatterspear Priestess##32855+
Kill 30 Shatterspear Vale Trolls |q 13514/1 |goto 70.3,20.1
Destroy 6 Shatterspear Structures |q 13514/2 |goto 70.3,20.1
step
Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514 |goto 69.5,18.8
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto 69.1,19.3
step
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto 72.3,19.1
accept Ending the Threat##13515 |goto 72.3,19.1
step
talk Huntress Sandrya Moonfall##33178
Tell you are ready, begin the attack
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto 72.3,19.1
|tip Make sure to loot his corpse.
collect Hellscream's Missive##46318 |n
Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
accept Disturbing Connections##13591 |goto 72.3,19.1
step
talk Huntress Sandrya Moonfall##33178
turnin Ending the Threat##13515 |goto 72.4,18.8
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto 50.7,19.7
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto 50.1,19.5 |instant
step
talk Sentinel Lendra##32912
accept The Twilight's Hammer##13519 |goto 50.3,20.4
accept Twilight Plans##13596 |goto 50.3,20.4
step
talk Moon Priestess Tharill##32932
accept Power Over the Tides##13523 |goto 44.6,30.8
step
kill High Cultist Azerynn##32899 |q 13519/1 |goto 43.7,31.4
step
kill Enraged Tidal Spirit##32890+
Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
Sooth 6 Tidal Spirits |q 13523/1 |goto 44.3,30.1
step
talk Moon Priestess Tharill##32932
turnin Power Over the Tides##13523 |goto 44.6,30.8
stickystart "Fanatic"
stickystart "Twlightplans"
step "Fanatic"
kill 10 Twilight Fanatic##32888 |q 13519/2 |goto 44.7,31.1
step "Twlightplans"
click Twilight Plans##163
collect 6 Twilight Plans |q 13596/1 |goto 44.7,31.1
You can find more around [Darkshore,43.9,32.5]
step
talk Sentinel Lendra##32912
turnin The Twilight's Hammer##13519 |goto 50.3,20.4
turnin Twilight Plans##13596 |goto 50.3,20.4
accept In Aid of the Refugees##13601 |goto 50.3,20.4
step
talk Priestess Alinya##33107
turnin In Aid of the Refugees##13601 |goto 42.5,45.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)",
startlevel=16.80,
dynamic=true,
endlevel=17
},[[
step
talk Sentinel Selarin##3694
accept Against the Wind##13542 |goto Darkshore,42.5,45.2
step
talk Corvine Moonrise##32987
accept Three Hammers to Break##13543 |goto 42.7,45.1
accept Malfurion's Return##13573 |goto 42.7,45.1
step
talk Yalda##6887
accept Coaxing the Spirits##13547 |goto 39.1,43.2
step
talk Caylais Moonfeather##33037
|tip She's laying on the dock.
Coax the spirit out of Caylais Moonfeather's still corpse
Coax Caylais Moonfeather's spirit |q 13547/4 |goto 38.1,44.0
step
kill Windmaster Tzu-Tzu##32989 |q 13543/2 |goto 37.8,42.8
step
talk Taldan##33035
Coax Taldan's corpse to give up its spirit
Coax Taldan's spirit |q 13547/3 |goto 38.5,41.9
step
talk Sentinel Elissa Starbreeze##33033
|tip She's laying on the ground on the bottom floor of this building.
Coax the spirit out of Sentinel Elissa Starbreeze's corpse
Coax Sentinel Elissa Starbreeze's spirit |q 13547/2 |goto 41.0,41.4
step
kill Cloudtamer Wildmane##32988 |q 13543/1 |goto 40.8,41.5
step
talk Thundris Windweaver##33001
|tip He's laying on the ground inside this building.
Coax Thundris Windweaver's spirit
Coax Thundris Windweaver's spirit |q 13547/1 |goto 39.3,38.9
step
kill Skylord Braax##32990 |q 13543/3 |goto 39.1,38.3
step
kill Frenzied Cyclone##32985+
collect 8 Frenzied Cyclone Bracers##44868 |q 13542 |goto 40.1,41.6
step
Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
Destroy 8 Frenzied Cyclone Bracers |q 13542/1 |goto 39.5,42.1
step
talk Yalda##6887
turnin Coaxing the Spirits##13547 |goto 39.1,43.2
accept Call Down the Thunder##13558 |goto 39.1,43.2
step
click Aetherion Ritual Orb##8552
kill Aetherion##33041
collect Aetherion's Essence |q 13558/1 |goto 36.6,41.0
step
talk Archaeologist Hollee##33232
accept The Last Refugee##13605 |goto 38.6,42.5
Follow her around and protect her
Escort Archaeologist Hollee to safety |q 13605/1
step
talk Sentinel Selarin##3694
turnin Against the Wind##13542 |goto 42.5,45.1
step
talk Elisa Steelhand##33231
turnin The Last Refugee##13605 |goto 42.6,45.3
step
talk Corvine Moonrise##32987
turnin Three Hammers to Break##13543 |goto 42.7,45.1
turnin Call Down the Thunder##13558 |goto 42.7,45.1
step
Follow the path up |goto 43.3,51.4 < 5 |only if walking
confirm |only if walking
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",
startlevel=17.47,
dynamic=true,
endlevel=18
},[[
step
talk Malfurion Stormrage##33091
turnin Malfurion's Return##13573 |goto Darkshore,43.7,53.4
accept The Land Is in Their Blood##13575 |goto Darkshore,43.7,53.4
accept The Last Wildkin##13577 |goto Darkshore,43.7,53.4
accept Protector of Ameth'Aran##13579 |goto Darkshore,43.7,53.4
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin The Last Wildkin##13577 |goto 45.6,48.5 |indoors Moontouched Den
accept Aroom's Farewell##13578 |goto 45.6,48.5 |indoors Moontouched Den
step
click Slain Wildkin Feather##2630+
collect 8 Slain Wildkin Feather |q 13578/1 |goto 44.1,48.5
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin Aroom's Farewell##13578 |goto 45.6,48.5 |indoors Moontouched Den
accept Elune's Fire##13582 |goto 45.6,48.5 |indoors Moontouched Den
step
kill Horoo the Flamekeeper##34385
|tip He's a white owlkin spirit that walks around this area.
collect Elune's Torch |q 13582/1 |goto 46.6,50.7
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin Elune's Fire##13582 |goto 45.6,48.5 |indoors Moontouched Den
accept The Wildkin's Oath##13583 |goto 45.6,48.5 |indoors Moontouched Den
step
talk Elder Brownpaw##33117
turnin The Land Is in Their Blood##13575 |goto 41.0,56.5
accept Mutual Aid##13576 |goto 41.0,56.5
step
kill Unbound Fire Elemental##32999+
Use your Soothing Totem on their corpses |use Soothing Totem##44959
Absorb 8 Unbound Fire Elemental |q 13576/1 |goto 40.6,59.2
step
talk Elder Brownpaw##33117
turnin Mutual Aid##13576 |goto 40.9,56.5
accept Soothing the Elements##13580 |goto 40.9,56.5
step
Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
Defend the Energized Soothing Totem
Complete the Ritual of Soothing |q 13580/1 |goto 39.7,62.4
step
talk Elder Brownpaw##33117
turnin Soothing the Elements##13580 |goto 40.9,56.5
accept The Blackwood Pledge##13581 |goto 40.9,56.5
step
talk Selenn##33112
turnin Protector of Ameth'Aran##13579 |goto 44.4,56.8
accept Calming the Earth##13584 |goto 44.4,56.8
step
kill 8 Enraged Earth Elemental##33083 |q 13584/1 |goto 44.3,55.8
step
talk Selenn##33112
turnin Calming the Earth##13584 |goto 44.4,56.8
accept Sworn to Protect##13585 |goto 44.4,56.8
step
Follow the path up |goto 43.6,55.1 |only if walking
talk Malfurion Stormrage##33091
turnin The Blackwood Pledge##13581 |goto 43.6,53.4
turnin The Wildkin's Oath##13583 |goto 43.6,53.4
turnin Sworn to Protect##13585 |goto 43.6,53.4
accept The Emerald Dream##13586 |goto 43.6,53.4
step
Follow the path up |goto 46.5,54.3 |only if walking
Enter the cave |goto 47.2,56.0 |walk
Follow the path to the end of the cave
clicknpc Nightmare Portal##38430 |indoors Earthshatter Cavern
Enter the Nightmare World |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 13586 |goto 49.0,57.1 |indoors Earthshatter Cavern
step
talk Thessera##33166 |indoors Earthshatter Cavern
turnin The Emerald Dream##13586 |goto 49.2,56.9 |indoors Earthshatter Cavern
accept The Waking Nightmare##13587 |goto 49.2,56.9 |indoors Earthshatter Cavern
step
kill Nightmare Guardian##34398  |indoors Earthshatter Cavern
|tip The Nightmare Guardian walks along this path.
collect Emerald Scroll |q 13587/1 |goto 49.6,55.3 |indoors Earthshatter Cavern
step
talk Thessera##33166 |indoors Earthshatter Cavern
turnin The Waking Nightmare##13587 |goto 49.2,56.9 |indoors Earthshatter Cavern
accept Leaving the Dream##13940 |goto 49.2,56.9 |indoors Earthshatter Cavern
step
talk Malfurion Stormrage##33091
turnin Leaving the Dream##13940 |goto 43.7,53.5
accept The Eye of All Storms##13588 |goto 43.7,53.5
step
Click Thessera to ride on her |modelnpc Warp-Huntress Kula##32711
While flying, use the Emerald Barrage ability on your hotbar to do the following:
kill Twilight Portal##34316+ |q 13588/1 |goto 43.5,53.7
kill 12 Twilight Rider##34282+ |q 13588/2 |goto 43.5,53.7
step
Use the Land Thessera ability on your hotbar
Thessera will take you back to the ground |outvehicle |q 13588
step
talk Malfurion Stormrage##33091
turnin The Eye of All Storms##13588 |goto 43.7,53.5
accept Mounting the Offensive##13902 |goto 43.7,53.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)",
startlevel=18.55,
dynamic=true,
endlevel=21
},[[
step
talk Delanea##33253
fpath Grove of the Ancients |goto Darkshore,44.4,75.5
step
talk Foriel Broadleaf##33250
accept What's Happening to the Blackwood Furbolg?##13525 |goto Darkshore 45.1,75.2
step
talk Balren of the Claw##34402
turnin Mounting the Offensive##13902 |goto 45.3,75.1
accept Leave No Tracks##13892 |goto 45.3,75.1
step
talk Kathrena Winterwisp##34301
accept Consumed##13881 |goto 45.2,74.6
step
Go to this spot underwater
Investigate the Watering Hole |q 13881/2 |goto 45.0,79.2
step
kill 6 Consumed Thistle Bear##34302+ |q 13881/1 |goto 44.7,79.4
step
talk Elder Brolg##32967
turnin What's Happening to the Blackwood Furbolg?##13525 |goto 43.5,81.0
accept The Bear's Paw##13526 |goto 43.5,81.0
step
click Bear's Paw##7816+
collect 8 Bear's Paw |q 13526/1 |goto 44.0,81.6
step
talk Elder Brolg##32967
turnin The Bear's Paw##13526 |goto 43.5,81.0
accept The Bear's Blessing##13544 |goto 43.5,81.0
step
kill Fleetfoot##32997
|tip He's a plainstrider that walks around this pond area.
collect Fleetfoot's Tailfeathers##44886 |q 13544 |goto 44.8,78.5
step
Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888
|tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
collect Blessed Herb Bundle |q 13544/1 |goto 45.3,76.8
step
talk Kathrena Winterwisp##34301
turnin Consumed##13881 |goto 45.2,74.6
accept The Seeds of Life##13882 |goto 45.2,74.6
step
talk Onu##33072
Ask him where you may find a Seed of the Earth
collect Seed of the Earth |q 13882/1 |goto 45.4,74.8
step
clicknpc Darkshore Wisp##34306
|tip Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
collect Seed of the Sky |q 13882/3 |goto 42.1,79.0
step
talk Elder Brolg##32967
turnin The Bear's Blessing##13544 |goto 43.5,81.0
accept Cleansing the Afflicted##13545 |goto 43.5,81.0
step
talk Gren Tornfur##32968
accept Jadefire Braziers##13572 |goto 43.6,81.0
stickystart "Furbolgcleanse"
stickystart "Jadefirebrazier"
step "Furbolgcleanse"
Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
kill Spirit of Corruption##33000+
Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |goto 44.1,82.5
|tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
step  "Jadefirebrazier"
Click Jadefire Brazier to destroy them |model Jadefire Brazier##8553
Destroy 8 Jadefire Brazier |q 13572/1 |goto 44.1,82.5
step
talk Elder Brolg##32967
turnin Cleansing the Afflicted##13545 |goto 43.5,81.0
accept The Defiler##13546 |goto 43.5,81.0
step
talk Gren Tornfur##32968
turnin Jadefire Braziers##13572 |goto 43.6,81.0
step
Enter the cave |goto 46.3,83.7 |walk
kill Sharax the Defiler##32996+ |q 13546/1 |goto 46.8,84.0
step
talk Elder Brolg##32967
turnin The Defiler##13546 |goto 43.5,81.0
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13892 |goto 42.4,82.3
step
Avoid the Faceless Ones, they can see through your panther disguise stealth
Stand in this spot and listen to Foreman Balsoth
Complete the Twilight's Hammer surveillance |q 13892/1 |goto 40.6,84.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Leave No Tracks##13892
accept Stepping Up Surveillance##13948
|modelnpc Foreman Balsoth##34406
step
click Glittering Shell##261
collect Seed of the Sea |q 13882/2 |goto 38.6,78.2
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13948 |goto 39.2,85.1
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto 39.8,86.4
Follow the path up |goto 39.8,86.4 < 5
confirm
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto 41.1,85.4
Follow the path up |goto 41.1,85.4 < 5
confirm
step
Go to this spot
Watch the dialogue
Complete the Master's Glaive Surveillance |q 13948/1 |goto 39.9,84.8
modelnpc Thalya the Voidcaller##34427
modelnpc Doomspeaker Trevellion##34326
step
talk Kathrena Winterwisp##34301
turnin The Seeds of Life##13882 |goto 45.2,74.6
accept An Ounce of Prevention##13925 |goto 45.2,74.6
step
talk Balren of the Claw##34402
turnin Stepping Up Surveillance##13948 |goto 45.3,75.1
step
talk Larien##34404
accept Unearthed Knowledge##13896 |goto 45.3,75.1
step
Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
Test the Lifebringer Sapling |q 13925/1 |goto 42.3,76.7
modelnpc Consumed Thistle Bear##34302
modelnpc Grizzled Thistle Bear##2165
step
talk Kathrena Winterwisp##34301
turnin An Ounce of Prevention##13925 |goto 45.2,74.6
accept In Defense of Darkshore##13885 |goto 45.2,74.6
step
talk Orseus##34392
Tell him Kathrena sent you to borrow one of his Hippogryphs
From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
Protect 8 Grizzled Thistle Bears |q 13885/1 |goto 44.5,75.3
Protect 8 Moonstalkers |q 13885/2 |goto 44.5,75.3
Protect 8 Whitetail Deers |q 13885/3 |goto 44.5,75.3
step
talk Kathrena Winterwisp##34301
turnin In Defense of Darkshore##13885 |goto 45.2,74.6
accept The Devourer of Darkshore##13891 |goto 45.2,74.6
step
Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
kill Yoth'al the Devourer##34331
Destroy the Devouring Artifact |q 13891/1 |goto 45.1,78.7
step
talk Kathrena Winterwisp##34301
turnin The Devourer of Darkshore##13891 |goto 45.2,74.6
step
talk Archaeologist Groff##34340
turnin Unearthed Knowledge##13896 |goto 37.7,82.8
accept Soggoth and Kronn##13893 |goto 37.7,82.8
accept Sweeping Clean the Ruins##13907 |goto 37.7,82.8
step
talk Prospector Remtravel##34343
accept The Absent-Minded Prospector##13911 |goto 37.7,82.9
Escort Prospector Remtravel |q 13911/1 |goto 37.7,82.9
step
talk Jr. Archaeologist Ferd##34342
turnin The Absent-Minded Prospector##13911 |goto 37.8,82.9
accept Swamped Secrets##13912 |goto 37.8,82.9
step
click Mud-Crusted Ancient Disc##8763
collect Mud-Crusted Ancient Disc |q 13912/1 |goto 37.0,83.4
step
kill Greymist Refugee##34339+, Greymist Oracle##2207+
Kill 10 Murloc Squatters |q 13907/1 |goto 36.4,83.6
step
talk Archaeologist Groff##34340
turnin Sweeping Clean the Ruins##13907 |goto 37.7,82.8
accept Got Some Flotsam?##13909 |goto 37.7,82.8
step
talk Jr. Archaeologist Ferd##34342
turnin Swamped Secrets##13912 |goto 37.8,82.9
accept The Titans' Terminal##13918 |goto 37.8,82.9
stickystart "Debris"
stickystart "Ancientdevice"
step "Ancientdevice"
Use your Buried Artifact Detector on the beach |use Buried Artifact Detector##46388
click Buried Debris that spawns |model 49
collect 5 Ancient Device Fragment##46702 |n
Use an Ancient Device Fragment to combine them |use Ancient Device Fragment##46702
collect Ancient Slotted Device |q 13918/1 |goto 37.1,81.2
step "Debris"
click Greymist Debris##8688
collect 5 Salvageable Greymist Wreckage |q 13909/1 |goto 37.1,81.2
step
talk Archaeologist Groff##34340
turnin Got Some Flotsam?##13909 |goto 37.7,82.8
accept A New Home##13910 |goto 37.7,82.8
step
talk Jr. Archaeologist Ferd##34342
turnin The Titans' Terminal##13918 |goto 37.8,82.9
step
Use your Marvelous Mobile Murloc Manor Maker at the Greymist Murloc Build Site |use Marvelous Mobile Murloc Manor Maker##46385
|tip It looks like a white sign stuck in the ground on the beach.
Build the Greymist Murloc Home |q 13910/1 |goto 35.9,81.9
step
talk Archaeologist Groff##34340
turnin A New Home##13910 |goto 37.7,82.8
step
talk Larien##34404
turnin Soggoth and Kronn##13893 |goto 45.3,75.1
step
talk Onu##33072
accept The Slumbering Ancients##13895 |goto 45.4,74.9
step
talk Aros##34446
turnin The Slumbering Ancients##13895 |goto 45.7,71.7
step
talk Darkscale Assassin##34498
accept Naga In Our Midst##13953 |goto 45.6,71.7
step
talk Balren of the Claw##34402
turnin Naga In Our Midst##13953 |goto 45.3,75.1
accept The Darkscale Warlord##13899 |goto 45.3,75.1
step
talk Felros##34403
accept The Tides Turn Against Us##13898 |goto 45.4,75.1
step
Enter the cave |goto 33.4,83.7 |walk
Follow the path down to the end of the cave |indoors Nazj'vel
kill Warlord Wrathspine##34423 |indoors Nazj'vel
clicknpc Warlord Wrathspine##34423 |indoors Nazj'vel
turnin The Darkscale Warlord##13899 |goto 32.3,85.4 |indoors Nazj'vel
accept The Offering to Azshara##13900 |goto 32.3,85.4 |indoors Nazj'vel
step
Follow the path back up to the exit of the cave |indoors Nazj'vel
kill 8 Darkscale Myrmidon##33079+ |q 13898/1 |goto 32.5,84.0 |indoors Nazj'vel
step
Leave the cave |goto 33.4,83.7 |walk
Follow the path up |goto 33.6,84.1 |only if walking
kill Darkscale Priestess##34415+
Prevent the Offering to Azshara |q 13900/1 |goto 32.9,84.2
step
talk Malfurion Stormrage##34422
turnin The Offering to Azshara##13900 |goto 32.8,84.3
accept The Battle for Darkshore##13897 |goto 32.8,84.3
step
Use your Horn of the Ancients on Avatar of Soggoth |use Horn of the Ancients##58365
|tip He's a big octopus looking giant.
kill Avatar of Soggoth##34485 |q 13897/1 |goto 40.3,83.9
step
talk Balren of the Claw##34402
turnin The Battle for Darkshore##13897 |goto 45.3,75.1
accept Ashes in Ashenvale##26408 |goto 45.3,75.1
step
talk Felros##34403
turnin The Tides Turn Against Us##13898 |goto 45.4,75.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Kalimdor (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Kingdoms (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\The Burning Crusade (60-62)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Worgen (1-13)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Gilneas",
condition_suggested="raceclass('Worgen') and level<=13 and not completedq(28517) and not raceclass('DEATHKNIGHT')",
condition_suggested_exclusive=true,
condition_end="completedq(28517) or raceclass('DEATHKNIGHT')",
condition_valid="raceclass('Worgen') ",
condition_valid_msg="Worgen only.",
next="Zygor's Alliance Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=1,
dynamic=true,
endlevel=12
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City,59.1,24.0
step
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.7,16.6
accept Something's Amiss##14091 |goto 54.7,16.6
step
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.8,22.2
accept All Hell Breaks Loose##14093 |goto 59.8,22.2
accept Evacuate the Merchant Square##14098 |goto 59.8,22.2
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.6,26.8
step
kill 8 Rampaging Worgen##34884 |q 14093/1 |goto 56.0,28.6
click Supply Crate##336+
collect 4 Salvaged Supplies |q 14094/1 |goto 56.0,28.6
click Merchant Square Door##9023+ |model Market Home
Evacuate 3 Market Homes |q 14098/1 |goto 56.0,28.6
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.5,26.8
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.9,22.3
turnin Evacuate the Merchant Square##14098 |goto 59.9,22.3
accept Royal Orders##14099 |goto 59.9,22.3
step
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.8,55.1
accept Your Instructor##14265 |goto 70.8,55.1 |only Worgen Warrior |noobsolete
accept Someone's Looking for You##14269 |goto 70.8,55.1 |only Worgen Rogue |noobsolete
accept Shady Associates##14273 |goto 70.8,55.1 |only Worgen Warlock |noobsolete
accept Someone's Keeping Track of You##14275 |goto 70.8,55.1 |only Worgen Hunter |noobsolete
accept Arcane Inquiries##14277 |goto 70.8,55.1 |only Worgen Mage |noobsolete
accept Seek the Sister##14278 |goto 70.8,55.1 |only Worgen Priest |noobsolete
accept The Winds Know Your Name... Apparently##14280 |goto 70.8,55.1 |only Worgen Druid |noobsolete
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto 67.1,63.5
accept Safety in Numbers##14286 |goto 67.1,63.5 |noobsolete
only Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto 71.4,65.8
accept Safety in Numbers##14285 |goto 71.4,65.8 |noobsolete
only Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto 71.4,64.4
accept Safety in Numbers##14287 |goto 71.4,64.4 |noobsolete
only Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto 71.5,61.3
accept Safety in Numbers##14290 |goto 71.5,61.3 |noobsolete
only Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto 68.0,64.7
accept Safety in Numbers##14288 |goto 68.0,64.7
only Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto 70.4,65.5
accept Safety in Numbers##14289 |goto 70.4,65.5
only Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto 70.2,66.0
accept Safety in Numbers##14291 |goto 70.2,66.0
only Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.8,77.7 |only Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.8,77.7 |only Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.8,77.7 |only Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.8,77.7 |only Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.8,77.7 |only Worgen Mage
turnin Safety in Numbers##14289 |goto 65.8,77.7 |only Worgen Priest
turnin Safety in Numbers##14291 |goto 65.8,77.7 |only Worgen Druid
accept Old Divisions##14157 |goto 65.8,77.7
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.4,77.6
step
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 58.9,67.3
step
Enter the doorway |goto 57.8,73.5
talk Captain Broderick##50371
turnin Old Divisions##14157 |goto 57.9,75.6
accept The Prison Rooftop##28850 |goto 57.9,75.6
step
Follow the staircase up to this point |goto 57.5,76.0 <5
Follow the spiral stairs up
talk Lord Darius Crowley##35077
turnin The Prison Rooftop##28850 |goto 55.2,62.9
accept By the Skin of His Teeth##14154 |goto 55.2,62.9
step
Kill the worgen that attack in droves
Survive while holding back the worgen for 2 minutes |q 14154/1 |goto 55.2,62.9
|tip You will receive a buff that lets you know how much time is left.
step
talk Lord Darius Crowley##35077
turnin By the Skin of His Teeth##14154 |goto 55.2,63.0
accept Brothers In Arms##26129 |goto 55.2,63.0
step
Go downstairs to the street
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.8,77.7
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.3,77.5
step
talk King Genn Greymane##35112
accept The Rebel Lord's Arsenal##14159 |goto 65.8,77.7 |noobsolete
step
Click the Cellar Door and go down the steps |goto 55.8,81.5,0.5 |click Cellar Door##9028
talk Josiah Avery##35369
turnin The Rebel Lord's Arsenal##14159 |goto 56.8,85.4
step
talk Lorna Crowley##35378
accept From the Shadows##14204 |goto 56.9,81.4
step
Go upstairs to the street |tip Use your Mastiff's Attack Lurker ability on your pet action bar to help you find the Bloodfang Lurkers.
kill 6 Bloodfang Lurker##35463+ |q 14204/1 |goto 47.8,72.0
step
talk Lorna Crowley##35378
turnin From the Shadows##14204 |goto 56.8,81.4
accept Message to Greymane##14214 |goto 56.8,81.4
step
Go upstairs to the street
talk King Genn Greymane##35550
turnin Message to Greymane##14214 |goto 59.2,83.8
accept Save Krennan Aranas##14293 |goto 59.2,83.8
step
You will start riding a horse:
Spam the Rescue Krennan ability on your hotbar when your horse takes a big leap |tip You should see Krennan Aranas dangling in a tree.
Rescue Krennan Aranas |q 14293/1
modelnpc Krennan Aranas##35753
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.7,80.7
accept Time to Regroup##14294 |goto 55.7,80.7
step
Go to this spot |goto 53.7,84.0 <5 |n
Follow this outside road around as you walk |goto 47.6,83.7
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.4,73.2
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.1,72.4
step
clicknpc Click Crowley's Horse##44429
Ride the horse |invehicle |c |q 14212 |goto 31.3,72.7
step
As you ride on the horse:
Use the Throw Torch ability on your hotbar on Bloodfang Stalkers |tip They will chase you.
Round up 30 Bloodfang Stalkers |q 14212/1
modelnpc 35229
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.5,39.4
accept By Blood and Ash##14218 |goto 40.5,39.4
step
Click a Rebel Cannon |tip They look like silver cannons lined up.
Use the Rebel Cannon ability on the worgen to shoot them
kill 80 Bloodfang Stalker##35229 |q 14218/1
modelnpc 35317
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.6,39.4
accept Never Surrender, Sometimes Retreat##14221 |goto 40.6,39.4
step
talk Lord Darius Crowley##35566
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.9,52.8
accept Last Stand##14222 |goto 48.9,52.8
step
kill 8 Frenzied Stalker##35627+ |q 14222/1 |goto 47.1,49.8
step
talk Lord Darius Crowley##35566
turnin Last Stand##14222 |goto 48.9,52.8
step
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto 679/0 36.4,61.3 |instant
step
talk Lord Godfrey##36170
accept Among Humans Again##14313 |goto 36.5,62.3
step
talk Krennan Aranas##36132
turnin Among Humans Again##14313 |goto 37.3,63.4
accept In Need of Ingredients##14320 |goto 37.3,63.4
step
talk Willa Arnes##38791
home Duskhaven |goto 36.8,65.7
step
click Crate of Mandrake Essence##9093
turnin In Need of Ingredients##14320 |goto 32.8,66.4
step
clicknpc Slain Watchman##36205
accept Invasion##14321 |goto 32.8,66.1
step
talk Gwen Armstead##34571
turnin Invasion##14321 |goto 37.3,63.5
accept Kill or Be Killed##14336 |goto 37.3,63.5
step
talk Prince Liam Greymane##36140
|tip He moves around, fighting around this area near the buildings, so you may need to search for him.
turnin Kill or Be Killed##14336 |goto 35.5,66.3
accept Hold the Line##14347 |goto 35.5,66.3
accept You Can't Take 'Em Alone##14348 |goto 35.5,66.3
step
kill 10 Forsaken Invader##34511 |q 14347/1
Click Black Gunpowder Kegs
collect Black Gunpowder Keg##49202 |n
Use the Black Gunpowder Kegs on Horrid Abominations |use Black Gunpowder Keg##49202
Throw Gunpowder Kegs at 4 Horrid Abominations |q 14348/1 |goto 34.1,68.0
model 9095
modelnpc 36231
step
talk Prince Liam Greymane##36140
turnin Hold the Line##14347 |goto 35.5,66.2
turnin You Can't Take 'Em Alone##14348 |goto 35.5,66.2
accept Holding Steady##14366 |goto 35.5,66.2
step
talk Gwen Armstead##34571
turnin Holding Steady##14366 |goto 37.3,63.5
accept The Allens' Storm Cellar##14367 |goto 37.3,63.5
step
Enter the cellar |goto 28.2,63.9 <5
talk Lord Godfrey##36290
turnin The Allens' Storm Cellar##14367 |goto 29.0,63.9
accept Unleash the Beast##14369 |goto 29.0,63.9
accept Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
accept Save the Children!##14368 |goto 28.9,64.0
step
talk Ashley##36288 |tip Ashley is in the top room of the house.
Rescue Ashley |q 14368/2 |goto 27.9,66.7
step
talk James##36289
Rescue James |q 14368/3 |goto 28.5,66.8
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.6,69.3
step
Find a Forsaken Catapult and kill the Forsaken Machinist driving it. |kill Forsaken Machinist##36292 |n
invehicle |clicknpc Forsaken Catapult##36283 |q 14382 |goto 25.1,72.3
step
Use the Launch ability on your hotbar to launch yourself onto the deck of the Forsaken ship at [24.6,76.0]
kill Captain Anson##36397 |q 14382/1 |goto 23.80,74.77 |tip He is on the bottom level of the ship, one layer down, towards the back.
step
Find a Forsaken Catapult and kill the Forsaken Machinist driving it. |kill Forsaken Machinist##36292 |n
clicknpc Forsaken Catapult##36283 |invehicle |q 14382 |goto 25.1,72.3
step
Use the Launch ability on your hotbar to launch yourself onto the deck of the Forsaken ship at [27.5,80.3]
kill Captain Morris##36399 |q 14382/2 |goto 26.9,79.5 |tip He is on the bottom level of the ship, one layer down, towards the back.
step
from Forsaken Infantry##38616+, Forsaken Slavedriver##37701+, Forsaken Sailor##36396+
kill 8 Forsaken Combatants |q 14369/1 |goto 25.2,70.3
step
Enter the cellar |goto 28.2,63.9 <5
talk Lord Godfrey##36290
turnin Unleash the Beast##14369 |goto 29.0,63.9
turnin Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
turnin Save the Children!##14368 |goto 28.9,64.0
step
talk Lord Godfrey##36290
accept Leader of the Pack##14386 |goto 29.0,63.9
step
Use your Mastiff Whistle near Dark Ranger Thyala |use Mastiff Whistle##49240
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.9,68.3
step
Enter the cellar |goto 28.2,63.9 <5
talk Lord Godfrey##36290
turnin Leader of the Pack##14386 |goto 29.0,63.9
accept As the Land Shatters##14396 |goto 29.0,63.9
step
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.0,65.0
accept Gasping for Breath##14395 |goto 29.0,65.0
step
clicknpc Drowning Watchman##36440+
Carry the Drowning Watchmen to [29.0,65.1]
Rescue 4 Drowning Watchmen |q 14395/1 |goto 26.9,68.4
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.0,65.0
accept Evacuation##14397 |goto 29.0,65.0
step
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.6,65.2
accept Grandma Wahl##14398 |goto 37.6,65.2
accept The Hayward Brothers##14403 |goto 37.6,65.2
accept The Crowley Orchard##14406 |goto 37.6,65.2
step
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.7,72.8
accept The Hungry Ettin##14416 |goto 37.7,72.8
step
clicknpc Mountain Horse##36540
Use your Round Up Horse ability on 4 other horses |tip Watch out for the elite Ettin walking around.
Bring the 5 Mountain Horses back to Lorna Crowley at [37.7,72.8]
Rescue 5 Mountain Horses |q 14416/1 |goto 39.6,78.8
modelnpc Koroth the Hillbreaker##36528
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.7,72.8
step
talk Grandma Wahl##36458
turnin Grandma Wahl##14398 |goto 32.5,75.5
accept Grandma's Lost It Alright##14399 |goto 32.5,75.5
step
click Linen-Wrapped Book##00255
collect Linen-Wrapped Book |q 14399/1 |goto 34.0,77.3
step
talk Grandma Wahl##36458
turnin Grandma's Lost It Alright##14399 |goto 32.5,75.5
accept I Can't Wear This##14400 |goto 32.5,75.5
step
click Grandma's Good Clothes##09122
collect Grandma's Good Clothes |q 14400/1 |goto 32.0,75.5
step
talk Grandma Wahl##36458
turnin I Can't Wear This##14400 |goto 32.5,75.5
accept Grandma's Cat##14401 |goto 32.5,75.5
step
clicknpc Chance##36459
from Lucius the Cruel##36461
get Chance the Cat |q 14401/1 |goto 35.2,74.8
step
talk Grandma Wahl##36458
turnin Grandma's Cat##14401 |goto 32.5,75.5
step
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.9,84.2
accept Not Quite Shipshape##14404 |goto 36.9,84.2
accept Washed Up##14412 |goto 36.9,84.2
step
click Planks of Wood##06736
collect Planks of Wood |q 14404/2 |goto 36.1,86.4
step
click Shipwright's Tools##00317
collect Shipwright's Tools |q 14404/1 |goto 37.5,87.2
step
click Barrel of Coal Tar##09095
collect Coal Tar |q 14404/3 |goto 37.5,86.0
step
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.7,85.8
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.9,84.2
turnin Washed Up##14412 |goto 36.9,84.2
accept Escape By Sea##14405 |goto 36.9,84.2
step
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.6,65.2
accept To Greymane Manor##14465 |goto 37.6,65.2
You will ride a horse to Greymane Manor |invehicle |c
step
talk Queen Mia Greymane##36606
turnin To Greymane Manor##14465 |goto 679/2 62.1,49.6
accept The King's Observatory##14466 |goto 679/2 62.1,49.6
step
Follow the stairs up.
talk King Genn Greymane##36743
turnin The King's Observatory##14466 |goto 679/3 42.7,20.6
accept Alas, Gilneas##14467 |goto 679/3 42.7,20.6 |instant
step
talk King Genn Greymane##36743
accept Exodus##24438 |goto 679/3 42.7,20.6
step
Go down the curved road |goto 679/0 29.6,51.8 <10
clicknpc Stagecoach Carriage##44928 |goto 29.0,54.2
Ride in the Stagecoach Carriage |invehicle |c |q 24438
step
Arrive at Stagecoach Crash Site |goto 51.6,80.0 |c
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.8,80.5
accept Stranded at the Marsh##24468 |goto 51.8,80.5
step
from Swamp Crocolisk##37078+
Rescue 5 Crash Survivors |q 24468/1 |goto 52.9,75.2
step
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.8,80.5
accept Introductions Are in Order##24472 |goto 51.8,80.5
step
Follow the path up |goto 50.8,83.2
click Koroth's Banner##6957
collect Koroth's Banner |q 24472/2 |goto 46.7,83.3
step
kill 4 Ogre Minion##36293+ |q 24472/1 |goto 47.1,85.1
step
Follow the path down |goto 48.5,85.3
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.8,80.5
accept Stormglen##24483 |goto 51.8,80.5
step
talk Gwen Armstead##37102
turnin Stormglen##24483 |goto 59.9,91.7
accept Pest Control##24484 |goto 59.9,91.7
step
talk Willa Arnes##38792
home Stormglen Village |goto 60.1,91.7
step
talk Lorna Crowley##37815
accept Pieces of the Past##24495 |goto 60.3,91.9
step
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 64.9,91.2
click Old Journal Page##9130+
collect 6 Old Journal Page |q 24495/1
tip They look like pieces of paper laying on the ground and on boxes in this area.
step
talk Gwen Armstead##37102
turnin Pest Control##24484 |goto 59.9,91.7
accept Queen-Sized Troubles##24501 |goto 59.9,91.7
step
talk Lorna Crowley##37815
turnin Pieces of the Past##24495 |goto 60.3,91.8
step
kill Rygna##37045 |q 24501/1 |goto 68.2,81.6
step
talk Gwen Armstead##37102
turnin Queen-Sized Troubles##24501 |goto 59.9,91.7
step
talk Lorna Crowley##37815
accept The Blackwald##24578 |goto 60.3,91.8
step
talk Belrysa Starbreeze##37822
turnin The Blackwald##24578 |goto 63.3,82.9
accept Losing Your Tail##24616 |goto 63.3,82.9
step
Walk over the Freezing Trap lying in the road.
Use Belrysa's Talisman to break free from the Dark Scout's Freezing Trap |use Belrysa's Talisman##49944
kill Dark Scout##37953 |q 24616/1 |goto 65.7,81.2
step
talk Belrysa Starbreeze##37822
turnin Losing Your Tail##24616 |goto 63.4,82.9
accept Tal'doren, the Wild Home##24617 |goto 63.4,82.9
step
talk Lord Darius Crowley##37195
turnin Tal'doren, the Wild Home##24617 |goto 68.7,73.3
accept At Our Doorstep##24627 |goto 68.7,73.3
step
talk Vassandra Stormclaw##37873
accept Preparations##24628 |goto 69.3,73.0
step
kill 6 Howling Banshee##37757+ |q 24627/1 |goto 61.5,78.6
click Moonleaf##270+
collect 6 Moonleaf |q 24628/1 |goto 61.5,78.6
step
talk Lord Darius Crowley##37195
turnin At Our Doorstep##24627 |goto 68.7,73.2
accept Take Back What's Ours##24646 |goto 68.7,73.2
step
talk Vassandra Stormclaw##37873
turnin Preparations##24628 |goto 69.3,73.0
step
Use the Horn of Tal'doren to distract the Veteran Dark Rangers |goto 58.5,77.0 |use Horn of Tal'doren##50134
|tip Using the horn before engaging the Dark Rangers will summon worgen to hold agro.
Run into the cabin to [57.5,75.6]
click Worn Coffer##5743
collect Mysterious Artifact |q 24646/1 |goto 57.5,75.6
modelnpc Veteran Dark Ranger##38022
step
talk Lord Darius Crowley##37195
turnin Take Back What's Ours##24646 |goto 68.7,73.2
accept Neither Human Nor Beast##24593 |goto 68.7,73.2
step
click Well of Fury##439
Drink from Well of Fury |q 24593/1 |goto 69.0,72.8
step
click Well of Tranquility##439
Drink from Well of Tranquility |q 24593/2 |goto 69.3,73.1
step
click Well of Balance##439
Drink from Well of Balance |q 24593/3 |goto 69.1,73.5
step
talk Lord Darius Crowley##37195
turnin Neither Human Nor Beast##24593 |goto 68.7,73.2
accept Return to Stormglen##24673 |goto 68.7,73.2
step
talk Gwen Armstead##37102
turnin Return to Stormglen##24673 |goto 59.9,91.7
accept Onwards and Upwards##24672 |goto 59.9,91.7
step
Go up the hill here |goto 68.2,86.8 <10
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.7,80.1
accept Betrayal at Tempest's Reach##24592 |goto 72.7,80.1
step
Use Krennan's Potion of Stealth |goto 76.6,75.5 |use Krennan's Potion of Stealth##50218
Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
While stealthed run towards the tower |tip Avoid the dogs, they can still detect you and will attack.
kill Baron Ashbury##37735 |q 24592/1 |goto 85.6,73.5 |tip He patrols just outside of the house.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
While stealthed run into the house |tip Avoid the dogs, they can still detect you and will attack.
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03 |tip He patrols around this area and inside the house.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
talk King Genn Greymane##37876
turnin Betrayal at Tempest's Reach##24592 |goto 78.3,72.1
accept Flank the Forsaken##24677 |goto 78.3,72.1
step
talk Lord Hewell##38764 |goto 78.3,71.9
Tell him you need a horse |invehicle |c
step
Ride the horse to Livery Outpost |goto 71.6,39.6 < 5 |noway |c
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.9,39.8
accept Liberation Day##24575 |goto 70.9,39.8
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.7,39.7
step
talk Marcus##37803 |tip He walks back and forth.
accept Slaves to No One##24674 |goto 70.8,40.1
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat |q 24675/1 |goto 75.3,47.4
stickystart "Slavedriver"
step
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto 679/1 54.5,82.8 |indoors Emberstone Mine
|tip He's all the way in the back of the Emberstone Mine
modelnpc 37701
step "Slavedriver"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##181+
|tip They are attached to the Enslaved Villagers' legs, who are mining rocks around this area.
Free 5 Enslaved Gilnean |q 24575/1 |goto 75.3,31.6
step
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto 679/0 70.9,39.8
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.6,39.7
step
talk Marcus##37803 |tip He walks back and forth.
turnin Slaves to No One##24674 |goto 70.8,40.1
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.9,39.8
stickystart "ForsakenInfantry"
step
kill Executor Cornell##37686 |q 24676/2 |goto 72.8,28.4
step
kill Valnov the Mad##37685 |q 24676/3 |goto 74.1,27.7
step "ForsakenInfantry"
kill 4 Forsaken Infantry |q 24676/1 |goto 73.4,31.5
step
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.9,39.8
accept The Battle for Gilneas City##24904 |goto 70.9,39.8
step
talk Krennan Aranas##38553 |goto 70.0,40.9
Tell him let us take back our city or that you wish to join the battle underway
Arrive in Gilneas City |goto 679/0 68.86,41.92 <10 |c
step
Wait for the Gilnean Militia to run in the city
Enter the city of Gilneas here |goto 67.1,42.6,0.5 |c
step
Follow the army of Gilneans through the city and use your Rapier of the Gilnean Patriots on the crowds to heal them |use Rapier of the Gilnean Patriots##50334
Achieve victory in the Battle for Gilneas City |q 24904/1 |goto Gilneas City 38.6,60.2
step
talk Lorna Crowley##38611
turnin The Battle for Gilneas City##24904 |goto 38.6,60.2
accept The Hunt For Sylvanas##24902 |goto 38.6,60.2
step
Follow Tobias Mistmantle into Lights' Dawn Cathedral. Hide in the water when he tells you to and listen to the meeting.
Hunt for Sylvanas |q 24902/1 |goto 44.1,51.6
modelnpc Lady Sylvanas Windrunner##38469
modelnpc Tobias Mistmantle##35618
step
talk Lorna Crowley##38611
turnin The Hunt For Sylvanas##24902 |goto 38.6,60.3
accept Vengeance or Survival##24903 |goto 38.6,60.3
step
talk King Genn Greymane##38539
turnin Vengeance or Survival##24903 |goto 32.4,57.0
accept Slowing the Inevitable##24920 |goto 32.4,57.0
step
clicknpc Captured Riding Bat##38540 |goto 30.3,61.0
Take control of the Captured Riding Bat |condition _G.OverrideActionBar and _G.OverrideActionBar:IsShown()
step
While riding the Captured Riding Bat, use the Iron Bomb ability on your hotbar to do the following:
kill 6 Forsaken Catapult##38287 |q 24920/1
kill 40 Invading Forsaken##38364 |q 24920/2
step
Use the Fly Back ability on your hotbar
You will fly back to Greymane Court |goto Gilneas City,30.5,60.9 < 5 |noway |c
step
talk King Genn Greymane##38539
turnin Slowing the Inevitable##24920 |goto 32.4,57.0
accept Knee-Deep##24678 |goto 32.4,57.0
step
Go down the stairs |goto 32.9,57.6 <5
Continue down the second set of stairs |goto 34.2,56.3 <5
Run through the tunnel to this location |goto 7.7,71.5 <10
Spam use your Half-Burnt Torch to keep the rats and spiders from attacking you |use Half-Burnt Torch##50220
Exit the tunnel on the other side |goto 679/0  |noway |c |q 24678
step
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto 49.8,56.9
accept Laid to Rest##24602 |goto 49.8,56.9
step
click Disturbed Soil##49
get 5 Unearthed Memento |q 24602/1 |goto 46.4,53.3
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.9,57.0
accept Patriarch's Blessing##24679 |goto 49.9,57.0
step
Use your Blessed Offerings while standing in front of Aderic's Tomb |use Blessed Offerings##51956 |tip It looks like a silver plaque on a stone statue.
Place the Offering |q 24679/1 |goto 49.0,53.1
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.8,56.9
accept Keel Harbor##24680 |goto 49.8,56.9
step
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.9,37.6
accept They Have Allies, But So Do We##24681 |goto 41.9,37.6
step
Click a Glaive Thrower to take control of it |invehicle |c |q 24681 |goto 42.5,37.8
modelnpc 38150
step
Use the abilities on your action bar to do the following:
kill 40 Orc Raider##37916+ |q 24681/1 |goto 30.7,37.7
kill 8 Wolfmaw Outrider##37938+ |q 24681/2 |goto 30.7,37.7
kill 4 Orchish War Machine##37921+ |q 24681/3 |goto 30.7,37.7
step
Click the Leave Vehicle button on your hotbar |outvehicle |c |q 24681 |goto 41.9,37.6
step
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.9,37.6
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.6,36.5
step
Wait until Tobias Mistmantle says "Time to go!"
clicknpc Hippogryph##43747 |tip Ride the Hippogryph
Take control of the Hippogryph |goto 41.6,36.0 |condition _G.OverrideActionBar and _G.OverrideActionBar:IsShown()
step
Once you land on the ship, follow the orders Lorna Crowley gives you
click Coiled Rope##7538 |tip When Lorna tells you, click the rope.
Follow Lorna to the bottom level of the gunship and protect her while she plants the explosives.
Destroy the Gunship |q 26706/1
step
You will fly back to Keel Harbor |goto 42.6,38.3 < 5 |noway |c
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.6,36.5
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.6,35.9 |instant
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil,55.2,89.2
step
Go into the pink portal |goto 55.1,88.4 |n
Enter Darnassus |goto Darnassus |noway |c
step
talk Genn Greymane##48736
turnin The Howling Oak##28517 |goto 48.1,14.4
accept Breaking Waves of Change##26385 |goto 48.1,14.4
]])
