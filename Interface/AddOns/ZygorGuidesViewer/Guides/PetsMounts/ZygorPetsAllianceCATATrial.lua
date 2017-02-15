local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.CommonPets=true
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Snowshoe Rabbit",{
pet=72,
description="This guide will walk you through obtaining\nthe Critter pet: Snowshoe Rabbit",
},[[
step
talk Yarlyn Amberstill##1263
buy 1 Rabbit Crate (Snowshoe)##8497 |goto Dun Morogh 70.6,49.0
step
learnpet Snowshoe Rabbit##7560 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Squirrel",{
pet=379,
description="This guide will walk you through obtaining\nthe Critter pet: Squirrel",
},[[
step
Challenge one to a pet battle and capture it
|tip The Squirrel is level 1.
learnpet Squirrel##61081 |goto Elwynn Forest 46.7,71.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Bombay Cat",{
pet=40,
description="This guide will walk you through obtaining\nthe Beast pet: Bombay Cat",
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Bombay)##8485 |goto Elwynn Forest,44.2,53.2
step
learnpet Bombay Cat##7385 |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Cornish Rex Cat",{
pet=41,
description="This guide will walk you through obtaining\nthe Beast pet: Cornish Rex Cat",
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Cornish Rex)##8486 |goto Elwynn Forest,44.2,53.2
step
learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Orange Tabby Cat",{
pet=43,
description="This guide will walk you through obtaining\nthe Beast pet: Orange Tabby Cat",
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest,44.2,53.2
step
learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Silver Tabby Cat",{
pet=45,
description="This guide will walk you through obtaining\nthe Beast pet: Silver Tabby Cat",
},[[
step
talk Donni Anthania##6367
buy 1 Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest,44.2,53.2
step
learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Small Frog",{
pet=419,
description="This guide will walk you through obtaining\nthe Aquatic pet: Small Frog",
},[[
step
Challenge one to a pet battle and capture it
|tip The Small Frog is level 1.
learnpet Small Frog##61071 |goto Elwynn Forest 56.0,67.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Undercity Rat",{
pet=454,
description="This guide will walk you through obtaining\nthe Critter pet: Undercity Rat",
},[[
step
This pet is only found inside The Undercity.
|tip You can attempt to capture it yourself, but it is suggested that you use a Horde character to capture it.
confirm
step
Challenge one to a pet battle and capture it
|tip The Undercity Rats are level 2.
learnpet Undercity Rat##61889 |goto Undercity 70.9,35.4
]])
