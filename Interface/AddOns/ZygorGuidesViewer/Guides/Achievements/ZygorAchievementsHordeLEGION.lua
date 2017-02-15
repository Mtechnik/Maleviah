local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Professions\\Fishing\\A Cast Above the Rest",{
condition_end="achieved(10595)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Cast","Above","Rest"},
description="This guide will walk you through completing the \"A Cast Above the Rest\" Achievement.",
},[[
step
Complete the "Drowned Mana" Quest |condition completedq(42911)
Click here to start progress on Legion Fishing |confirm |next "Zygor's Horde Profession Guides\\Fishing\\Legion\\Fishing Quest Line" |or
step
collect Goblin Glider Kit##109076 |c |q 42911 |future
|tip You can create these, if you have Engineering.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Dalaran L/10 38.13,45.34 < 20 |only if walking
Follow the path |goto Dalaran L/10 30.75,32.64 < 20 |only if walking
Jump off toward the floating island |goto Dalaran L/10 26.22,20.40 < 20 |only if walking
|tip Use the Goblin Glider Kit immediately after jumping.
Fish in the Water
collect Mark of Aquaos##141975 |n
|tip There's a chance to get these when fishing here.
Use the Mark of Aquaos |use Mark of Aquaos##141975
|tip This will summon Aquaos the Unleashed in the pond.
|tip Killing him will buff the pond to have a 100% catch chance for Drowned Mana for about 2-3 minutes.
collect 10 Drowned Mana##138777 |goto Dalaran L/10 22.99,-14.30 |region dalaran_margosss_retreat |condition achieved(10595)
step
talk Conjurer Margoss##108825
buy 10 Arcane Lure##139175 |n
collect 10 Arcane Lure##139175 |goto 23.10,-11.40 |condition achieved(10595)
step
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Water
|tip Collect any 1 of these 3 rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Pearlescent Conch##133703 |c |or |goto Azsuna/0 63.29,27.52 |next "Pearlescent_Conch"
collect Rusty Queenfish Brooch##133704 |c |or |goto Azsuna/0 63.29,27.52 |next "Rusty_Queenfish_Brooch"
collect Skrog Toenail##133701 |n
|tip Having this item in your bags will give you a buff. When the buff expires, a murloc enemy will spawn.
kill Salteye Skrog-Hunter##102338
collect Aromatic Murloc Slime##133702 |c |or |goto Azsuna/0 63.29,27.52 |next "Aromatic_Murloc_Slime"
|only if not achieved(10595)
step
label "Pearlescent_Conch"
Use the Pearlescent Conch |use Pearlescent Conch##133703
Fish in the Water
collect Nar'thalas Hermit##133726 |n
Earn the "A Cast Above the Rest" Achievement |achieve 10595 |goto 63.30,27.53
|next "Congrats_A_Cast_Above_the_Rest"
step
label "Rusty_Queenfish_Brooch"
Jump down here |goto 61.23,29.90 < 20 |only if walking
Follow the path |goto 59.17,31.10 < 30 |only if walking
Follow the path down |goto 56.59,33.52 < 30 |only if walking
Use the Rusty Queenfish Brooch |use Rusty Queenfish Brooch##133704
Fish in a Ghostly Queenfish Pool
|tip Stand on the very tip of this underwater rock.
|tip The Ghostly Queenfish Pool will appear nearby, close enough to fish in.
collect Ghostly Queenfish##133727 |n
Earn the "A Cast Above the Rest" Achievement |achieve 10595 |goto 63.30,27.53
|next "Congrats_A_Cast_Above_the_Rest"
step
label "Aromatic_Murloc_Slime"
Use the Aromatic Murloc Slime |use Aromatic Murloc Slime##133702
Fish in the Water
collect Leyshimmer Blenny##133725 |n
Earn the "A Cast Above the Rest" Achievement |achieve 10595 |goto 63.30,27.53
|next "Congrats_A_Cast_Above_the_Rest"
step
label "Congrats_A_Cast_Above_the_Rest"
_Congratulations!_
You earned the "A Cast Above the Rest" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Professions\\Fishing\\Bigger Fish to Fry",{
condition_end="achieved(10596)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Bigger","Fish","Fry"},
description="This guide will walk you through completing the \"Bigger Fish to Fry\" Achievement.",
},[[
step
Earn the "A Cast Above the Rest" Achievement |condition achieved(10595)
|tip Use the "A Cast Above the Rest" achievement guide to accomplish this.
step
Follow the path |goto Dalaran L/10 38.13,45.34 < 20 |only if walking
Follow the path |goto Dalaran L/10 30.75,32.64 < 20 |only if walking
Jump off toward the floating island |goto Dalaran L/10 26.22,20.40 < 20 |only if walking
|tip Use the Goblin Glider Kit immediately after jumping.
Fish in the Water
collect Mark of Aquaos##141975
|tip There's a chance to get these when fishing here.
Use the Mark of Aquaos |use Mark of Aquaos##141975
|tip This will summon Aquaos the Unleashed in the pond.
|tip Killing him will buff the pond to have a 100% catch chance for Drowned Mana for about 2-3 minutes.
collect 60 Drowned Mana##138777 |goto Dalaran L/10 22.99,-14.30 |condition achieved(10596)
step
talk Conjurer Margoss##108825
buy 10 Arcane Lure##139175 |n
collect 60 Arcane Lure##139175 |goto 23.10,-11.40 |condition achieved(10596)
step
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Water
|tip Collect all 3 of these rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Pearlescent Conch##133703 |c |goto Azsuna/0 63.29,27.52 |condition achieved(10596,11)
collect Rusty Queenfish Brooch##133704 |c |goto Azsuna/0 63.29,27.52 |condition achieved(10596,6)
collect Skrog Toenail##133701 |n
|tip Having this item in your bags will give you a buff. When the buff expires, a murloc enemy will spawn.
kill Salteye Skrog-Hunter##102338
collect Aromatic Murloc Slime##133702 |c |goto Azsuna/0 63.29,27.52 |condition achieved(10596,8)
step
Use the Pearlescent Conch |use Pearlescent Conch##133703
Fish in the Water
collect Nar'thalas Hermit##133726 |achieve 10596/11 |goto 63.30,27.53
step
Use the Aromatic Murloc Slime |use Aromatic Murloc Slime##133702
Fish in the Water
collect Leyshimmer Blenny##133725 |n
Earn the "A Cast Above the Rest" Achievement |achieve 10596/8 |goto 63.30,27.53
step
Jump down here |goto 61.23,29.90 < 20 |only if walking
Follow the path |goto 59.17,31.10 < 30 |only if walking
Follow the path down |goto 56.59,33.52 < 30 |only if walking
Use the Rusty Queenfish Brooch |use Rusty Queenfish Brooch##133704
Fish in a Ghostly Queenfish Pool
|tip Stand on the very tip of this underwater rock.
|tip The Ghostly Queenfish Pool will appear nearby, close enough to fish in.
collect Ghostly Queenfish##133727 |achieve 10596/6 |goto 54.79,36.47
step
Follow the path up |goto Val'sharah/0 68.42,48.59 < 20 |only if walking
Follow the path |goto Val'sharah/0 70.04,46.91 < 30 |only if walking
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Reddish Colored Water
|tip Collect all 3 of these rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Rotten Fishbone##133705 |c |goto Val'sharah/0 68.75,43.03 |condition achieved(10596,3)
collect Nightmare Nightcrawler##133707 |c |goto Val'sharah/0 68.75,43.03 |condition achieved(10596,17)
collect Drowned Thistleleaf##133708 |c |goto Val'sharah/0 68.75,43.03 |condition achieved(10596,18)
step
Use the Rotten Fishbone |use Rotten Fishbone##133705
|tip A druid will appear eventually to cast a buff on you.
Fish in the Reddish Colored Water
collect Ancient Mossgill##133730 |achieve 10596/3 |goto 68.75,43.03
step
Use the Nightmare Nightcrawler |use Nightmare Nightcrawler##133707
|tip A druid will appear to cast a buff on you.
Fish in the Reddish Colored Water
collect Terrorfin##133728 |achieve 10596/17 |goto 68.75,43.03
step
Use the Drowned Thistleleaf |use Drowned Thistleleaf##133708
Fish in the Reddish Colored Water
collect Thorned Flounder##133729 |achieve 10596/18 |goto 68.75,43.03
step
Follow the path |goto Highmountain/0 41.27,52.63 < 30 |only if walking
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Water
|tip Collect all 3 of these rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Frost Worm##133712 |c |goto Highmountain/0 41.67,53.70 |condition achieved(10596,5)
collect Swollen Murloc Egg##133711 |c |goto Highmountain/0 41.67,53.70 |condition achieved(10596,10)
collect Funky Sea Snail##133709 |n
|tip Having this item in your bags will give you a buff. When the buff expires, a drogbar enemy will spawn.
kill Bitestone Fishbrul##102347
collect Salmon Lure##133710 |c |goto Highmountain/0 41.67,53.70 |condition achieved(10596,2)
step
Use the Swollen Murloc Egg |use Swollen Murloc Egg##133711
|tip A murloc will appear eventually to cast a buff on you.
Fish in the Water
collect Mountain Puffer##133731 |achieve 10596/10 |goto 41.67,53.70
step
Use the Salmon Lure |use Salmon Lure##133710
Fish in the Water
collect Ancient Highmountain Salmon##133733 |achieve 10596/2 |goto 41.67,53.70
step
Use the Frost Worm |use Frost Worm##133712
Fish in the Water
collect Coldriver Carp##133732 |achieve 10596/5 |goto 41.67,53.70
step
Cross the bridge |goto Stormheim/0 40.12,62.63 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto Stormheim/0 42.97,58.94 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path down |goto Stormheim/0 43.32,59.71 < 20 |only if walking
Continue down the path |goto Stormheim/0 43.28,61.11 < 20 |only if walking
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Water
|tip Collect all 3 of these rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Ancient Vrykul Ring##133715 |c |goto Stormheim/0 41.99,61.17 |condition achieved(10596,12)
collect Moosehorn Hook##133713 |n
Use the Moosehorn Hook |use Moosehorn Hook##133713
|tip These will give you a buff, allowing you to catch "Silverscale Minnow" and "Soggy Drakescale" rare fish bait.
|tip You may have to catch and use multiple of these.
collect Silverscale Minnow##133714 |c |goto Stormheim/0 41.99,61.17 |condition achieved(10596,15)
collect Soggy Drakescale##133716 |c |goto Stormheim/0 41.99,61.17 |condition achieved(10596,7)
step
Use the Silverscale Minnow |use Silverscale Minnow##133714
Fish in the Water
collect Thundering Stormray##133736 |achieve 10596/15 |goto 41.99,61.17
step
Use the Soggy Drakescale |use Soggy Drakescale##133716
Fish in the Water
collect Graybelly Lobster##133735 |achieve 10596/7 |goto 41.99,61.17
step
Use the Ancient Vrykul Ring |use Ancient Vrykul Ring##133715
Fish in an Oodelfjiskenpool
|tip They look like fish pools in the water in Stormheim.
|tip There should be an Oodelfjiskenpool close to this location after you use the Ancient Vrykul Ring.
|tip Follow the water to find an Oodelfjiskenpool if there's not one close by.
collect Oodelfjisk##133734 |achieve 10596/12 |goto 41.99,61.17
step
Reach Level 110 |ding 110
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(43341)
|tip Use the World Quests guide to accomplish this.
step
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in the Water
|tip Collect all 3 of these rare fish bait.
|tip We recommend you buy these from the Auction House, if possible. You will save a LOT of time.
collect Enchanted Lure##133717 |c |goto Suramar/0 24.70,30.79 |condition achieved(10596,9)
collect Sleeping Murloc##133719 |c |goto Suramar/0 24.70,30.79 |condition achieved(10596,16)
collect Demonic Detritus##133720 |c |goto Suramar/0 24.70,30.79 |condition achieved(10596,14)
|tip You may have better luck catching a Demonic Detritus in Runescale Koi School pools.
|tip You can find Runescale Koi School pools in the water around this area.
step
Use the Enchanted Lure |use Enchanted Lure##133717
Fish in the Water
collect Magic-Eater Frog##133737 |achieve 10596/9 |goto 24.70,30.79
step
Use the Demonic Detritus |use Demonic Detritus##133720
Fish in the Water
collect Tainted Runescale Koi##133739 |achieve 10596/14 |goto 24.70,30.79
step
Use the Sleeping Murloc |use Sleeping Murloc##133719
|tip A Confused Seerspine Murloc will appear and run around, dropping fish on the ground.
|tip Run over the fish to collect them.
|tip The fish are pretty small, so watch closely, so you don't miss any.
collect Seerspine Puffer##133738 |achieve 10596/16 |goto 25.16,32.86
step
Follow the path down |goto 64.28,43.04 < 30 |only if walking
Follow the path down |goto 67.43,44.64 < 20 |only if walking
Continue down the path |goto 68.43,45.91 < 20 |only if walking
Follow the path down |goto 68.16,48.54 < 30 |only if walking
Follow the path |goto 69.70,47.92 < 30 |only if walking
Follow the path down |goto 71.37,47.01 < 30 |only if walking
Use Arcane Lures |use Arcane Lure##139175
|tip These will increase your chance to catch rare fish bait.
Fish in Black Barracuda Schools
|tip They look like small circular swirling spots in the water along the coast.
|tip Follow the beach east from this spot.
|tip
collect Stunned, Angry Shark##133723 |n
|tip This only lasts for 1 minute in your bags before it disappears, so you can't purchase it from the Auction House.
|tip Once you catch it, use it immediately.
Use the Stunned, Angry Shark |use Stunned, Angry Shark##133723
|tip It will spawn a Landlocked Shark.
kill Landlocked Shark##102359
collect Seabottom Squid##133741 |goto 74.20,49.90 |condition achieved(10596,13)
|tip
collect Decayed Whale Blubber##133724 |n
Use the Decayed Whale Blubber |use Decayed Whale Blubber##133724
|tip It will spawn a Decayed Whale Blubber blob on the groun.
|tip A small Ravenous Fly will spawn and fly toward the Decayed Whale Blubber.
click Ravenous Fly##102374
collect Ravenous Fly##133795 |c |goto 74.20,49.90 |condition achieved(10596,1)
|tip
collect Message in a Beer Bottle##133721 |n
Use the Message in a Beer Bottle |use Message in a Beer Bottle##133721
collect Axefish Lure##133722 |c |goto 74.20,49.90 |condition achieved(10596,4)
step
Use the Ravenous Fly |use Ravenous Fly##133795
Fish in Black Barracuda Schools
|tip They look like small circular swirling spots in the water along the coast.
|tip Follow the beach east from this spot.
collect Ancient Black Barracuda##133742 |achieve 10596/1 |goto 74.20,49.90
step
Use the Axefish Lure |use Axefish Lure##133722
Fish in Black Barracuda Schools
|tip They look like small circular swirling spots in the water along the coast.
|tip Follow the beach east from this spot.
collect Axefish##133740 |achieve 10596/4 |goto 74.20,49.90
step
_Congratulations!_
You earned the "Bigger Fish to Fry" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Broken Isles Explorer",{
condition_end="achieved(11188)",
author="support@zygorguides.com",
startlevel=110,
keywords={"Broken","Isles","Explorer"},
description="This guide will walk you through completing the \"Broken Isles Explorer\" Achievement.",
},[[
step
Explore Azsuna |achieve 11188/1
|tip Use the "Explore Azsuna" achievement guide to accomplish this.
Click here to load the Explore Azsuna guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Azsuna"
step
Explore Val'sharah |achieve 11188/2
|tip Use the "Explore Val'sharah" achievement guide to accomplish this.
Click here to load the Explore Val'sharah guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Val'sharah"
step
Explore Highmountain |achieve 11188/3
|tip Use the "Explore Highmountain" achievement guide to accomplish this.
Click here to load the Explore Highmountain guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Highmountain"
step
Explore Stormheim |achieve 11188/4
|tip Use the "Explore Stormheim" achievement guide to accomplish this.
Click here to load the Explore Stormheim guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Stormheim"
step
Explore Suramar |achieve 11188/5
|tip Use the "Explore Suramar" achievement guide to accomplish this.
Click here to load the Explore Suramar guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Suramar"
step
_Congratulations!_
You earned the "Broken Isles Explorer" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Loremaster of Legion",{
condition_end="achieved(10790)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Loremaster","Legion"},
description="This guide will walk you through completing the \"Loremaster of Legion\" Achievement.",
},[[
step
Complete the "Azsuna Matata" Achievement |achieve 10763
|tip Use the "Azsuna" leveling guide to accomplish this.
Click here to load the "Azsuna" leveling Guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Azsuna"
step
Complete the "That's Val'sharah Folks!" Achievement |achieve 10698
|tip Use the "Val'sharah" leveling guide to accomplish this.
Click here to load the Val'sharah Leveling Guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Val'sharah"
step
Complete the "Vrykul Story, Bro" Achievement |achieve 10790
|tip Use the "Stormheim" leveling guide to accomplish this.
Click here to load the Stormheim Leveling guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Stormheim"
step
Complete the "Ain't No Mountain High Enough" Achievement |achieve 10059
|tip Use the "Highmountain" leveling guide to accomplish this.
Click here to load the Highmountain Leveling Gudie |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Highmountain"
step
Complete the "Good Suramaritan" Achievement |achieve 11124
|tip Use the "Suramar" leveling guide to accomplish this.
Click here to load the Suramar Guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)"
step
_Congratulations!_
You earned the "Loremaster of Legion" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Variety is the Spice of Life",{
condition_end="achieved(11189)",
author="support@zygorguides.com",
startlevel=110,
keywords={"Variety","Spice","Life"},
description="This guide will walk you through completing the \"Variety is the Spice of Life\" Achievement.",
},[[
step
Complete #100# Different World Quests |achieve 11189
|tip Use the "World Quests" guide to accomplish this.
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
_Congratulations!_
You earned the "Variety is the Spice of Life" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Reputation\\Legion\\Broken Isles Diplomat",{
condition_end="achieved(10672)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Broken","Isles","Diplomat"},
description="This guide will walk you through completing the \"Broken Isles Diplomat\" Achievement.",
},[[
step
Reach Revered Reputation with Court of Farondis |achieve 10672/1
|tip Use the "Azsuna" leveling guide to accomplish this.
|tip Use the "World Quests" guide to accomplish this.
Click here to complete the "Azsuna" leveling guide if you haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Azsuna"
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
Reach Revered Reputation with The Dreamweavers |achieve 10672/2
|tip Use the "Val'sharah" leveling guide to accomplish this.
|tip Use the "World Quests" guide to accomplish this.
Click here to complete the Val'sharah leveling guide if you haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Val'sharah"
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
Reach Revered Reputation with Highmountain Tribe |achieve 10672/3
|tip Use the "Highmountain" leveling guide to accomplish this.
|tip Use the "World Quests" guide to accomplish this.
Click here to complete the Highmountain leveling gudie if you haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Highmountain"
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
Reach Revered Reputation with The Valarjar |achieve 10672/4
|tip Use the "Stormheim" leveling guide to accomplish this.
|tip Use the "World Quests" guide to accomplish this.
Click here to complete the Stormheim leveling guide if you haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Stormheim"
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
Reach Revered Reputation with The Nightfallen |achieve 10672/5
|tip Use the "Suramar" leveling guide to accomplish this.
|tip Use the "World Quests" guide to accomplish this.
Click here to complete the Suramar Guide if you  haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)"
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
Reach Revered Reputation with The Wardens |achieve 10672/6
|tip Use the "World Quests" guide to accomplish this.
Click here to load the World Quests guide |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests"
step
_Congratulations!_
You earned the "Broken Isles Diplomat" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\A Glorious Campaign",{
condition_end="achieved(10994)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Glorious","Campaign"},
description="This guide will walk you through completing the \"A Glorious Campaign\" Achievement.",
},[[
step
Complete Your Class Order Campaign |achieve 10994
|tip Use the "Order Hall Quests" guide to accomplish this.
Click here to load the Order Hall Quest guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests"
step
_Congratulations!_
You earned the "A Glorious Campaign" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Azsuna",{
condition_end="achieved(10665)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Explore","Azsuna"},
description="This guide will walk you through completing the \"Explore Azsuna\" Achievement.",
},[[
step
Follow the road |goto Azsuna/0 43.05,45.42 < 30 |only if walking
Discover Faronaar |achieve 10665/1 |goto Azsuna/0 40.71,48.59
|tip You will discover most of these naturally by using the "Azsuna" leveling guide.
step
Discover Felblaze Ingress |achieve 10665/2 |goto 63.77,28.50
step
Follow the road |goto 63.36,29.80 < 30 |only if walking
Continue following the road |goto 63.34,33.77 < 30 |only if walking
Discover The Greenway |achieve 10665/3 |goto 61.66,34.67
step
Follow the water |goto 54.47,60.84 < 30 |only if walking
Continue following the water |goto 54.58,63.47 < 30 |only if walking
Cross the water |goto 53.12,67.08 < 30 |only if walking
Discover Isle of the Watchers |achieve 10665/4 |goto 49.10,71.00
step
Discover Llothien Highlands |achieve 10665/5 |goto 46.72,29.18
step
Discover Lost Orchard |achieve 10665/6 |goto 41.88,11.10
step
Follow the path |goto 46.46,44.33 < 30 |only if walking
Follow the road |goto 48.98,42.70 < 30 |only if walking
Cross the bridge |goto 50.45,43.68 < 20 |only if walking
Discover Nar'thalas |achieve 10665/7 |goto 51.93,44.38
step
Discover Oceanus Cove |achieve 10665/8 |goto 54.13,59.23
step
Follow the road |goto 63.36,29.80 < 30 |only if walking
Continue following the road |goto 64.04,34.80 < 30 |only if walking
Cross the bridge |goto 66.24,38.76 < 20 |only if walking
Follow the path |goto 66.87,44.00 < 30 |only if walking
Discover Ruined Sanctum |achieve 10665/9 |goto 66.47,47.26
step
Follow the path up |goto 55.96,60.31 < 20 |only if walking
Discover Temple of Lights |achieve 10665/10 |goto 56.29,61.40
step
Follow the path up |goto 49.21,26.56 < 20 |only if walking
Follow the road up |goto 50.52,26.34 < 20 |only if walking
Continue following the road |goto 50.70,23.33 < 30 |only if walking
Continue following the road |goto 50.91,18.77 < 30 |only if walking
Follow the road |goto 52.32,16.82 < 30 |only if walking
Discover Ley-Ruins of Zarkhenar |achieve 10665/11 |goto 53.28,16.74
step
_Congratulations!_
You earned the "Explore Azsuna" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Val'sharah",{
condition_end="achieved(10666)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Explore","Val'sharah"},
description="This guide will walk you through completing the \"Explore Val'sharah\" Achievement.",
},[[
step
Follow the road |goto Val'sharah/0 68.83,53.82 < 30 |only if walking
Discover Andutalah |achieve 10666/1 |goto Val'sharah/0 68.32,55.48
|tip You will discover most of these naturally by using the "Val'sharah" leveling guide.
step
Follow the path |goto 40.88,58.78 < 30 |only if walking
Follow the path up |goto 38.57,57.46 < 30 |only if walking
Continue up the path |goto 37.73,55.80 < 30 |only if walking
Discover Black Rook Hold |achieve 10666/2 |goto 39.24,53.57
step
Discover Bradenbrook |achieve 10666/3 |goto 42.29,58.55
step
Follow the road |goto 55.72,56.67 < 30 |only if walking
Follow the road |goto 54.94,53.29 < 30 |only if walking
Follow the path |goto 53.25,49.98 < 20 |only if walking
Cross the bridge |goto 52.55,47.40 < 20 |only if walking
Cross the bridge |goto 52.23,45.81 < 20 |only if walking
Follow the path |goto 50.86,42.92 < 30 |only if walking
Continue following the path |goto 47.49,39.70 < 30 |only if walking
Discover The Dreamgrove |achieve 10666/4 |goto 45.04,33.28
step
Follow the path |goto 40.95,58.81 < 30 |only if walking
Follow the path up |goto 37.54,59.83 < 30 |only if walking
Follow the path down |goto 35.50,61.36 < 30 |only if walking
Cross the water |goto 33.44,63.13 < 30 |only if walking
Discover Gloaming Reef |achieve 10666/5 |goto 27.10,66.93
step
Follow the path |goto 55.74,71.61 < 20 |only if walking
Follow the path |goto 55.46,67.55 < 30 |only if walking
Discover Grove of Cenarius |achieve 10666/6 |goto 54.79,66.63
step
Discover Lorlathil |achieve 10666/7 |goto 54.96,72.55
step
Follow the path up |goto 68.44,48.57 < 20 |only if walking
Follow the path |goto 69.98,46.74 < 30 |only if walking
Discover Mistvale |achieve 10666/8 |goto 70.00,45.41
step
Follow the path |goto 55.00,74.48 < 20 |only if walking
Follow the path |goto 58.06,76.08 < 30 |only if walking
Discover Moonclaw Vale |achieve 10666/9 |goto 59.90,74.71
step
Follow the path |goto 68.14,48.48 < 20 |only if walking
Cross the bridge |goto 66.65,45.74 < 20 |only if walking
Follow the path |goto 65.05,43.48 < 20 |only if walking
Discover Shala'nir |achieve 10666/10 |goto 63.28,42.01
step
Follow the path |goto 53.45,74.09 < 20 |only if walking
Cross the bridge |goto 51.46,75.74 < 20 |only if walking
Follow the path |goto 49.38,79.70 < 30 |only if walking
Discover Smolderhide Thicket |achieve 10666/11 |goto 48.25,84.42
step
Discover Temple of Elune |achieve 10666/12 |goto 56.69,57.80
step
Cross the bridge |goto 53.81,72.45 < 20 |only if walking
Follow the path |goto 52.24,71.62 < 30 |only if walking
Discover Thas'talah |achieve 10666/13 |goto 50.34,70.47
step
_Congratulations!_
You earned the "Explore Val'sharah" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Highmountain",{
condition_end="achieved(10667)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Explore","Highmountain"},
description="This guide will walk you through completing the \"Explore Highmountain\" Achievement.",
},[[
step
Follow the path down |goto Highmountain/0 39.67,37.80 < 30 |only if walking
Follow the path |goto Highmountain/0 42.04,35.30 < 30 |only if walking
Explore Bloodhunt Highlands |achieve 10667/1 |goto Highmountain/0 42.86,31.00
|tip You will discover most of these naturally by using the "Highmountain" leveling guide.
step
Follow the path down |goto 30.81,38.98 < 30 |only if walking
Continue following the path down |goto 30.98,35.41 < 30 |only if walking
Explore Blind Marshlands |achieve 10667/2 |goto 30.44,34.42
step
Follow the path |goto Thunder Totem/0 49.95,43.28 < 20 |region thunder_totem_circle_platform |only if walking
Follow the path |goto Highmountain/0 50.86,64.33 < 20 |only if walking
Cross the bridge |goto Highmountain/0 48.96,67.06 < 20 |only if walking
Follow the path up |goto Highmountain/0 48.01,68.11 < 30 |only if walking
Follow the path up |goto Highmountain/0 48.10,69.01 < 20 |only if walking
Continue up the path |goto Highmountain/0 49.02,69.36 < 20 |only if walking
Continue following the path up |goto Highmountain/0 48.62,74.88 < 20 |only if walking
Continue up the path |goto Highmountain/0 51.41,73.29 < 20 |only if walking
Follow the path up |goto Highmountain/0 50.75,75.91 < 20 |only if walking
Cross the bridge |goto Highmountain/0 49.88,79.71 < 20 |only if walking
Follow the path up |goto Highmountain/0 52.39,83.93 < 20 |only if walking
Cross the bridge |goto Highmountain/0 54.05,87.75 < 20 |only if walking
Explore Highmountain Summit |achieve 10667/3 |goto 56.46,89.27
step
Follow the path |goto Thunder Totem/0 49.95,43.28 < 20 |region thunder_totem_circle_platform |only if walking
Follow the path |goto Highmountain/0 50.86,64.33 < 20 |only if walking
Cross the bridge |goto Highmountain/0 48.96,67.06 < 20 |only if walking
Follow the path up |goto Highmountain/0 48.01,68.11 < 30 |only if walking
Follow the path up |goto Highmountain/0 48.10,69.01 < 20 |only if walking
Continue up the path |goto Highmountain/0 49.02,69.36 < 20 |only if walking
Continue following the path up |goto Highmountain/0 48.62,74.88 < 20 |only if walking
Continue up the path |goto Highmountain/0 51.41,73.29 < 20 |only if walking
Follow the path up |goto Highmountain/0 50.75,75.91 < 20 |only if walking
Cross the bridge |goto Highmountain/0 49.88,79.71 < 20 |only if walking
Follow the path |goto Highmountain/0 52.34,83.57 < 30 |only if walking
Continnue following the path |goto Highmountain/0 54.75,80.30 < 30 |only if walking
Follow the path |goto Highmountain/0 56.44,80.74 < 30 |only if walking
Explore Ironhorn Enclave |achieve 10667/4 |goto Highmountain/0 55.63,83.35
step
Cross the bridge |goto 35.89,65.02 < 20 |only if walking
Follow the path |goto 33.38,62.07 < 30 |only if walking
Follow the path down |goto 30.87,59.40 < 30 |only if walking
Follow the path down |goto 29.35,56.69 < 30 |only if walking
Follow the path down |goto 26.79,57.87 < 30 |only if walking
Explore Nightwatcher's Perch |achieve 10667/5 |goto 27.61,54.81
step
Explore Pinerock Basin |achieve 10667/6 |goto 40.50,51.25
step
Explore Riverbend |achieve 10667/7 |goto 37.37,66.46
step
Follow the path down |goto 57.65,27.10 < 20 |only if walking
Continue down the path |goto 58.26,25.92 < 20 |only if walking
Explore Rockaway Shallows |achieve 10667/8 |goto 56.96,25.09
step
Explore Shipwreck Cove |achieve 10667/9 |goto 41.88,10.52
step
Explore Skyhorn |achieve 10667/10 |goto 52.64,45.17
step
Explore Stonehoof Watch |achieve 10667/11 |goto 59.25,65.16
step
Explore Sylvan Falls |achieve 10667/12 |goto 35.91,65.97
step
Explore Thunder Totem |achieve 10667/13 |goto Thunder Totem/0 45.69,38.89 |region thunder_totem_circle_platform
step
Follow the path up |goto Highmountain/0 40.51,51.52 < 30 |only if walking
Continue following the path up |goto 38.88,48.30 < 30 |only if walking
Follow the path up |goto 37.87,48.14 < 20 |only if walking
Follow the path |goto 36.93,45.85 < 20 |only if walking
Follow the path |goto 36.08,44.76 < 20 |only if walking
Explore Trueshot Lodge |achieve 10667/14 |goto 34.21,46.85
step
_Congratulations!_
You earned the "Explore Highmountain" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Stormheim",{
condition_end="achieved(10668)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Explore","Stormheim"},
description="This guide will walk you through completing the \"Explore Stormheim\" Achievement.",
},[[
step
Follow the path up |goto Stormheim/0 50.98,33.79 < 30 |only if walking
Follow the path |goto Stormheim/0 48.68,38.57 < 30 |only if walking
Jump down here |goto Stormheim/0 47.17,41.27 < 20 |only if walking
Explore Aggrammar's Vault |achieve 10668/1 |goto Stormheim/0 46.31,44.54
|tip You will discover most of these naturally by using the "Stormheim" leveling guide.
step
Follow the path |goto 34.28,49.21 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path up |goto 35.14,47.28 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto 37.60,45.57 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path up |goto 37.18,44.26 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Cross the bridge |goto 35.80,43.52 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path down |goto 32.91,42.05 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Explore Blackbeak Overlook |achieve 10668/2 |goto 35.55,37.43 |only Alliance
Follow the path up |goto 35.76,30.91 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Explore Blackbeak Overlook |achieve 10668/2 |goto 34.15,31.18 |only Horde
step
Jump down into the water |goto 58.94,56.65 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the water |goto 57.07,61.12 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Continue following the water |goto 55.10,66.86 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Explore Dreadwake's Landing |achieve 10668/3 |goto 55.44,69.05 |only Alliance
Explore Dreadwake's Landing |achieve 10668/3 |goto 54.01,72.29 |only Horde
step
Follow the path |goto 72.17,59.32 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Explore Deyrgrot |achieve 10668/4 |goto 72.24,56.00 |only Alliance
Follow the path down |goto 60.55,52.10 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the road |goto 62.49,55.09 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 66.11,54.63 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 69.22,53.12 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path down |goto 72.14,51.88 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Explore Deyrgrot |achieve 10668/4 |goto 72.71,51.69 |only Horde
step
Explore Greywatch |achieve 10668/5 |goto 72.09,59.84 |only Alliance
Follow the path down |goto 60.55,52.10 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the road |goto 62.49,55.09 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 65.38,54.68 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path up |goto 66.55,57.54 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 67.55,58.99 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path down |goto 69.53,58.74 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Explore Greywatch |achieve 10668/5 |goto 71.31,58.79 |only Horde
step
Follow the road |goto 60.08,53.29 < 30 |only if walking
Continue following the road |goto 61.61,56.06 < 30 |only if walking
Explore Gates of Valor |achieve 10668/6	|goto 64.50,60.57
step
Follow the path down |goto 60.55,52.10 < 20 |only if walking
Follow the path down |goto 62.63,52.03 < 30 |only if walking
Follow the path |goto 64.45,47.89 < 30 |only if walking
Follow the road |goto 66.98,48.70 < 30 |only if walking
Explore Haustvald |achieve 10668/7 |goto 68.20,47.43
step
Explore Hrydhal |achieve 10668/8 |goto 38.26,65.27 |only Alliance
Cross the bridge |goto 44.15,60.52 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Explore Hrydhal |achieve 10668/8 |goto 44.42,63.46 |only Horde
step
Follow the path |goto 34.24,49.26 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path up |goto 35.08,47.32 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto 37.55,45.63 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto 38.74,45.24 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path down |goto 39.10,41.02 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto 40.86,35.35 < 30 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Cross the bridge |goto 38.18,33.04 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path down |goto 39.06,33.53 < 20 |only if walking
Follow the path down |goto 40.30,30.15 < 30 |only if walking
Explore Maw of Nashal |achieve 10668/9	|goto 37.82,29.23
step
Follow the path down |goto 60.55,52.10 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the road |goto 62.49,55.09 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 66.11,54.63 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 69.22,53.12 < 30 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path down |goto 72.14,51.88 < 20 |only if walking and _G.UnitFactionGroup("player")=="Horde"
Follow the path |goto 72.14,59.37 < 20 |only if walking and _G.UnitFactionGroup("player")=="Alliance"
Follow the path |goto 72.77,57.09 < 30 |only if walking
Explore Morheim |achieve 10668/10 |goto 78.29,57.01
step
Follow the path up |goto 51.20,33.66 < 30 |only if walking
Explore Nastrondir |achieve 10668/11 |goto 48.59,36.43
step
Follow the path down |goto 52.00,33.15 < 30 |only if walking |n
Follow the path down |goto 53.26,31.49 < 20 |only if walking |n
Follow the path up |goto 55.98,30.20 < 20 |only if walking |n
Follow the path |goto 59.59,29.30 < 30 |only if walking |n
Continue following the path |goto 60.61,25.72 < 30 |only if walking |n
Follow the path down |goto 64.10,24.11 < 20 |only if walking |n
Jump down into the water here |goto 64.55,22.83 < 20 |only if walking |n
click Grapple Point |goto 68.11,20.32 |n
|tip It looks like a grey metal hook on top of the rocks to the east.
Grapple onto the Rocks |goto 68.68,20.18 < 7 |noway |c |condition achieved(10668,12)
step
click Grapple Point |goto 69.77,21.22 |n
|tip It looks like a grey metal hook on the rocks to the southeast.
Explore Watchman's Rock |achieve 10668/12
step
Follow the path down |goto 60.55,52.10 < 20 |only if walking
Follow the road |goto 62.49,55.09 < 30 |only if walking
Follow the path |goto 66.11,54.63 < 30 |only if walking
Explore The Runewood |achieve 10668/13 |goto 65.22,54.67
step
Follow the path down |goto 52.00,33.15 < 30 |only if walking
Follow the path down |goto 53.26,31.49 < 20 |only if walking
Follow the path up |goto 55.98,30.20 < 20 |only if walking
Follow the path |goto 59.59,29.30 < 30 |only if walking
Continue following the path |goto 60.61,25.72 < 30 |only if walking
Follow the path down |goto 64.10,24.11 < 20 |only if walking
Jump down into the water here |goto 64.55,22.83 < 20 |only if walking
Follow the water |goto 67.84,19.02 < 30 |only if walking
Continue following the water |goto 73.15,15.39 < 30 |only if walking
Explore Shield's Rest |achieve 10668/14	|goto 76.67,13.02
step
Follow the road |goto 60.19,53.48 < 30 |only if walking
click Grapple Point |goto 62.06,59.73 |n
|tip It looks like a grey metal hook on the rocks directly below to the south.
Explore Skold-Ashil |achieve 10668/15
step
Follow the path down |goto 52.00,33.15 < 30 |only if walking
Follow the path down |goto 53.26,31.49 < 20 |only if walking
Follow the path up |goto 55.98,30.20 < 20 |only if walking
Explore Storm's Reach |achieve 10668/16 |goto 57.51,30.32
step
Cross the bridge |goto 56.72,51.15 < 20 |only if walking
Follow the path |goto 53.50,54.06 < 30 |only if walking
Explore Talonrest |achieve 10668/17 |goto 51.28,56.85
step
Explore Tideskorn Harbor |achieve 10668/18 |goto 58.47,49.34
step
Explore Valdisdall |achieve 10668/19 |goto 60.63,50.96
step
Follow the path down |goto Highmountain/0 59.16,66.00 < 20 |only if walking
Continue down the path |goto Stormheim/0 27.62,40.73 < 30 |only if walking
Follow the path |goto Stormheim/0 29.56,42.74 < 20 |only if walking
Follow the path |goto Stormheim/0 29.32,43.76 < 20 |only if walking
Follow the water |goto Stormheim/0 29.37,45.13 < 20 |only if walking
Explore Weeping Bluffs |achieve 10668/20 |goto Stormheim/0 31.31,46.59
step
_Congratulations!_
You earned the "Explore Stormheim" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Explore Suramar",{
condition_end="achieved(10669)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Explore","Suramar"},
description="This guide will walk you through completing the \"Explore Suramar\" Achievement.",
},[[
step
Follow the path |goto Suramar/0 33.13,47.69 < 30 |only if walking
Explore Ambervale |achieve 10669/1 |goto Suramar/0 31.54,45.39
|tip You will discover most of these naturally by using the "Suramar" leveling guide.
step
Explore Crimson Thicket |achieve 10669/2 |goto 64.22,41.94
step
Follow the path |goto 25.17,32.67 < 30 |only if walking
Explore Falanaar |achieve 10669/3 |goto 23.03,35.71
step
Follow the path |goto 34.92,51.21 < 30 |only if walking
Follow the path up |goto 34.05,54.42 < 20 |only if walking
Follow the path |goto 33.05,56.64 < 30 |only if walking
Follow the path |goto 33.33,58.49 < 20 |only if walking
Explore Felsoul Hold |achieve 10669/4 |goto 32.63,58.84
step
Run up the stairs |goto 35.29,50.87 < 20 |only if walking
Cross the bridge |goto 36.29,50.62 < 20 |only if walking
Follow the path |goto 37.51,49.52 < 20 |only if walking
Follow the road |goto 39.42,49.37 < 30 |only if walking
Explore The Grand Pomenade |achieve 10669/5 |goto 41.98,53.24
step
Follow the path down |goto 64.17,42.85 < 20 |only if walking
Follow the path down |goto 67.29,44.50 < 20 |only if walking
Explore Jandvik |achieve 10669/6 |goto 67.96,45.21
step
Explore Moon Guard Stronghold |achieve 10669/7 |goto 30.79,10.87
step
Follow the path |goto 28.66,32.85 < 30 |only if walking
Follow the path |goto 31.73,30.64 < 30 |only if walking
Explore Moonwhisper Gulch |achieve 10669/8 |goto 33.05,30.19
step
Explore Ruins of Elun'eth |achieve 10669/9 |goto 36.31,46.89
step
Run up the stairs |goto 35.29,50.87 < 20 |only if walking
Cross the bridge |goto 36.29,50.62 < 20 |only if walking
Follow the path |goto 37.51,49.52 < 20 |only if walking
Follow the road |goto 39.42,49.37 < 30 |only if walking
Follow the path |goto 42.25,53.66 < 30 |only if walking
Run down the stairs |goto 44.32,57.34 < 30 |only if walking
Explore Suramar City |achieve 10669/10 |goto 46.25,59.69
step
Explore Tel'anor |achieve 10669/11 |goto 42.17,35.38
step
_Congratulations!_
You earned the "Explore Suramar" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Broken Isles Pathfinder, Part One",{
condition_end="achieved(11190)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Broken","Isles","Pathfinder","Part","One"},
description="This guide will walk you through completing the \"Broken Isles Pathfinder, Part One\" Achievement.",
},[[
step
Earn the "Broken Isles Explorer" Achievement |achieve 11190/1
|tip Use the "Broken Isles Explorer" achievement guide to accomplish this.
Click here to load the Broken Isles Explorer guide |confirm |next "Zygor's Horde Achievement Guides\\Exploration\\Legion\\Broken Isles Explorer"
step
Earn the "Loremaster of Legion" Achievement |achieve 11190/2
|tip Use the "Loremaster of Legion" achievement guide to accomplish this.
Click here to load the Loremaster of Legion guide |confirm |next "Zygor's Horde Achievement Guides\\Quests\\Legion\\Loremaster of Legion"
step
Earn the "Variety is the Spice of Life" Achievement |achieve 11190/3
|tip Use the "Variety is the Spice of Life" achievement guide to accomplish this.
Click here to load the Variety is the Spice of Life guide |confirm |next "Zygor's Horde Achievement Guides\\Quests\\Legion\\Variety is the Spice of Life"
step
Earn the "Broken Isles Diplomat" Achievement |achieve 11190/4
|tip Use the "Broken Isles Diplomat" achievement guide to accomplish this.
Click here to load the Broken Isles Diplomat guide |confirm |next "Zygor's Horde Achievement Guides\\Reputation\\Legion\\Broken Isles Diplomat"
step
Earn the "A Glorious Campaign" Achievement |achieve 11190/5
|tip Use the "A Glorious Campaign" achievement guide to accomplish this.
Click here to load the A Glorious Campaign guide |confirm |next "Zygor's Horde Achievement Guides\\Class Hall\\A Glorious Campaign" |or
step
_Congratulations!_
You earned the "Broken Isles Pathfinder, Part One" achievement.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\General\\Wrath of the Lich King\\It's Over Nine Thousand!",{
condition_end="achieved(4496)",
author="support@zygorguides.com",
startlevel=110,
keywords={"World","Quests"},
description="This guide will walk you through completing the Level 110 Achievement.",
},[[
step
Refer to any of our achievement guides in order to accomplish this
If you haven't been actively collecting achievements already, this may take a while to earn
Earn the It's Over Nine Thousand! |achieve 4496
step
_Congratulations!_
You earned the "It's Over Nine Thousand!" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\General\\Wrath of the Lich King\\It's Over Nine Thousand!",{
condition_end="achieved(559)",
author="support@zygorguides.com",
startlevel=110,
keywords={"Achievement","Points"},
},[[
step
You will need to roll Need on a _superior or better item abolve the level of 185_ to earn this acheivement
Earn the Needy Achievement |achieve 559
step
_Congratulations!_
You earned the "Needy" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Cataclysm\\Justly Rewarded",{
condition_end="achieved(5752)",
author="support@zygorguides.com",
startlevel=1,
keywords={"Achievement","Points"},
},[[
step
For this, complete any quests save for repeatable ones to earn gold towards this Achievement
Refer to our Leveling, Dailies and World Quest guides to accomplish this
Earn the Justly Rewarded Achievement |achieve 5752
step
_Congratulations!_
You earned the "Justly Reward" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Cataclysm\\20 Dungeon Quests Completed",{
condition_end="achieved(4957)",
author="support@zygorguides.com",
startlevel=1,
keywords={"Achievement","Points"},
},[[
step
To Earn this, complete quests that correspond with a dungeon
Generally, there will be quests at the start of a dungeon
Use our dungeon guides to accomplish this
|tip Note, that characters who have completed dungeon quests previous to this achievement being implemented may be bugged.
|tip It is Adviced to use a new character if you end up experiencing the bug.
Earn the @0 Dungeon Quests Completed Achievement |achieve 4957
step
_Congratulations!_
You earned the "20 Dungeon Quests Completed" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\General\\Legion\\Quests\\Insurrection",{
condition_end="achieved(11340)",
author="support@zygorguides.com",
startlevel=110,
keywords={"Insurrection"},
description="This guide will walk you through completing the Insurrection questline in Suramar.",
},[[
step
For this achievement, you will need to progress through the Suramar guide
Here is your progress so far:
Lockdown |achieve 11340/1
Missing Persons |achieve 11340/2
Waxing Crescent |achieve 11340/3
An Elven Problem |achieve 11340/4
Crafting War |achieve 11340/5
March on Suramar |achieve 11340/6
Elisande's Retort |achieve 11340/7
As Strong As Our Will |achieve 11340/8
Breaking the Nighthold |achieve 11340/9
Click here to load the Suramar guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)"
step
_Congratulations!_
You earned the "Insurrection" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\General\\Legion\\Quests\\Pillars of Creation",{
condition_end="achieved(10877)",
author="support@zygorguides.com",
startlevel=110,
keywords={"Insurrection"},
description="This guide will walk you through obtaining the Pillars of Creation.",
},[[
step
For this achievement, you will need to quest through the Legion leveling zones
Here is your progress:
Aegis of Aggramar |achieve 10877/1
Tidestone of Golganneth |achieve 10877/2
Hammer of Khaz'goroth |achieve 10877/4
Tears of Elune |achieve 10877/5
Click here to load the Stormheim leveling guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Stormheim"
Click here to load the Azsuna leveling guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Azsuna"
Click here to load the Highmountain leveling guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Highmountain"
Click here to load the Val'shara leveling guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Val'sharah"
Click here to continue |confirm
step
Once the leveling guides are completed, you will have the quest to attain the Pillar of Creation
Refer to our dungeon guides to accomplish this
Current Progress:
Aegis of Aggramar |achieve 10877/1
Tidestone of Golganneth |achieve 10877/2
Hammer of Khaz'goroth |achieve 10877/4
Tears of Elune |achieve 10877/5
Click here to load the Halls of Valor dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Halls of Valor"
Click here to load the Neltharion's Lair dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Neltharion's Lair"
Click here to load the Darkheart Thicket dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Darkheart Thicket"
Click here to load the Eye of Azshara dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Eye of Azshara"
step
For the Eye of Aman'Thul, you will need to complete the Suramar guide
Click here to load the Suramar guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)"
You will need to defeat Gul'dan in Nighthold to complete the questline
Eye of Aman'Thul |achieve 10877/3
step
_Congratulations!_
You earned the "Pillars of Creation" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\What a Ripoff!",{
condition_end="achieved(10793)",
author="support@zygorguides.com",
startlevel=100,
endlevel=110,
keywords={"Guillible"},
description="This guide will walk you through attaining the What a Ripoff! Achievement.",
},[[
step
For this achievement, you may need a group for some of the later quests
confirm
step
click Stormforged Grapple Launcher
accept Stormforged Grapple Launcher##39775 |instant |goto Stormheim/0 51.35,57.28
only if not completedq(39775)
step
talk Ootasa Galehoof##97258
accept Eating Into Our Business##39789 |goto 51.46,56.94
step
kill Duskpelt Snarler##97091+, Duskpelt Alpha##107753+
kill 10 Duskpelt Wolves |q 39789/1 |goto 47.46,56.64
step
talk Rax Sixtrigger##107675
turnin Eating Into Our Business##39789 |goto 51.45,57.06
accept Only the Finest##39793 |goto 51.45,57.06
step
kill Silvertail Mountain Goat##97828+
collect 18 Patch of Fine Goat Hair##138021 |q 39793/1 |goto 46.79,33.04
step
talk Rax Sixtrigger##107675
turnin Only the Finest##39793 |goto 51.46,57.06
step
talk Snaggle Sixtrigger##107674
accept Rigging the Wager##39787 |goto 51.27,57.20
step
click Grapple Point
Use the Grapple Point above you |goto 48.72,33.85 < 15
click Spitefeather's Rock
kill Spitefeather##97124
collect Spitefeather's Beak##138022 |q 39787/1 |goto 48.44,33.00
step
talk Snaggle Sixtrigger##107674
turnin Rigging the Wager##39787 |goto 51.32,56.98
step
talk Snaggle Sixtrigger##107674
accept A Stone Cold Gamble##39786 |goto 51.32,56.98
step
Follow the path down |goto Stormheim/0 48.31,59.04 < 15
kill Stonefang##107914
|tip This is an elite mob you may need a group to kill it.
collect Stonefang's Jaw##138023 |q 39786/1 |goto 46.40,60.91
step
Follow the path up |goto Stormheim/0 47.55,60.81 < 15
talk Snaggle Sixtrigger##107674
turnin A Stone Cold Gamble##39786 |goto 51.38,57.31
step
talk Rax Sixtrigger##107675
accept A Stack of Racks##39792 |goto 51.37,57.27
step
Follow the path down |goto Stormheim/0 51.95,61.59 < 20
Cross the water |goto 53.19,66.11 < 20
Follow the path up |goto 56.81,73.18 < 20
kill Stout Highlands Runehorn##107852+
|tip Watch out for the Highlands Ettin that pats around this area.
collect 8 Meaty Rack of Musken Ribs##138020 |q 39792/1 |goto 56.48,76.03
step
Follow the path up |goto Stormheim/0 52.24,63.46
talk Rax Sixtrigger##107675
turnin A Stack of Racks##39792 |goto 51.36,57.14
step
accept Put It All on Red##42483 |goto 51.38,57.31
step
kill Steelscale##107917
|tip This is an elite mob and may need a group to kill.
|tip He pats around the water in this area.
collect Steelscale's Fin##138024 |q 42483/1 |goto 80.35,50.88
step
click Snaggle's Note
turnin Put It All on Red##42483 |goto 51.43,57.33
step
Congatulations, you have completed the What a Ripoff! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Azsuna Matata",{
condition_end="achieved(10763)",
author="support@zygorguides.com",
startlevel=100,
endlevel=110,
keywords={"Azsuna","Legion","Loremaster"},
description="This guide will walk you through attaining the Azsuna Matata Legion Loremaster Meta Achievement.",
},[[
step
Refer to our Azsuna Leveling guides in order to complete this achievement
Here is your current progress:
Behind Legion Lines |achieve 10763/1
Defending Azure Wing Repose |achieve 10763/2
Azsuna versus Azshara |achieve 10763/3
Against the Giants |achieve 10763/4
Mak'rana and the Fate of the Queen's Reprisal |achieve 10763/5
step
Congratulations, you have completed the Azsuna Matata Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Ain't No Mountain High Enough",{
condition_end="achieved(10763)",
author="support@zygorguides.com",
startlevel=100,
endlevel=110,
keywords={"Highmountain","Legion","Loremaster"},
description="This guide will walk you through attaining the Ain't No Mountain High Enough Legion Loremaster Meta Achievement.",
},[[
step
Refer to our Highmaountain Leveling guides in order to complete this achievement
Here is your current progress:
Riverbend |achieve 10059/1
Battle of Snowblind Mesa |achieve 10059/2
The Skyhorn Tribe |achieve 10059/3
The Rivermane Tribe |achieve 10059/4
The Bloodtotem Tribe |achieve 10059/5
Secrets of Highmountain |achieve 10059/6
Huln's War |achieve 10059/7
step
Congratulations, you have completed the Ain't No Mountain High Enough Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\That's Val'sharah Folks!",{
condition_end="achieved(10763)",
author="support@zygorguides.com",
startlevel=100,
endlevel=110,
keywords={"Val'shara","Legion","Loremaster"},
description="This guide will walk you through attaining the That's Val'sharah Folks! Legion Loremaster Meta Achievement.",
},[[
step
Refer to our Val'sharah Leveling guides in order to complete this achievement
Here is your current progress:
Black Rook Hold |achieve 10698/1
Bradensbrook |achieve 10698/2
Archdruid of the Vale |achieve 10698/3
Archdruid of the Claw |achieve 10698/4
Into the Nightmare |achieve 10698/5
All Nightmare Long |achieve 10698/6
Archdruid of Lore |achieve 10698/7
step
Congratulations, you have completed the That's Val'sharah Folks! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Vrykul Story, Bro",{
condition_end="achieved(10790)",
author="support@zygorguides.com",
startlevel=100,
endlevel=110,
keywords={"Stormheim","Legion","Loremaster"},
description="This guide will walk you through attaining the Vrykul Story, Bro Legion Loremaster Meta Achievement.",
},[[
step
Refer to our Stormheim Leveling guides in order to complete this achievement
Here is your current progress:
Greymane's Gambit |achieve 10790/1
The Aftermath |achieve 10790/2
The Trial of Might |achieve 10790/3
The Trial of Will |achieve 10790/4
The Trial of Valor |achieve 10790/5
To Helheim and Back |achieve 10790/6
Secrets of the Shieldmaidens |achieve 10790/7
The Champion of Stormheim |achieve 10790/8
step
Congratulations, you have completed the Vrykul Story, Bro Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Good Suramaritan",{
condition_end="achieved(11124)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Suramar","Legion","Loremaster"},
description="This guide will walk you through attaining the Good Suramaritan Loremaster Meta Achievement.",
},[[
step
Refer to our Suramar Guide in order to complete this achievement
Here is your current progress:
An Ancient Gift |achieve 11124/1
The Waning Crescent |achieve 11124/2
Blood and Wine |achieve 11124/3
Statecraft |achieve 11124/4
A Growing Crisis |achieve 11124/5
A Change of Seasons |achieve 11124/6
Breaking The Lightbreaker |achieve 11124/7
Moon Guard Stronghold |achieve 11124/8
Tidying Tel'anor |achieve 11124/9
Eminent Grow-main |achieve 11124/10
Jandvik's Jarl |achieve 11124/11
step
Congratulations, you have completed the Good Suramaritan Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Why Can't I Hold All This Mana?",{
condition_end="achieved(11133)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Suramar","Mana","Cap","Increase"},
description="This guide will walk you through attaining the Why Can't I Hold All This Mana? Achievement.",
},[[
step
Enter the cave |goto Suramar/0 27.17,72.64 < 20
click Kyrtos's Research Notes##6478
collect Kyrtos's Research Notes##140327 |n |goto 26.86,70.72
Use Kyrtos's Research Notes |use Kyrtos's Research Notes##140327
Click here to continue |confirm
step
Cross the bridge |goto Suramar/0 27.04,50.31 < 25
Follow the path down |goto 23.11,54.46 < 20
click Kel'danath's Manaflask##136269
collect Kel'danath's Manaflask##136269 |n |goto 21.4,54.5
Use Kel'danath's Manaflask |use Kel'danath's Manaflask##136269
Click here to continue |confirm
step
Cross the bridge |goto Suramar/0 23.08,39.84 < 20
Follow the path |goto Suramar/0 19.89,40.65 < 20
Follow the path |goto 21.73,39.40 < 20
Enter the building |goto 22.88,35.63 < 20
Follow the path |goto Suramar/32 53.36,45.93 < 20
Follow the path |goto 49.86,36.82 < 20
Follow the path |goto 43.17,32.43 < 10
Follow the path |goto 37.62,49.20 < 10
click Volatile Leyline Crystal
collect the Volatile Leyline Crystal##140328 |n |goto 35.65,52.77
Use the Volatile Leyline Crystal |use Volatile Leyline Crystal##140328
Click here to continue |confirm
step
map Suramar/32
path loop off; dist 20
path	37.39,56.41	38.06,41.95	46.08,33.02
path	54.42,41.23	50.21,63.07
map Suramar/0
path	22.84,35.83	21.09,39.96	21.11,39.12
path	30.65,36.53	33.96,33.84	35.97,29.51
path	38.15,26.54	39.09,24.35	37.00,21.15
path	35.45,20.12	32.80,17.92	28.73,14.43
path	28.15,11.72	30.96,9.37	32.00,8.40
Follow the path
click Infinite Stone
collect Infinite Stone##140329 |n |goto 35.55,12.10
Use the Infinite Stone |use Infinite Stone##140329
Click here to continue |confirm
step
map Suramar/0
path loop off; dist 20
path	35.77,48.95	37.61,49.52	37.95,47.34
path	37.24,45.19	39.36,44.76	41.52,43.33
path	44.04,43.26	46.60,41.94	46.08,38.79
path	45.23,35.26	45.07,31.42
click Enchanted Burial Urn
collect Enchanted Burial Urn##140326 |n |goto 44.84,30.98
Use the Enchanted Burial Urn##140326 |use Enchanted Burial Urn##140326
Click here to continue |confirm
step
To earn the rest of the unlockable Mana, refer to our Suramar Guide
Earn the Why Can't I Hold ALl This Mana? Achievement |achieve 11133
step
Congratulations, you have earned the Why Can't I Hold All This Mana? Achievement |achieve 11133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Tehd & Marius' Excellent Adventure",{
condition_end="achieved(11186)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Tehd","Marius","Quests"},
description="This guide will walk you through attaining the Tehd & Marius' Excellent Adventure Achievement.",
},[[
step
This guide will walk you through witnessing various encounters with Tehd and Marius
You will need to be level 110 in order to complete the "They Have A Pitlord" quest
kill Arkethrax##106583 |achieve 11186/1 |goto Azsuna/0 67.26,30.70
step
Enter the cave |goto Stormheim/0 62.47,74.98
|tip It's near the water below the cliff.
kill Inquisitor Ernstenkbok |achieve 11186/2 |goto Stormheim/0 63.69,74.29
step
talk Marius Felbane##108504
accept They Have A Pitlord##44055 |goto Highmountain/0 29.75,40.15
step
Cross the bridge |goto 29.17,32.34 < 15
Enter the cave |goto 31.62,29.94 < 15
kill Kuglaroth##112419 |q 44055/1 |goto 32.55,30.30
step
Leave the cave |goto Highmountain/0 31.55,29.93 < 15
Exit the Feltotem Encampment |goto 29.48,31.47 < 15
Follow the path up |goto 30.96,36.70 < 15
talk Marius Felbane##108504
turnin They Have A Pitlord##44055 |goto 29.75,40.15
Complete the quest They have a Pitlord |achieve 11186/3
step
talk Tehd Shoemaker##112472
Talk with Tehd |goto Val'sharah/0 49.09,47.51 < 20
kill Gathenak the Subjugator##93679 |achieve 11186/4 |goto 49.23,49.19
step
Congratulations, you have completed the Tehd & Marius' Excellent Adventure Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Harbinger",{
condition_end="achieved(11240)",
author="support@zygorguides.com",
startlevel=100,
endlevel=100,
},[[
step
Enter the Master's Cellar |goto Deadwind Pass/0 47.65,78.28 < 10
click Waterlogged Tome##143394
accept Waterlogged Tome##44487 |goto 40.78,74.18
step
Enter the building |goto Shadowmoon Valley D/0 37.13,59.59
click Cursed Tome##143394
accept Cursed Tome##44488 |goto 37.62,59.30
step
Open your group finder and queue for Vault of the Wardens
Click here to continue |confirm
step
After killing Inquisitor Tormentorum, Glazer and Ash'Golm, Ride the elevator down
map 1045/2
path follow loose; loop off; ants curved; dist 20
path	40.10,48.44	34.14,48.41
Enter the Fallen Passage to the west
Ride the elevator down
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to continue |confirm
step
map 1045/3
path follow loose; loop off; ants curved; dist 20
path	53.29,13.84	51.96,22.62	47.23,28.16
path	44.69,34.66
click Elune's Light
|tip Only one person can carry the Elune's Light. Usually the Tank carries it.
Follow the path occasionally covered with webs
|tip Opening the world map will display an ant trail guiding you through the current floor.
Click here to continue |confirm
step
click Fel-Ravaged Tome##143394
accept Fel-Ravaged Tome##44486 |goto 54.75,35.85
step
talk Robert Newhearth##112441
turnin Waterlogged Tome##44487 |goto Dalaran L/10 25.42,44.52
turnin Cursed Tome##44488 |goto 25.42,44.52
turnin Fel-Ravaged Tome##44486 |goto 54.75,35.85
Earn the Harbinger Achievement |achieve 11240
step
Congratulations, you have earned the Harbinger Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Hatchling of the Talon",{
condition_end="achieved(10774)",
author="support@zygorguides.com",
startlevel=100,
endlevel=100,
},[[
step
talk Aviana##97925
Tell her "I would like to attempt the flying challenge, please grant me your blessing."
You will be sent into the air, then slowly fall
There will be Green Orbs that you will need to pass through
Moving in circles small circles will help you control your direction
Gather 10 Emerald Orbs in a single Session of Aviana's Challenge |achieve 10774 |goto Highmountain/0 32.18,66.85
step
Congratulations, you have completed the Hatchling of the Talon Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Quests\\Legion\\Lock, Stock and Two Smoking Goblins",{
condition_end="achieved(11232)",
author="support@zygorguides.com",
startlevel=100,
endlevel=100,
},[[
step
In order to complete this achievement, you will need to have completed the _What a Ripoff!_ Achievement
You may need a group of 2 or 3 in order to kill the objective enemies
talk Gazrix Gearlock##110018
accept Time to Collect##43331 |goto Dalaran L/10 50.16,22.67
step
Use the Grapple Points to climb the rocks
click Grapple Point
Point 1 |goto Stormheim/0 68.68,20.18 < 20
Point 2 |goto Stormheim/0 69.96,22.38 < 10
Point 3 |goto 69.78,23.09 < 5
Point 4 |goto 69.42,23.08 < 5
Point 5 |goto Stormheim/0 69.26,28.13
kill Rax Sixtrigger, Snaggle Sixtrigger
collect Sixtriggers' Key##139276 |q 43331/1 |goto 68.83,27.90
step
click The Sixtriggers' Premium Stash
turnin Time to Collect##43331 |goto Stormheim/0 68.84,26.07
Complete the "Lock, Stock and Two Smoking Goblins" Achievement |achieve 10774
step
Congratulations, you have completed the Lock, Stock and Two Smoking Goblins Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Quests\\The Loremaster\\Loremaster of Legion",{
condition_end="achieved(9923)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Legion Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Azsuna Quests |achieve 10763 |loadguide "Zygor's Horde Leveling Guides\\Legion (100-110)\\Azsuna"
Val'sharah Quests |achieve 10698 |loadguide "Zygor's Horde Leveling Guides\\Legion (100-110)\\Val'sharah"
Stormheim Quests |achieve 10790 |loadguide "Zygor's Horde Leveling Guides\\Legion (100-110)\\Stormheim"
Highmountain Quests |achieve 10059 |loadguide "Zygor's Horde Leveling Guides\\Legion (100-110)\\Highmountain"
Suramar Quests |achieve 11124 |loadguide "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)"
step
Congratulations, you have _earned_ the _Loremaster of Legion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Going Up",{
condition_end="achieved(10627)",
author="support@zygorguides.com",
startlevel=100,
endlevel=100,
},[[
step
Follow the path |goto Stormheim/0 42.19,35.54 < 15
Enter the tower |goto 42.30,34.69 < 15
Climb to the top of the tower |achieve 10627 |goto 42.60,34.12
|tip It's a long walk.
step
Congratulations, you have completed the Going Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Legion\\Underbelly Tycoon",{
condition_end="achieved(11066)",
author="support@zygorguides.com",
startlevel=100,
endlevel=100,
},[[
step
To earn this achievement, you will need to _collect a total of 20,000 Sightless Eyes_ from the Dalaran Sewers
You will need to spend them as you reach the cap
confirm
step
If there are no sewer guards and you don't wish to engage in PVP, speak with Raethan and purchase a personal guard
The buff will last for 5 minutes and costs 5 gold
talk Raethan##97359
Hire a guard |goto Dalaran L/11 68.67,58.88
Click here to continue |confirm
step
talk The Widow##97366
kill Underbelly Croc##110719 |goto 72.10,24.46
kill Widowsister##110737 |goto 72.10,24.46
step
talk Fizzi Liverzapper##110642
accept Experimental Potion: Test Subjects Needed##43476 |instant |repeatable
step
talk Matthew Rabis##97360
buy Wardens Insignia##139425 |goto Dalaran L/11 46.70,56.10
step
talk Strap Bucklebolt##107760
buy Gladiator's Armbands of Alacrity##139424 |goto 66.29,81.25
step
talk K'huta##97363
buy Mistral Essence##139423 |goto 65.63,80.20
step
talk The Widow##97366
buy Pungent and Moldy Gamalost##139426 |goto 72.11,24.36
step
There are several bosses that spawn when PVP is disabled
Boss kills can award up to 90 Sightless Eyes per kill
kill Screek##97381 |goto Dalaran L/11 54.45,62.63
kill Splint##97380 |goto Dalaran L/11 54.45,62.63
kill Crazed Mage##97587 |goto Dalaran L/11 54.45,62.63
kill Thieving Scoundrel##97390 |goto Dalaran L/11 54.45,62.63
kill Xullorax##97388 |goto 38.01,41.81
step
talk Oxana Demonslay##97361
Fish Bait |goto 67.24,18.03
5 minute buff
Fishing - You will see a message stating that a certain area of the Dalaran Sewers, go fish in the said spot
click Underbelly Chest
click Underbelly Spoils
Chests will spawn when there are no guards
step
Derp
achieve 11066
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Adventurer of Azsuna",{
condition_end="achieved(10456)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
For this achievement, you will need to kill 26 rarespawns that appear in Azsuna
Click here to continue |confirm
step
kill Ravyn-Drath## |achieve 11261/26 |goto Azsuna/0 41.0,41.8
step
Follow the path |goto 39.88,45.67 < 30
Follow the path |goto 38.05,47.74 < 30
Follow the path |goto 36.36,50.37 < 30
Cache of Infernals |achieve 11261/12 |goto 35.4,50.4
step
Enter the cave |goto 34.76,49.77 < 20
kill Ragemaw##109504 |achieve 11261/21 |goto 32.7,48.8
step
Leave the cave |goto 34.67,49.77 < 20
Follow the path |goto 36.20,49.51 < 30
Follow the path |goto 35.58,46.79 < 30
Follow the path |goto Azsuna/0 34.78,45.08 < 30
Follow the path |goto 32.82,44.80 < 30
Follow the path |goto 29.69,45.49 < 30
Follow the path |goto 27.24,46.93 < 30
click Legion Portal
Enter the portal |goto 28.4,52.1 < 5
Follow the path |goto 28.47,50.93 < 15
Follow the path |goto 28.19,50.29 < 15
kill Inquisitor Tivos##107269 |achieve 11261/25 |goto Azsuna/0 28.40,52.16
step
Follow the path |goto 28.02,50.54 < 20
Follow the path |goto 28.50,50.95 < 20
click Legion Portal
Enter the portal |goto 28.21,51.89 < 15
Follow the path |goto 26.64,48.03 < 30
Follow the path |goto 28.04,47.51 < 30
Follow the path |goto 30.45,46.59 < 30
Follow the path |goto 32.47,44.66 < 30
Follow the path |goto 35.81,44.79 < 30
kill Vorthax##42280 |achieve 11261/24 |goto 37.29,43.20
step
Jump down carefully |goto 37.84,44.04 < 30
Follow the path |goto 39.27,46.07 < 30
Follow the path |goto 42.79,45.11 < 30
Follow the path |goto 45.61,43.84 < 30
Follow the path |goto 46.36,48.78 < 30
Follow the path |goto 46.56,52.17 < 30
kill Warbringer Mox'na |achieve 11261/8 |goto 48.92,55.03
|tip He patrols the road ahead.
step
Follow the path |goto Azsuna/0 47.96,53.75 < 30
Follow the path |goto 45.99,54.72 < 30
Follow the path |goto 46.74,56.44 < 30
kill Flog the Captain-Eater##89884 |achieve 11261/6 |goto 45.2,58
step
Follow the path |goto 57.39,59.07 < 30
Follow the path |goto 59.01,60.27 < 30
kill Tide Behemoth##91115 |achieve 11261/14 |goto 61.3,62.0
step
Follow the path |goto 62.53,59.22 < 30
Folow the path |goto 64.24,57.23 < 30
Swim into the ship |goto 65.25,56.73 < 30
kill Chief Bitterbrine##106990 |achieve 11261/19 |goto 65.5,56.8
step
Follow the path up |goto 63.65,54.50 < 30
Follow the path |goto 62.55,53.76 < 20
Follow the path |goto 60.01,54.12 < 20
Follow the path |goto 59.83,54.69 < 20
kill The Oracle##89850 |achieve 11261/4 |goto 59.7,55.2
step
Follow the path |goto 59.85,52.75 < 30
Follow the path |goto 58.36,51.55 < 30
Follow the path |goto 57.96,50.51 < 30
Follow the path |goto 57.18,48.60 < 30
Follow the path |goto 58.79,47.13 < 30
talk Tehd Shoemaker##91097 |goto 59.31,46.41 < 5
kill Brogozog##91100 |achieve 11261/16 |goto 59.31,46.41
step
Carefully follow the path down |goto 60.03,46.12 < 20
goto 60.47,45.88 < 10
click Ley Portal
Go through the Ley Portal |goto 60.26,46.14 < 5
kill Sinister Leyrunner##112636, Devious Sunrunner##112637 |goto 50.5,52.1< 5
click Treasure Chest##3365
|tip It appears after you kill them.
Loot the chest for credit |achieve 11261/22 |goto Azsuna/0 50.44,52.15
step
click Ley Portal
Enter the Ley Portal |goto 51.50,53.35 < 10
Follow the path |goto 62.38,47.48 < 30
Follow the path |goto 63.96,49.31 < 30
Follow the path |goto 66.33,50.14 < 25
Follow the path |goto 67.70,50.99 < 25
kill Syphonus##90505 |achieve 11261/11 |goto 67.1,51.4
step
Follow the path |goto 67.43,50.23 < 30
Follow the path |goto 66.35,47.38 < 30
Follow the path |goto 66.67,42.96 < 30
click Horn of the Siren
Kill the naga that spawn
kill Golza the Iron Fin##89816 |achieve 11261/2 |goto 65.2,40.1
step
Follow the path |goto Azsuna/0 65.38,38.42 < 35
Follow the path |goto 64.38,35.15 < 30
Follow the path |goto 63.38,30.46 < 30
Follow the path |goto 64.09,26.89 < 30
Follow the path |goto 62.97,22.76 < 30
Follow the path |goto 62.06,19.02 < 30
Follow the path |goto 61.44,14.84 < 30
Defeat the Unbound Rift |achieve 11261/10 |goto 59.8,12.0
step
Follow the path |goto 58.05,13.79 < 30
Follow the path |goto 56.49,14.84 < 30
Follow the path |goto 53.79,12.72 < 30
Follow the path |goto 51.42,8.87 < 30
Enter the case |goto 50.10,7.82 < 20
kill Normantis the Deposed##90217 |achieve 11261/9 |goto 49.5,8.8
step
Follow the path |goto Azsuna/0 46.7,28.2 < 20
kill Doomlord Kazrok##91579 |achieve 11261/17 |goto 43.2,28.2
step
Follow the path |goto 46.43,27.80 < 30
Follow the path |goto 48.74,31.18 < 30
kill Daggerbeak##90057 |achieve 11261/7 |goto 51.1,31.7
step
kill Pridelord Meowl##90901 |achieve 11261/13 |goto 55.8,29.1
confirm always
step
Follow the path |goto 51.13,32.77 < 30
kill Mrrgrl the Tide Reaver |achieve 11261/5 |goto 50.0,34.7
step
Follow the path |goto 51.21,33.03 < 30
Follow the path |goto 49.19,33.73 < 30
Follow the path |goto 47.39,34.87 < 5
kill Valiyaka the Stormbringer##89650 |achieve 11261/1 |goto 47.4,34.4
step
Follow the path |goto 48.61,37.44 < 30
Follow the path |goto 49.17,40.50 < 30
Follow the path |goto 50.26,42.14 < 20
Go up the stairs |goto 51.6,44.6 < 20
kill Captain Volo'ren##89846 |achieve 11261/3 |goto 53.4,44.0
step
Jump down |goto 53.41,44.33 < 15
Go up the stairs |goto 54.15,45.42 < 30
kill Brawlgoth |achieve 11261/20 |goto 55.1,45.7
step
Follow the path |goto 41.1,35.3
Follow the path |goto Azsuna/0 39.04,33.03
Follow the path |goto 38.94,31.61
Follow the path |goto 36.91,31.24
Follow the path |goto 37.93,29.91
Follow the path |goto 38.91,27.59
Follow the path |goto 41.18,24.65
Follow the path |goto 43.63,24.03
talk Tehd Shoemaker##105913
Start the encounter |goto 43.56,24.47
kill Felbats##42069 |achieve 11261/18 |goto 43.6,24.4
step
Follow the path |goto Azsuna/0 41.90,22.76 < 20
Follow the path |goto 40.03,24.71 < 20
Follow the path |goto 39.07,26.97 < 20
Follow the path |goto 37.81,29.88 < 20
Follow the path |goto 36.95,31.42 < 20
Follow the path |goto 39.23,31.48 < 20
Follow the path |goto 38.14,33.26 < 20
Follow the path |goto 36.18,33.86 < 20
kill Arcanist Shal'iman##107657 |achieve 11261/23 |goto 34.9,33.7
step
Jump down carefully |goto 34.47,31.41 < 20
Be very careful on your way down |goto 33.65,31.08 < 20
kill Beacher##91187 |achieve 11261/15 |goto 32.3,29.0
step
Congratulation, you have earned the Adventurer of Azsuna Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Adventurer of Highmountain",{
condition_end="achieved(11264)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
For this achievement, you will need to kill 23 rarespawns that appear in Highmountain
Click here to continue |confirm
step
kill Sekhan##101077 |achieve 11264/1 |goto Highmountain/0 45.48,55.48
|tip Sekhan patrols around the area.
step
Follow the path |goto Thunder Totem/0 43.57,1.37 < 20
Follow the path |goto Highmountain/0 47.82,52.91 < 20
Follow the path |goto 48.72,50.03 < 20
talk Beastmaster Pao'lek |goto 48.8,50.0
kill Arru##97220
click Thunder Totem Stolen Goods##3365
Collect the treasure |achieve 11264/10 |goto Highmountain/0 49.23,49.87
step
Follow the path |goto 47.86,52.71 < 20
Follow the path |goto 48.99,55.36 < 30
Follow the path |goto Thunder Totem/0 58.81,27.32 < 30
Follow the path |goto 61.77,43.15 < 30
Follow the path |goto 55.79,57.99 < 30
Follow the path |goto Highmountain/0 51.81,61.63
Follow the path |goto 51.92,59.35 < 20
Enter the cave |goto 52.3,58.6 < 20
kill Unethical Adventures |achieve 11264/8 |goto Highmountain/0 52.74,58.22
step
Leave the cave |goto 52.32,58.59 < 30
Follow the path |goto 52.88,60.52 < 30
Follow the path |goto 54.78,60.78 < 30
kill Gurbog da Basher |achieve 11264/4 |goto 56.3,61.0
step
Follow the path |goto Highmountain/0 54.18,59.23 < 20
Follow the path |goto 53.51,57.24 < 20
Follow the path |goto 52.91,55.30 < 20
Follow the path |goto 53.00,54.15 < 20
Follow the path |goto 53.58,53.27 < 20
Follow the path |goto 53.11,52.70 < 20
click Totally Safe Treasure Chest
kill Ram'Pag
click Actually Safe Treasure Chest##3365 |achieve 11264/17 |goto 52.3,51.4
step
Follow the path |goto Highmountain/0 52.88,52.47 < 20
Follow the path |goto 53.50,53.71 < 20
Follow the path |goto 52.68,55.10 < 20
Follow the path |goto 53.36,57.03 < 20
Follow the path |goto 54.84,58.50 < 20
Follow the path |goto Highmountain/0 56.12,57.04 < 20
Follow the path |goto 55.58,53.84 < 20
Follow the path |goto 55.94,51.62 < 20
Jump down here |goto Highmountain/0 54.85,49.95 < 20
talk Taurson##97653
kill The Beastly Boxer |achieve 11264/2 |goto Highmountain/0 53.70,51.28
step
Follow the path |goto Highmountain/0 54.99,48.47 < 20
Follow the path |goto 55.53,46.92 < 20
Follow the path |goto Highmountain/0 55.11,44.24 < 20
Follow the path |goto 54.61,42.76 < 20
Follow the path |goto 55.06,41.83 < 20
Click the Kobold Candals
kill Devouring Darkness |achieve 11264/18 |goto 54.44,41.29
step
Follow the path |goto Highmountain/0 54.62,42.71 < 20
Leave the cave |goto 55.08,44.20 < 20
Follow the path |goto 54.50,44.66 < 20
Follow the path |goto 53.08,43.56 < 20
Follow the path |goto 52.94,45.92 < 20
Follow the path |goto 52.83,47.32 < 20
Follow the path |goto 53.02,48.32 < 20
Follow the path |goto 51.81,48.74 < 20
Follow the path |goto 51.00,49.56 < 20
kill Hartli the Snatcher |achieve 11264/6 |goto 51.08,48.22
step
Follow the path |goto Highmountain/0 51.41,49.89 < 30
Follow the path |goto 52.12,47.97 < 30
Follow the path |goto 52.83,46.35 < 30
Follow the path |goto 52.58,41.86 < 30
Follow the path |goto Highmountain/0 51.52,37.42 < 30
Follow the path |goto 50.60,35.29 < 30
kill Luggut the Eggeater |achieve 11264/20 |goto 50.8,34.6
step
Follow the path |goto Highmountain/0 49.91,35.67 < 20
Follow the path |goto 48.92,36.12 < 20
Follow the path |goto 49.42,34.76 < 20
Follow the path |goto 50.33,35.70 < 20
Follow the path |goto 50.85,36.65 < 20
Follow the path |goto 51.66,37.79 < 20
Follow the path |goto 49.43,39.74 < 30
Follow the path |goto 48.57,40.65 < 30
kill Crawshuk the Hungry |achieve 11264/5 |goto 48.4,40.0
confirm always
step
Follow the path |goto 52.28,39.39 < 30
Follow the path |goto 52.42,36.27 < 30
Follow the path |goto 53.73,35.54 < 30
Follow the path |goto 54.68,35.74 < 30
Follow the path |goto 55.17,37.23 < 30
Follow the path |goto 54.79,38.87 < 30
Follow the path |goto 54.82,40.16 < 30
talk Scout Harefoot##97579
kill Mynta Talonscreech##97593 |achieve 11264/13 |goto 54.54,40.62
step
Follow the path |goto Highmountain/0 54.84,40.01 < 30
Follow the path |goto 54.78,38.81 < 30
Follow the path |goto 55.14,36.25 < 30
Follow the path |goto 53.63,35.58 < 30
Follow the path |goto 52.66,34.49 < 30
Follow the path |goto 51.61,34.08 < 30
Follow the path |goto 50.77,33.11 < 30
kill Skywhisker Taskmaster |achieve 11264/7 |goto 51.5,31.9
step
Follow the path |goto Highmountain/0 50.83,33.49 < 30
Follow the path |goto 50.08,34.45 < 30
Follow the path |goto 49.61,35.71 < 30
Follow the path |goto 49.06,36.45 < 30
Follow the path |goto 48.09,37.25 < 30
Follow the path |goto 46.47,38.05 < 30
Follow the path |goto 43.89,39.51 < 30
Follow the path |goto 42.22,40.82 < 30
kill Tenpak Flametotem##97203 |achieve 11264/9 |goto 41.8,41.4
step
Follow the path |goto Highmountain/0 42.38,40.56 < 20
Follow the path |goto 43.28,39.31 < 20
Follow the path |goto 42.51,38.85 < 20
Follow the path |goto 43.27,37.58 < 20
Follow the path |goto 44.01,36.63 < 20
Follow the path |goto 44.75,35.29 < 20
Follow the path |goto 46.08,33.47 < 20
Follow the path |goto 48.12,29.62 < 20
Follow the path |goto 49.78,28.08 < 20
Follow the path |goto 50.68,26.46 < 20
kill Shara Felbreath |achieve 11264/21 |goto 51.0,25.7
step
Follow the path |goto Highmountain/0 50.27,26.66 < 20
Follow the path |goto 49.58,25.55 < 20
Follow the path |goto 48.01,25.43 < 20
Follow the path |goto 46.68,25.90 < 20
Follow the path |goto 45.27,25.91 < 20
Follow the path |goto 44.26,27.63 < 20
kill Majestic Elderhorn |achieve 11264/11 |goto Highmountain/0 44.6,28.6
|tip It patrols the area.
step
Follow the path |goto Highmountain/0 47.50,29.09 < 20
Follow the path |goto 48.29,27.93 < 20
kill Mellok, Son of Torok |achieve 11264/19 |goto 48.9,27.1
step
Follow the path |goto Highmountain/0 48.11,28.48 < 30
Follow the path |goto 45.91,30.01 < 30
Follow the path |goto 43.79,30.57 < 30
Follow the path |goto 42.23,30.58 < 30
Follow the path |goto 41.12,31.00 < 30
kill Slumbering Bear |achieve 11264/22 |goto 41.5,32.1
step
Follow the path |goto 40.42,36.81 < 30
Follow the path |goto 38.93,39.19 < 30
Follow the path |goto 38.25,41.78 < 30
Follow the path |goto 37.23,44.09 < 30
Follow the path |goto 37.69,45.74 < 30
kill Bristlemaul |achieve 11264/12 |goto 38.1,45.5
confirm always
step
Follow the path |goto Highmountain/0 37.05,46.64 < 30
Follow the path |goto 38.39,48.22 < 30
Follow the path |goto 39.46,47.44 < 30
Follow the path |goto 40.89,47.87 < 30
Follow the path |goto 43.18,47.94 < 30
kill Amateur Hunters |achieve 11264/16 |goto 43.5,47.3
confirm always
step
Follow the path |goto Highmountain/0 38.35,48.29 < 30
Follow the path |goto 36.99,46.10 < 30
Follow the path |goto 37.47,43.33 < 30
Follow the path |goto 39.15,38.53 < 30
Follow the path |goto 40.86,34.62 < 30
Follow the path |goto 40.94,31.36 < 30
Follow the path |goto 42.65,29.21 < 30
Follow the path |goto 44.27,27.38 < 30
Follow the path |goto 42.40,25.65 < 30
click Unstable Barrel##100029 |goto 41.31,25.49 < 15
Follow the path |goto 37.75,16.19 < 30
kill Bodash the Hoarder |achieve 11264/15 |goto 36.2,16.5
step
Follow the path |goto 39.20,14.24 < 30
Follow the path |goto 40.70,12.46 < 30
Follow the path |goto 42.08,10.82 < 30
Follow the path |goto 43.99,11.09 < 30
kill Crab Rider Grmlrml |achieve 11264/3 |goto 45.3,12.6
step
Follow the path |goto 44.49,9.64 < 30
Follow the path |goto 46.11,8.59 < 30
talk Captured Survivor
kill Mrrklr |achieve 11264/23 |goto 46.5,7.3
step
kill Oubdob da Smasher |achieve 11264/14 |goto 47.7,73.9
step
Congratulation, you have earned the Adventurer of Highmountain Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Adventurer of Stormheim",{
condition_end="achieved(11263)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
Follow the path |goto Stormheim/0 61.03,52.50 < 30
Follow the path |goto 63.96,52.35 < 30
kill Urgev the Flayer |achieve 11263/15 |goto 64.8,51.8
step
Follow the path |goto 63.31,48.88 < 30
Follow the path |goto 62.47,47.07 < 30
Follow the path |goto 61.95,44.62 <30
kill Tarben|achieve 11263/19 |goto Stormheim/0 61.3,43.9
step
click Grappling Point
Grapple across |goto 60.37,43.81 < 5
Follow the path |goto 59.32,44.11 < 20
click Horn of the Helmouth
kill Helmouth Raiders |achieve 11263/10 |goto 57.98,45.16
step
Follow the path |goto 56.06,41.16 < 35
Follow the path |goto 57.10,37.66 < 35
Enter the cave |goto 57.81,34.69 < 10
kill Roteye |achieve 11263/23 |goto 58.35,33.87
step
Leave the cave |goto 57.78,34.67 < 15
Follow the path |goto 57.97,40.49 < 35
Follow the path |goto 58.60,42.89 < 35
click Grapple Point
Grapple onto the roof |goto 60.37,43.81 < 5
click Grapple Point
Grapple up to the deck |goto 60.90,43.91 < 5
Follow the path |goto 61.08,44.80 < 35
Follow the path |goto 62.64,45.89 < 35
Follow the path |goto 64.65,44.41 < 35
Follow the path |goto 66.64,42.36 < 35
click Offering Shrine##6478
kill The Nameless King |achieve 11263/12 |goto 67.27,39.93
step
Follow the path |goto 68.71,46.56 < 20
Follow the path |goto 70.47,43.86 < 20
Follow the path |goto 72.34,41.25 < 20
Enter Helheim |goto 73.65,39.36 < 20
Follow the path |goto Helheim/0 63.55,41.18 < 20
Follow the path |goto 71.15,34.75 < 20
Follow the path |goto 82.02,43.52 < 20
kill Fenri |achieve 11263/6 |goto 85.0,49.9
step
Folllow the path |goto Helheim/0 72.31,30.62 < 25
Folllow the path |goto 61.34,29.74 < 25
Folllow the path |goto 59.19,37.82 < 25
click Cursed Seaweed##6478
Get the Kvaldir Disguise |goto 64.49,44.27 < 10
Folllow the path |goto 56.53,31.63 < 25
Folllow the path |goto 50.66,33.05 < 25
Folllow the path |goto 42.52,33.02 < 25
Folllow the path |goto 39.81,41.81 < 25
Folllow the path |goto 39.49,48.21 < 25
Folllow the path |goto 33.55,48.08 < 25
Folllow the path |goto 29.51,46.42 < 25
Folllow the path |goto 27.00,51.80 < 25
Folllow the path |goto 25.13,61.16 < 25
kill Soulthirster |achieve 11263/17 |goto 28.0,63.2
step
Follow the path |goto 35.80,62.48 < 30
Follow the path |goto 44.62,54.38 < 30
Follow the path |goto 56.60,49.77 < 30
Follow the path |goto 55.69,39.35 < 30
Follow the path |goto Stormheim/0 66.79,46.72 < 15
Follow the path |goto 68.88,49.12 < 15
Follow the path |goto 71.42,47.15 < 15
kill Kottr Vondyr |achieve 11263/20 |goto Stormheim/0 73.5,47.7
step
Follow the path |goto Stormheim/0 73.19,48.76
kill Mordvigbjorn |achieve 11263/14 |goto Stormheim/0 72.4,49.9
step
Follow the path |goto 71.85,51.91 < 15
Follow the path |goto 73.38,50.95 < 15
Follow the path |goto 74.69,48.28 < 15
Follow the path |goto 77.05,54.32 < 20
Follow the path |goto 78.57,57.35 < 20
Follow the path |goto 78.52,60.03 < 20
kill Grrvrgull the Conquerer |achieve 11263/21 |goto Stormheim/0 78.6,61.2
step
Follow the path |goto 77.85,56.99 < 35
Follow the path |goto 75.16,56.92 < 35
Follow the path |goto 72.06,59.52 < 35
Follow the path |goto 70.64,60.42 < 35
Follow the path |goto 67.18,62.16 < 35
Follow the path |goto 64.72,62.07 < 20
Follow the path |goto 62.97,61.76 < 20
Follow the path |goto 61.71,62.15 < 20
kill Isel the Hammer |achieve 11263/16 |goto Stormheim/0 62.0,60.5
step
Follow the path |goto 60.90,64.53 < 35
Follow the path |goto 60.89,66.34 < 35
Follow the path |goto 60.90,68.07 < 35
kill Ivory Sentinel##92751 |achieve 11263/11 |goto Stormheim/0 59.9,68.2
step
Follow the path |goto Stormheim/0 60.45,72.61 < 25
Enter the cave |goto 62.50,74.96 < 20
kill the Inquisitor |achieve 11263/24 |goto Stormheim/0	63.7,74.3
step
Follow the path |goto 58.05,73.17 < 20
Follow the path |goto 56.31,74.80 < 25
Follow the path |goto 57.78,78.87 < 25
Follow the path |goto 55.60,78.19 < 25
Follow the path |goto 53.74,77.08 < 25
Follow the path |goto 52.86,75.00 < 25
kill Hannval the Butcher |achieve 11263/22 |goto 51.6,74.6
step
Follow the path |goto 51.47,76.73 < 25
Follow the path |goto 50.32,76.02 < 25
Follow the path |goto 50.71,74.14 < 25
kill Stormwing Matriarch |achieve 11263/2 |goto Stormheim/0 49.5,71.5
step
Follow the path |goto Stormheim/0 49.70,74.07 < 25
click Grapple Point
Grapple up |goto 48.34,76.69 < 10
click Grapple Point
Grapple Up |goto 47.28,76.61 < 10
kill Bladesquall |achieve 11263/4 |goto Stormheim/0 45.8,77.5
step
click Grapple Point
Grapple up |goto Stormheim/0 44.34,76.37 < 5
click Grapple Point
Grapple up |goto 43.70,76.72 < 5
click Grapple Point
Grapple up |goto 45.21,78.82
click Grapple Point
Grapple up |goto 45.93,82.54
kill Fathnyr |achieve 11263/3 |goto 46.8,84.1
step
click Grapple Point
Grapple across |goto 44.89,78.02 < 20
Follow the path |goto 43.84,75.59 < 20
Follow the path |goto 46.34,76.13 < 20
Drop down |goto 46.86,75.74 < 20
Drop down |goto 46.08,74.08 < 20
Follow the path |goto 46.03,71.26 < 25
Follow the path |goto 43.38,68.38 < 25
kill Glimar Ironfist |achieve 11263/1 |goto Stormheim/0 41.5,66.7
step
Follow the path |goto 43.19,68.19 < 25
Follow the path |goto 43.16,71.03 < 25
Follow the path |goto 41.89,71.20 < 25
kill Erling the Lightningborn##91893
kill Asger Jarlborn##91895
kill Strider Cuyler##91894
kill Thane Irglov the Merciless##91892 |achieve 11263/5 |goto Stormheim/0 40.7,72.4
step
Leave the building |goto 41.57,69.76 < 10
click Grapple Point
Grapple up |goto 39.73,67.42 < 10
Cross the bridge |goto 39.99,62.80 < 20
Follow the path |goto 42.92,58.96 < 35
kill Lost Ettin |achieve 11263/13 |goto Stormheim/0 48.7,50.2
step
Follow the path |goto 43.85,54.71 < 35
Follow the path |goto 41.55,52.97 < 35
Follow the path |goto 38.96,53.29 < 35
kill Whitewater Typhoon##92152 |achieve 11263/7 |goto Stormheim/0 36.5,51.7
step
Follow the path |goto 38.27,49.94 < 20
Follow the path |goto 38.65,45.45 < 20
kill Worg Pack |achieve 11263/8 |goto Stormheim/0 38.4,42.9
step
Follow the path |goto 39.31,39.68 < 35
Follow the path |goto 40.46,36.44 < 35
Follow the path |goto 39.73,33.64 < 35
Follow the path |goto 41.37,28.85 < 35
Follow the path |goto 43.03,27.99 < 35
Follow the path |goto 44.27,25.02 < 35
kill Forsaken Deathsquad |achieve 11263/9 |goto Stormheim/0 44.5,22.8
step
Follow the path |goto 42.95,24.09 < 30
Follow the path |goto 40.62,26.65 < 30
Follow the path |goto 40.50,30.30 < 30
Follow the path |goto 41.43,32.05 < 30
kill Egyl the Enduring |achieve 11263/18 |goto Stormheim/0 41.7,33.9
step
Congratulations, you have earned the Adventurer of Stormheim Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Adventurer of Val'sharah",{
condition_end="achieved(11262)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
Follow the path |goto Val'sharah/0 54.35,74.38 < 30
click Unguarded Thisleleaf Treasure
kill Thistleleaf Rascal##92104 |achieve 11262/19 |goto 55.6,77.8
step
Follow the path |goto 56.25,80.35 < 30
Follow the path |goto 58.00,87.85 < 30
Follow the path |goto 59.33,89.78 < 30
talk Elindya Featherlight##92334
Resuscitate Elindya |goto 60.43,90.72 < 5
kill Skul'vrax##93654 |achieve 11262/7 |goto 60.95,87.80
step
Follow the path |goto 61.86,82.85 < 30
Enter the building |goto 64.40,84.65
click Treasure Chest
Collect the treasure |achieve 11262/8 |goto 64.56,85.45
step
Follow the path |goto 61.86,82.85 < 30
Follow the path |goto 60.59,79.85 < 30
Follow the path |goto 59.30,78.64 < 30
talk Lorel Sagefeather##92111
Talk with Lorel Ssagefeather |goto 59.81,77.36 < 30
kill Gorebeak |achieve 11262/1 |goto Val'sharah/0 59.8,77.3
step
Follow the path |goto 60.71,73.76 < 30
Follow the path |goto 61.66,71.64 < 30
kill Perrexx the Corruptor |achieve 11262/13 |goto 61.1,69.9
step
Follow the path |goto 61.51,71.55 < 30
Follow the path |goto 63.83,71.75 < 30
Follow the path |goto 64.69,74.91 < 30
Follow the path |goto 65.97,76.79 < 30
Follow the path |goto 67.10,74.38 < 30
Follow the path |goto 66.38,71.63 < 30
talk Elandris Bladesong##109225
|tip Elandris Bladesong will run out of the building after shouting something.
Kill the Grell Attackers that spawn
kill Undergrell Ringleader |achieve 11262/17 |goto 67.09,69.57
step
Follow the path |goto 65.88,66.84 < 30
Follow the path |goto 63.10,65.92 < 30
Follow the path |goto 60.62,61.94 < 30
Follow the path |goto 62.20,61.62 < 30
Follow the path |goto 63.70,59.92 < 30
Follow the path |goto 65.13,57.97 < 30
Follow the path |goto 65.91,60.38 < 30
Follow the path |goto 67.22,58.94 < 30
Jump down here |goto 66.94,53.97 < 15
Enter the cave |goto 66.12,52.39 < 15
kill Grelda the Hag |achieve 11262/11 |goto 65.7,53.5
step
Follow the path |goto 65.22,50.39 < 30
Follow the path |goto 65.28,49.36 < 30
Follow the path |goto 63.66,47.98 < 30
kill Thondrax |achieve 11262/6 |goto 62.6,47.5
step
Follow the path |goto 61.46,48.45 < 30
Jump down twice |goto 60.57,45.57 <15
kill Dreadbog |achieve 11262/15 |goto Val'sharah/0 60.2,44.1
step
Follow the path |goto 61.75,43.81
Follow the path |goto 63.74,42.93
Follow the path |goto 66.04,44.72
kill Puging the River |achieve 11262/10 |goto Val'sharah/0 67.5,45.1
step
Follow the path |goto Val'sharah/0 65.61,42.54
Follow the path |goto 66.19,39.52
Follow the path |goto 67.59,37.28
kill Wraithtalon |achieve 11262/14 |goto Val'sharah/0 66.8,37.1
step
Follow the path |goto Val'sharah/0 64.99,37.97
Follow the path |goto 64.35,38.24
|tip Make sure you're at full health first
Follow the path |goto 62.85,38.69
Follow the path |goto 61.69,35.89
Follow the path |goto 62.52,33.04
kill Lyrath Moonfeather |achieve 11262/16 |goto Val'sharah/0 61.9,30.3
step
Follow the path |goto 61.04,31.25
kill Ironbranch |achieve 11262/5 |goto Val'sharah/0 58.8,34.0
step
Follow the path |goto Val'sharah/0 59.28,36.61
Follow the path |goto 56.92,41.21
Follow the path |goto 55.05,44.62
Follow the path |goto 52.02,45.52
|tip Drop down carefully.
Follow the path |goto 51.46,45.67
Follow the path |goto 50.64,46.07
talk Tehd Shoemaker##112472
Talk to Tehd |goto Val'sharah/0 49.09,47.52
kill Gathenak the Subjugator##93679 |achieve 11262/20 |goto 49.22,49.19
step
Follow the path |goto 48.04,47.23
Follow the path |goto 47.37,49.07
Follow the path |goto 47.69,51.65
Follow the path |goto 46.07,55.78
Follow the path |goto 44.33,58.37
Follow the path |goto 40.84,58.79
Follow the path |goto 38.65,57.41
Follow the path |goto 37.86,55.32
click Theryssia
kill Theryssia |achieve 11262/3 |goto Val'sharah/0 38.0,52.8
step
Follow the path |goto 38.66,52.08
Follow the path |goto 39.61,51.29
Follow the path |goto 40.26,51.42
Follow the path |goto 41.38,52.95
Follow the path |goto 43.23,53.74
kill Darkshade, Saber Matriarch |achieve 11262/4 |goto Val'sharah/0 43.9,51.6
|tip It patrols around the area back here.
step
Follow the path |goto Val'sharah/0 41.22,53.02
Follow the path |goto 39.51,53.25
Follow the path |goto 37.81,55.58
Follow the path |goto 37.58,59.82
Follow the path |goto 35.56,60.67
click Vibrating Arcane Trap
kill Kiranys Duskwhisper##94414 |achieve 11262/9 |goto Val'sharah/0 34.4,59.3
step
Follow the path |goto 37.02,60.24
Follow the path |goto 39.89,59.93
Follow the path |goto 43.15,59.01
Follow the path |goto 44.78,58.35
click Old Bear Trap
kill Mad Henryk |achieve 11262/12 |goto Val'sharah/0 47.2,57.9
step
Follow the path |goto Val'sharah/0 44.88,59.32
Follow the path |goto 42.39,63.45
Follow the path |goto 42.09,65.02
Follow the path |goto 41.87,66.76
Follow the path |goto 41.46,69.54
Follow the path |goto 42.32,70.59
Follow the path |goto 42.87,73.57
Follow the path |goto 42.45,76.39
kill Seersei |achieve 11262/2 |goto Val'sharah/0 41.6,78.3
step
Follow the path |goto 41.46,79.87
Follow the path |goto 42.03,80.49
Follow the path |goto 42.81,80.86
Follow the path |goto 43.99,84.40
Follow the path |goto 44.61,86.96
kill Bahagar |achieve 11262/18 |goto Val'sharah/0 45.6,88.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Adventurer of Suramar",{
condition_end="achieved(11265)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
kill Garvulg |achieve 11265/1
step
kill Elfbane |achieve 11265/2
step
kill Cora'kar |achieve 11265/3
step
kill Rok'nash |achieve 11265/4
step
kill Har'kess the Insatiable |achieve 11265/5
step
kill Hertha Grimdottir |achieve 11265/6
step
kill Reef Lord Raj'his |achieve 11265/7
step
kill Shadowquil |achieve 11265/8
step
kill Rauren |achieve 11265/9
step
kill Artificer Lothaire |achieve 11265/10
step
kill Pinchshank |achieve 11265/11
step
kill Shal'an |achieve 11265/12
step
kill Magister Phaedris |achieve 11265/13
step
kill Mal'Dreth the Corrupter |achieve 11265/14
step
kill Myonix |achieve 11265/15
step
kill Seigemaster Aedrin |achieve 11265/16
step
kill Oreth the Vile |achieve 11265/17
step
kill Arcanist Lylandre |achieve 11265/18
step
kill Cadraeus |achieve 11265/19
step
kill Tideclaw |achieve 11265/20
step
kill Gorgroth |achieve 11265/21
step
kill Apothecary Faldren |achieve 11265/22
step
kill Guardian Thor'el |achieve 11265/23
step
kill Randril |achieve 11265/24
step
kill Anax |achieve 11265/25
step
kill Matron Hagatha |achieve 11265/26
step
kill Ambassador D'vwinn |achieve 11265/27
step
kill Degren |achieve 11265/28
step
kill Miasu |achieve 11265/29
step
kill Maia the White |achieve 11265/30
step
kill Mar'tura |achieve 11265/31
step
kill Lieutenant Strathmar |achieve 11265/32
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Exploration\\Legion\\Higher Dimensional Learning",{
condition_end="achieved(11175)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
},[[
step
label "start"
talk Veridis Fallon##107376
buy Beginner's Guide to Dimensional Rifting##129276 |goto Azsuna/0 46.90,41.44
The book is actually required for the Achievement itself, so you will need to become _Revered with Court of Farondis_
Once you attain the book, you will need to go to Azsuna and use it, which will take you directly to a chapter for the corresponding day
confirm always
stickystart "book tip"
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Sundays!_
click Beginner's Guide to Dimensional Rifting Ch. 1 - Navigating Through Time
Read Beginner's Guide to Dimensional Rifting Ch. 1 - Navigating Through Time |achieve 11175/1 |goto Azsuna/0 68.1,51.1
Click here to move on to chapter 2 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Mondays!_
click Beginner's Guide to Dimensional Rifting Ch. 2 - Holy Places to Many
Read Beginner's Guide to Dimensional Rifting Ch. 2 - Holy Places to Many |achieve 11175/2 |goto Azsuna/0 55.2,71.5
|tip Top of the tower, use flight itesm?
Click here to move on to chapter 3 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Tuesdays!_
click Beginner's Guide to Dimensional Rifting Ch. 3 - Water, Just Water
Read Beginner's Guide to Dimensional Rifting Ch. 3 - Water, Just Water |achieve 11175/3 |goto Azsuna/0 33.3,11.1
Click here to move on to chapter 4 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Wednesdays!_
click Beginner's Guide to Dimensional Rifting Ch. 4 - Risks and Rewards
Read Beginner's Guide to Dimensional Rifting Ch. 4 - Risks and Rewards |achieve 11175/4 |goto Azsuna/0 58.3,12.2
Click here to move on to chapter 5 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Thursdays!_
click Beginner's Guide to Dimensional Rifting Ch. 5 - Finding Others Along the Way
Read Beginner's Guide to Dimensional Rifting Ch. 5 - Finding Others Along the Way |achieve 11175/5 |goto Azsuna/0 53.1,21.9
Click here to move on to chapter 6 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Fridays!_
click Beginner's Guide to Dimensional Rifting Ch. 6 - Pent up Energy
Read Beginner's Guide to Dimensional Rifting Ch. 6 - Pent up Energy |achieve 11175/6 |goto Azsuna/0 61.1,46.3
Click here to move on to chapter 7 |confirm
step
Use the Beginner's Guide to Dimensional Rifting |use Beginner's Guide to Dimensional Rifting##129276
_Note: This book only appears on Saturdays!_
click Beginner's Guide to Dimensional Rifting Ch. 7 - Our Legacy
Read Beginner's Guide to Dimensional Rifting Ch. 7 - Our Legacy |achieve 11175/7 |goto Azsuna/0 55.6,48.2
Click here to move back to the start of the guide |confirm |next "start" |or
Achieve Higher Dimensional Learning |achieve 11175 |or
step "book tip"
The books will take 10 to 20 Minutes to respawn if they aren't currently present, so waiting will be required
step
Congratulations, you have earned the Higher Dimensional Learning Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\But you Say He's Just a Friend",{
condition_end="achieved(10456)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Mythic","Dungeon","Warlord","Parjesh","Glory","Legion","Hero"},
description="This guide will walk you through attaining the But you Say He's Just a Friend Glory of the Legion Hero Meta Achievement.",
},[[
step
To earn this achievement, you will have to kill Warlord Parjesh _WITHOUT_ killing any Hatecoil Shellbreakers (Melee) enemies during the fight
You are able to use stuns on them to control them, notably _Monks Paralysis_ is very effective at controlling them
If you lack the crowd control, simply have the tank pick up the enemy, and use _single target abilities only_ to burn the boss down quickly
Earn the But you Say He's Just a Friend Achievement |achieve 10456 |goto 1046/1 54.39,68.18
step
Congratulations, you have earned the But you Say He's Just a Friend Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Stay Salty",{
condition_end="achieved(10457)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Mythic","Dungeon","Lady","Hatecoil","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Stay Salty Glory of the Legion Hero Meta Achievement.",
},[[
step
For this acheivement, you will need to kill 11 Saltbrine Globules before defeating Lady Hatecoil
This achievement is easier to do with an offtank, but is not required
If you are afflicted with Curse of the Witch, _face away_ from Saltbrine Globules to avoid killing them prematurely!
Saltbrine Globules spawn after _Beckon Storm_
After around _3 Beckon Storm_, gather the Globules and face them when the Curse of the Witch is about to wear off
Earn the Stay Salty Achievement |achieve 10457 |goto 1046/1 46.49,49.88
step
Congratulations, you have earned the Stay Salty Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Ready for Raiding V",{
condition_end="achieved(10458)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Mythic","Dungeon","Wrath","of","Azshara","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Ready for Raiding V Glory of the Legion Hero Meta Achievement.",
},[[
step
To earn this achievement, you will need to avoid being hit by Massive Deluge or Raging Storm during the Wrath of Azshara encounter
When Massive Deluge is being cast, _move out of the massive swirling circle_ that appears on the ground
When Raging Storm is cast, _move counter clockwise_ to avoid the tidal waves that spawn
This achievement is personal, so all party members do not need to do this, only you
Earn the Ready for Raiding V Achievement |achieve 10458 |goto 1046/1 54.57,55.16
step
Congratulations, you have earned the Ready for Raiding V Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Egg-cellent!",{
condition_end="achieved(10766)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Darkheart","Thicket","Mythic","Dungeon","Dresaron","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Ready for Raiding V Glory of the Legion Hero Meta Achievement.",
},[[
step
To earn this achievement, you will need to kill Dresaron after defeating the Hatespawn Abomination on Mythic Difficulty
To start, run over the purple egg behind Dresaron
|tip You can spawn the Hatespawn Abomination without pulling the boss.
DPS the add down to 5% health, _DO NOT KILL IT_ yet
Pull Dresaron, then kill the Hatespawn Abomination
Finally, kkill Dresaron
Earn the Egg-cellent! Achievement |achieve 10766 |goto Darkheart Thicket/0 65.7,46.1
step
Congratulations, you have earned the Egg-cellent! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Burning Down the House",{
condition_end="achieved(10769)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Darkheart","Thicket","Mythic","Dungeon","Shade","of","Xavius","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Burning Down the House Glory of the Legion Hero Meta Achievement.",
},[[
step
To earn this achievement, you will need to kill Shade of Xavius while he has 10 stacks of Apocalyptic Empowerment
DPS Xavius down to _50% health_
Once he enters phase 2, void zones will spawn all around the area
The tank must drag Xavius into the impact area, causing Xavius to be empowered
Once Xavius has 10 stacks, dps him down quickly for the achievement
Earn the Burning Down the House Achievement |achieve 10769 |goto Darkheart Thicket/0 82.80,87.15
step
Congratulations, you have earned the Burning Down the House Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Got to Ketchum All",{
condition_end="achieved(10996)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Neltharion's","Lair","Mythic","Dungeon","Ketchum","Tablet","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Got to Ketchum All Glory of the Legion Hero Meta Achievement.",
},[[
step
To complete this achievement, there will be a number snails located throughout the instance
You will need to speak to the Mushroom Merchant and buy a Ketchum Tablet to smash them with
Click here to continue |confirm
step
talk Mushroom Merchant##111746
buy Ketchum Tablet##140212 |condition itemcount(140212) >= 1 |goto Neltharion's Lair/0 88.2,38.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Can't Eat Just One",{
condition_end="achieved(10875)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Neltharion's","Lair","Mythic","Dungeon","Naraxas","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Got to Ketchum All Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, Naraxas needs to gain 6 stacks of Ravenous before you defeat her
To achieve this, do not kill the Wormspeaker Devout when they spawn and Naraxas will eat them
Heavy healing will be needed as she gains stacks of Ravenous
|tip If you are able, 2 healers might make this achievement easy to earn.
DPS Naraxas down to around 10%, then wait for her to eat adds
|achieve 10875 |goto Neltharion's Lair/0 33.73,37.20
step
Congratulations, you have earned the Can't Eat Just One Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Stag Party",{
condition_end="achieved(10544)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Storm","Drake","Mythic","Dungeon","Stag","Kill","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Stag Party Glory of the Legion Hero Meta Achievement.",
},[[
step
map Halls of Valor/1
path follow loose; loop off; ants curved; dist 20
path	51.12,42.10	43.37,41.84	38.19,40.56
path	31.7,44.3	30.3,51.3	30.2,64.0
path	28.3,71.2	31.16,74.18	40.43,68.96
path	45.34,65.54	52.77,62.66	52.58,56.29
path	53.66,48.01	65.56,31.90
For this achievement, you will need to drag the Storm Drake at the front area of Fenrir around to kill stags with the final strike coming from the drake
Have the group clear hostile trash mobs and Fenrir before attempting
Then DPS down the Stags until they are low health
Once they are close to death, _stop all dps_
Let the Storm Drake get the killing blow with its breath attack
Defeat the Storm Drake after it gains 10 stack of Killing Blow |achieve 10544
step
Congratulations, you have earned the Stag Party Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\I Got What You Mead",{
condition_end="achieved(10542)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Mead","Toss","Four","Kings","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Stag Party Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to throw four Mugs of Mead at the four Vrykul Kings
Defeat Hymdall, Hyrja and Fenryr before attempting this achievement
In order to get the cups you will need to clear the room
4 People will need to pick up the cups at the same time, and rush to the final room in the dungeon
_The buff for the Cup of Mead will only last one minute, so go as fast as possible_
Cup 1 |goto Halls of Valor/2 41.89,67.81
Cup 2 |goto 43,69
Cup 3 |goto 52,66
Cup 4 |goto 53,70
Run across the bridge |goto 48,74 < 30
Enter the room|goto Halls of Valor/3 51,86
Use the ability bar to throw the mead on King Tor, King Bjorn, King Haldor and King Ranulf
step
Congratulations, you have earned the I Got What You Mead Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Surge Protector",{
condition_end="achieved(10543)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Surge","Protector","Odyn","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Surge Protector Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to defeat Odyn without spells being cast throughout the duration of the Odyn encounter
As soon as an add spawns, all dps should immidiately burn down the add, interrupting as many spells as possible
Defeat Odyn without Stormforged Obliterators casing spells |q 10543
step
Congratulations, you have earned the Surge Protector Acheivement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\I Made a Food!",{
condition_end="achieved(10554)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Food","Protector","Black","Bile","Festergut","Violet","Hold","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the I Made a Food! Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to defeat Festerface after killing the Black Bile
To spawn the Black Bile, you need to have Festerface reach 100 Energy
To make Festerface gain energy, _keep him away from the puddles that spawn on the ground!_
Keep in mind, when the Black Bile spawns _all healing will be reduced by 100%_
Kill Festerface after killing a Black Bile |q 10554
step
Congratulations, you have earned the I Made a Food! Acheivement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\You're Just Making It WORSE!",{
condition_end="achieved(10553)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"You're","Just","Making","It","Worse","Millificent","Manastorm","Violet","Hold","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the You're Just Making It WORSE! Glory of the Legion Hero Meta Achievement.",
},[[
step
Refer to the _Follower Millhouse Manastorm_ guide in order to attain the Manastorm's Duplicator
Click here to continue |confirm
step
Use Manastorm's Duplicator on yourself at the start of the Millificent Manastorm encounter |use Manastorm's Duplicator##118938
|tip Note that only one person in the group needs to use this in order to get credit.
Whoever uses the item will take quite a bit of damage so it will be important to have some sort of mitigation and high healing to survive
After the Manastorm Duplicator is activated simply defeat Millificent Manastorm for the achievement
Earn the You're just Making It WORSE! Achievement |achieve 10553
step
Congratulations, you have earned the Earn the You're just Making It WORSE! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\I Ain't Even Cold",{
condition_end="achieved(10679)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"I","Ain't","Even","Cold","Ash'Golm","Vault","of","the","Wardens","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the I Ain't Even Cold Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will have to defeat Ash'Golm with every party member being _Fired Up_ buff
To attain this buff, you will need to step into _Lava patches_ that spawn
Have the healer in the group get 5 stacks of _Lava_ first, healing throuhg the damage that it causes
Next have the DPS gain 5 stacks one by one
Finally, dps the boss down to 5%, then have the tank get 5 stacks
_Save all damage reduction abilities for this debuff!_
If you're a Rogue, be sure not to use cloak of shadows
Earn the I Ain't Even Cold Achievement |achieve 10679
step
Congratulations, you have Earned the I Aint Even Cold Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Who's Afraid of the Dark",{
condition_end="achieved(10680)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Who's","Afraid","of","the","Dark","Cordana","Vault","of","the","Wardens","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Who's Afraid of the Dark Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to defeat Cordana without being hit with Creeping Doom
You must also get rid of _Elune's Light_ during the Creeping Doom phase
Note: You _WILL NOT_ be able to see the Creeping Doom to avoid it, so you will need to pay attention to the Volley of Arrows
|tip If you have a Demon Hunter in the group, have them use Spectral Sight and mark them.
|tip Follow the Demon Hunter safely through Creeping Doom.
Before Creeping Doom, Cordana will fire a volley of arrows that shows where the spirits will spawn
Look for the gap in the volley and move to it, avoiding being hit by the Creeping Doom
Earn the Who's Afraid of the Dark? Acheivement |achieve 10680
step
Congratulations, you have earned the Who's Afraid of the Dark? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\A Specter, Illuminated",{
condition_end="achieved(10707)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Who's","Afraid","of","the","Dark","Cordana","Vault","of","the","Wardens","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Who's Afraid of the Dark Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to pick up _Elune's Light_ once more after defeating Cordana
Return to the Vault of the Warden Floor, and look for the passage between the chamber with Ash'Golm and Glazer
Bring the light into the hall way and kill the _Specter of Vengeance_ that are patrolling the hallway
After killing 2, the third will spawn at the center of the hallway
Kill it for the achievement
Earn the A Specter, Illuminated Achievement |achieve 10707 |goto 1045/2 53,57
step
Congratulations, you have earned the A Specter, Illuminated Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\You Used to Scrawl Me In Your Fel Tome",{
condition_end="achieved(10707)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"You","Used","to","Scrawl","Me","In","Your","Fel","Scroll","Black","Rook","Hold","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the You Used to Scrawl Me In Your Fel Tome Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, a list of pages will be provided for tracking purposes
Only one page will spawn per dungeon, so it will take _AT LEAST_ 6 runs to earn this acheivement
Click here to continue |confirm
step
_Torn Page_: |achieve 10709/1
After the Amalgam of Souls, in the next room a torn page may be located near the south end of the room
_Dog-Eared Page_: |achieve 10709/3
Before Illysanna Ravencrest, in the hallway, the Dog-Eared Page may be found in a desk in the back
_Ink-Splattered Page_: |achieve 10709/5
This is in the round room called Rook's Rise, which connects to Lord Ravencrest's Chamber
_Worn-Edged Page_: |achieve 10709/2
This is in the Grand Hall on the left, in a broken staircase
_Signed Page_: |achieve 10709/4
This is found in the room filled with Wyrmtongue Trickers, on a table by 3 bookshelves
_Hastily-Scrawled Page_: |achieve 10709/6
This is found at the end of the instance, in Lord Ravencrest's Chamber
step
Congratulations, you have earned the You Used to Scrawl Me In Your Fel Tome Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Black Rook Moan",{
condition_end="achieved(10710)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Black","Rook","Moan","Black","Rook","Hold","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Black Rook Moan Glory of the Legion Hero Meta Achievement.",
},[[
step
For this, you will need to defeat the Amalgam of Souls after killing a Frustrated Soul
To start, damage the boss down to 25% health
After that, wait for Amalgam to cast _Call Souls_
Kill all but one of the adds, and keep the remaining add away from the boss for 60 seconds
Once the add becomes a _Frustrated Soul_, kill it, then burn the b oss for the achievement
Earn the Black Rook Moan Achievement |achieve 10710
step
Congratulations, you have earned the Black Rook Hold Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Adds? More Like Bads",{
condition_end="achieved(10711)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Adds?","More","Like","Bads","Black","Rook","Hold","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Adds? More Like Bads Glory of the Legion Hero Meta Achievement.",
},[[
step
For this, you will need to keep any adds that spawn during the Illysanna Ravencrest encounter alive!
To start, burn Illysanna down to Phase 2 of the encounter
On phase two adds will appear, a Caster and a Melee
Crowd control them with Frost Nova, Paralysis, Blind and other similar abilities that you have available
_AVOID_ attacking them if possible, simply focus on the boss
Kill Illysanna Ravencrest with the adds still alive |achieve 10711
step
Congratulations, you have earned the Adds? More Like Bads Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Instant Karma",{
condition_end="achieved(10413)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Instant","Karma","Maw","of","Souls","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Instant Karma Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to have a Seacursed Soulkeeper slay 6 Risen Warriors during the Ymiron encounter
To do this, there will be a pack of enemies before Ymiroon
Kill all _except for the Seacursed Soulkeeper_, then engage Ymiron
Gather 6 Risend Warriors as they spawn, them simply have the Seacursed Soulkeeper use _Defiant Strike_ until the Risen are dead
Earn the Instant Karma Achievement |achieve 10413
step
Congratulations, you have earned the Instant Karma Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Helheim Hath No Fury",{
condition_end="achieved(10411)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Helheim","Hath","No","Fury","Maw","of","Souls","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Helheim Hath No Fury Glory of the Legion Hero Meta Achievement.",
},[[
step
For this, you will have to kill the boss before a Val'kyr dies after entering the jail of the ship
After Ymiron, you will be sent to jail
Once that happens, you will have 3 minutes and 30 seconds to reach the boss
Basically you will need to speed through the trash to reach the boss
If you aren't capable of stealth, have the group get Draenic Invisibility Potions
You will kill the first 2 monsters before drinking the invisibility potion
Run past the monsters to the deck of the ship
_AVOID THE PATROL_ as it will see you through stealth
Upon reaching the boss, us all damage cooldowns to burn it quickly
Kill Harbaron within 3 Minutes and 30 Seconds of entering the Jail |achieve 10411
step
Congratulations, you have earned the Helheim Hath No Fury Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Poor Unfortunate Souls",{
condition_end="achieved(10412)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Poor","Unfortunate","Souls","Maw","of","Souls","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Helheim Hath No Fury Glory of the Legion Hero Meta Achievement.",
},[[
step
There will be a series of steps to follow in order to earn this achievement
You will also need to attain a _Goblin Glider Kit_, which can be made by an Engineer with 8 True Iron Ore and 5 Sumptuous Fur, or bought from the AH
Keep in mind that you _MUST NOT DIE AT ALL_ during the process of this achievement
Click here to continue |confirm always
step
talk Riala the Hearthwatcher##103796
home Valdisdall |goto Stormheim/0 60.54,50.27
step
Enter the Black Rook Hold Dungeon |goto Val'sharah/0 37.13,50.19 |scenariostart
step
In the first room on the right there will be a Brazier with a Blue Flame
Click it, then continue through the instance as normal
Click here to continue |confirm
step
kill Latosius##98970
Once you have done so you should get a buff
Hearth to Valdisdall |goto Stormheim/0 60.54,50.27 |noway |c |use Hearthstone##6948
step
Jump off of the click here and use your Goblin Glider Kit |goto Stormheim/0 56.68,49.85
Fly down to this location |goto Stormheim/0 52.50,45.18
Enter the Maw of Souls |goto Stormheim/0 52.50,45.18 |noway |c
step
Quickly reach and kill Ymiron, the Fallen King before the buff fades
Click here to continue |confirm
step
Run through the instance, making sure no one dies until you reach Harbaron
Kill Harbaron within the buff time
Click here to continue |confirm
step
Finally, reach Helya and defeat her witht he Poor Unfortunate Souls buff
Earn the Poor Unfortunate Souls Achievement |achieve 10412
step
|achieve 10411
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\No Time to Waste",{
condition_end="achieved(10776)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"No","Time","To","Waste","The","Arcway","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining No Time to Waste Glory of the Legion Hero Meta Achievement.",
},[[
step
For this, you will need to defeat Advisor Vandros without killing Timeless Wraiths
When Advisor Vandros reaches 50% health, you will be teleported to a random room
You will have 2 minutes to return to Advisor Vandros and you will need to do so without killing any adds
To put it simply, while on your way back, patiently navigate back to the boss, sticking close to the walls
_Try your best to avoid aggroing the Timeless Wraiths!_
One add may be managable, but any more might make the fight too hard
Defeat Advisor Vandros without killing any Timeless Wraiths |achieve 10776
step
Congratulations, you have earned the No Time to Waste Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Clean House",{
condition_end="achieved(10776)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Clean","House","The","Arcway","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Clean House Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, Corstilax will throw out these faint blue circles on the ground throughout the area
Your party must run through all of them in order to earn the achievement
The longer the battle goes, the more he will spawn each time he does this ability
The best way to clear this achievement will be to absorb the first wave of patches on the ground then burn him down as quickly as possible
Defeat Corstilax without any pools of Nightwell Energy expiring |achieve 10775
step
Congratulations, you have earned the Clean House Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Arcanic Cling",{
condition_end="achieved(10773)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Clean","House","The","Arcway","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Clean House Glory of the Legion Hero Meta Achievement.",
},[[
step
For this achievement, you will need to defeat Ivanyr without taking any damage from Charged Bolt
_Ivanyr will run over to a Crystal and begin casting Unstable Mana, which will be the ability you need to avoid_
Orbs will spawn from the crystal, simply avoid them for the achievemenet
Defeat Ivanyr while avoiding damage from Charged Bolt |achieve 10773
step
Congratulations, you have earned the Arcanic Cling Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Waiting for Gerdo",{
condition_end="achieved(10610)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Waiting","For","Gerdo","The","Arcway","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Clean House Glory of the Legion Hero Meta Achievement.",
},[[
step
For this, you will need to
To start, kill all trash around the beacons in the room before engaging the boss
Mark each pillar before you face the boss
_Be sure NOT to accidently touch the beacons before you engage the boss!_
Pull Patrol Captain Gerdo, and he will signal the beacons at some point doing the encounter
Stack together so the tank can easily pick up the adds that spawn
DPS them down quickly, then have each group member channel a beacon
After the channel is finished, kill Gerdo
Earn the Waiting for Gerdo Achievmeent |achieve 10610
step
Congratulations, you have earend the Waiting for Gerdo Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Dropping Some Eaves",{
condition_end="achieved(10611)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Dropping","Some","Eaves","The","Arcway","Mythic","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining Clean House Glory of the Legion Hero Meta Achievement.",
},[[
step
This achievement is _extremely random_, so despite what you end up doing, the achievemenet _may not_ be available
Before the first boss, there will be 5 beacons
Clear the enemies around the Beacons, especially the Sentries
_Sentries will activate the beacons!_
Deactivate the Beacons once the enemies are cleared
Kill the first and second bosses as normal
Question the group of nobles and try to pick the one that is best described by the others
Follow the noble then defeat them
Run up to the door _but do NOT open it!_
Earn the Dropping Some Eaves achievement |achieve 10611
step
Congratulations, you have earned the Dropping Some Eaves Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Darkheart Thicket",{
condition_end="achieved(10784)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Darkheart","Thicket","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Heroic: Darkheart Thicket Achievement.",
},[[
step
For this, complete Darkheart Thicket on Heroic or higher difficulty
Click here to load the Darkheart Thicket dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Darkheart Thicket"
Defeat Shade of Xavius in Darkheart Thicket on Heroic difficulty or higher |achieve 10784
step
_Congratulations!_
You earned the "Heroic: Darkheart Thicket" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Halls of Valor",{
condition_end="achieved(10788)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Halls","of","Valor","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Heroic: Darkheart Thicket Achievement.",
},[[
step
For this, complete Halls of Valor on Heroic or higher difficulty
Click here to load the Halls of Valor dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Halls of Valor"
Defeat Odyn in Halls of Valor on Heroic difficulty or higher |achieve 10788
step
_Congratulations!_
You earned the "Heroic: Halls of Valor" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Neltharion's Lair",{
condition_end="achieved(10796)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Neltharion","Lair","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Heroic: Neltharion's Lair Achievement.",
},[[
step
For this, complete Neltharion's Lair on Heroic or higher difficulty
Click here to load Neltharion's Lair dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Neltharion's Lair"
Defeat Dargrul in Neltharion's Lair on Heroic difficulty or higher |achieve 10796
step
_Congratulations!_
You earned the "Heroic: Neltharion's Lair" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Assault on Violet Hold",{
condition_end="achieved(10799)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Assault","on","Violet","Hold","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Heroic: Assault on Violet Hold Achievement.",
},[[
step
For this, complete Assault on Violet Hold on Heroic or higher difficulty
Click here to load the Assault on Violet Hold dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Assault on Violet Hold"
Defeat the leader of the Assault on Violet Hold on Heroic difficulty or higher |achieve 10799
step
_Congratulations!_
You earned the "Heroic: Assault on Violet Hold" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Black Rook Hold",{
condition_end="achieved(10805)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Black","Rook","Hold","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Heroic: Black Rook Hold Achievement.",
},[[
step
For this, complete Black Rook Hold on Heroic or higher difficulty
Click here to load the Black Rook Hold dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Black Rook Hold"
Defeat Lord Kur'talos Ravencrest in Black Rook Hold on Heroic difficulty or higher |achieve 10805
step
_Congratulations!_
You earned the "Heroic: Black Rook Hold" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Maw of Souls",{
condition_end="achieved(10808)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Maw","of","Souls","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Heroic: Maw of Souls Achievement.",
},[[
step
For this, complete Maw of Souls on Heroic or higher difficulty
Click here to load the Maw of Souls dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Maw of Souls"
Defeat Helya in Maw of Souls on Heroic difficulty or higher |achieve 10808
step
_Congratulations!_
You earned the "Heroic: Maw of Souls" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Eye of Azshara",{
condition_end="achieved(10781)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Heroic: Eye of Azshara Achievement.",
},[[
step
For this, complete Eye of Azshara on Heroic or higher difficulty
Click here to load the Eye of Azshara dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Eye of Azshara"
Defeat the Wrath of Azshara in Eye of Azshara on Heroic difficulty or higher |achieve 10781
step
_Congratulations!_
You earned the "Heroic: Eye of Azshara" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Heroic: Vault of the Wardens",{
condition_end="achieved(10802)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Mythic: Vault of the Wardens Achievement.",
},[[
step
For this, complete Vault of the Wardens on Heroic or higher difficulty
Click here to load the Vault of the Wardens dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Vault of the Wardens"
Defeat Cordana Felsong in Vault of the Wardens on Heroic difficulty or higher |achieve 10802
step
_Congratulations!_
You earned the "Heroic: Vault of the Wardens" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Darkheart Thicket",{
condition_end="achieved(10785)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Darkheart","Thicket","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Mythic: Darkheart Thicket Achievement.",
},[[
step
For this, complete Darkheart Thicket on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Darkheart Thicket dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Darkheart Thicket"
Defeat Shade of Xavius in Darkheart Thicket on Mythic difficulty |achieve 10785
step
_Congratulations!_
You earned the "Mythic: Darkheart Thicket" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Halls of Valor",{
condition_end="achieved(10789)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Halls","of","Valor","Dungeon","Glory","Legion","Hero"},
description="This guide will walk you through attaining the Mythic: Halls of Valor Achievement.",
},[[
step
For this, complete Halls of Valor on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Halls of Valor dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Halls of Valor"
Defeat Odyn in Halls of Valor on Mythic difficulty |achieve 10789
step
_Congratulations!_
You earned the "Mythic: Halls of Valor" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Neltharion's Lair",{
condition_end="achieved(10797)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Neltharion","Lair","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Mythic: Neltharion's Lair Achievement.",
},[[
step
For this, complete Neltharion's Lair on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load Neltharion's Lair dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Neltharion's Lair"
Defeat Dargrul in Neltharion's Lair on Mythic difficulty |achieve 10797
step
_Congratulations!_
You earned the "Mythic: Neltharion's Lair" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Assault on Violet Hold",{
condition_end="achieved(10800)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Assault","on","Violet","Hold","Dungeon","Mythic","Legion"},
description="This guide will walk you through attaining the Mythic: Assault on Violet Hold Achievement.",
},[[
step
For this, complete Assault on Violet Hold on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Assault on Violet Hold dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Assault on Violet Hold"
Defeat the leader of the Assault on Violet Hold on Mythic difficulty |achieve 10800
step
_Congratulations!_
You earned the "Mythic: Assault on Violet Hold" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Black Rook Hold",{
condition_end="achieved(10806)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Black","Rook","Hold","Dungeon","Mythic","Legion"},
description="This guide will walk you through attaining the Mythic: Black Rook Hold Achievement.",
},[[
step
For this, complete Black Rook Hold on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Black Rook Hold dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Black Rook Hold"
Defeat Lord Kur'talos Ravencrest in Black Rook Hold on Mythic difficulty |achieve 10806
step
_Congratulations!_
You earned the "Mythic: Black Rook Hold" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Maw of Souls",{
condition_end="achieved(10809)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Maw","of","Souls","Dungeon","Mythic","Legion"},
description="This guide will walk you through attaining the Mythic: Maw of Souls Achievement.",
},[[
step
For this, complete Maw of Souls on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Maw of Souls dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Maw of Souls"
Defeat Helya in Maw of Souls on Mythic difficulty |achieve 10809
step
_Congratulations!_
You earned the "Mythic: Maw of Souls" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Eye of Azshara",{
condition_end="achieved(10782)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Dungeon","Heroic","Legion"},
description="This guide will walk you through attaining the Mythic: Eye of Azshara Achievement.",
},[[
step
For this, complete Eye of Azshara on Mythic difficulty
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Eye of Azshara dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Eye of Azshara"
Defeat the Wrath of Azshara in Eye of Azshara on Mythic difficulty |achieve 10782
step
_Congratulations!_
You earned the "Mythic: Eye of Azshara" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Mythic: Vault of the Wardens",{
condition_end="achieved(10803)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Eye","of","Azshara","Dungeon","Mythic","Legion"},
description="This guide will walk you through attaining the Mythic: Vault of the Wardens Achievement.",
},[[
step
For this, complete Vault of the Wardens on Mythic
|tip You will need to form your own group, rather than use the group finder.
Click here to load the Vault of the Wardens dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Vault of the Wardens"
Defeat Cordana Felsong in Vault of the Wardens on Mythic difficulty |achieve 10803
step
_Congratulations!_
You earned the "Mythic: Vault of the Wardens" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Return to Karazhan",{
condition_end="achieved(11429)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Return","to","Karazhan","Dungeon","Legion"},
description="This guide will walk you through attaining the Return to Karazhan Achievement.",
},[[
step
For this, you will need to complete the Karazhan Attunement guide
Afterwards, complete the Return to Karazhan dungeon
Click here to load the Karazhan Attunement guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Karazhan\\Karazhan Attunement"
If you have already completed the Attunement:
Click here to load the Return to Karazhan dungeon guide |confirm |next "Zygor's Horde Dungeon Guides\\Legion Dungeons\\Karazhan\\Return to Karazhan"
Defeat Viz'aduum the Watcher in Return to Karazhan |achieve 11429
step
_Congratulations!_
You earned the "Return to Karazhan" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Keystone Initiate",{
condition_end="achieved(11183)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Keystone","Initiate","Mythic","Dungeon","Legion"},
description="This guide will walk you through attaining the Keystone Initiate Achievement.",
},[[
step
To earn this achievement, you will need to complete a dungeon on _Mythic Difficulty_
Once you have, you will recieve a Mythic Keystone+ a Random Dungeon
|tip Refer to one of our Mythic dungeon guides.
To activate a Mythic+ Dungeon:
Enter the Dungeon with your pre-assembled team
Use the _Font of Power_ located at the start of the instance
|tip You will not be able to access Mythic Dungeons via the Dungeon Finder.
Complete a Level 2 or higher Mythic dungeon within the time limit |achieve 11183
step
_Congratulations!_
You earned the "Keystone Initiate" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Keystone Challenger",{
condition_end="achieved(11184)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Keystone","Challenger","Mythic","Dungeon","Legion"},
description="This guide will walk you through attaining the Keystone Challenger Achievement.",
},[[
step
To earn this achievement, you will need to complete a dungeon on _Mythic+ 4 Difficulty_
Once you have, you will recieve a Mythic Keystone+5 for a Random Dungeon
To activate a Mythic+ Dungeon:
Enter the Dungeon with your pre-assembled team
Use the _Font of Power_ located at the start of the instance
Place the Mythic Keystone+5 in the Font and start
|tip You will not be able to access Mythic Dungeons via the Dungeon Finder.
Complete a Level 5 or higher Mythic dungeon within the time limit |achieve 11184
step
_Congratulations!_
You earned the "Keystone Challenger" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Keystone Conqueror",{
condition_end="achieved(11185)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Keystone","Conqueror","Mythic","Dungeon","Legion"},
description="This guide will walk you through attaining the Keystone Conqueror Achievement.",
},[[
step
To earn this achievement, you will need to complete a dungeon on _Mythic+ 9 Difficulty_
Once you have, you will recieve a Mythic Keystone+10 for a Random Dungeon
To activate a Mythic+ Dungeon:
Enter the Dungeon with your pre-assembled team
Use the _Font of Power_ located at the start of the instance
Place the Mythic Keystone+10 in the Font and start
|tip You will not be able to access Mythic Dungeons via the Dungeon Finder.
Complete a Level 10 or higher Mythic dungeon within the time limit |achieve 11185
step
_Congratulations!_
You earned the "Keystone Conqueror" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Keystone Master",{
condition_end="achieved(11162)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Keystone","Master","Mythic","Dungeon","Legion"},
description="This guide will walk you through attaining the Keystone Master Achievement.",
},[[
step
To earn this achievement, you will need to complete a dungeon on _Mythic+ 14 Difficulty_
Once you have, you will recieve a Mythic Keystone+15 for a Random Dungeon
To activate a Mythic+ Dungeon:
Enter the Dungeon with your pre-assembled team
Use the _Font of Power_ located at the start of the instance
Place the Mythic Keystone+15 in the Font and start
|tip You will not be able to access Mythic Dungeons via the Dungeon Finder.
Complete a Level 15 or higher Mythic dungeon within the time limit |achieve 11162
step
_Congratulations!_
You earned the "Keystone Master" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\You Used to Scrawl Me In Your Fel Tome",{
condition_end="achieved(10709)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"You","Used","to","Scrawl","Me","In","Your","Fel","Tome","Dungeon","Legion"},
description="This guide will walk you through attaining the You Used to Scrawl Me In Your Fel Tome Achievement.",
},[[
step
label "Begin"
You will need to collect 6 pages that spawn int he Black Rook Hold instance
_You will only be able to collect one per run, so you will need to run this instance 6 times at least to earn this achievement_
The pages can be found in Normal, Heroic or Mythic difficulty
Click here to continue |confirm
step
After defeating the _Amalgam of Souls_, on the southern edge of the next room, there will be a table with 4 chairs
The _Torn Page_ will be on the side of the table with no chairs
Torn Page read |achieve 10709/1
Click here if the page isn't there |confirm
step
To the left of a broken staircase in the Grande Hall before, next to a near empty book case, the Worn-Edged Page will be on the ground
Worn-Edged Page read |achieve 10709/2
Click here if the page isn't there |confirm
step
On your way to _Illysanna Ravencrest_ in the Grand Hall before the stairwell, the page will be on a desk
|tip The desk will be on the right side when walking towards the stairwell.
Dog-Eared Page read |achieve 10709/3
Click here if the page isn't there |confirm
step
On your way to _Lord Ravencrest_, the Ink-splattered page will be on top of a pedestal in the Rook's Rise
|tip It's the the room with the stairs right before the boss.
Ink-splattered Page read |achieve 10709/5
Click here if the page isn't there |confirm
step
In the hallway filled with Wyrmtongue Trickers, slightly to the right after you enter there will be a large bookshelf, weapons racks and a table
The Singed Page will be on that table
Singed Page read |achieve 10709/4
Click here if the page isn't there |confirm
step
In Lord Ravencrest's Champer at the end of the instance, the Hastily-Scrawled Page will be on a desk
Hastily-Scrawled Page read |achieve 10709/6
Click here if the page isn't there |confirm
step
Click here to return to the start |confirm |next "Begin"
Found all the entries of Illysanna Ravencrest's diary |achieve 10709
step
_Congratulations!_
You earned the "You Used to Scrawl Me In Your Fel Tome" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Clean House",{
condition_end="achieved(10775)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Clean","House","Dungeon","Legion"},
description="This guide will walk you through attaining the Clean House Achievement.",
},[[
step
For this, you will need to _defeat Corstilax without any pools of the Nightwell Energy expiring_
Corstilax will spawn 4 to 5 pools each time it's cast
|tip They will lok like large blue circles on the ground.
Have your group members run into them so they are absorbed
Once the first cast is cast, use Blood Lust / Time Warp and any other dps cooldowns
If additional pools are able to spawn, absorb them the same way
Defeat Corstilax without any pools of Nightwell Energy expiring in the Arcway on Mythic difficulty |achieve 10775
step
_Congratulations!_
You earned the "Clean House" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Burn After Reading",{
condition_end="achieved(11433)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Burn","After","Reading","Dungeon","Legion"},
description="This guide will walk you through attaining the Burn After Reading Achievement.",
},[[
step
After defeating the _Mana Devourer_, go into nxt room
When you're back to normal size, search for Black, Blue and Red books in the room
Click them and eventually you will have collected the following books:
Legacy of the Mountain King |achieve 11433/1
Redemption of the Fallen |achieve 11433/2
Torment of the Worgen |achieve 11433/3
Wrath of the Titans |achieve 11433/4
|tip The book spawn is random, so it might take a bit to collect them.
step
_Congratulations!_
You earned the "Burn After Reading" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Dine and Bash",{
condition_end="achieved(11338)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Dine","and","Bash","Reading","Dungeon","Legion"},
description="This guide will walk you through attaining the Dine and Bash Achievement.",
},[[
step
For this, defeat the 4 dinner guests within 10 seconds of each other
For this, you may want to bring as much _crowd control_ as possible as the damage is really high when you're tanking all 4
Control 2 of the dinner guests, then DPS the other 2 down to 5 percent health
Break CC on the other 2, then DPS them down to 5 perect as well
Kill the dinner guests, then Moroes
Complete the Moroes encounter in Return to Karazhan after defeating all 4 dinner guests within 10 seconds of each other |achieve 11338
step
_Congratulations!_
You earned the "Dine and Bash" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Dungeons\\Legion\\Season Tickets",{
condition_end="achieved(11335)",
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
keywords={"Season","Tickets","Reading","Dungeon","Legion"},
description="This guide will walk you through attaining the Season Tickets Achievement.",
},[[
step
You will need to run Return to Karazhan a minimum of 3 times to earn this achievement
The event that happens is random so it may take more than 3 clears with bad luck
Complete each of the following Opera Hall plays in Return to Karazhan:
Wikket |achieve 11335/1
Westfall Story |achieve 11335/2
Beautiful Beast |achieve 11335/3
step
_Congratulations!_
You earned the "Season Tickets" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Wrist",{
condition_end="achieved(10688)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Wrist Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Wrist_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Wrist Achievement |achieve 10688/1
step
Congratulations, you have earned the Fashionista: Wrist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Back",{
condition_end="achieved(10687)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Back Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Back_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Back Achievement |achieve 10687/1
step
Congratulations, you have earned the Fashionista: Back Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Waist",{
condition_end="achieved(10686)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Waist Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Waist_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Waist Achievement |achieve 10686/1
step
Congratulations, you have earned the Fashionista: Back Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Hand",{
condition_end="achieved(10693)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Hand Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Hand_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Hand Achievement |achieve 10693/1
step
Congratulations, you have earned the Fashionista: Hand Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Shoulder",{
condition_end="achieved(10692)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Shoulder Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Shoulder_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Shoulder Achievement |achieve 10692/1
step
Congratulations, you have earned the Fashionista: Shoulder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Feet",{
condition_end="achieved(10685)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Feet Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Feet_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Feet Achievement |achieve 10685/1
step
Congratulations, you have earned the Fashionista: Feet Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Legs",{
condition_end="achieved(10684)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Legs Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Legs_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Legs Achievement |achieve 10684/1
step
Congratulations, you have earned the Fashionista: Legs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Chest",{
condition_end="achieved(10682)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Chest Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Chest_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Chest Achievement |achieve 10682/1
step
Congratulations, you have earned the Fashionista: Chest Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Head",{
condition_end="achieved(10681)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Head Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Head_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Head Achievement |achieve 10681/1
step
Congratulations, you have earned the Fashionista: Chest Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Weapon & Off Hand",{
condition_end="achieved(10689)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Weapon & Off Hand Appearances",
},[[
step
For this achievement, you will need to collect 100 different appearances for the _Weapon & Off Hand_ slot of your character sheet
We suggest that you run old dungeons for appearances
Also, _equip bind on equip items_ that you haven't collected the appearance for yet
_Keep in mind:_
Death Knights, Paladins and Warriors can only learn _Plate_ transmogs
Hunters and Shaman can only learn _Mail_ transmogs
Demon Hunters, Druids, Monks and Rogues can only learn _Leather_ transmogs
Mage, Priest and Warlock can only learn _Cloth_ transmogs
You can use multiple characters to tally towards this achievement
Earn the Fashionista: Weapon & Off Hand Achievement |achieve 10689/1
step
Congratulations, you have earned the Fashionista: Weapon & Off Hand Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Shirt",{
condition_end="achieved(10691)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 100 Different Shirt Appearances",
},[[
step
For this achievement, you will need to collect 15 different appearances for the _Shirt_ slot of your character sheet
You will be spending roughly 600 gold follwing the guide
Click here to continue |confirm |or |next "hello"
Earn the Fashionista: Shirt Achievement |achieve 10691 |or |next congrats
step
label "hello"
talk Salan Sunthread##97342
buy Amber Filigreed Doublet##42365 |n
Equip the Amber Filligreed Doublet |equipped Amber Filigreed Doublet##42365 |use Amber Filigreed Doublet##42365 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Cerulean Filigreed Doublet##42361 |n
Equip Cerulean Filigreed Doublet |equipped Cerulean Filigreed Doublet##42361 |use Cerulean Filigreed Doublet##42361 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Ebon Filigreed Doublet##42360 |n
Equip Ebon Filigreed Doublet |equipped Ebon Filigreed Doublet##42360 |use Ebon Filigreed Doublet##42360 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Golden Filigreed Doublet##42363 |n
Equip Golden Filigreed Doublet |equipped Golden Filigreed Doublet##42363 |use Golden Filigreed Doublet##42363 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Scarlet Filigreed Doublet##42368 |n
Equip Scarlet Filigreed Doublet |equipped Scarlet Filigreed Doublet##42368 |use Scarlet Filigreed Doublet##42368 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Amber Filigreed Shirt##42371 |n
Equip Amber Filigreed Shirt |equipped Amber Filigreed Shirt##42371 |use Amber Filigreed Shirt##42371 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Cerulean Filigreed Shirt##42370 |n
Equip Cerulean Filigreed Shirt |equipped Cerulean Filigreed Shirt##42370 |use Cerulean Filigreed Shirt##42370 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Ebon Filigreed Shirt##42369 |n
Equip Ebon Filigreed Shirt |equipped Ebon Filigreed Shirt##42369 |use Ebon Filigreed Shirt##42369 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Golden Filigreed Shirt##42373 |n
Equip Golden Filigreed Shirt |equipped Golden Filigreed Shirt##42373 |use Golden Filigreed Shirt##42373 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Scarlet Filigreed Shirt##42372 |n
Equip Scarlet Filigreed Shirt |equipped Scarlet Filigreed Shirt##42372 |use Scarlet Filigreed Shirt##42372 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Blue Martial Shirt##42374 |n
Equip Blue Martial Shirt |equipped Blue Martial Shirt##42374 |use Blue Martial Shirt##42374 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Green Martial Shirt##42375 |n
Equip Green Martial Shirt |equipped Green Martial Shirt##42375 |use Green Martial Shirt##42375 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Purple Martial Shirt##42377 |n
Equip Purple Martial Shirt |equipped Purple Martial Shirt##42377 |use Purple Martial Shirt##42377 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Red Martial Shirt##42378 |n
Equip Red Martial Shirt |equipped Red Martial Shirt##42378 |use Red Martial Shirt##42378 |future |achieve 10691
step
talk Salan Sunthread##97342
buy Yellow Martial Shirt##42376 |n
Equip Yellow Martial Shirt |equipped Yellow Martial Shirt##42376 |use Yellow Martial Shirt##42376 |future |achieve 10691
step
label "congrats"
Congratulations, you have earned the Fashionista: Shirt Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Collections\\Legion\\Fashionista: Tabard",{
condition_end="achieved(10690)",
author="support@zygorguides.com",
startlevel=100,
keywords={"Fashionista","Wrist"},
description="This Guide will explain how to attain 15 Different Tabard Appearances",
},[[
step
For this achievement, you will need to collect 15 different appearances for the _Tabard_ slot of your character sheet
You will be spending roughly 600 gold follwing the guide
Click here to continue |confirm |or |next "hello"
Earn the Fashionista: Tabard Achievement |achieve 10690 |or |next congrats
stickystart "Alliance"
step
label "hello"
talk Stone Guard Nargol##50488
buy Orgrimmar Tabard##45581 |condition itemcount(45581) ==1 |goto Orgrimmar/1 50.38,58.40
step
talk Champion Uru'zin##50477
buy Darkspear Tabard##45582 |condition itemcount(45582) ==1 |goto 50.04,58.18
step
talk Frizzo Villamar##50323
buy Bilgewater Cartel Tabard##64884 |condition itemcount(64884) ==1 |goto 49.8,58.6
step
talk Disciple Jusi##69333
buy Huojin Tabard##83080 |condition itemcount(83080) ==1 |goto 68.6,40.6
step
talk Brave Tuho##50483
buy Thunder Bluff Tabard##45584 |condition itemcount(45584) ==1 |goto Thunder Bluff/0 46.8,50.0
step
talk Captain Donald Adams##50304
buy Undercity Tabard##45583 |condition itemcount(45583) ==1 |goto Undercity/0 63.6,48.8
step
talk Magistrix Nizara##50484
buy Silvermoon City Tabard##45585 |condition itemcount(45585) ==1 |goto Eversong Woods/0 54.2,50.8
step
kill Val'zareq the Conqueror##21979
|tip He patrols the path.
collect The Journal of Val'zareq##31345 |use The Journal of Val'zareq##31345 |n |goto Shadowmoon Valley/0 53.2,60.2
accept The Journal of Val'zareq: Portends of War##10793 |goto 52.16,68.09
step
click Crystal Prison
turnin The Journal of Val'zareq: Portends of War##10793 |goto 51.42,72.82
accept Battle of the Crimson Watch##10781 |goto 51.43,72.80
step
kill Torloth the Magnificent##22076
Crimson Sigil Forces Annihilated |q 10781/1 |goto 51.79,72.85
|tip Kill the enemies that spawn.
step
talk A'dal##18481
turnin Battle of the Crimson Watch##10781 |goto Shattrath City/0 54.08,44.76
collect Green Trophy Tabard of the Illidari##31404 |condition itemcount(31404) ==1 |goto 54.08,44.76
collect Purple Trophy Tabard of the Illidari##31405 |condition itemcount(31405) ==1 |goto 54.08,44.76
confirm always
step
talk Garyl##5188
buy Guild Tabard##5976 |condition itemcount(5976) ==1 |goto Orgrimmar/1 47.62,74.77
buy Scout's Tabard##15197 |condition itemcount(15197) ==1 |goto 47.62,74.77
buy Stone Guard's Herald##15199 |condition itemcount(15199) ==1 |goto 47.62,74.77
buy Warsong Battle Tabard##19505 |condition itemcount(19505) ==1 |goto 47.62,74.77
buy Frostwolf Battle Tabard##19031 |condition itemcount(19031) ==1 |goto 47.62,74.77
For the Scout's Tabard, Stone Guard's Herald, Warsong Battle Tabard and Frostwolf Battle Tabard you will need to farm 22 Marks of Honor
step
talk Rebecca Laughlin##5193
buy Illustrious Guild Tabard##69209 |condition itemcount(69209) ==1 |goto 47.62,74.77
You will need to be in a guild and friendly with the guild in order to buy this tabard
step "Alliance"
If you don't want to have to farm reputation for additional tabards, you can also buy the 7 Alliance Faction Tabards
If you wish to do this, use the Alliance Variant of the Fashionista: Tabard guide on a horde character
|tip This achievement is account bound, so any Tabard you obtain will count towards the achievement.
step
label "congrats"
Congratulations, you have earned the Fashionista: Tabard Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Toys\\Legion\\Rocfeather Skyhorn Kite",{
condition_end="_G.PlayerHasToy(131811)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
Follow the path |goto Highmountain/0 51.07,43.38 < 30 |only if walking
Follow the path down |goto Highmountain/0 48.69,43.78 < 30 |only if walking
click Treasure Chest
|tip It's on top of the big rock.
|tip Click the Mucksnout Runt before clicking the Treasure Chest.  Lawl.
collect Delicate Roc Feather##131926 |goto Highmountain/0 47.63,44.06 |condition _G.GetItemCount(131926) or _G.PlayerHasToy(131811)
step
Follow the path |goto 48.77,43.67 < 30 |only if walking
Follow the path up |goto 49.39,39.70 < 20 |only if walking
kill Crawshuk the Hungry##97345
|tip He is a rare elite, you may need help.
collect Gleaming Roc Feather##131809 |goto 48.37,40.18 |condition _G.GetItemCount(131809) or _G.PlayerHasToy(131811)
step
Follow the path down |goto 48.70,40.51 < 20 |only if walking
Follow the path |goto 50.80,39.68 < 30 |only if walking
Follow the path up |goto 51.87,37.50 < 20 |only if walking
Follow the path |goto 52.37,36.37 < 20 |only if walking
Follow the path |goto 52.62,34.73 < 20 |only if walking
Follow the path up |goto 51.87,34.14 < 20 |only if walking
Follow the path up |goto 50.54,33.77 < 20 |only if walking
Follow the path |goto 49.61,35.67 < 20 |only if walking
Follow the path up |goto 49.55,37.01 < 20 |only if walking
click Treasure Chest
|tip It's in the bird nest.
collect Shimmering Roc Feather##131927 |goto 49.64,37.75 |condition _G.GetItemCount(131927) or _G.PlayerHasToy(131811)
step
Cross the bridge |goto 54.48,48.28 < 20 |only if walking
Cross the bridge |goto 55.13,50.01 < 20 |only if walking
Follow the path up |goto 56.65,53.40 < 20 |only if walking
Follow the path |goto 56.42,54.48 < 20 |only if walking
Follow the path narrow path up |goto 55.27,52.57 < 15 |only if walking
Carefully jump down onto the rock |goto 53.48,51.35 < 7 |only if walking
Carefully jump down onto the wooden log |goto 53.58,51.09 < 7 |only if walking
click Treasure Chest
collect Derelict Skyhorn Kite##131810 |goto 53.62,51.03 |condition _G.GetItemCount(131810) or _G.PlayerHasToy(131811)
step
Use the Shimmering Roc Feather |use Shimmering Roc Feather##131927
collect Rocfeather Skyhorn Kite##131811 |goto 53.62,51.03 |condition _G.GetItemCount(131811) or _G.PlayerHasToy(131811)
step
Use the Rocfeather Skyhorn Kite |use Rocfeather Skyhorn Kite##131811
Obtain the Rocfeather Skyhorn Kite Toy |toy Rocfeather Skyhorn Kite##131811
step
_Congratulations!_
You obtained the Rocfeather Skyhorn Kite toy.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\A Glorious Campaign",{
condition_end="achieved(10994)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to complete an Order Hall Campaign on a single character
Click here to start progress in your Order Hall |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Complete an Order Hall Questline |achieve 10994
step
_Congratulations!_
You earned the "A Glorious Campaign" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\A Heroic Campaign",{
condition_end="achieved(11135)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to complete the Order Hall Campaigns on _3 different characters_
Click here to start progress in your Order Hall |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Complete 3 Order Hall Campaign Questlines |achieve 11135
step
_Congratulations!_
You earned the "A Heroic Campaign" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\An Epic Campaign",{
condition_end="achieved(11136)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to complete the Order Hall Campaigns on _5 different characters_
Click here to start progress in your Order Hall |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Complete 5 Order Hall Campaign Questlines |achieve 11136
step
_Congratulations!_
You earned the "An Epic Campaign" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Legendary Research",{
condition_end="achieved(11223)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
To earn this achievement, you will need to research 6 Upgrades to your Order Hall Advancement
It will cost 39,050 Order Resources in total
_Tier 1_: Costs 50 Order Resources and takes 2 Hours to complete
_Tier 2_: Costs 500 Order Resources and takes 4 Hours to complete
_Tier 3_: Costs 1,000 Order Resources and takes 7 Days to complete
_Tier 4_: Costs 10,000 Order Resources and takes 10 Days to complete
_Tier 5_: Costs 12,500 Order Resources and takes 12 Days to complete
_Tier 6_: Costs 15,000 Order Resources and takes 14 Days to complete
Research all options in your Class Order Hall Advancement |achieve 11223
step
_Congratulations!_
You earned the "Legendary Research" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\A Classy Outfit",{
condition_end="achieved(11298)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to complete various Class Order Hall activities as well as Reputation and Dungeon content
Click here to continue |confirm
step
This item is earned by Reaching Level 110
Earn the Class Hall Helm |achieve 11298/1
step
This Item is earned by Recruiting 6 Champions for your Order Hall
Click here to start progress in your Order Hall |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Earn the Class Hall Bracers |achieve 11298/2
step
This item is earned by completing your Class Order Hall Campaign
Click here to start or continue progress in your Order Hall |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Earn the Class Hall Chestpiece |achieve 11298/5 |or
step
This item is earned by Defeating 8 different final bosses found in Legion Dungeons
Earn the Class Hall Leggings |achieve 11298/4
step
This item is earned by obtaining Honored reputation with The Nightfallen
Click here to begin earning The Nightfallen Reputation |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)" |or
Earn the Class Hall Gloves |achieve 11298/3 |or
step
You will need to obtain 100,000 Artifact power to unlock this
Artifact Power can be earned through Dungeons, Questing and World Quests
Earn the Class Hall Belt |achieve 11298/7
step
This item is earned by becoming Revered with 2 Legion Factions
Earn the Class Hall Boots |achieve 11298/6
step
You will need to reach Exalted with the Nightfallen to unlock this piece
Click here to begin earning The Nightfallen Reputation |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Suramar (110)" |or
Earn the Class Hall Shoulders |achieve 11298/8 |or
step
_Congratulations!_
You earned the "A Classy Outfit" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Forged for Battle",{
condition_end="achieved(10746)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to complete the Order Campaign
|tip Refer to our Order Hall Quests guide to accomplish this.
Click here to load the Order Hall Quests guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Earn the Forged for Battle Achievement |achieve 10994 |or
step
_Congratulations!_
You earned the "Forged for Battle" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Arsenal of Power",{
condition_end="achieved(11171)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to unlock each Artifact for your character specializations
|tip Refer to our Legion Intro & Artifact gudie to accomplish this.
Click here to load the Legion Intro & Artifacts Guide ||confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Legion Intro & Artifacts" |only if not DemonHunter |or
Click here to load the Legion Intro & Artifacts Guide |confirm |next "Zygor's Horde Leveling Guides\\Starter Guides\\Demon Hunter Intro & Artifacts" |only DemonHunter |or
Earn the Arsenal of Power Achievement |achieve 11171 |or
step
_Congratulations!_
You earned the "Arsenal of Power" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Fighting with Style: Classic",{
condition_end="achieved(10461)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this, you will need to recover a Pillar of Creation
The easiest to earn without doing Dungeons would be attained from questing in Val'sharah
Click here to complete the Val'sharah leveling guide if you haven't done so already |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Val'sharah" |or
Earn the Tears of Elune |achieve 10461/1 |or
step
For this, you will need to complete the Light's Charge quest
To accomplishthis, refer to the Order Hall Quests guide
Click here to load the Order Hall Quests guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Complete the Light's Charge quest |achieve 10461/2 |or
step
For this, you will need to complete the first chapter of the Order Hall Quests
To accomplishthis, refer to the Order Hall Quests guide
Click here to load the Order Hall Quests guide |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Complete the first order campaign effort |achieve 10461/3 |or
step
_Congratulations!_
You earned the "Fighting with Style: Classic" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Artifact or Artifiction",{
condition_end="achieved(10852)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this, you will need to speak to the "Keeper of the Ancient Tomes" in your Order Hall
Tell them _"Let's continue research on my artifact."_
You will need to collect 10 Artifact Research Notes to earn this achievement
|tip It usually takes around 4 days to complete a single research, so be sure that you have researched queued each time you log in.
Research Artifact Power Level 10 |achieve 10852
step
_Congratulations!_
You earned the "Artifact or Artifiction" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Part of History",{
condition_end="achieved(10853)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this, youwill need to speak to the "Keeper of the Ancient Tomes" in your Order Hall
Tell them _"Let's continue research on my artifact."_
You will need to collect 25 Artifact Research Notes to earn this achievement
|tip It usually takes around 4 days to complete a single research, so be sure that you have researched queued each time you log in.
Research Artifact Power Level 25 |achieve 10853
step
_Congratulations!_
You earned the "Part of History" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Power Realized",{
condition_end="achieved(11144)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this, you will need to unlock every Artifact Trait for a single artifact weapon
You will need aroun _5,220,000 Artifact Power_ to achieve this
You can earn Artifact Power by completing World Quests as well as Dungeon Guides
Click here to access World Quests |confirm |next "Zygor's Horde Dailies Guides\\Legion\\World Quests" |or
Unlock every Artifact Trait for a Wepaon |achieve 11144 |or
step
_Congratulations!_
You earned the "Power Realized" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Improving on History",{
condition_end="achieved(10459)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this, you will need to complete the Balance of Power questline
To unlock the questline, you will need to complete your Order Hall Quests
Once you have completed the Order Hall Quests, complete the Balance of Power questline
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Click here to load the Balance of Power questline |confirm |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Balance of Power Questline" |or
Complete the Improving on History questline |achieve 10459 |or
step
_Congratulations!_
You earned the "Improving on History" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Roster of Champions",{
condition_end="achieved(11220)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
To earn this achievement, you will need to collect the 8 Class Hall Champions
To accomplish this, use the Order Hall Quests guide
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Collect 8 Champions |achieve 11220
step
_Congratulations!_
You earned the "Roster of Champions" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Roster of Champions",{
condition_end="achieved(11220)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
To earn this achievement, you will need to collect the 8 Class Hall Champions
To accomplish this, use the Order Hall Quests guide
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Collect 8 Champions |achieve 11220
step
_Congratulations!_
You earned the "Roster of Champions" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Many Missions",{
condition_end="achieved(11214)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to complete 10 Class Hall Missions found in your Class Hall
You will need to have progressed a bit into the Order Hall Quests in order to access the mission board
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Once you have, use Champions and Troops to complete 10 missions
Complete 10 Class Hall Missions |achieve 11214
step
_Congratulations!_
You earned the "Many Missions" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Quite a Few Missions",{
condition_end="achieved(11215)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to complete 50 Class Hall Missions found in your Class Hall
You will need to have progressed a bit into the Order Hall Quests in order to access the mission board
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Once you have, use Champions and Troops to complete 50 missions
Complete 50 Class Hall Missions |achieve 11215
step
_Congratulations!_
You earned the "Quite a Few Missions" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\So Many Missions",{
condition_end="achieved(11216)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to complete 100 Class Hall Missions found in your Class Hall
You will need to have progressed a bit into the Order Hall Quests in order to access the mission board
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Once you have, use Champions and Troops to complete 100 missions
Complete 100 Class Hall Missions |achieve 11216
step
_Congratulations!_
You earned the "So Many Missions" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Many Many Missions, Handle It!",{
condition_end="achieved(11217)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to complete 500 Class Hall Missions found in your Class Hall
You will need to have progressed a bit into the Order Hall Quests in order to access the mission board
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Once you have, use Champions and Troops to complete 500 missions
Complete 500 Class Hall Missions |achieve 11217
step
_Congratulations!_
You earned the "Many Many Missions, Handle It!" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Training the Troops",{
condition_end="achieved(10706)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to train 5 Troops in your Class Hall
To acheive this, speak to both Recruiters found in your Class Hall
Note, that you will need to have progressed ab it into the Order Hall Quests guide to recruit additional Troops
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Train 5 Troops |achieve 10706
step
_Congratulations!_
You earned the "Training the Troops" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Raise an Army",{
condition_end="achieved(11212)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to train 20 Troops in your Class Hall
To acheive this, speak to both Recruiters found in your Class Hall
Note, that you will need to have progressed ab it into the Order Hall Quests guide to recruit additional Troops
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Train 20 Troops |achieve 11212
step
_Congratulations!_
You earned the "Raise an Army" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Lead a Legion",{
condition_end="achieved(11213)",
author="support@zygorguides.com",
startlevel=100,
},[[
step
For this, you will need to train 100 Troops in your Class Hall
To acheive this, speak to both Recruiters found in your Class Hall
Note, that you will need to have progressed ab it into the Order Hall Quests guide to recruit additional Troops
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Train 100 Troops |achieve 11213
step
_Congratulations!_
You earned the "Lead a Legion" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\There's a Boss In There",{
condition_end="achieved(11218)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need access to the Class Hall Mission board
Once there, search for a Mission that rewards _a Dungeon quest_
|tip These may not always be available.
The quest can be for _Normal, Heroic or Mythic difficulty_
|tip You will be at a disadvantage on success chance, so try and counter all of the enemy abilities.
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Obtain a Dungoen Quest from the Class Hall Mission Board |achieve 11218
step
_Congratulations!_
You earned the "There's a Boss In There" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Need Backup",{
condition_end="achieved(11219)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need access to the Class Hall Mission board
Once there, search for a Mission that rewards _a Raid quest_
|tip These may not always be available.
The quest can be for _Normal, Heroic or Mythic difficulty_
|tip You will be at a disadvantage on success chance, so try and counter all of the enemy abilities.
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Obtain a Raid Quest from the Class Hall Mission Board |achieve 11219
step
_Congratulations!_
You earned the "Need Backup" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievement Guides\\Class Hall\\Legion\\Champions Rise",{
condition_end="achieved(11221)",
author="support@zygorguides.com",
startlevel=110,
},[[
step
For this achievement, you will need to raise 8 Class Hall Champions to level 110
To accomplish this, use the Order Hall Quests guide to unlock all of the Champions
Click here to load the Order Hall Quests guide |confirm |next |next "Zygor's Horde Leveling Guides\\Legion (100-110)\\Order Hall Quests" |or
Click here once you've completed the Order Hall Quest guide |confirm
step
From this point there are two ways to level your followers
The recommended way will be sending them on missions from your _Order Hall Mission Board_
|tip Try to complete quests that reward Bonus Follower XP if possible, otherwise aim for Missions with the lowest time.
The second way will be to set a follower as a _Combat Ally_ and complete World Quests
Earn the Champions Rise Achievement! |achieve 11221
step
_Congratulations!_
You earned the "Champions Rise" achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Legion Brawler's Guild\\King of the Guild",{
author="support@zygorguides.com",
condition_end="achieved(11566)",
achieveid={11559,11561,11564,11566},
description="Reach rank 8 with the Brawler's Guild.",
},[[
step
First you will need to gain access to the Brawler's Guild
kill Helarjar Priest##111326+, Helarjar Mystcaller##111325+, Helarjar Soulhunter##111328+
|tip Kill any and all of the elite mobs on this island.
|tip You may need a group to accomplish this.
collect 1 Blood-Soaked Invitation##144363 |goto Stormheim/0 85.32,11.34 |n
click Blood-Soaked Invitation##144363 |use Blood-Soaked Invitation##144363
Earn the Achievement "The First Rule of Brawler's Guild" |achieve 11559
step
_Now win your first brawl!_
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena/1 54.93,68.35 < 5
Tell him _"Yes, sign me up for a fight"_ |goto Brawl'gar Arena/1 57.1,48.7 < 5 |c |noway
When Oso begins casting _Shotgun Blast_ move out from in front of him
He may occasionally knock you back and then cast _Grizzly Leap_ run out of this circle
only if ZGV:GetReputation(2010).friendRep<250
step
When Oso begins casting _Shotgun Blast_ move out from in front of him
He may occasionally knock you back and then cast _Grizzly Leap_ run out of this circle
Defeat Oso |achieve 11561
step
Continue talking to Brawl'gar Arena Grunt and fight your way through the bosses to get to rank 4
Look at our Legion Brawler's Guild guide for boss fight strats
Earn the Achievement "The Second Rule of Brawler's Guild" |achieve 11564
step
Continue talking to Brawl'gar Arena Grunt and fight your way through the bosses to get to rank 8
Look at our Legion Brawler's Guild guide for boss fight strats
Congratulations you are now Rank 8 in the new Brawler's Guild!
Earn the Achievement "King of the Guild" |achieve 11566
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Legion Brawler's Guild\\I Am Thrall's Complete Lack Of Surprise",{
author="support@zygorguides.com",
condition_end="achieved(11572)",
description="Defeat 10 bosses using random brawl mode",
},[[
step
You will first need to activate Random Boss mode in the Brawler's Guild
|tip You may not need to activate it yourself
talk Brawl'gar Arena Grunt##67267
Tell him _"I want to fight a random enemy"_ |goto Brawl'gar Arena/1 54.93,68.35 < 5 |next "Fight"
click here if random brawl mode is not already active |next "random"
confirm
step
label "random"
talk Tiana Nevermorn##115797
buy 1 Bag of Chipped Dice##143763 |condition itemcount(143763) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This costs 100 Brawler's Gold, these can be obtained by successfully completing any Brawler's Guild fight.
step
talk Brawl'gar Arena Grunt##67267
Tell him _"Present the Bag of Chipped Dice"_ |goto Brawl'gar Arena/1 54.93,68.35 < 5
|tip Once you present the Dice you will have 30 minuties to fight in random brawl mode.
Tell him _"I want to fight a random enemy"_ |goto Brawl'gar Arena/1 54.93,68.35 < 5 |next "Fight"
confirm
step
label "Fight"
Once inside the arena you will match against any boss from this Brawler's Guild, from 4 special bosses, or from any bosses from previous Brawler's Guild
Defeat 10 Random Brawler Bosses |achieve 11572
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Legion Brawler's Guild\\Rumble Club",{
author="support@zygorguides.com",
condition_end="achieved(11573)",
description="Defeat all rumbles in the Brawler's Guild",
},[[
step
To earn this achievement you will need to activate and defeat 7 Rumbles.
_Warning_
These are events and when activated it will teleport every person in queue into the arena to fight the Rumble
|tip Each card costs 500 Brawler's Gold, these can be obtained by successfully completing any brawler fight.
_Make sure you are in queue or you will not get to participate in the Rumble_
confirm
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Grief Warden##142288 |condition itemcount(142288) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill Grief Warden
|tip He will target a random player and chase them, if you are targeted by this just run him around the room.
If you are not targeted stay away from his front and sides, and dps him down
Defeat Grief Warden |achieve 11573/2
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Penguin Stampede##142289 |condition itemcount(142289) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill the Penguin Stampede
10 Slippy's will spawn, your group will need to keep them knocked away to prevent them from pecking anyone
Defeat the Slippy Stampede |achieve 11573/6
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Battle of the Brew##142290 |condition itemcount(142290) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill the Battle of the Brew
This fight includes 3 monks who will constantly jump around the room
Defeat the Battle of the Brew |achieve 11573/3
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Senya##142291 |condition itemcount(142291) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill Senya
Senya is a giant Hippo, it will fixate on a random player and follow them for a short period
|tip When the fixate ends it will lose one stack of its damage reduction debuff 20 percent per.
After it fixates 5 people it will get stunned and take 100 percent more damage for about 20 seconds, it needs to die before this ends.
|tip Save your cooldowns for this part.
_Do Not_ at any point stand in front of Senya it will one shot you.
It will also spawn green and brown circles around the room do not stand in these.
Defeat Senya |achieve 11573/5
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Stranglethorn Streak##142292 |condition itemcount(142292) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and Stay Alive until the event is over
Once inside you will turn into a level 1 with no gear and about 200hp
To survive you will need to run away from any and all of the beasts that spawn
Survive the Stranglehorn Run |achieve 11573/7
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Mindbreaker Gzzaj##142293 |condition itemcount(142293) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill Mindbreaker Gzzaj
This boss is pretty simple, interrupt Shadow Volley and dps him down.
Defeat Mindbreaker Gzzaj |achieve 11573/4
step
talk Tiana Nevermorn##115797
buy 1 Rumble Card: Mazhareen##142294 |condition itemcount(142294) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This card costs 500 Brawler's Gold, and when bought will be instantly consumed meaning no refunds.
confirm
step
Enter the Arena and kill Mazhareen
This is the same Mazhareen from the previous Brawler's Guild
The lower hp he gets the more damage he does.
|tip Save your stuns and slows for when he gets to lower hp.
Defeat Mazhareen |achieve 11573/1
step
Congratulations you have earned the Rumble Club achievement! |achieve 11573
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Legion Brawler's Guild\\You Are Not The Contents Of Your Wallet",{
author="support@zygorguides.com",
condition_end="achieved(11567)",
description="Obtain 20,000 Brawler's Gold",
},[[
step
To earn this achievement you will need to obtain 20,000 Brawler's Gold
|tip These can be obtained by successfully completing any Brawler's Guild fight.
collect 20,000 Brawler's Gold##1299 |achieve 11567
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Events\\Legion Brawler's Guild\\Educated Guesser",{
author="support@zygorguides.com",
condition_end="achieved(11570)",
description="Obtain 10 stacks of vested interest in the Brawler's Guild",
},[[
step
You will first need to activate A Game Of Chance mode in the Brawler's Guild
|tip You may not need to activate it yourself
Click here if A Game Of Chance mode is _already active_ |next "Chancegame"
Click here if A Game Of Chance mode is _not active_ |next "Buychance"
confirm
step
label "Buychance"
talk Tiana Nevermorn##115797
buy 1 High Roller's Contract##143762 |condition itemcount(143762) >= 1 |goto Brawl'gar Arena/1 59.35,78.25
|tip This costs 100 Brawler's Gold, these can be obtained by successfully completing any Brawler's Guild fight.
step
talk Slick Bixi##68424 |goto Brawl'gar Arena/1 47.44,68.35
Tell her _"<Present the High Roller's Contract>"_ |next "Chancegame"
confirm
step
label "Chancegame"
talk Pit Boss Buxdoggle##68372 |goto Brawl'gar Arena/1 48.05,67.09
Choose either to take a chance on _The Hero_ or _The Monster_
You must guess correctly 10 times in a row
|tip You can choose not to vote on any round you want without losing your stacks.
|tip You have about 10 seconds after a fight starts to vote for either the monster or the hero.
|achieve 11570
]])
ZGV.BETAEND()
