local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.CommonPets=true
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Snowshoe Rabbit",{
pet=72,
description="This guide will walk you through obtaining the Critter pet: Snowshoe Rabbit\nThis pet is sold from an Alliance only vendor. You will need to earn it on an Alliance character or purchase it from the Auction House.",
},[[
step
#include "auctioneer"
buy 1 Rabbit Crate (Snowshoe)##8497
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Snowshoe Rabbit##7560 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Squirrel",{
pet=379,
description="This guide will walk you through obtaining\nthe Critter pet: Squirrel",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Squirrel is level 1.
learnpet Squirrel##61081 |goto Elwynn Forest 46.7,71.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bombay Cat",{
pet=40,
description="This guide will walk you through obtaining the Beast pet: Bombay Cat\nThis pet is sold from an Alliance only vendor. You will need to earn it on an Alliance character or purchase it from the Auction House.",
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Bombay)##8485
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Bombay Cat##7385  |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Cornish Rex Cat",{
pet=41,
description="This guide will walk you through obtaining the Beast pet: Cornish Rex Cat\nThis pet is sold from an Alliance only vendor. You will need to earn it on an Alliance character or purchase it from the Auction House.",
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Cornish Rex)##8486
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hare",{
pet=448,
description="This guide will walk you through obtaining\nthe Critter pet: Hare",
},[[
step
Challenge one to a pet battle and capture it
|tip The Hares around this area are level 1.
learnpet Hare##61751 |goto Durotar 47.3,30.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Orange Tabby Cat",{
pet=43,
description="This guide will walk you through obtaining the Beast pet: Orange Tabby Cat\nThis pet is sold from an Alliance only vendor. You will need to earn it on an Alliance character or purchase it from the Auction House.",
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Orange Tabby)##8487
|tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Silver Tabby Cat",{
pet=45,
description="This guide will walk you through obtaining the Beast pet: Silver Tabby Cat\nThis pet is sold from an Alliance only vendor. You will need to earn it on an Alliance character or purchase it from the Auction House.",
},[[
step
#include "auctioneer"
buy 1 Cat Carrier (Silver Tabby)##8488
tip This pet must be bought with an Alliance character or through the Auction House
step
learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
]])
