local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\Court of Farondis",{
author="support@zygorguides.com",
startlevel=100.0,
keywords={"Court","Farondis"},
description="This guide will walk you through gaining reputation with the \"Court of Farondis\" faction.",
},[[
step
Gain Exalted Reputation with Court of Farondis |condition rep("Court of Farondis")>=Exalted
|tip Use the "Azsuna" leveling guide to accomplish this.
|tip Complete world quests in Azsuna.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Court of Farondis" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\Dreamweavers",{
author="support@zygorguides.com",
startlevel=100.0,
keywords={"Dreamweavers"},
description="This guide will walk you through gaining reputation with the \"Dreamweavers\" faction.",
},[[
step
Gain Exalted Reputation with Dreamweavers |condition rep("Dreamweavers")>=Exalted
|tip Use the "Val'sharah" leveling guide to accomplish this.
|tip Complete world quests in Val'sharah.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Dreamweavers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\Highmountain Tribe",{
author="support@zygorguides.com",
startlevel=100.0,
keywords={"Highmountain","Tribe"},
description="This guide will walk you through gaining reputation with the \"Highmountain Tribe\" faction.",
},[[
step
Gain Exalted Reputation with Highmountain Tribe |condition rep("Highmountain Tribe")>=Exalted
|tip Use the "Highmountain" leveling guide to accomplish this.
|tip Complete world quests in Highmountain.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Highmountain Tribe" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\Valarjar",{
author="support@zygorguides.com",
startlevel=100.0,
keywords={"Valarjar"},
description="This guide will walk you through gaining reputation with the \"Valarjar\" faction.",
},[[
step
Gain Exalted Reputation with Valarjar |condition rep("Valarjar")>=Exalted
|tip Use the "Stormheim" leveling guide to accomplish this.
|tip Complete world quests in Stormheim.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Valarjar" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\The Nightfallen",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"Nightfallen"},
description="This guide will walk you through gaining reputation with \"The Nightfallen\" faction.",
},[[
step
Gain Exalted Reputation with The Nighfallen |condition rep("The Nighfallen")>=Exalted |goto Suramar/0 36.51,46.80 |region suramar_shalaran
|tip Use the "Suramar (110)" leveling guide to accomplish this.
|tip Complete world quests in Suramar.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip
_About Ancient Mana:_
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
|tip
_Feed Ancient Mana to These Nightfallen NPC's:_
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
step
_Congratulations!_
You earned Exalted reputation with "The Nightfallen" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\The Wardens",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"Wardens"},
description="This guide will walk you through gaining reputation with \"The Wardens\" faction.",
},[[
step
Gain Exalted Reputation with The Wardens |condition rep("The Wardens")>=Exalted
|tip Complete world quests in all zones that are labeled as "The Wardens".
|tip Look under the world quest title in the tooltip when you hover over a world quest on the map.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with "The Wardens" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Legion\\Conjurer Margoss",{
author="support@zygorguides.com",
startlevel=100.0,
keywords={"Conjurer","Margoss"},
description="This guide will walk you through gaining reputation with the \"Conjurer Margoss\" faction.",
},[[
step
collect Goblin Glider Kit##109076 |c |condition rep("Conjurer Margoss")>=BestFriend
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
collect Drowned Mana##138777 |n
talk Conjurer Margoss##108825
|tip Use the dialogue options to give him the Drowned Mana.
Gain Best Friend Reputation with Conjurer Margoss |condition rep("Conjurer Margoss")>=BestFriend |goto Dalaran L/10 23.10,-11.40 |region dalaran_margosss_retreat
step
_Congratulations!_
You earned Best Friend reputation with the "Conjurer Margoss" faction.
]])
