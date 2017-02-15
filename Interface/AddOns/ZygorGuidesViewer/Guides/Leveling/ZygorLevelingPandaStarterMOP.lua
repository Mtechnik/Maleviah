local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingNMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Pandaren (1-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\WanderingIsle",
condition_suggested="raceclass('Pandaren') and level<=5",
startlevel=1,
endlevel=12,
},[[
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30038 |goto The Wandering Isle/0 56.7,18.2
|only Pandaren Warrior
step
click Weapon Rack##210016
use Trainee's Sword##73210
Loot and Equip a Trainee's Sword |q 30038/1 |goto 56.9,19.7
|only Pandaren Warrior
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30038 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Warrior
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30034 |goto 56.7,18.2
|only Pandaren Hunter
step
click Weapon Rack##210016
use Trainee's Crossbow##73211
Loot and Equip a Trainee's Crossbow |q 30034/1 |goto 56.9,19.7
|only Pandaren Hunter
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30034 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Hunter
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30036 |goto 56.7,18.2
|only Pandaren Rogue
step
click Weapon Rack##210016
use Trainee's Dagger##73208
Loot and Equip the Mainhand Dagger |q 30036/1 |goto 56.9,19.7
|only Pandaren Rogue
step
use Trainee's Dagger##73212
Equip the Offhand Dagger |q 30036/2
|only Pandaren Rogue
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30036
accept The Lesson of the Sandy Fist##29406 |next "next01"
|only Pandaren Rogue
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30035 |goto 56.7,18.2
|only Pandaren Priest
step
click Weapon Rack##210016
use Trainee's Mace##73207
Loot and Equip a Trainee's Mace |q 30035/1 |goto 56.9,19.7
|only Pandaren Priest
step
use Trainee's Book of Prayers##76393
Equip the Trainee's Book of Prayers |q 30035/2
|only Pandaren Priest
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30035 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Priest
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30037 |goto 56.7,18.2
|only Pandaren Shaman
step
click Weapon Rack##210016
use Trainee's Axe##76391
Loot and Equip a Trainee's Axe |q 30037/1 |goto 56.9,19.7
|only Pandaren Shaman
step
use Trainee's Shield##73213
Equip the Trainee's Shield |q 30037/2
|only Pandaren Shaman
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30037 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Shaman
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30033 |goto 56.7,18.2
|only Pandaren Mage
step
click Weapon Rack##210016
use Trainee's Spellblade##76390
Loot and Equip a Trainee's Spellblade |q 30033/1 |goto 56.9,19.7
|only Pandaren Mage
step
use Trainee's Hand-Fan##76392
Equip a Trainee's Hand-Fan |q 30033/2
|only Pandaren Mage
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30033 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |goto 56.7,18.2 |next "next01"
|only Pandaren Mage
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30027 |goto 56.7,18.2
|only Pandaren Monk
step
click Weapon Rack##210016
use Trainee's Staff##73209
Loot and Equip the Trainee's Staff |q 30027/1 |goto 56.9,19.7
|only Pandaren Monk
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30027 |goto 56.7,18.2
accept The Lesson of the Sandy Fist##29406 |next "next01" |goto 56.7,18.2
|only Pandaren Monk
step
label "next01"
kill 5 Training Target##53714 |q 29406/1 |goto 57.4,19.0
|tip They look like green punching bags around this area.
step
talk Master Shang Xi##53566
turnin The Lesson of the Sandy Fist##29406 |goto  56.7,18.2
accept The Lesson of Stifled Pride##29524 |goto  56.7,18.2
step
kill Huojin Trainee##54586+, Tushui Trainee##65471+, Tushui Trainee##54587+
|tip They are inside this building.
Defeat #6# Sparring Trainees |q 29524/1 |goto 60.2,19.4
step
talk Master Shang Xi##53566
turnin The Lesson of Stifled Pride##29524 |goto 59.7,19.1
accept The Lesson of the Burning Scroll##29408 |goto 59.7,19.1
step
_Run up_ the stairs |goto The Wandering Isle/0 60.0,18.5 < 10
click Edict of Temperance##210986
|tip Run up the two flights of stairs to the top of this building. It looks like a tall white scroll hanging on a large stone object.
Burn the Edict of Temperance |q 29408/2 |goto 59.9,20.5
step
talk Master Shang Xi##53566
|tip Run or jump down to the bottom of this building.
turnin The Lesson of the Burning Scroll##29408 |goto 59.7,19.1
accept The Disciple's Challenge##29409 |goto 59.7,19.1
step
kill Jaomin Ro##54611
Defeat Jaomin Ro |q 29409/1 |goto 67.8,22.7
step
talk Master Shang Xi##53566
turnin The Disciple's Challenge##29409 |goto 66.0,22.8
accept Aysa of the Tushui##29410 |goto 66.0,22.8
step
_Follow_ the path |goto The Wandering Isle/0 54.5,29.3 < 30
talk Merchant Lorvo##54943
turnin Aysa of the Tushui##29410 |goto 55.1,32.8
accept Items of Utmost Importance##29424 |goto 55.1,32.8
accept The Missing Driver##29419 |goto 55.1,32.8
stickystart "amber_scamps"
step
_Follow_ the path |goto The Wandering Isle/0 53.6,24.6 < 30
kill Amberleaf Scamp##54130+
Rescue the Cart Driver |q 29419/1 |goto 54.0,21.0
step "amber_scamps"
kill Amberleaf Scamp##54130+
collect 6 Stolen Training Supplies##72071 |q 29424/1 |goto 54.0,21.0
step
_Follow_ the path |goto The Wandering Isle/0 54.5,29.3 < 30
talk Merchant Lorvo##54943
turnin Items of Utmost Importance##29424 |goto 55.1,32.4
turnin The Missing Driver##29419 |goto 55.1,32.4
step
talk Aysa Cloudsinger##54567
accept The Way of the Tushui##29414 |goto 55.1,32.5
step
_Follow_ the path |goto The Wandering Isle/0 55.7,30.4 < 20
_Enter_ the cave |goto The Wandering Isle/0 57.6,34.7 < 20
kill Amberleaf Troublemaker##59637+
|tip They continuously run into the cave.
Protect Aysa while she Meditates |q 29414/1 |goto 57.8,36.3
|tip You can see a progress bar in your quest tracking area.
step
talk Master Shang Xi##54608
turnin The Way of the Tushui##29414 |goto 57.5,34.7
accept Ji of the Huojin##29522 |goto 57.5,34.7
step
talk Ji Firepaw##54568
turnin Ji of the Huojin##29522 |goto 50.2,21.3
accept The Way of the Huojin##29417 |goto 50.2,21.3
step
kill Fe-Feng Hozen##57205+, Fe-Feng Brewthief##56730+, Fe-Feng Leaper##57164+
Kill #8# Hozen Attackers |q 29417/1 |goto 50.5,20.2
step
talk Ji Firepaw##54568
turnin The Way of the Huojin##29417 |goto 50.2,21.2
accept Kindling the Fire##29418 |goto 50.2,21.2
accept Fanning the Flames##29523 |goto 50.2,21.2
step
use Wind Stone##72109
kill Living Air##54631
collect Fluttering Breeze##72112 |q 29523/1 |goto 47.3,31.3
step
click Loose Dogwood Root##209327
|tip They look like brown pieces of root sticking out of the ground near the base of trees around this area.
collect 5 Dry Dogwood Root##72111 |q 29418/1 |goto 48.9,29.8
step
talk Ji Firepaw##54568
turnin Kindling the Fire##29418 |goto 50.2,21.3
turnin Fanning the Flames##29523 |goto 50.2,21.3
step
talk Master Shang Xi##54609
accept The Spirit's Guardian##29420 |goto The Wandering Isle 50.3,21.5
step
_Follow_ the path up |goto The Wandering Isle/0 45.0,22.4 < 30
_Enter_ the cave |goto The Wandering Isle/0 41.5,25.1 < 10
_Run up_ the path |goto The Wandering Isle/0 40.8,23.2 < 10
_Continune_ up the path |goto The Wandering Isle/0 40.2,22.4 < 10
talk Master Li Fei##54135
turnin The Spirit's Guardian##29420 |goto 38.8,25.5
accept The Challenger's Fires##29664 |goto 38.8,25.5
step
click Brazier of the Flickering Flame
Light the Challenge Torch |q 29664/1 |goto 38.7,25.4
step
click Brazier of the Violet Flame
Light the Violet Brazier |q 29664/4 |goto 38.3,24.8
step
click Brazier of the Red Flame
Light the Red Brazier |q 29664/2 |goto 39.0,23.5
step
click Brazier of the Blue Flame
Light the Blue Brazier |q 29664/3 |goto 39.2,25.4
step
talk Master Li Fei##54135
turnin The Challenger's Fires##29664 |goto 38.8,25.5
accept Only the Worthy Shall Pass##29421 |goto 38.8,25.5
step
kill Master Li Fei##54734
Defeat Master Li Fei |q 29421/1 |goto 38.9,24.4
step
talk Master Li Fei##54135
turnin Only the Worthy Shall Pass##29421 |goto 38.8,25.5
accept Huo, the Spirit of Fire##29422 |goto 38.8,25.5
step
use Huo's Offerings##72583
Reignite the Spirit of Fire |q 29422/1 |goto 39.4,29.6
step
talk Huo##54787
turnin Huo, the Spirit of Fire##29422 |goto 39.4,29.6
accept The Passion of Shen-zin Su##29423 |goto 39.4,29.6
step
_Follow_ the path down |goto The Wandering Isle/0 39.7,27.5 < 10
_Leave_ the cave |goto The Wandering Isle/0 41.5,25.1 < 10
_Run up_ the stairs |goto The Wandering Isle/0 51.0,30.7 < 10
_Continue_ up the stairs |goto The Wandering Isle/0 52.5,36.9 < 10
_Go through_ the doorway |goto The Wandering Isle/0 51.6,40.2 < 10
Bring the Spirit of Fire to the Temple of Five Dawns |q 29423/1 |goto 51.4,46.4
step
talk Master Shang Xi##54786
turnin The Passion of Shen-zin Su##29423 |goto 51.4,46.4
accept The Singing Pools##29521 |goto 51.4,46.4
step
_Leave_ the building |goto The Wandering Isle/0 53.3,47.5 < 10
_Run down_ the path |goto The Wandering Isle/0 57.2,46.8 < 20
talk Jojo Ironbrow##55021
accept Something Tough##29662 |goto The Wandering Isle/0 63.5,41.9
step
talk Aysa Cloudsinger##54975
turnin The Singing Pools##29521 |goto 65.6,42.6
accept The Lesson of Dry Fur##29661 |goto 65.6,42.6
accept The Lesson of the Balanced Rock##29663 |goto 65.6,42.6
step
clicknpc Balance Pole##66946
|tip They look like wooden poles with red rope around them all around this area in the water of this pond.
kill Tushui Monk##55019+
|tip Click other Balance Poles to move around.
Defeat #6# Tushui Monks |q 29663/1 |goto The Wandering Isle/0 63.6,44.6
step
click Training Bell
|tip It looks like a dark colored bell in a wooden housing on a big stone in the middle of the pond. Click other Balance Poles to move around.
Ring the Training Bell |q 29661/1 |goto 61.4,47.8
step
click Hard Tearwood Reed
|tip Jump down into the water.
|tip They look like small bamboo stalks with green leaves at the top of them, sticking up out of the water around this area.
collect 8 Hard Tearwood Reed##73178 |q 29662/1 |goto 61.1,46.8
step
_Get out_ of the water |goto The Wandering Isle/0 62.9,43.5 < 10
talk Jojo Ironbrow##55021
turnin Something Tough##29662 |goto The Wandering Isle/0 63.5,41.9
step
talk Aysa Cloudsinger##54975
turnin The Lesson of Dry Fur##29661 |goto 65.6,42.6
turnin The Lesson of the Balanced Rock##29663 |goto 65.6,42.6
accept Finding an Old Friend##29676 |goto 65.6,42.6
step
_Run up_ the path |goto The Wandering Isle/0 70.1,40.7 < 10
_Continue_ up the path |goto The Wandering Isle/0 71.8,38.1 < 10
talk Old Man Liang##55020
turnin Finding an Old Friend##29676 |goto 70.6,38.7
accept The Sun Pearl##29677 |goto 70.6,38.7
accept The Sting of Learning##29666 |goto 70.6,38.7
step
kill 6 Water Pincer##60411+ |q 29666/1 |goto 72.9,41.4
step
click Ancient Clam
|tip It looks like a giant clam underwater.
collect Sun Pearl##73184 |q 29677/1 |goto 76.3,47.0
step
talk Old Man Liang##55020
turnin The Sun Pearl##29677 |goto 78.5,42.9
turnin The Sting of Learning##29666 |goto 78.5,42.9
accept Shu, the Spirit of Water##29678 |goto 78.5,42.9
step
_Jump onto_ the big white rock |goto The Wandering Isle/0 79.6,41.9 < 5
|tip You will automatically be taken to the other side of the pond.
_Follow_ the path |goto 79.9,39.8 < 10
Cross to the Pool of Reflection |q 29678/1 |goto 79.3,37.6
step
use Sun Pearl##73791
Coax Shu, the Water Spirit |q 29678/2 |goto 79.3,37.6
step
Click the _Quest Complete Box_:
turnin Shu, the Spirit of Water##29678
accept A New Friend##29679
step
Play with the Spirit of Water #5# Times |q 29679/1 |goto 79.3,37.6
|tip Walk into the blue splashing spots in the water and shoot up into the air.
step
talk Aysa Cloudsinger##54975
turnin A New Friend##29679 |goto 79.8,39.3
accept The Source of Our Livelihood##29680 |goto 79.8,39.3
step
clicknpc Delivery Cart##57710
|tip It looks like a wooden wagon sitting on the side of the road with a grey ox in front of it.
Ride the Cart to the Dai-Lo Farmstead |invehicle |c |q 29680 |goto 79.1,45.3
step
talk Ji Firepaw##55477
turnin The Source of Our Livelihood##29680 |goto 68.9,65.0
accept Rascals##29769 |goto 68.9,65.0
step
talk Gao Summerdraft##55479
accept Still Good!##29770 |goto 68.1,66.4
stickystart "plump_virmen"
step
click Uprooted Turnip##209639+
|tip They look like round purple-pink vegetables with long leafy stems sitting on the ground all around this area.
collect 3 Uprooted Turnip##74295+ |q 29770/1 |goto The Wandering Isle/0 70.4,78.7
step
_Go down_ the hole in the ground |goto The Wandering Isle/0 71.6,70.5 < 10
kill Plump Carrotcruncher##55504+
click Stolen Carrot##209641+
|tip They look like big orange carrots laying on the ground inside this tunnel.
collect 3 Stolen Carrot##74296 |q 29770/2 |goto 75.1,74.7
step
_Run up_ the path |goto 76.5,71.0 < 10
click Pilfered Pumpkin##209643+
|tip They look like various colored pumpkins at the base of trees around this area.
collect 3 Pilfered Pumkin##74297+ |q 29770/3 |goto 78.9,70.8
step "plump_virmen"
kill 10 Plump Virmen##55483 |q 29769/1 |goto 71.0,71.6
step
_Run up_ the path |goto The Wandering Isle/0 72.0,65.9 < 20
talk Gao Summerdraft##55479
turnin Still Good!##29770 |goto 68.1,66.4
step
talk Ji Firepaw##55477
turnin Rascals##29769 |goto 68.9,65.0
accept Missing Mallet##29768 |goto 68.9,65.0
step
talk Jojo Ironbrow##55478
accept Something Tougher##29771 |goto 69.1,66.7
step
click Dai-Lo Recess Mallet##214406
|tip It looks like a wooden handle with a yellow ball at the top, sitting on a wooden barrel in front of this small building.
collect Dai-Lo Recess Mallet##74298 |q 29768/1 |goto 62.4,76.7
step
click Discarded Wood Plank##209646+
|tip They look like small piles of brown wooden boards on the ground nearby this house around this area.
collect 12 Discarded Wood Plank##74301 |q 29771/1 |goto The Wandering Isle/0 63.7,77.2
step
_Run up_ the path |goto The Wandering Isle/0 68.0,69.2 < 20
talk Jojo Ironbrow##55478
turnin Something Tougher##29771 |goto 69.1,66.7
step
talk Ji Firepaw##55477
turnin Missing Mallet##29768 |goto 68.9,65.0
accept Raucous Rousing##29772 |goto 68.9,65.0
step
click Break Gong##209626
|tip It looks like a dark colored metal circle hanging from a wooden structure.
Ring the Town Gong |q 29772/1 |goto 69.0,64.9
step
talk Ji Firepaw##55477
turnin Raucous Rousing##29772 |goto 68.9,65.0
accept Not In the Face!##29774 |goto 68.9,65.0
step
talk Shu##55556
Tell it _"Shu, can you wake up Wuguo for me?"_
Ask Shu for Help |q 29774/1 |goto 69.0,62.9
step
Wake Wugou |q 29774/2 |goto The Wandering Isle/0 68.9,65.3
step
talk Ji Firepaw##55477
turnin Not In the Face!##29774 |goto 68.9,65.0
accept The Spirit and Body of Shen-zin Su##29775 |goto 68.9,65.0
step
clicknpc Delivery Cart##59497
|tip It looks like a wooden wagon sitting on the side of the road with a grey ox in front of it.
Ride the Cart to the Temple of Five Dawns |invehicle |c |q 29775 |goto 67.9,67.2
step
_Run up_ the stairs |goto The Wandering Isle/0 51.3,57.3 < 10
talk Master Shang Xi##54786
turnin The Spirit and Body of Shen-zin Su##29775 |goto 51.6,48.3
accept Morning Breeze Village##29776 |goto 51.6,48.3
|tip You will ride a gust of wind to the top of the building.
step
_Cross_ the bridge |goto The Wandering Isle/0 50.1,48.7 < 10
_Follow_ the path |goto 36.1,51.4 < 10
_Go through_ the doorway |goto The Wandering Isle/0 30.8,44.5 < 10
talk Ji Firepaw##55583
turnin Morning Breeze Village##29776 |goto 31.0,36.8
accept Rewritten Wisdoms##29778 |goto 31.0,36.8
step
talk Elder Shaopai##55588
accept Tools of the Enemy##29777 |goto 31.7,39.7
step
talk Jojo Ironbrow##55585
accept Something Really Tough##29783 |goto 29.9,39.8
stickystart "abandoned_stone_blocks"
stickystart "paint_soaked_brushes"
step
click Defaced Scroll of Wisdom##209656+
|tip They look like white banners with red paint on them hanging on large boulders around this area.
Burn #5# Defaced Scrolls of Wisdom |q 29778/1 |goto 32.0,52.8
step "abandoned_stone_blocks"
click Abandoned Stone Block##209665+
|tip They look like piles of gray blocks on the ground around this area.
collect 12 Abandoned Stone Block##74624 |q 29783/1 |goto 32.0,52.8
step "paint_soaked_brushes"
kill Hozen Wiseman##55601+
collect 8 Paint Soaked Brush##74615 |q 29777/1 |goto 32.0,52.8
step
_Go through_ the doorway |goto The Wandering Isle/0 30.8,44.5 < 10
talk Elder Shaopai##55588
turnin Tools of the Enemy##29777 |goto 31.7,39.7
step
talk Jojo Ironbrow##55585
turnin Something Really Tough##29783 |goto 29.9,39.8
step
talk Ji Firepaw##55583
turnin Rewritten Wisdoms##29778 |goto 31.0,36.7
accept The Direct Solution##29779 |goto 31.0,36.7
accept Do No Evil##29780 |goto 31.0,36.7
accept Monkey Advisory Warning##29781 |goto 31.0,36.7
step
_Run up_ the path |goto The Wandering Isle/0 29.8,39.9 < 10
click Jade Tiger Pillar##209673
|tip It looks like a metal column with a green tiger head at the top of it.
accept Something Too Tough?##29782 |goto 26.5,33.7
stickystart "stolen_fireworks"
stickystart "fe-feng_hozen"
step
kill Ruk-Ruk##55634 |q 29780/1 |goto 21.0,34.5
step "stolen_fireworks"
click Stolen Fireworks##209669+
|tip They look like small dark colored pots on wooden slabs on the ground around this area.
collect 8 Stolen Firework Bundle##74631 |q 29781/1 |goto 21.0,34.5
You can find more Fireworks around [26.5,30.6]
step "fe-feng_hozen"
kill Fe-Feng Firethief##57466+, Fe-Feng Firethief##55633+, Fe-Feng Ruffian##55632+
kill 20 Fe-Feng Hozen |q 29779/1 |goto 21.0,34.5
You can find more Hozen around [26.5,30.6]
step
Standing next to you
talk Ji Firepaw##56134
turnin The Direct Solution##29779
turnin Do No Evil##29780
turnin Monkey Advisory Warning##29781
accept Balanced Perspective##29784
step
_Run down_ the path |goto The Wandering Isle/0 27.2,35.8 < 10
talk Jojo Ironbrow##55585
turnin Something Too Tough?##29782 |goto 29.9,39.8
step
_Walk carefully_ on the brown ropes |goto 31.1,36.8 < 5
talk Aysa Cloudsinger##55595
turnin Balanced Perspective##29784 |goto 32.9,35.6
accept Dafeng, the Spirit of Air##29785 |goto 32.9,35.6
step
_Follow_ the path |goto The Wandering Isle/0 30.2,38.2 < 10
_Continue_ on the path |goto The Wandering Isle/0 30.7,55.9 < 10
_Run through_ the hallway |goto 28.4,63.7 < 10
|tip Wait until the wind is not blowing, then run through the hallway.
Locate Dafeng |q 29785/1 |goto 24.7,69.8
step
talk Dafeng##55592
turnin Dafeng, the Spirit of Air##29785 |goto 24.7,69.8
step
talk Aysa Cloudsinger##55595
accept Battle for the Skies##29786 |goto 24.8,69.8
step
click Firework Launcher##215568+
|tip They look like dark colored pots on the ground around this area.
kill Zhao-Ren##55786 |q 29786/1 |goto 30.1,61.9
|tip Follow the Shadow of the Onyx on the ground and click the Firework Launchers until the Serpent is dead.
step
talk Master Shang Xi##55586
turnin Battle for the Skies##29786 |goto 30.0,60.4
accept Worthy of Passing##29787 |goto 30.0,60.4
step
_Follow_ the road |goto The Wandering Isle/0 29.1,53.2 < 20
kill Guardian of the Elders##56274 |q 29787/1 |goto 22.7,52.9
step
_Run up_ the stairs |goto The Wandering Isle/0 22.3,52.8 < 10
talk Master Shang Xi##55672
turnin Worthy of Passing##29787 |goto 19.5,51.2
accept Unwelcome Nature##29788 |goto 19.5,51.2
accept Small, But Significant##29789 |goto 19.5,51.2
stickystart "thornbranch_scamps"
step
click Kun-pai Ritual Charm##209671+
|tip They look like red ropes hanging from tree branches around this area.
collect 8 Kun-Pai Ritual Charm##74634 |q 29789/1 |goto 22.9,57.2
You can find more around [20.0,44.5]
step "thornbranch_scamps"
kill 8 Thornbranch Scamp##55640 |q 29788/1 |goto 22.9,57.2
You can find more around [20.0,44.5]
step
talk Master Shang Xi##55672
turnin Unwelcome Nature##29788 |goto 19.5,51.2
turnin Small, But Significant##29789 |goto 19.5,51.2
accept Passing Wisdom##29790 |goto 19.5,51.2
step
Watch the dialogue
Listen to Master Shang Xi |q 29790/1 |goto 19.5,51.2
step
_Run down_ the path |goto The Wandering Isle/0 17.7,51.7 < 10
talk Aysa Cloudsinger##56662
turnin Passing Wisdom##29790 |goto 15.8,49.1
accept The Suffering of Shen-zin Su##29791 |goto 15.8,49.1
step
clicknpc Shang Xi's Hot Air Balloon##55918
|tip It looks like a big hot air balloon floating just above the ground.
Board the Hot Air Balloon |q 29791/1 |goto 15.6,48.9
step
Watch the dialogue
Uncover the Source of Shen-zin Su's Pain |q 29791/2
step
_Run up_ the stairs |goto The Wandering Isle/0 51.3,57.3 < 10
talk Elder Shaopai##56012
turnin The Suffering of Shen-zin Su##29791 |goto 51.3,48.3
accept Bidden to Greatness##29792 |goto 51.3,48.3
step
Watch the dialogue
Open the Mandori Village Gate |q 29792/1 |goto 51.6,61.2
step
_Run down_ the path |goto The Wandering Isle/0 51.4,63.3 < 10
_Continue_ down the path |goto The Wandering Isle/0 50.9,66.2 < 10
Watch the dialogue
Open the Pei-Wu Forest Gate |q 29792/2 |goto 52.2,68.4
step
_Run up_ the path |goto The Wandering Isle/0 50.6,74.8 < 10
talk Wei Palerage##55943
turnin Bidden to Greatness##29792 |goto 50.1,76.7
accept Preying on the Predators##30591 |goto 50.1,76.7
step
talk Korga Strongmane##60042
accept Stocking Stalks##29795 |goto The Wandering Isle 50.2,76.7
stickystart "pei-wu_tigers"
step
click Broken Bamboo Stalk##211397+
|tip They look like thin shorter bamboo stalks and stumps all around the tall bamboo stalks in this area.
collect 10 Broken Bamboo Stalk##80806+ |q 29795/1 |goto 52.4,82.6
step "pei-wu_tigers"
kill 9 Pei-Wu Tiger##55946 |q 30591/1 |goto 52.4,82.6
step
_Run up_ the path |goto The Wandering Isle/0 51.1,79.3 < 10
talk Wei Palerage##55943
turnin Preying on the Predators##30591 |goto 50.1,76.6
step
talk Korga Strongmane##60042
turnin Stocking Stalks##29795 |goto 50.2,76.7
accept Wrecking the Wreck##30589 |goto 50.2,76.7
step
talk Makael Bay##60055
turnin Wrecking the Wreck##30589 |goto 36.3,72.4
accept Handle With Care##30590 |goto 36.3,72.4
step
talk Ji Firepaw##55942
accept Evil from the Seas##29793 |goto 36.4,72.5
stickystart "terrors_horrors"
step
click Packed Explosion Charge##9539+
|tip They look like small bundles of red dynamite on the ground around this area.
collect 6 Packed Explosion Charge##74955 |q 30590/1 |goto 38.3,74.1
step "terrors_horrors"
kill Darkened Terror##56008+, Darkened Horror##56007+
kill 8 Darkened Terrors or Horrors |q 29793/1 |goto 38.3,74.1
step
talk Makael Bay##60055
turnin Handle With Care##30590 |goto 36.3,72.3
step
talk Ji Firepaw##55942
turnin Evil from the Seas##29793 |goto 36.4,72.5
accept Urgent News##29796 |goto 36.4,72.5
step
_Follow_ the road |goto The Wandering Isle/0 40.9,78.1 < 10
talk Delora Lionheart##55944
turnin Urgent News##29796 |goto 42.2,86.5
accept None Left Behind##29794 |goto 42.2,86.5
accept Medical Supplies##29797 |goto 42.2,86.5
step
talk Jojo Ironbrow##55940
accept From Bad to Worse##29665 |goto 42.3,86.3
stickystart "medical_supplies"
stickystart "deepscale_tormentors"
step
clicknpc Injured Sailor##55999+
|tip They look like dead Alliance bodies on the ground around this whole area.
Bring the Injured Sailors to [42.2,86.7]
Rescue #3# Injured Sailors |q 29794/1 |goto 38.5,87.4
step "medical_supplies"
click Alliance Medical Crate##209793+
|tip They look like wooden boxes with red crosses on them on the ground around this area.
collect 8 Alliance Medical Supplies##74958 |q 29797/1 |goto 38.5,87.4
step "deepscale_tormentors"
kill 8 Deepscale Tormentor##56360 |q 29665/1 |goto 38.5,87.4
step
talk Delora Lionheart##55944
turnin None Left Behind##29794 |goto 42.2,86.5
turnin Medical Supplies##29797 |goto 42.2,86.5
step
talk Jojo Ironbrow##55940
turnin From Bad to Worse##29665 |goto 42.3,86.4
accept An Ancient Evil##29798 |goto 42.3,86.4
step
kill Vordraka, the Deep Sea Nightmare##56009 |q 29798/1 |goto 37.1,84.1
|tip Try and stay moving; he will randomly target you with two different attacks, both of which are aoe's and can be avoided. He also spawns adds occasionally.
step
talk Aysa Cloudsinger##56416
turnin An Ancient Evil##29798 |goto The Wandering Isle/0 36.5,84.2
accept Risking It All##30767 |goto The Wandering Isle/0 36.5,84.2
step
Watch the dialogue
|tip Follow Aysa Cloudsinger up the stairs to the top of the broken airship.
Remove Shen-zin Su's Thorn |q 30767/1 |goto 36.4,87.0
step
talk Ji Firepaw##56418
turnin Risking It All##30767 |goto 39.3,86.2
accept The Healing of Shen-zin Su##29799 |goto 39.3,86.2
step
clicknpc Horde Druid##60834
clicknpc Alliance Priest##60878
|tip Watch your minimap and look for bronze cogs. These are fallen Horde Druids and Alliance Priests. Go to them and revive them. Focus on keeping them alive.
|tip They are on the ground laying under sheets of gray metal.
Protect the Healers |q 29799/1 |goto 41.2,85.4
|tip Run around this whole area and keep reviving the druids and priest until the bar on the bottom of your screen fills.
step
talk Ji Firepaw##56418
turnin The Healing of Shen-zin Su##29799 |goto 39.3,86.2
step
talk Ji Firepaw##57739
accept New Allies##29800 |goto 38.8,86.3
step
clicknpc Delivery Cart##57741
|tip It looks like a wooden wagon with a grey ox in front of it, next to the road.
Ride the Cart to Mandori Village |invehicle |c |q 29800 |goto 41.7,85.5
step
talk Spirit of Master Shang Xi##56013
turnin New Allies##29800 |goto 51.4,48.3
accept A New Fate##31450 |goto 51.4,48.3
step
talk Spirit of Master Shang Xi##56013 |goto 51.4,48.3
Tell him _"I'm ready to decide."_
|tip You will have to choose whether you will side with the Alliance or the Horde.
Join the Alliance |next "Alliance" |or |condition rep('Stormwind') >= Friendly
_Or_
Join The Horde |next "Horde" |or |condition rep('Orgrimmar') >= Friendly
step
label "Alliance"
_Follow_ the path |goto Stormwind City/0 63.7,72.7 < 10
talk Aysa Cloudsinger##60566
turnin A New Fate##31450 |goto Stormwind City/0 74.2,92.0
accept Joining the Alliance##30987 |goto Stormwind City/0 74.2,92.0
step
talk King Varian Wrynn##29611
turnin Joining the Alliance##30987 |goto Stormwind City 85.8,31.7
accept The Alliance Way##30988 |goto Stormwind City 85.8,31.7
step
Follow King Varian Wrynn
Watch the dialogue
Walk with King Varian Wrynn |q 30988/1
step
talk King Varian Wrynn##61796
turnin The Alliance Way##30988 |goto 82.6,28.1
accept An Old Pit Fighter##30989 |goto 82.6,28.1
step
kill King Varian Wrynn##61796
|tip Don't worry, you won't be able to hit him at all.
Spar with Varian |q 30989/1 |goto 82.6,28.1
step
talk King Varian Wrynn##29611
turnin An Old Pit Fighter##30989 |goto 85.8,31.7
|next "end"
step
label "Horde"
talk Ji Firepaw##60570
turnin A New Fate##31450 |goto Durotar/0 45.6,12.6
accept Joining the Horde##31012 |goto Durotar/0 45.6,12.6
step
talk Garrosh Hellscream##39605
turnin Joining the Horde##31012 |goto Orgrimmar/1 48.8,70.8
accept The Horde Way##31013 |goto Orgrimmar/1 48.8,70.8
step
Follow Garrosh Hellscream
Watch the dialogue
Walk with Garrosh Hellscream |q 31013/1
step
talk Garrosh Hellscream##62092
turnin The Horde Way##31013 |goto Orgrimmar/1 70.6,31.4
accept Hellscream's Gift##31014 |goto Orgrimmar/1 70.6,31.4
step
Enter the Portal
|tip It looks like a swirling pink portal near you.
Wait for the fight to start
|tip Walk to the center of the room. Unfortunately, it can take several minutes for the fight to start, so be patient.
|tip Attack whichever target Ji Firepaw is attacking during the fight.
kill Gadoon##62100, Frozengore##62097, Oggax##62102
Complete Hellscream's Trial |q 31014/1
step
talk Garrosh Hellscream##39605
turnin Hellscream's Gift##31014 |goto Orgrimmar/1 70.1,32.2
|next "end"
step
label end
Use the Suggest Section of the Guide Menu
Once you've chosen your path, reload using the _/re_ command in the chat window so you can load the guides for the appropriate faction
|tip Choose the guide you would like to continue leveling with.
]])
if UnitFactionGroup("player")~="Neutral" then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Your guides will load after you choose a faction.",{},[[]])
