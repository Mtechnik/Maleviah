local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Bound By Honor",{
author="support@zygorguides.com",
description="This Guide will help you earn the Bound By Honor title.",
},[[
step
This title is obtained by reaching Prestige 4 in PvP
However, it has not yet been added to the game
|tip You gain the ability to prestige once you reach Honor level 50.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Dreamer",{
author="support@zygorguides.com",
description="This Guide will help you earn The Dreamer title.",
},[[
step
This title is earned by defeating Xavius on _Mythic_ difficulty
Xavius is the last boss of the Emerald Nightmare raid
confirm |only if not achieved(10827)
step
Enter the Emerald Nightmare raid |goto Val'sharah/0 56.27,36.79
kill Xavius##103769 |achieve 10827
step
Congratulations you have achieved _The Dreamer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Vengeance Incarnate",{
description="This guide will assist you in achieving the Vengeance Incarnate Title.",
},[[
atep
This Title is a reward for defeating Gul'dan on Mythic Difficulty
Gul'dan is the last boss in the raid instance _The Nighthold_ which comes out in patch 7.2
confirm
step
Enter The Nighthold |goto Suramar/0 58.04,77.35
kill Gul'dan##105503 |achieve 10850
step
Congratulations you have achieved the _Vengeance Incarnate_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Unrelenting",{
description="This guide will assist you in achieving The Unrelenting Title.",
},[[
step
It is not known yet how to get this title but it might have something to do with Mythic+
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Prestigious",{
description="This guide will assist you in achieving the The Prestigious Title.",
},[[
step
It is not known yet how to get this title but it might have something to do with PVP
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Fabulous",{
author="support@zygorguides.com",
description="This Guide will help you earn The Fabulous title.",
},[[
step
This title is gained by completing the Fabulous achievement
To complete this achievement you must collect many different appearances for your gear
confirm |only if not achieved(10694)
step
Complete the following objectives to earn this title:
Collect 100 hand slot appearances |achieve 10694/1
Collect 100 shoulder slot apperances |achieve 10694/2
Collect 15 shirt slot appearances |achieve 10694/3
Collect 15 tabard slot appearances |achieve 10694/4
Collect 100 weapon and/or off-hand slot appearances |achieve 10694/5
Collect 100 wrist slot appearances |achieve 10694/6
Collect 200 back slot appearances |achieve 10694/7
Collect 100 waist slot appearances |achieve 10694/8
Collect 100 feet slot appearances |achieve 10694/9
Collect 100 leg slot appearances |achieve 10694/10
Collect 100 chest slot appearances |achieve 10694/11
Collect 100 head slot appearances |achieve 10694/12
step
Congratulations, you have earned _The Fabulous_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Field Medic",{
author="support@zygorguides.com",
description="This Guide will help you earn the Field Medic title.",
},[[
step
This title is gained by completing the Field Medic achievement
You must complete all of the wounded NPC quests in the Broken Isles
|tip Use the First Aid Quest Line guide to accomplish this.
Singed Note |achieve 11139/1
Fevered Plea |achieve 11139/2
Bloody Note |achieve 11139/3
Fevered Letter |achieve 11139/4
Crumpled Letter |achieve 11139/5
Crumpled Note |achieve 11139/6
Singed Letter |achieve 11139/7
Fevered Request |achieve 11139/8
Crumpled Request |achieve 11139/9
Singed Plea |achieve 11139/10
Fevered Prayer |achieve 11139/11
Bloody Prayer |achieve 11139/12
Bloody Letter |achieve 11139/13
Fevered Note |achieve 11139/14
Bloody Plea |achieve 11139/15
Bloody Request |achieve 11139/16
step
Congratulations, you have earned the _Field Medic_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Groundbreaker",{
author="support@zygorguides.com",
description="This Guide will help you earn The Groundbreaker title.",
},[[
step
This title is gained by completing the No Stone Unturned achievement
You must have the Archaeology skill and complete 250 Legion digsites
confirm |only if not achieved(10609)
step
Look for red areas on the map while in the Broken Isles
Use your Survey ability while in the digsite |cast Survey##80451
|tip Follow the direction the telescope points to. A shovel icon will appear over your head when you are standing in the right spot.
Complete #250# digsites in Legion |achieve 10609
step
Congratulations, you have earned _The Groundbreaker_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\The Honorable",{
author="support@zygorguides.com",
description="This Guide will help you earn The Honorable title.",
},[[
step
This title is not yet in the game but most likely is PvP related
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Legionary",{
description="This guide will assist you in achieving the Legionary.",
},[[
step
You must complete all 12 class order campaigns to gain this achievement.
Complete all 12 class order campaigns |achieve 11137
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Patron of War",{
description="This guide will assist you in achieving the Patron of War.",
},[[
step
This title was a reward for watching the twitch streams of the World of Warcraft Championship that was held on September 30th - October 2nd 2016.
This title could also be obtained if players watched the North American Regionals on October 8th - October 9th 2016.
Players that watched these Twitch streams had to have their Battle.net account connected to their Twitch account.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Legion Titles\\Lord of the Reins",{
description="This guide will assist you in achieving the Lord of the Reins.",
},[[
step
This title is a reward from the Lord of the Reins achievement
You must collect 300 different mounts for this achievement
|tip Use our Mount guides to complete this.
Collect #300# unique mounts |achieve 10356
step
Congratulations, you have gained the _Lord of the Reins_ title!
]])
ZGV.BETAEND()
