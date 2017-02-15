local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCCATA") then return end
if not ZGV.CommonPets then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beast Pets\\Cat",{
model={5585},
pet=459,
description="This guide will walk you through obtaining the Beast pet: Cat",
},[[
step
Challenge one to a pet battle and capture it
|tip The Cat is level 1.
learnpet Cat##62019 |goto Elwynn Forest 44.6,53.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Flying Pets\\Chicken",{
model={304},
pet=646,
description="This guide will walk you through obtaining the Flying pet: Chicken",
},[[
step
Challenge one to a pet battle and capture it
|tip The Chicken is level 1.
learnpet Chicken##62664 |goto Elwynn Forest 77.6,66.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Fawn",{
model={654},
pet=447,
description="This guide will walk you through obtaining the Critter pet: Fawn",
},[[
step
Challenge one to a pet battle and capture it
|tip The Fawn is level 1.
learnpet Fawn##61165 |goto Elwynn Forest 45.1,67.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pet\\Prairie Dog",{
model={1072},
pet=386,
description="This guide will walk you through obtaining the Critter pet: Prairie Dog",
},[[
step
Challenge one to a pet battle and capture it
|tip The Prairie Dogs in this area are level 1.
learnpet Prairie Dog##61141 |goto Mulgore 35.0,7.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Rabbit",{
model={328},
pet=378,
description="This guide will walk you through obtaining the Critter pet: Rabbit",
},[[
step
Challenge one to a pet battle and capture it
|tip The Rabbit is level 1.
learnpet Rabbit##61080 |goto Elwynn Forest 61.2,68.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beast Pets\\Adder",{
model={1986},
pet=635,
description="This guide will walk you through obtaining the Beast pet: Adder",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Adders in this area are level 1.
learnpet Adder##61325 |goto Durotar 45.4,25.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Alpine Hare",{
model={36342},
pet=441,
description="This guide will walk you through obtaining the Critter pet: Alpine Hare",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Alpine Hare is level 1.
learnpet Alpine Hare##61690 |goto Dun Morogh 52.6,58.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Black Lamb",{
model={42906},
pet=374,
description="This guide will walk you through obtaining the Critter pet: Black Lamb",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Black Lamb is level 1.
learnpet Black Lamb##60649 |goto Elwynn Forest 72.4,76.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beast Pets\\Black Tabby Cat",{
model={5448},
pet=42,
description="This guide will walk you through obtaining the Beast pet: Black Tabby Cat",
},[[
step
Kill any and all mobs in Hillsbrad Foothills
|tip Every mob here has a chance to drop the Black Tabby Cat's carrier.
collect 1 Cat Carrier (Black Tabby)##8491 |goto Hillsbrad Foothills 58.8,74.6
step
learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Creepy Crawly",{
model={46940},
pet=468,
description="This guide will walk you through obtaining the Critter pet: Creepy Crawly",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Creepy Crawly is level 1.
learnpet Creepy Crawly##62116 |goto Durotar 50.0,29.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Flying Pet\\Crested Owl",{
model={6300},
pet=507,
description="This guide will walk you through obtaining the Flying pet: Crested Owl",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Crested Owl is level 1.
learnpet Crested Owl##62242 |goto Teldrassil 45.2,64.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Elfin Rabbit",{
model={328},
pet=479,
description="This guide will walk you through obtaining the Critter pet: Elfin Rabbit",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Elfin Rabbits in this area are around level 23.
learnpet Elfin Rabbit##62178 |goto Mount Hyjal 48.8,25.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Gazelle Fawn",{
model={45958},
pet=477,
description="This guide will walk you through obtaining the Critter pet: Gazelle Fawn",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Gazelle Fawns are level 1.
learnpet Gazelle Fawn##62176 |goto Mulgore 33.8,31.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Flying Pets\\Grey Moth",{
model={42343},
pet=464,
description="This guide will walk you through obtaining the Flying pet: Grey Moth",
},[[
step
Challenge one to a pet battle and capture it.
|tip The Grey Moths in this area are level 1.
learnpet Grey Moth##62050 |goto Azuremyst Isle 53.1,52.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Critter Pets\\Irradiated Roach",{
model={2177},
pet=442,
description="This guide will walk you through obtaining the Critter pet: Irradiated Roach",
},[[
step
Challenge one to a pet battle and capture it
|tip The Irradiated Roaches are level 1.
learnpet Irradiated Roach##61691 |goto New Tinkertown 41.1,47.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Undead Pets\\Lost of Lordaeron",{
model={45952},
pet=458,
description="This guide will walk you through obtaining the Undead pet: Lost of Lordaeron",
},[[
step
Challenge one to a pet battle and capture it
|tip The Lost of Lordaeron is level 1.
learnpet Lost of Lordaeron##61905 |goto Tirisfal Glades 79.7,55.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Elemental Pets\\Ruby Sapling",{
model={42335},
pet=460,
description="This guide will walk you through obtaining the Elemental pet: Ruby Sapling",
},[[
step
Challenge one to a pet battle and capture it
|tip The Ruby Saplings are level 1.
learnpet Ruby Sapling##62020 |goto Eversong Woods 52.2,58.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beast Pets\\Snow Cub",{
model={42203},
pet=440,
description="This guide will walk you through obtaining the Beast pet: Snow Cub",
},[[
step
Challenge one to a pet battle and capture it
|tip The Snow Cubs are level 1.
learnpet Snow Cub##61689 |goto Dun Morogh 51.1,44.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Beast Pets\\Spiny Lizard",{
model={36583},
pet=466,
description="This guide will walk you through obtaining the Beast pet: Spiny Lizard",
},[[
step
Challenge one to a pet battle and capture it
|tip The Spiny Lizards in this area are level 1-2.
learnpet Spiny Lizard##62114 |goto Durotar 45.8,20.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Water Snake",{
pet=418,
description="This guide will walk you through obtaining the Beast pet: Water Snake",
},[[
step
Challenge one to a pet battle and capture it
|tip The Water Snakes in this area are level 1.
learnpet Water Snake##61367 |goto Durotar 44.2,33.5
]])
