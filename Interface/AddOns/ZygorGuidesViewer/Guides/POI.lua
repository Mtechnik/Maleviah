------   SEARCH FOR "--" TO FIND IMPROVEMENTS TO MAKE ONCE FUNCTIONALITY IS IMPLEMENTED


-- show poi table with names visible: /run for k,v in ipairs(ZGV.Poi.Guide.steps) do v.tostring=function(s) return s.poiname end end  ;  Spoo(nil,nil,ZGV.Poi.Guide.steps)

ZygorGuidesViewer:RegisterGuide("Test Guides\\Points of interest",[[
--//Shadowmoon Valley\\--
step
	|poiname Alchemist's Satchel
	|poilvl 90
	|poispot Shadowmoon Valley D 54.92,45.01
	|poitype treasure
	|poiquest 35581
	|poiitem 109124
	click Alchemist's Satchel##224756 |q 35581 |future |goto Shadowmoon Valley D 54.92,45.01
	|tip The Alchemist's Satchel is a small brown bag sitting on a small island in the lake.
step
	|poiname Ancestral Greataxe
	|poilvl 90
	|poispot Shadowmoon Valley D 52.83,48.37
	|poitype treasure
	|poiquest 35584
	|poiitem 113560
	_Go up_ the path here |goto Shadowmoon Valley D/0 51.0,47.9
	_Turn left_ at the top of the path |goto Shadowmoon Valley D/0 49.9,47.5
	_Continue_ along the path |goto Shadowmoon Valley D/0 51.9,49.5
	_Go to_ the small collection of stones |goto Shadowmoon Valley D 52.83,48.37
	click Ancestral Greataxe##232596 |q 35584 |future |goto Shadowmoon Valley D 52.83,48.37
	|tip It's an axe embedded in the ground at the base of the stones.
step
	|poiname Armored Elekk Tusk
	|poilvl 90
	|poispot Shadowmoon Valley D 41.42,27.98
	|poitype treasure
	|poiquest 33869
	|poiitem 108902
	_Go to_ the remains of the dead elekk |goto Shadowmoon Valley D 41.42,27.98
	click Armored Elekk Tusk##226854 |q 33869 |future |goto Shadowmoon Valley D 41.42,27.98
	|tip It is a large bone sticking up from the ground.
step
	|poiname Ashes of A'kumbo --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 37.78,44.35
	|poitype treasure
	|poiquest 33584
	|poiitem 113531
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed_ through the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.5,43.2
	_Go to_ the right alcove on the back wall |goto Shadowmoon Valley D 37.78,44.35
	click Ashes of A'kumbo##232582 |q 33584 |future |goto Shadowmoon Valley D 37.78,44.35
	|tip It is a vase located behind the stone in the alcove.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Ashes of A'kumbo --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 37.78,44.35
	|poitype treasure
	|poiquest 33584
	|poiitem 113531
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed_ through the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.5,43.2
	_Go to_ the right alcove on the back wall |goto Shadowmoon Valley D 37.78,44.35
	click Ashes of A'kumbo##232582 |q 33584 |future |goto Shadowmoon Valley D 37.78,44.35
	|tip It is a vase located behind the stone in the alcove.
	only Horde
step
	|poiname Astrologer's Box --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 49.31,37.60
	|poitype treasure
	|poiquest 33867
	|poiitem 109739
	_Go through_ the narrow pass here |goto Shadowmoon Valley D/0 47.5,39.5
	_Turn left_ on the road |goto Shadowmoon Valley D/0 48.2,40.5
	_Follow_ the path and enter the pavillion |goto Shadowmoon Valley D/0 49.2,37.9
	_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10
	_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10
	_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6
	click Astrologer's Box##226831 |q 33867 |future |goto Shadowmoon Valley D/0 49.4,37.6
	|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
	only Alliance
step
	|poiname Astrologer's Box
	|poilvl 90
	|poispot Shadowmoon Valley D 49.31,37.60
	|poitype treasure
	|poiquest 33867
	|poiitem 109739
	_Cross_ the bridge |goto Shadowmoon Valley D/0 51.9,38.5 < 8
	_Go to_ the road |goto Shadowmoon Valley D/0 50.5,39.5 < 12
	_Enter_ the pavillion |goto Shadowmoon Valley D/0 49.2,38.1 < 10
	_Go up_ the winding ramp |goto Shadowmoon Valley D/0 49.9,37.0 < 10
	_Reach the top_ of the ramp |goto Shadowmoon Valley D/0 49.1,36.6 < 10
	_Open_ the Astrologer's Box |goto Shadowmoon Valley D/0 49.4,37.6
	click Astrologer's Box##226831 |q 33867 |future |goto Shadowmoon Valley D/0 49.4,37.6
	|tip It is a small brown chest in front of the bookcase at the top of a winding ramp.
	only Horde
step
	|poiname Beloved's Offering --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 36.77,41.42
	|poitype treasure
	|poiquest 33046
	|poiitem 113547
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.1,41.6
	_Go to_ the first alcove on the left |goto Shadowmoon Valley D 36.77,41.42
	click Beloved's Offering##232591 |q 33046 |future |goto Shadowmoon Valley D 36.77,41.42
	|tip It's a bundle of flowers next to the stone in the alcove.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Beloved's Offering --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 36.77,41.42
	|poitype treasure
	|poiquest 33046
	|poiitem 113547
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 37.1,41.6
	_Go to_ the first alcove on the left |goto Shadowmoon Valley D 36.77,41.42
	click Beloved's Offering##232591 |q 33046 |future |goto Shadowmoon Valley D 36.77,41.42
	|tip It's a bundle of flowers next to the stone in the alcove.
	only Horde
step
	|poiname Bubbling Cauldron
	|poilvl 90
	|poispot Shadowmoon Valley D 37.18,23.13
	|poitype treasure
	|poiquest 33613
	|poiitem 108945
	_Enter_ the cave here |goto Shadowmoon Valley D/0 37.8,22.3 < 5
	_Go left_ inside the cave |goto Shadowmoon Valley D/0 37.2,22.5
	_Go to_ the far cave wall |goto Shadowmoon Valley D 37.18,23.13
	click Bubbling Cauldron##2076 |q 33613 |future |goto Shadowmoon Valley D 37.18,23.13
	|tip It is a small dark cauldron.
step
	|poiname Cargo of the Raven Queen
	|poilvl 90
	|poispot Shadowmoon Valley D 84.56,44.78
	|poitype treasure
	|poiquest 33885
	|poicurrency GR
	map Shadowmoon Valley D/0
	path follow loose; loop off; ants curved; dist 15
	path	62.5,46.5	69.7,46.5	69.7,42.6
	path	70.3,40.0	72.1,37.5	74.8,39.9
	path	77.0,41.3	77.5,42.4	78.0,42.9
	path	78.3,44.3	78.1,45.4	79.4,45.3
	path	79.9,44.6	80.7,44.9	81.7,43.7
	path	82.4,42.6	83.8,42.8	84.56,44.78
	_Follow_ the path to the Raven Queen's cargo
	|tip Running through this area may flag you for PvP |only Horde
	click Cargo of the Raven Queen##226865 |q 33885 |future
	|tip It is a medium sized brown chest.
step
	|poiname Carved Drinking Horn --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 33.45,39.61
	|poitype treasure
	|poiquest 33569
	|poiitem 113545
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go inside_ the room and to the first alcove on the left |goto Shadowmoon Valley D 33.45,39.61
	click Carved Drinking Horn##232583 |q 33569 |future |goto Shadowmoon Valley D 33.45,39.61
	|tip It looks like a giant tooth.
	only if havequest(35032) or completedq(35032)
step
	|poiname Carved Drinking Horn --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 33.45,39.61
	|poitype treasure
	|poiquest 33569
	|poiitem 113545
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go inside_ the room and to the first alcove on the left |goto Shadowmoon Valley D 33.45,39.61
	click Carved Drinking Horn##232583 |q 33569 |future |goto Shadowmoon Valley D 33.45,39.61
	|tip It looks like a giant tooth.
	only Horde
step
	|poiname The Crystal Blade of Torvath
	|poilvl 90
	|poispot Shadowmoon Valley D 61.70,67.90
	|poitype treasure
	|poiquest 34743
	|poiitem 111636
	|poicurrency GR
	_Follow_ this path |goto Shadowmoon Valley D/0 58.3,60.5
	_Continue along_ the path |goto Shadowmoon Valley D/0 58.8,63.9
	_Enter_ the clearing |goto Shadowmoon Valley D/0 60.7,67.1
	_Go to_ the boulder |goto Shadowmoon Valley D 61.70,67.90
	click The Crystal Blade of Torvath##230663 |q 34743 |future |goto Shadowmoon Valley D 61.70,67.90
	kill Silverleaf Ancient##79694
	|tip When you click the Blade, you will have to fight the three Ancients (one at a time).
step
	|poiname Demonic Cache
	|poilvl 90
	|poispot Shadowmoon Valley D 20.38,30.65
	|poitype treasure
	|poiquest 33575
	|poiitem 108904
	_Enter_ Gul'var |goto Shadowmoon Valley D/0 22.1,30.7
	_Go up_ this path and take the first left |goto Shadowmoon Valley D/0 20.4,29.2
	_Enter_ the hut |goto Shadowmoon Valley D 20.38,30.65
	click Demonic Cache##224785 |q 33575 |future |goto Shadowmoon Valley D 20.38,30.65
	|tip It is an ornate chest located directly in front of the stone pillar.
step
	|poiname Dusty Lockbox --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 29.85,37.48
	|poitype treasure
	|poiquest 36879
	|poiitem 3 RANDOM
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 28.2,38.6
	_Jump onto_ the stone pillar here |goto Shadowmoon Valley D/0 27.9,40.5
	_Follow_ the pillar tops left towards the guard towers until you reach the treasure |goto Shadowmoon Valley D 29.85,37.48
	click Dusty Lockbox##236755 |q 36879 |future |goto Shadowmoon Valley D 29.85,37.48
	|tip It's a small chest on top of a stone pillar.
	only if havequest(35032) or completedq(35032)
step
	|poiname Dusty Lockbox --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 29.85,37.48
	|poitype treasure
	|poiquest 36879
	|poiitem 3 RANDOM
	|poicurrency GL
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 28.2,38.6
	_Jump onto_ the stone pillar here |goto Shadowmoon Valley D/0 27.9,40.5
	_Follow_ the pillar tops left towards the guard towers until you reach the treasure |goto Shadowmoon Valley D 29.85,37.48
	click Dusty Lockbox##236755 |q 36879 |future |goto Shadowmoon Valley D 29.85,37.48
	|tip It's a small chest on top of a stone pillar.
	only Horde
step
	|poiname False-Bottomed Jar --you make the rockin' world go round!
	|poilvl 90
	|poispot Shadowmoon Valley D 51.75,35.49
	|poitype treasure
	|poiquest 33037
	|poicurrency GL
	_Follow_ the road |goto Shadowmoon Valley D/0 49.1,32.2
	_Turn right_ here |goto Shadowmoon Valley D/0 52.1,33.9
	click False-Bottomed Jar##234203 |q 33037 |future |goto Shadowmoon Valley D 51.75,35.49
	|tip It's a large jar near several smaller ones.
step
	|poiname Fantastic Fish
	|poilvl 90
	|poispot Shadowmoon Valley D 26.53,05.68
	|poitype treasure
	|poiquest 34174
	|poicurrency GR
	_Follow_ the road |goto Shadowmoon Valley D/0 24.9,9.7
	_Enter_ the village |goto Shadowmoon Valley D/0 25.4,6.3
	_Go to_ the small island |goto Shadowmoon Valley D 26.53,05.68
	click Fantastic Fish##227743 |q 34174 |future |goto Shadowmoon Valley D 26.53,05.68
	|tip The fish is on top of the small barrel.
step
	|poiname Giant Moonwillow Cone
	|poilvl 90
	|poispot Shadowmoon Valley D 34.39,46.23
	|poitype treasure
	|poiquest 33891
	|poiitem 108901
	_Follow_ the path up the hill |goto Shadowmoon Valley D/0 39.5,53.6
	_Continue right_ along the path |goto Shadowmoon Valley D/0 37.7,54.9
	_Cross_ both bridges |goto Shadowmoon Valley D/0 36.1,50.6
	_Go around_ the right side of the tree |goto Shadowmoon Valley D/0 35.6,47.6
	_Cross_ the water to the shore and continue to the giant cone |goto Shadowmoon Valley D/0 34.4,46.2
	click Giant Moonwillow Cone##233525 |q 33891 |future |goto Shadowmoon Valley D/0 34.4,46.2
	|tip It's a giant cone on the ground.
step
	|poiname Glowing Cave Mushroom
	|poilvl 90
	|poispot Shadowmoon Valley D 48.72,47.53
	|poitype treasure
	|poiquest 35798
	|poiitem 109127
	_Enter_ the cave |goto Shadowmoon Valley D/0 46.4,45.0
	_Go right_ at the fork |goto Shadowmoon Valley D/0 48.2,46.6
	_Stand on_ this rock to loot the mushroom above you |goto Shadowmoon Valley D/0 48.74,47.44
	click Glowing Cave Mushroom##233241 |q 35798 |future |goto Shadowmoon Valley D/0 48.74,47.44
	|tip It's a blue-white mushroom with a concave top.
step
	|poiname Greka's Urn --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 38.48,43.08
	|poitype treasure
	|poiquest 33614
	|poiitem 113408
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 38.1,42.3
	_Go to_ the second alcove on the right |goto Shadowmoon Valley D 38.48,43.08
	click Greka's Urn##232588 |q 33614 |future
	|tip It's a small urn behind the stone in the alcove.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Greka's Urn --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 38.48,43.08
	|poitype treasure
	|poiquest 33614
	|poiitem 113408
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 38.1,42.3
	_Go to_ the second alcove on the right |goto Shadowmoon Valley D 38.48,43.08
	click Greka's Urn##232588 |q 33614 |future
	|tip It's a small urn behind the stone in the alcove.
	only Horde
step
	|poiname Hanging Satchel
	|poilvl 90
	|poispot Shadowmoon Valley D 47.15,46.03
	|poitype treasure
	|poiquest 33564
	|poiitem 108900
	|poiitem 107640
	|poicurrency GL
	_Cross_ the water and climb the rock |goto Shadowmoon Valley D/0 53.5,47.7
	_Go up_ this path |goto Shadowmoon Valley D/0 50.9,48.0
	_Turn right_ at the top |goto Shadowmoon Valley D/0 49.3,47.3
	_Scale_ the rocks to reach the upper plateau |goto Shadowmoon Valley D/0 48.9,45.5
	_Scale_ the rocks to reach to highest plateau |goto Shadowmoon Valley D/0 48.4,46.5
	_Drop down_ |goto Shadowmoon Valley D/0 47.5,45.4
	|tip Be careful not to fall in the hole.
	Carefully _walk onto_ the branch |goto Shadowmoon Valley D 47.15,46.03
	click Hanging Satchel##224750 |q 33564 |future |goto Shadowmoon Valley D 47.15,46.03
	|tip It's a brown bag hanging from a branch over the cave.
step
	|poiname Iron Horde Cargo Shipment
	|poilvl 90
	|poispot Shadowmoon Valley D 42.10,61.30
	|poitype treasure
	|poiquest 33041
	|poicurrency GR
	_Go to_ the rear of the wagon |goto Shadowmoon Valley D 42.10,61.30
	click Iron Horde Cargo Shipment##227134 |q 33041 |future |goto Shadowmoon Valley D 42.10,61.30
	|tip It's a metal-bound chest in the back of the Iron Horde wagon.
step
	|poiname Iron Horde Tribute
	|poilvl 90
	|poispot Shadowmoon Valley D 37.51,59.25
	|poitype treasure
	|poiquest 33567
	|poiitem 108903
	_Go up_ the path |goto Shadowmoon Valley D/0 38.9,58.4
	_Turn right_ at the top of the trail |goto Shadowmoon Valley D/0 38.2,60.6
	_Enter_ this hut |goto Shadowmoon Valley D/0 37.1,59.6
	_Go to_ the rear of the hut |goto Shadowmoon Valley D 37.51,59.25
	click Iron Horde Tribute##224755 |q 33567 |future |goto Shadowmoon Valley D 37.51,59.25
	|tip It's a large padlocked chest.
step
	|poiname Kaliri Egg
	|poilvl 90
	|poispot Shadowmoon Valley D 57.92,45.31
	|poitype treasure
	|poiquest 33568
	|poiitem 113271
	_Go to_ the Kaliri nest behind the tree |goto Shadowmoon Valley D 57.92,45.31
	click Kaliri Egg##232579 |q 33568 |future |goto Shadowmoon Valley D 57.92,45.31
	|tip It's a large white egg in the center of a nest.
step
	|poiname Mikkal's Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 58.88,21.93
	|poitype treasure
	|poiquest 35603
	|poiitem 113215
	_WARNING_: You will need to carefully avoid Alliance guards |only horde
	_Go to_ the top of the waterfall in Elodor |goto Shadowmoon Valley D/0 59.7,24.3
	_Cross_ the water and go to the top of the hill |goto Shadowmoon Valley D 58.88,21.93
	click Mikkal's Chest##232624 |q 35603 |future |goto Shadowmoon Valley D 58.88,21.93
	|tip It's a small brown chest located next to Painter Mikkal.
step
	|poiname Mushroom-Covered Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 52.88,24.86
	|poitype treasure
	|poiquest 37254
	|poicurrency GR
	_Go to_ the Umbrafen Lake |goto Shadowmoon Valley D/0 52.2,26.1
	_Swim under_ the mushrooms to the very bottom of the lake |goto Shadowmoon Valley D 52.88,24.86
	click Mushroom-Covered Chest##232494 |q 37254 |future |goto Shadowmoon Valley D 52.88,24.86
	|tip It's a large brown chest.
step
	|poiname Orc Skeleton
	|poilvl 90
	|poispot Shadowmoon Valley D 66.96,33.49
	|poitype treasure
	|poiquest 36507
	|poiitem 116875
	_Go to_ the Moonlit Shore |goto Shadowmoon Valley D 66.96,33.49
	click Orc Skeleton##235860 |q 36507 |future |goto Shadowmoon Valley D 66.96,33.49
	|tip It's a tiny half-buried chest next to the Draenei Children.
step
	|poiname Peaceful Offering 1
	|poilvl 90
	|poispot Shadowmoon Valley D 43.75,60.62
	|poitype treasure
	|poiquest 33611
	|poiitem 107650
	_Go to_ the Western Pillar |goto Shadowmoon Valley D 43.75,60.62
	click Peaceful Offering 1##???? |q 33611 |future |goto Shadowmoon Valley D 43.75,60.62
	|tip It's a small wicker chest at the base of the pillar.
step
	|poiname Peaceful Offering 2
	|poilvl 90
	|poispot Shadowmoon Valley D 45.22,60.49
	|poitype treasure
	|poiquest 33610
	|poiitem 107650
	_Go to_ the Eastern Pillar |goto Shadowmoon Valley D 45.22,60.49
	click Peaceful Offering 2##???? |q 33610 |future |goto Shadowmoon Valley D 45.22,60.49
	|tip It's a small wicker chest at the base of the pillar.
step
	|poiname Peaceful Offering 3
	|poilvl 90
	|poispot Shadowmoon Valley D 44.48,63.57
	|poitype treasure
	|poiquest 33384
	|poiitem 107650
	_Go to_ the Southern Pillar |goto Shadowmoon Valley D 44.48,63.57
	click Peaceful Offering 3##???? |q 33384 |future |goto Shadowmoon Valley D 44.48,63.57
	|tip It's a small wicker chest at the base of the pillar.
step
	|poiname Peaceful Offering 4
	|poilvl 90
	|poispot Shadowmoon Valley D 44.49,59.14
	|poitype treasure
	|poiquest 33612
	|poiitem 107650
	_Go to_ the Northern Pillar |goto Shadowmoon Valley D 44.49,59.14
	click Peaceful Offering 4##???? |q 33612 |future |goto Shadowmoon Valley D 44.49,59.14
	|tip It's a small wicker chest at the base of the pillar.
step
	|poiname Ronokk's Belongings --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 31.22,39.05
	|poitype treasure
	|poiquest 33886
	|poiitem 109081
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go right_ |goto Shadowmoon Valley D/0 32.7,39.2
	_Enter_ this room |goto Shadowmoon Valley D/0 31.8,40.1
	_Go to_ the right alcove on the far wall |goto Shadowmoon Valley D 31.22,39.05
	click Ronokk's Belongings##226861 |q 33886 |future |goto Shadowmoon Valley D 31.22,39.05
	|tip It's a small chest in the alcove.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Ronokk's Belongings --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 31.22,39.05
	|poitype treasure
	|poiquest 33886
	|poiitem 109081
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go right_ |goto Shadowmoon Valley D/0 32.7,39.2
	_Enter_ this room |goto Shadowmoon Valley D/0 31.8,40.1
	_Go to_ the right alcove on the far wall |goto Shadowmoon Valley D 31.22,39.05
	click Ronokk's Belongings##226861 |q 33886 |future |goto Shadowmoon Valley D 31.22,39.05
	|tip It's a small chest in the alcove.
	only Horde
step
	|poiname Rotting Basket
	|poilvl 90
	|poispot Shadowmoon Valley D/15 56.2,49.2
	|poitype treasure
	|poiquest 33572
	|poiitem 113373
	_Take the path_ through Bloodthorn Hill |goto Shadowmoon Valley D/0 25.8,32.6
	_Enter_ Bloodthorn Cave |goto Shadowmoon Valley D/15 73.8,31.9
	_Go through_ the side entrance |goto Shadowmoon Valley D/15 54.9,37.8
	_Drop down_ and turn to the left |goto Shadowmoon Valley D/15 56.2,49.3
	click Rotting Basket##224781 |q 33572 |future |goto Shadowmoon Valley D/15 56.2,49.3
	|tip It's a small wicker chest located in front of the pile of bones.
step
	|poiname Rovo's Dagger --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 36.68,44.55
	|poitype treasure
	|poiquest 33573
	|poiitem 113378
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ the room |goto Shadowmoon Valley D/0 36.5,43.4
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 36.68,44.55
	click Rovo's Dagger##232586 |q 33573 |future
	|tip It's a dagger leaning against a stone in the alcove.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Rovo's Dagger --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 36.68,44.55
	|poitype treasure
	|poiquest 33573
	|poiitem 113378
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ the room |goto Shadowmoon Valley D/0 36.5,43.4
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 36.68,44.55
	click Rovo's Dagger##232586 |q 33573 |future
	|tip It's a dagger leaning against a stone in the alcove.
	only Horde
step
	|poiname Scaly Rylak Egg
	|poilvl 90
	|poispot Shadowmoon Valley D 67.05,84.18
	|poitype treasure
	|poiquest 33565
	|poiitem 44722
	modelnpc 85568
	_Warning_: This treasure is protected by Avalanche, a level 100 rare elemental
	_Cross_ the water to the Island here |goto Shadowmoon Valley D/0 64.3,84.8
	_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
	_Enter_ the cave here |goto Shadowmoon Valley D/0 66.9,86.5
	_Go to_ the back-left of the cave |goto Shadowmoon Valley D 67.05,84.18
	click Scaly Rylak Egg##224753 |q 33565 |future |goto Shadowmoon Valley D 67.05,84.18
	|tip It's a stone-like egg in a nest.
step
	|poiname Shadowmoon Exile Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 45.82,24.58
	|poitype treasure
	|poiquest 33570
	|poiitem 113388
	_Enter_ the cave at the base of Exile's Rise |goto Shadowmoon Valley D/0 46.2,27.0
	_Swim to_ the rock inside the cave |goto Shadowmoon Valley D 45.82,24.58
	click Shadowmoon Exile Treasure##224770 |q 33570 |future |goto Shadowmoon Valley D 45.82,24.58
	|tip It's a brown chest half-covered with water next to the rock.
step
	|poiname Shadowmoon Sacrificial Dagger --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 29.99,45.36
	|poitype treasure
	|poiquest 35919
	|poiitem 113563
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 29.4,41.4
	_Continue_ to the stairs |goto Shadowmoon Valley D/0 30.6,44.4
	_Go up_ the stairs |goto Shadowmoon Valley D 29.99,45.36
	click Shadowmoon Sacrificial Dagger##224780 |q 35919 |future |goto Shadowmoon Valley D 29.99,45.36
	|tip It's a small dagger impaled in the skeleton on the ground.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Shadowmoon Sacrificial Dagger --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 29.99,45.36
	|poitype treasure
	|poiquest 35919
	|poiitem 113563
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Go up_ this path |goto Shadowmoon Valley D/0 29.4,41.4
	_Continue_ to the stairs |goto Shadowmoon Valley D/0 30.6,44.4
	_Go up_ the stairs |goto Shadowmoon Valley D 29.99,45.36
	click Shadowmoon Sacrificial Dagger##224780 |q 35919 |future |goto Shadowmoon Valley D 29.99,45.36
	|tip It's a small dagger impaled in the skeleton on the ground.
	only Horde
step
	|poiname Shadowmoon Treasure --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 28.23,39.24
	|poitype treasure
	|poiquest 33883
	|poicurrency GR
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Enter_ the hut |goto Shadowmoon Valley D/0 28.8,39.5
	_Go to_ the back room |goto Shadowmoon Valley D 28.23,39.24
	click Shadowmoon Treasure##233126 |q 33883 |future |goto Shadowmoon Valley D 28.23,39.24
	|tip It's a medium metal chest.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Shadowmoon Treasure --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 28.23,39.24
	|poitype treasure
	|poiquest 33883
	|poicurrency GR
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn right_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Continue along_ the path |goto Shadowmoon Valley D/0 32.3,38.9
	_Go up_ the hill |goto Shadowmoon Valley D/0 30.3,39.0
	_Enter_ the hut |goto Shadowmoon Valley D/0 28.8,39.5
	_Go to_ the back room |goto Shadowmoon Valley D 28.23,39.24
	click Shadowmoon Treasure##233126 |q 33883 |future |goto Shadowmoon Valley D 28.23,39.24
	|tip It's a medium metal chest.
	only Horde
step
	|poiname Stolen Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 27.05,02.48
	|poitype treasure
	|poiquest 35280
	|poicurrency GR
	_Cross_ the water |goto Shadowmoon Valley D/0 27.4,5.8
	_Enter_ the cave |goto Shadowmoon Valley D/0 27.7,4.3
	_Go to_ the back of the cave |goto Shadowmoon Valley D 27.05,02.48
	click Stolen Treasure##232067 |q 35280 |future |goto Shadowmoon Valley D 27.05,02.48
	|tip It's a large brown chest.
step
	|poiname Strange Spore
	|poilvl 90
	|poispot Shadowmoon Valley D 55.82,19.97
	|poitype treasure
	|poiquest 35600
	|poiitem 118104
	_WARNING_: You will need to carefully avoid Alliance guards |only horde
	_Go to_ the steps |goto Shadowmoon Valley D/0 60.0,26.6 < 30
	_Climb_ the three flights of stairs |goto Shadowmoon Valley D/0 62.0,26.2 < 30
	_Go up_ the next set of stairs |goto Shadowmoon Valley D/0 63.7,25.0 < 30
	_Follow_ the path to the top of Exarch's Rise |goto Shadowmoon Valley D/0 60.5,20.6 < 20
	Use this rock to _jump up_ |goto Shadowmoon Valley D/0 59.8,18.9 < 10
	_Run up_ the hill here |goto Shadowmoon Valley D/0 59.9,17.6 < 5
	_Continue up_ and onto the hill |goto Shadowmoon Valley D/0 59.3,17.9 < 20
	_Continue around_ to the small grove of trees |goto Shadowmoon Valley D/0 56.5,17.9 < 20
	_Jump onto_ the giant mushroom top |goto Shadowmoon Valley D 55.82,19.97
	click Strange Spore##232621 |q 35600 |future
	|tip It looks like a giant orange and brown spore.
step
	|poiname Sunken Fishing Boat
	|poilvl 90
	|poispot Shadowmoon Valley D 37.19,26.01
	|poitype treasure
	|poiquest 35677
	|poiitem 118414
	_Go to_ the bottom of the pond |goto Shadowmoon Valley D 37.19,26.01
	click Sunken Fishing boat##233101 |q 35677 |future |goto Shadowmoon Valley D 37.19,26.01
	|tip It looks like the wooden frame of a partial boat.
step
	|poiname Sunken Treasure
	|poilvl 90
	|poispot Shadowmoon Valley D 28.82,07.20
	|poitype treasure
	|poiquest 35279
	|poicurrency GR
	_Follow_ the side of the boat |goto Shadowmoon Valley D/0 27.3,8.1
	click Sunken Treasure##220832 |q 35279 |future |goto Shadowmoon Valley D 28.82,07.20
	|tip It's an iron-bound chest at the bottom of the water.
step
	|poiname Swamplighter Hive
	|poilvl 90
	|poispot Shadowmoon Valley D 55.29,74.87
	|poitype treasure
	|poiquest 35580
	|poiitem 117550
	_Go to_ the river |goto Shadowmoon Valley D/0 52.0,69.0
	_Continue_ following the river southeast |goto Shadowmoon Valley D/0 53.5,73.0
	_Go to_ the base of the tree |goto Shadowmoon Valley D 55.29,74.87
	click Swamplighter Hive##232592 |q 35580 |future |goto Shadowmoon Valley D 55.29,74.87
	|tip It's a yellow beehive located up in the tree. All of the wasps will attack you when you click it.
step
	|poiname Uzko's Knickknacks --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 35.85,40.87
	|poitype treasure
	|poiquest 33540
	|poiitem 113546
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 36.1,41.9
	_Go to_ the second alcove on left |goto Shadowmoon Valley D 35.85,40.87
	click Uzko's Knickknacks##232587 |q 33540 |future |goto Shadowmoon Valley D 35.85,40.87
	|tip It's a brown chest inside the alcove.
	only if havequest(35032) or completedq(35032)
	only Alliance
step
	|poiname Uzko's Knickknacks --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 35.85,40.87
	|poitype treasure
	|poiquest 33540
	|poiitem 113546
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Turn left_ at the bottom of the stairs |goto Shadowmoon Valley D/0 34.0,39.6
	_Proceed through_ the stone arch |goto Shadowmoon Valley D/0 34.9,42.3
	_Enter_ this room |goto Shadowmoon Valley D/0 36.1,41.9
	_Go to_ the second alcove on left |goto Shadowmoon Valley D 35.85,40.87
	click Uzko's Knickknacks##232587 |q 33540 |future |goto Shadowmoon Valley D 35.85,40.87
	|tip It's a brown chest inside the alcove.
	only Horde
step
	|poiname Veema's Herb Bag --For Alliance characters
	|poilvl 90
	|poispot Shadowmoon Valley D 34.21,43.53
	|poitype treasure
	|poiquest 33866
	|poiitem 109124
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go left_ |goto Shadowmoon Valley D/0 34.1,41.4
	_Enter_ this room |goto Shadowmoon Valley D/0 33.5,42.6
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 34.21,43.53
	click Veema's Herb Bag##232589 |q 33866 |future |goto Shadowmoon Valley D 34.21,43.53
	|tip It's a small brown satchel.
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Veema's Herb Bag --For Horde characters
	|poilvl 90
	|poispot Shadowmoon Valley D 34.21,43.53
	|poitype treasure
	|poiquest 33866
	|poiitem 109124
	_Enter_ Anguish Fortress here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.5,40.1
	_Go left_ |goto Shadowmoon Valley D/0 34.1,41.4
	_Enter_ this room |goto Shadowmoon Valley D/0 33.5,42.6
	_Go to_ the left alcove on the back wall |goto Shadowmoon Valley D 34.21,43.53
	click Veema's Herb Bag##232589 |q 33866 |future |goto Shadowmoon Valley D 34.21,43.53
	|tip It's a small brown satchel.
	only Horde
step
	|poiname Vindicator's Cache
	|poilvl 90
	|poispot Shadowmoon Valley D 51.14,79.12
	|poitype treasure
	|poiquest 33574
	|poiitem 113375
	_Go to_ the pond |goto Shadowmoon Valley D/0 50.4,78.9
	_Swim down_ to the bottom |goto Shadowmoon Valley D 51.14,79.12
	click Vindicator's Cache##224784 |q 33574 |future |goto Shadowmoon Valley D 51.14,79.12
	|tip It's a small half-buried chest under the water.
step
	|poiname Waterlogged Chest
	|poilvl 90
	|poispot Shadowmoon Valley D 39.20,83.91
	|poitype treasure
	|poiquest 33566
	|poiitem 113372
	|poicurrency GL
	_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
	_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
	_Go to_ the far shore |goto Shadowmoon Valley D 39.20,83.91
	click Waterlogged Chest##224754 |q 33566 |future |goto Shadowmoon Valley D 39.20,83.91
	|tip It's a medium metal chest on the beach.
step
	|poiname Amaukwa
	|poilvl 91
	|poispot Shadowmoon Valley D 37.20,36.40
	|poitype rare
	|poiquest 33061
	|poiitem 109060
	|poicurrency GR
	map Shadowmoon Valley D/0
	path follow smart; loop on; ants curved; dist 20
	path	31.7,32.7	34.7,34.6	37.5,36.7
	path	39.5,36.8	41.0,34.9	41.7,31.4
	path	40.0,29.8	36.8,29.6	34.8,28.6
	path	32.8,28.1	30.3,29.3	29.1,31.0
	path	30.9,32.1
	_Follow_ the path, searching for Amaukwa
	kill Amaukwa##77140 |q 33061 |future
	|tip Amaukwa is a chimera that flies in a set path around a small portion of Shadowmoon Valley.
step
	|poiname Aqualir
	|poilvl 101
	|poispot Shadowmoon Valley D 50.80,78.80
	|poitype rare
	|poiquest 37356
	|poiitem 119387
	|poiitem 120945
	|poicurrency AC
	kill Sargerei Binder##86364
	|tip Defeat the Sargerei Binders that are channeling to make Aqualir attackable.
	kill Aqualir##86213 |q 37356 |future |goto Shadowmoon Valley D 50.80,78.80
	|tip Aqualir can be difficult for players under 630 item level.
step
	|poiname Avalanche
	|poilvl 100
	|poispot Shadowmoon Valley D 67.8,84.9
	|poitype rare
	|poiquest 37410
	|poiitem 119400
	|poiitem 120945
	|poicurrency AC
	_Cross the water_ to the island here |goto Shadowmoon Valley D/0 64.3,84.8
	_Follow_ this path around |goto Shadowmoon Valley D/0 66.1,84.4
	_Enter_ the cave |goto Shadowmoon Valley D/0 66.9,86.5
	kill Avalanche##85568 |q 37410 |future |goto Shadowmoon Valley D 67.8,84.9
	|tip Avalanche is a level 100 rare mob with around 950,000 health.
step
	|poiname Ba'ruun
	|poilvl 91
	|poispot Shadowmoon Valley D 52.80,16.80
	|poitype rare
	|poiquest 35731
	|poiitem 113540
	|poicurrency GR
	_Go to_ Deadwalker Pass |goto Shadowmoon Valley D/0 51.1,24.2
	_Follow_ the shore |goto Shadowmoon Valley D/0 52.2,18.0
	_Swim across_ to the island |goto Shadowmoon Valley D 52.80,16.80
	kill Ba'ruun##82326 |q 35731 |future |goto Shadowmoon Valley D 52.80,16.80
	|tip Ba'ruun is a giant Bog Lord standing at the water's edge.
step
	|poiname Brambleking Fili
	|poilvl 100
	|poispot Shadowmoon Valley D 45.0,77.0
	|poitype rare
	|poiquest 33383
	|poiitem 117551
	|poiitem 120945
	|poicurrency AC
	kill Brambleking Fili##81639 |q 33383 |future |goto Shadowmoon Valley D/0 45.0,77.0
step
	|poiname Dark Emanation
	|poilvl 90
	|poispot Shadowmoon Valley D 48.60,43.60
	|poitype rare
	|poiquest 33064
	|poiitem 109075
	|poicurrency GR
	_Enter_ the cave |goto Shadowmoon Valley D/0 46.6,45.4
	_Go down_ the left passage |goto Shadowmoon Valley D/0 48.7,44.8
	_Enter_ the small cavern |goto Shadowmoon Valley D 48.60,43.60
	kill Shadowmoon Voidwhisperer##77086
	|tip Kill the Voidwhisperers to release the Dark Emanation.
	kill Dark Emanation##77085 |q 33064 |future |goto Shadowmoon Valley D 48.60,43.60
step
	|poiname Darkmaster Go'vid
	|poilvl 90
	|poispot Shadowmoon Valley D 38.7,83.6
	|poitype rare
	|poiquest 35448
	|poiitem 113548
	|poicurrency GR
	_Travel to_ the Forgotten Shore |goto Shadowmoon Valley D/0 40.5,75.5
	_Go to_ the Isle of Shadows |goto Shadowmoon Valley D/0 39.9,79.8
	_Go to_ the far shore |goto Shadowmoon Valley D/0 38.7,83.6
	kill Darkmaster Go'vid##82268 |q 35448 |future |goto Shadowmoon Valley D/0 38.7,83.6
step
	|poiname Darktalon
	|poilvl 91
	|poispot Shadowmoon Valley D 49.60,42.00
	|poitype rare
	|poiquest 35555
	|poiitem 113541
	|poicurrency GR
	_Go to_ the hill |goto Shadowmoon Valley D/0 47.6,43.8
	_Continue up_ the hill |goto Shadowmoon Valley D/0 49.6,41.8
	kill Darktalon##82411 |q 35555 |future |goto Shadowmoon Valley D/0 49.6,41.8
	|tip The bird is the word!
step
	|poiname Demidos
	|poilvl 103
	|poispot Shadowmoon Valley D 46.00,71.60
	|poitype rare
	|poiquest 37351
	|poiitem 119377
	|poiitem 119431
	|poiitem 120945
	|poicurrency AC
	_Jump up_ the rocks here |goto Shadowmoon Valley D/0 47.2,73.6
	_Go to_ the area with blue-purple mist on the ground |goto Shadowmoon Valley D 46.00,71.60
	kill Demidos##84911 |q 37351 |future |goto Shadowmoon Valley D 46.00,71.60
	|tip Demidos is extremely difficult to solo. A 3+ person group is recommended.
step
	|poiname Enavra
	|poilvl 91
	|poispot Shadowmoon Valley D 67.80,63.80
	|poitype rare
	|poiquest 35688
	|poiitem 113556
	|poicurrency GR
	_Go to_ the small island |goto Shadowmoon Valley D/0 67.5,62.7
	_Investigate the corpse_ on the ground |goto Shadowmoon Valley D/0 67.9,63.9
	click Enavra##82742
	kill Enavra##82676 |q 35688 |future |goto Shadowmoon Valley D/0 67.9,63.9
step
	|poiname Faebright
	|poilvl 91
	|poispot Shadowmoon Valley D 61.60,61.80
	|poitype rare
	|poiquest 35725
	|poiitem 113557
	|poicurrency GR
	_Follow_ the small trail |goto Shadowmoon Valley D/0 58.3,60.6
	_Go up_ the hill through the small pass |goto Shadowmoon Valley D/0 60.4,62.5
	_Approach_ Faebright |goto Shadowmoon Valley D 61.60,61.80
	kill Faebright##82207 |q 35725 |future |goto Shadowmoon Valley D 61.60,61.80
step
	|poiname Hypnocroak
	|poilvl 91
	|poispot Shadowmoon Valley D 37.40,48.80
	|poitype rare
	|poiquest 35558
	|poiitem 113631
	|poicurrency GR
	_Climb the rocks_ behind the waterfall up to the cave entrance |goto Shadowmoon Valley D/0 38.7,49.0
	|tip Notice how the rocks make steps leading up the waterfall. You will need to be mounted for some of the longer jumps.
	kill Hypnocroak##79524 |q 35558 |future |goto Shadowmoon Valley D 37.40,48.80
step
	|poiname Insha'tar
	|poilvl 91
	|poispot Shadowmoon Valley D 57.40,48.40
	|poitype rare
	|poiquest 35909
	|poiitem 113571
	|poicurrency GR
	_Go to_ the rocky clearing |goto Shadowmoon Valley D 57.40,48.40
	kill Insha'tar##83553 |q 35909 |future |goto Shadowmoon Valley D 57.40,48.40
step
	|poiname Killmaw
	|poilvl 91
	|poispot Shadowmoon Valley D 40.80,44.40
	|poitype rare
	|poiquest 33043
	|poiitem 109078
	|poicurrency GR
	kill Killmaw##74206 |q 33043 |future |goto Shadowmoon Valley D/0 40.8,44.6
	|tip Killmaw is located between the big rocks.
step
	|poiname Ku'targ the Voidseer
	|poilvl 91
	|poispot Shadowmoon Valley D 32.20,35.00
	|poitype rare
	|poiquest 33039
	|poiitem 109061
	|poicurrency GR
	_Go through_ the gates |goto Shadowmoon Valley D/0 32.7,34.3
	kill Ku'targ the Voidseer##72362 |q 33039 |future |goto Shadowmoon Valley D/0 32.5,35.1
	|tip He is located in the first hut on the left.
step
	|poiname Lady Temptessa
	|poilvl 101
	|poispot Shadowmoon Valley D 48.00,77.60
	|poitype rare
	|poiquest 37355
	|poiitem 119360
	|poiitem 120945
	|poicurrency AC
	kill Lady Temptessa##85121 |q 37355 |future |goto Shadowmoon Valley D 48.00,77.60
	|tip This Rare will only spawn if the Daily Apexus Quest is available.
step
	|poiname Leaf-Reader Kurri
	|poilvl 91
	|poispot Shadowmoon Valley D 37.60,14.60
	|poitype rare
	|poiquest 33055
	|poiitem 108907
	|poicurrency GR
	_Go down_ to the shore |goto Shadowmoon Valley D/0 38.8,17.0
	_Cross_ the water to the small island |goto Shadowmoon Valley D/0 37.9,16.1
	kill Leaf-Reader Kurri##72537 |q 33055 |future |goto Shadowmoon Valley D 37.60,14.60
step
	|poiname Mad King Sporeon
	|poilvl 91
	|poispot Shadowmoon Valley D 45.00,20.90
	|poitype rare
	|poiquest 35906
	|poiitem 113561
	|poicurrency GR
	_Follow_ the path |goto Shadowmoon Valley D/0 44.4,22.9
	_Enter_ the cave |goto Shadowmoon Valley D/0 44.5,21.1
	kill Mad King Sporeon##77310 |q 35906 |future |goto Shadowmoon Valley D 45.00,20.90
step
	|poiname Malgosh Shadowkeeper
	|poilvl 100
	|poispot Shadowmoon Valley D 29.60,50.80
	|poitype rare
	|poiquest 37357
	|poiitem 119369
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Pillars of Fate |goto Spires of Arak/0 70.6,27.2
	_Continue up_ the ramp |goto Spires of Arak/0 74.3,30.1
	_Enter_ the cave |goto Spires of Arak/0 72.1,27.0
	kill Malgosh Shadowkeeper##85451 |q 37357 |future |goto Shadowmoon Valley D 29.60,50.80
step
	|poiname Master Sergeant Milgra
	|poilvl 101
	|poispot Shadowmoon Valley D 51.80,79.20
	|poitype rare
	|poiquest 37353
	|poiitem 119368
	|poiitem 120945
	|poicurrency AC
	|tip Milgra patrols the small ridge, crossing back and forth over the bridge.
	kill Master Sergeant Milgra##85001 |q 37353 |future |goto Shadowmoon Valley D 51.80,79.20
step
	|poiname Morva Soultwister
	|poilvl 90
	|poispot Shadowmoon Valley D 38.60,70.20
	|poitype rare
	|poiquest 35523
	|poiitem 113559
	|poicurrency GR
	_Go to_ the Black Altar of Xan'tish |goto Shadowmoon Valley D/0 38.5,71.6
	kill Morva Soultwister##82362 |q 35523 |future |goto Shadowmoon Valley D/0 38.6,70.5
step
	|poiname Mother Om'ra
	|poilvl 91
	|poispot Shadowmoon Valley D 44.00,57.60
	|poitype rare
	|poiquest 33642
	|poiitem 113527
	|poiitem 119449
	|poicurrency GR
	kill Shadowmoon Darkcaster##78993
	|tip Killing the Darkcasters will release Mother Om'ra.
	kill Mother Om'ra##88831 |q 33642 |future |goto Shadowmoon Valley D/0 44.0,57.7
step
	|poiname Nagidna
	|poilvl 100
	|poispot Shadowmoon Valley D/0 60.8,89.9
	|poitype rare
	|poiquest 37409
	|poiitem 119364
	|poiitem 120945
	|poicurrency AC
	_Climb_ the hill |goto Shadowmoon Valley D/0 59.1,88.1
	_Enter_ the cave |goto Shadowmoon Valley D/0 59.2,89.8
	kill Nagidna##85555 |q 37409 |future |goto Shadowmoon Valley D/0 60.8,89.9
	|tip Nagidna is in the back of the cave.
step
	|poiname Quartermaster Hershak
	|poilvl 101
	|poispot Shadowmoon Valley D 50.20,72.40
	|poitype rare
	|poiquest 37352
	|poiitem 119382
	|poiitem 120945
	|poicurrency AC
	_Follow_ the road |goto Shadowmoon Valley D/0 48.9,73.3
	kill Quartermaster Hershak##84925 |q 37352 |future |goto Shadowmoon Valley D 50.20,72.40
	|tip He is inside the building.
step
	|poiname Rai'vosh
	|poilvl 91
	|poispot Shadowmoon Valley D 48.60,22.60
	|poitype rare
	|poiquest 35553
	|poiitem 113542
	|poicurrency GR
	_Climb_ the hill |goto Shadowmoon Valley D/0 47.7,23.9
	_Cross_ the field |goto Shadowmoon Valley D/0 47.3,23.2
	kill Rai'vosh##82374 |q 35553 |future |goto Shadowmoon Valley D/0 48.8,22.7
step
	|poiname Rockhoof
	|poilvl 91
	|poispot Shadowmoon Valley D 53.00,50.60
	|poitype rare
	|poiquest 34068
	|poiitem 109077
	|poicurrency GR
	_Go to_ the Verdant Mire |goto Shadowmoon Valley D/0 54.1,49.0
	kill Rockhoof##72606 |q 34068 |future |goto Shadowmoon Valley D 53.00,50.60
step
	|poiname Shadowspeaker Niir
	|poilvl 101
	|poispot Shadowmoon Valley D 48.20,81.00
	|poitype rare
	|poiquest 37354
	|poiitem 119396
	|poiitem 120945
	|poicurrency AC
	|tip Clear the area around Niir before engaging him, as you will have to keep moving him out of toxic clouds.
	kill Shadowspeaker Niir##85029 |q 37354 |future |goto Shadowmoon Valley D 48.20,81.00
step
	|poiname Shinri
	|poilvl 92
	|poispot Shadowmoon Valley D 61.00,55.20
	|poitype rare
	|poiquest 35732
	|poiitem 113543
	|poicurrency GR
	|tip Shinri wanders around the area. You may have to search a bit.
	kill Shinri##82415 |q 35732 |future |goto Shadowmoon Valley D 61.00,55.20
step
	|poiname Slivermaw
	|poilvl 100
	|poispot Shadowmoon Valley D 61.7,89.0
	|poitype rare
	|poiquest 37411
	|poiitem 119411
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Shadowmoon Valley D/0 60.9,87.0
	kill Slivermaw##85837 |q 37411 |future |goto Shadowmoon Valley D 61.7,89.0
	|tip Slivermaw is located in the back of the cave.
step
	|poiname Sneevel
	|poilvl 92
	|poispot Shadowmoon Valley D 27.60,43.60
	|poitype rare
	|poiquest 36880
	|poiitem 118734
	|poicurrency GR
	_Follow the trail_ along the wall |goto Shadowmoon Valley D/0 28.1,38.5
	kill Sneevel##86689 |q 36880 |future |goto Shadowmoon Valley D/0 27.5,43.7
	|tip Sneevel is inside the hut.
step
	|poiname Veloss
	|poilvl 91
	|poispot Shadowmoon Valley D 21.60,21.00
	|poitype rare
	|poiquest 33640
	|poiitem 108906
	|poicurrency GR
	_Go up_ the hill here |goto Shadowmoon Valley D/0 23.3,18.7
	_Drop down_ here |goto Shadowmoon Valley D/0 22.2,19.4
	_Swim to_ the small island |goto Shadowmoon Valley D 21.60,21.00
	kill Veloss##75482 |q 33640 |future |goto Shadowmoon Valley D 21.60,21.00
step
	|poiname Venomshade
	|poilvl 91
	|poispot Shadowmoon Valley D 54.60,70.60
	|poitype rare
	|poiquest 33643
	|poiitem 108957
	|poicurrency GR
	_Follow_ the path into the Blademoon Bloom |goto Shadowmoon Valley D/0 53.0,67.7
	kill Venomshade##75492 |q 33643 |future |goto Shadowmoon Valley D/0 54.8,70.2
step
	|poiname Voidseer Kalurg --For Alliance characters
	|poilvl 91
	|poispot Shadowmoon Valley D 32.60,41.40
	|poitype rare
	|poiquest 35847
	|poiitem 109074
	|poicurrency GR
	_Enter Anguish Fortress_ here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.6,40.1
	kill Shadowmoon Channeller##78135
	|tip Kill the Channelers in each corner to release Kalurg.
	kill Voidseer Kalurg##83385 |q 35847 |future |goto Shadowmoon Valley D 32.60,41.40
	only Alliance
	only if havequest(35032) or completedq(35032)
step
	|poiname Voidseer Kalurg --For Horde characters
	|poilvl 91
	|poispot Shadowmoon Valley D 32.60,41.40
	|poitype rare
	|poiquest 35847
	|poiitem 109074
	|poicurrency GR
	_Enter Anguish Fortress_ here |goto Shadowmoon Valley D/0 34.9,38.1
	_Jump down_ here |goto Shadowmoon Valley D/0 33.6,40.1
	kill Shadowmoon Channeller##78135
	|tip Kill the Channellers in each corner to release Kalurg.
	kill Voidseer Kalurg##83385 |q 35847 |future |goto Shadowmoon Valley D 32.60,41.40
	only Horde
step
	|poiname Yggdrel
	|poilvl 91
	|poispot Shadowmoon Valley D 48.80,66.40
	|poitype rare
	|poiquest 33389
	|poiitem 113570
	|poicurrency GR
	kill Yggdrel##75435 |q 33389 |future |goto Shadowmoon Valley D 48.80,66.40
	|tip When Yggdrel casts Entangling Vine kill it as fast as possible, or it will deal massive damage every 2 seconds until you are dead.
--//Frostfire Ridge
step
	|poiname Arena Master's War Horn
	|poilvl 90
	|poispot Frostfire Ridge 23.17,24.95
	|poitype treasure
	|poiquest 33916
	|poiitem 108735
	_Enter_ the building here |goto Frostfire Ridge/0 23.3,24.1
	click Arena Master's War Horn##226955 |q 33916 |future |goto Frostfire Ridge 23.17,24.95
	|tip It's on the seat of the throne.
step
	|poiname Spectator's Chest
	|poilvl 90
	|poispot Frostfire Ridge 24.24,27.12
	|poitype treasure
	|poiquest 33501
	|poiitem 117442
	|poiitem 117439
	|poicurrency GL
	_Enter the tower_ here |goto Frostfire Ridge/0 24.5,29.4
	_Go up_ the ramp to the top of the tower |goto Frostfire Ridge/0 24.5,28.3
	_Mount up_ and _Jump down_ to the stone with the spectator's chair on it |goto Frostfire Ridge 24.24,27.12
	click Spectator's Chest##224613 |q 33501 |future
step
	|poiname Borrok the Devourer
	|poilvl 90
	|poispot Frostfire Ridge 61.90,42.54
	|poitype treasure
	|poiquest 33511
	|poiitem 112110
	|poicurrency GR
	kill Grimfrost Drudge##75010
	|tip Kill the Drudges and click them to pick them up. Walk them in front of Borrok to feed him until he is satisfied and spits out the boulder.
	click Devourer's Gutstone##224686 |q 33511 |future |goto Frostfire Ridge 61.90,42.54
step
	|poiname Burning Pearl
	|poilvl 90
	|poispot Frostfire Ridge 42.16,19.30
	|poitype treasure
	|poiquest 34520
	|poiitem 120341
	|poicurrency GL
	_Go to_ the lava |goto Frostfire Ridge/0 42.8,19.3
	_Move quickly_ and jump over the lava to the treasure |goto Frostfire Ridge 42.16,19.30
	click Burning Pearl##230252 |q 34520 |future |goto Frostfire Ridge 42.16,19.30
step
	|poiname Clumsy Cragmaul Brute
	|poilvl 90
	|poispot Frostfire Ridge 50.16,18.70
	|poitype treasure
	|poiquest 33531
	|poiitem 112096
	_Follow_ the narrow path to the Clumsy Brute corpse |goto Frostfire Ridge/0 50.8,20.0
	click Clumsy Cragmaul Brute##75120 |q 33531 |future |goto Frostfire Ridge 50.16,18.70
step
	|poiname Crag-Leaper's Cache
	|poilvl 90
	|poispot Frostfire Ridge 42.66,31.75
	|poitype treasure
	|poiquest 33940
	|poiitem 112187
	_Go to_ this spot |goto Frostfire Ridge/0 43.0,31.2
	Use the spears stuck in the stone as steps to _climb up_ |goto Frostfire Ridge 42.66,31.75
	click Crag-Leaper's Cache##226983 |q 33940 |future |goto Frostfire Ridge 42.66,31.75
step
	|poiname Envoy's Satchel
	|poilvl 90
	|poispot Frostfire Ridge 40.90,20.10
	|poitype treasure
	|poiquest 34473
	|poiitem 110536
	click Envoy's Satchel##229328 |q 34473 |future |goto Frostfire Ridge 40.90,20.10
step
	|poiname Forgotten Supplies
	|poilvl 90
	|poispot Frostfire Ridge 43.66,55.62
	|poitype treasure
	|poiquest 34841
	|poicurrency GR
	_Go up_ the hill |goto Frostfire Ridge/0 44.2,58.7
	_Go up_ the ramp into the _small tower_ |goto Frostfire Ridge 43.66,55.62
	click Forgotten Supplies##230909 |q 34841 |future |goto Frostfire Ridge 43.66,55.62
	|tip It looks like a rolled up blanket.
step
	|poiname Frozen Frostwolf Axe
	|poilvl 90
	|poispot Frostfire Ridge 24.18,48.60
	|poitype treasure
	|poiquest 34507
	|poiitem 110689
	_Enter_ the cave here |goto Frostfire Ridge/0 25.3,51.4
	click Frozen Frostwolf Axe##229640 |q 34507 |future |goto Frostfire Ridge 24.18,48.60
	|tip It's in the back left portion of the cave, clutched by an orc frozen in ice.
step
	|poiname Frozen Orc Skeleton
	|poilvl 90
	|poispot Frostfire Ridge 57.17,52.16
	|poitype treasure
	|poiquest 34476
	|poiitem 111554
	kill Frozen Fury##78631+
	|tip Kill the Frozen Fury mobs around the block of ice to reveal the skeleton.
	click Frozen Orc Skeleton##229367 |q 34476 |future |goto Frostfire Ridge 57.17,52.16
step
	|poiname Gnawed Bone
	|poilvl 90
	|poispot Frostfire Ridge 25.52,20.50
	|poitype treasure
	|poiquest 34648
	|poiitem 111415
	click Gnawed Bone##230425 |q 34648 |future |goto Frostfire Ridge 25.52,20.50
	|tip It's a very small bone sticking out of the side.
step
	|poiname Goren Leftovers
	|poilvl 90
	|poispot Frostfire Ridge 66.71,26.40
	|poitype treasure
	|poiquest 33948
	|poiitem 111543
	_Enter_ Magnarok |goto Frostfire Ridge/0 68.0,32.4
	_Go to_ the canyon |goto Frostfire Ridge/0 69.7,23.1
	_Start up_ the path |goto Frostfire Ridge/0 68.7,23.7
	_Turn left_ when you go through the arch |goto Frostfire Ridge/0 65.8,23.2
	_Continue up_ the path and enter the cave here |goto Frostfire Ridge/0 67.0,25.1
	click Goren Leftovers##226996 |q 33948 |future |goto Frostfire Ridge 66.71,26.40
	|tip It's in the back left section of the cave.
step
	|poiname Grimfrost Treasure
	|poilvl 90
	|poispot Frostfire Ridge 68.12,45.86
	|poitype treasure
	|poiquest 33947
	|poicurrency GR
	_Enter_ the building |goto Frostfire Ridge/0 67.9,46.0
	click Grimfrost Treasure##226994 |q 33947 |future |goto Frostfire Ridge 68.1,45.9
	|tip It's at the top of the tower.
step
	|poiname Iron Horde Munitions
	|poilvl 90
	|poispot Frostfire Ridge 56.72,71.86
	|poitype treasure
	|poiquest 36863
	|poicurrency GR
	click Iron Horde Munitions##236693 |q 36863 |future |goto Frostfire Ridge 56.72,71.86
	|tip It's a rectangular box on the ground between a siege cannon and ammunition.
step
	|poiname Iron Horde Supplies
	|poilvl 90
	|poispot Frostfire Ridge 68.90,69.10
	|poitype treasure
	|poiquest 33017
	|poicurrency GR
	click Iron Horde Supplies##224633 |q 33017 |future |goto Frostfire Ridge 68.90,69.10
	|tip The supplies are in the back of the wagon.
step
	|poiname Lagoon Pool
	|poilvl 90
	|poispot Frostfire Ridge 21.89,09.63
	|poitype treasure
	|poiquest 33926
	|poiitem 108739
	_Go through_ the narrow pass |goto Frostfire Ridge/0 23.0,9.3
	_Fish_ from the Lagoon Pool |cast Fishing##131474
	Fish up the _Giant Draenor Clam_ |q 33926 |future |goto Frostfire Ridge 21.89,09.63
	|tip Try zooming your camera in if you have issues with clicking your bobber.
	use Giant Draenor Clam##108738 |only if itemcount(108738) > 0
	use Pretty Draenor Pearl##108739 |only if itemcount(108739) > 0
step
	|poiname Lucky Coin
	|poilvl 90
	|poispot Frostfire Ridge 19.21,12.02
	|poitype treasure
	|poiquest 34642
	|poiitem 111408
	_Go through_ the narrow pass |goto Frostfire Ridge 20.0,12.9 < 10
	click Lucky Coin##230402 |q 34642 |future |goto Frostfire Ridge 19.21,12.02
	|tip A tiny coin is laying on the ground just past the well.
step
	|poiname Obsidian Petroglyph
	|poilvl 90
	|poispot Frostfire Ridge 38.30,37.82
	|poitype treasure
	|poiquest 33502
	|poiitem 112087
	_Enter_ the canyon |goto Frostfire Ridge/0 39.1,41.2 < 10
	_Follow_ the ramp up |goto Frostfire Ridge/0 39.1,38.2 < 10
	click Obsidian Petroglyph##224616 |q 33502 |future |goto Frostfire Ridge 38.30,37.82
step
	|poiname Pale Fishmonger
	|poilvl 92
	|poispot Frostfire Ridge 28.29,66.63
	|poitype rare
	|poiquest 34470
	|poiitem 111666
	|poiitem 109142
	|poicurrency GR
	_Follow_ the road down |goto Frostfire Ridge/0 26.0,59.7
	_Cross_ the water |goto Frostfire Ridge/0 27.5,63.8
	_Enter_ the cave |goto Frostfire Ridge/0 27.8,65.9
	kill Pale Fishmonger##78606 |q 34470 |future |goto Frostfire Ridge 28.29,66.63
step
	|poiname Pale Loot Sack
	|poilvl 90
	|poispot Frostfire Ridge 21.68,50.76
	|poitype treasure
	|poiquest 34931
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 19.5,50.6
	|tip Be careful, there are stealthed mobs throughout the cave.
	_Continue around_ to the right and to the back of the cave |goto Frostfire Ridge/0 20.7,49.0
	_Go up_ the ramp |goto Frostfire Ridge/0 21.1,50.4
	click Pale Loot Sack##230611 |q 34931 |future |goto Frostfire Ridge 21.68,50.76
	|tip The sack is at the end of the spine.
step
	|poiname Raided Loot
	|poilvl 90
	|poispot Frostfire Ridge 37.26,59.14
	|poitype treasure
	|poiquest 34967
	|poicurrency GR
	_Enter_ the tower |goto Frostfire Ridge/0 37.5,59.8 < 10
	_Follow the ramp_ to the top of the tower | goto Frostfire Ridge 37.1,59.9 < 10
	click Raided Loot##231103 |q 34967 |future |goto Frostfire Ridge 37.2,59.2
	|tip It's up the ramp at the top of the tower.
step
	|poiname Sealed Jug
	|poilvl 90
	|poispot Frostfire Ridge 09.83,45.33
	|poitype treasure
	|poiquest 34641
	|poiitem 111407
	_Go down_ the path along the water's edge |goto Frostfire Ridge/0 10.8,48.5
	click Sealed Jug##230401 |q 34641 |future |goto Frostfire Ridge 09.83,45.33
step
	|poiname Slave's Stash
	|poilvl 90
	|poispot Frostfire Ridge 27.65,42.80
	|poitype treasure
	|poiquest 33500
	|poiitem 43696
	_Jump onto_ the small building here |goto Frostfire Ridge/0 27.4,42.4
	_Walk across_ the small wood plank and jump onto the far small building |goto Frostfire Ridge 27.65,42.80
	click Slave's Stash##224392 |q 33500 |future |goto Frostfire Ridge 27.65,42.80
	|tip The stash is on the corner of the awning.
step
	|poiname Snow-Covered Strongbox
	|poilvl 90
	|poispot Frostfire Ridge 23.97,12.91
	|poitype treasure
	|poiquest 34647
	|poicurrency GL --25
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 23.4,12.0
	click Snow-Covered Strongbox##230424 |q 34647 |future |goto Frostfire Ridge 23.97,12.91
	|tip It's in the left side of the cave, half buried in a snow mound.
step
	|poiname Supply Dump
	|poilvl 90
	|poispot Frostfire Ridge 16.12,49.72
	|poitype treasure
	|poiquest 33942
	|poicurrency GR
	_Climb_ on this rock and use it to jump to the next one |goto Frostfire Ridge/0 15.2,50.7
	click Supply Dump##226990 |q 33942 |future |goto Frostfire Ridge 16.12,49.72
step
	|poiname Survivalist's Cache
	|poilvl 90
	|poispot Frostfire Ridge 64.72,25.73
	|poitype treasure
	|poiquest 33946
	|poicurrency GR
	_Go up_ the hill next to the cave entrance |goto Frostfire Ridge/0 64.1,31.2
	_Go to_ this spot |goto Frostfire Ridge/0 65.0,31.3
	_Follow_ the narrow path higher up the mountain |goto Frostfire Ridge/0 64.3,28.7
	_Continue around_ the rocks |goto Frostfire Ridge/0 64.4,26.5
	_Drop down_ and collect the treasure |goto Frostfire Ridge 64.72,25.73
	click Survivalist's Cache##226993 |q 33946 |future |goto Frostfire Ridge 64.72,25.73
	|tip It's a small chest surrounded by loose rocks.
step
	|poiname Thunderlord Cache
	|poilvl 90
	|poispot Frostfire Ridge 34.19,23.48
	|poitype treasure
	|poiquest 32803
	|poiitem 107658
	_Jump onto_ the rocks |goto Frostfire Ridge/0 35.4,24.3
	_Jump to_ the higher ridge on the rocks |goto Frostfire Ridge/0 35.1,24.0
	_Cross_ the rock "bridge" and proceed to the treasure |goto Frostfire Ridge 34.19,23.48
	click Thunderlord Cache##220641 |q 32803 |future |goto Frostfire Ridge 34.19,23.48
step
	|poiname Wiggling Egg
	|poilvl 90
	|poispot Frostfire Ridge 64.40,65.86
	|poitype treasure
	|poiquest 33505
	|poiitem 112107
	_Go up_ the snowy hill, starting here |goto Frostfire Ridge/0 65.9,62.8
	_Go to_ the peak between these two bones |goto Frostfire Ridge/0 65.0,65.7
	_Jump down_ onto the snow-covered roof |goto Frostfire Ridge/0 64.5,65.6
	click Wiggling Egg##224623 |q 33505 |future |goto Frostfire Ridge 64.40,65.86
	|tip Jump down to the floor from the roof. It's inside of the building.
step
	|poiname Young Orc Traveler
	|poilvl 90
	|poispot Frostfire Ridge 54.84,35.45
	|poitype treasure
	|poiquest 33525
	|poiitem 112206
	_Please Note_: The Snow Hare's Foot aquired from the Orc Traveler is only half of the treasure. Be sure not to destroy it
	click Young Orc Traveler##75072 |goto Frostfire Ridge 54.84,35.45
	Select: "_Take the scroll_" |only if itemcount(107270) < 1 and itemcount(107273) < 1
	use Bound Traveler's Scroll##107270 |only if itemcount(107270) > 0
	collect 1 Snow Hare's Foot##107273 |only if not completedq(33525)
	Assemble the treasure |q 33525 |future |goto Frostfire Ridge 54.84,35.45 |use Frostwolf First-Fang##107272 |only if itemcount(107272) > 0 and itemcount(107273) > 0
step
	|poiname Young Orc Woman
	|poilvl 90
	|poispot Frostfire Ridge 63.40,14.70
	|poitype treasure
	|poiquest 33525
	|poiitem 112206
	_Please Note_: The Frostwolf First-Fang aquired from the Young Orc Woman is only half of the treasure. Be sure not to destroy it
	_Follow_ the path up the hill |goto Frostfire Ridge/0 63.3,16.0
	click Young Orc Woman##75081 |goto Frostfire Ridge 63.40,14.70
	Select: "_Take the letter_" |only if itemcount(107271) < 1 and itemcount(107272) < 1
	use Frozen Envelope##107271 |only if itemcount(107271) > 0
	collect 1 Frostwolf First-Fang##107272 |only if not completedq(33525)
	Assemble the treasure |q 33525 |future |goto Frostfire Ridge 63.40,14.70 |use Snow Hare's Foot##107273 |only if itemcount(107272) > 0 and itemcount(107273) > 0
step
	|poiname Cragmaul Cache
	|poilvl 90
	|poispot Frostfire Ridge 39.66,17.18
	|poitype treasure
	|poiquest 33532
	|poiitem 120945
	|poicurrency AC
	_Enter_ this building |goto Frostfire Ridge/0 40.0,18.1
	_Go to_ the Cragmaul Cache underneath the ramp |goto Frostfire Ridge 39.66,17.18
	click Cragmaul Cache##224713 |q 33532 |future |goto Frostfire Ridge 39.66,17.18
step
	|poiname Grizzled Frostwolf Veteran
	|poiaccess Completionist
	|poilvl 90
	|poispot Frostfire Ridge 45.4,50.8
	|poitype treasure
	|poiquest 33011
	|poiitem 106899
	|poicurrency GR
	_Go up_ the hill |goto Frostfire Ridge/0 47.2,52.4
	_Turn right_ at the top |goto Frostfire Ridge/0 46.2,51.9
	_Turn left_ and go between the stones |goto Frostfire Ridge 45.36,50.34
	talk Grizzled Frostwolf Veteran##74585 |only Horde
	Tell him: "_Stand and fight! Victory or death!_" |only Horde
	To kill this Rare Elite, a Horde player must start this event
	|tip You can have a friend who is Horde help you with this. |only Alliance
	Defend against the waves of enemies that attack
	kill Thunderlord Crag-Leaper##72378+
	|tip These will spawn in 3 waves of 3.
	click Dusty Chest##3365 |q 33011 |future |goto Frostfire Ridge 45.4,50.8
	|tip The chest is a medium sized wood crate in the back of the hut.
	only Horde
step
	|poiname Ak'ox the Slaughterer
	|poilvl 100
	|poispot Frostfire Ridge 88.60,57.40
	|poitype rare
	|poiquest 37525
	|poiitem 119365
	|poiitem 120945
	|poicurrency AC
	_Go up_ the road |goto Frostfire Ridge/0 87.0,56.2
	_Enter_ the building |goto Frostfire Ridge/0 88.2,57.5
	kill Ak'ox the Slaughterer##84378 |q 37525 |future |goto Frostfire Ridge 88.60,57.40
step
	|poiname Breathless
	|poilvl 90
	|poispot Frostfire Ridge 27.40,50.00
	|poitype rare
	|poiquest 34497
	|poiitem 111476
	|poicurrency GR
	Breathless patrols up and down this small ravine |goto Frostfire Ridge 27.40,50.00
	kill Breathless##78867 |q 34497 |future |goto Frostfire Ridge 27.40,50.00
step
	|poiname Broodmother Reeg'ak
	|poilvl 92
	|poispot Frostfire Ridge 66.40,31.40
	|poitype rare
	|poiquest 33843
	|poiitem 111533
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 64.2,32.4
	_Run to_ the bottom of the ramp |goto Frostfire Ridge/0 65.3,31.5
	kill Broodmother Reeg'ak##74613 |q 33843 |future |goto Frostfire Ridge 66.40,31.40
	|tip Reeg'ak patrols around the large central pillar.
step
	|poiname Canyon Icemother
	|poilvl 91
	|poispot Frostfire Ridge 34.00,23.20
	|poitype rare
	|poiquest 32941
	|poiitem 101436
	|poicurrency GR
	kill Canyon Icemother##71721 |q 32941 |future |goto Frostfire Ridge 34.00,23.20
	|tip She is located next to the lava pool in Daggermaw Ravine.
step
	|poiname Chillfang
	|poilvl 90
	|poispot Frostfire Ridge 41.20,68.20
	|poitype rare
	|poiquest 34843
	|poiitem 111953
	|poicurrency GR
	_Go down_ to the water |goto Frostfire Ridge/0 41.3,64.5
	_Cross_ the water |goto Frostfire Ridge/0 40.8,66.6
	_Go to_ the cave |goto Frostfire Ridge/0 40.8,67.6
	kill Chillfang##80242 |q 34843 |future |goto Frostfire Ridge 41.20,68.20
step
	|poiname Cindermaw
	|poilvl 90
	|poispot Frostfire Ridge 40.40,47.00
	|poitype rare
	|poiquest 33014
	|poiitem 111490
	|poicurrency GR
	Cindermaw will be here when you first engage him |goto Frostfire Ridge 40.40,47.00
	At 60% health, Cindermaw will burrow southeast to this location |goto Frostfire Ridge/0 41.5,48.8
	At 30% health, Cindermaw will burrow north to this location |goto Frostfire Ridge/0 41.7,46.3
	kill Cindermaw##72294 |q 33014 |future |goto Frostfire Ridge/0 41.7,46.3
step
	|poiname Coldstomp the Griever
	|poilvl 91
	|poispot Frostfire Ridge 25.40,55.00
	|poitype rare
	|poiquest 34129
	|poiitem 112066
	|poicurrency GR
	kill Coldstomp the Griever##77513 |q 34129 |future |goto Frostfire Ridge 25.40,55.00
	|tip He's in the boneyard.
step
	|poiname Coldtusk
	|poilvl 90
	|poispot Frostfire Ridge 54.60,69.40
	|poitype rare
	|poiquest 34131
	|poiitem 111484
	|poicurrency GR
	kill Coldtusk##76914 |q 34131 |future |goto Frostfire Ridge 54.60,69.40
	|tip Coltusk runs up and down the ravine.
step
	|poiname Cyclonic Fury
	|poilvl 93
	|poispot Frostfire Ridge 67.40,78.20
	|poitype rare
	|poiquest 34477
	|poiitem 112086
	|poicurrency GR
	kill Cyclonic Fury##78621 |q 34477 |future |goto Frostfire Ridge 67.40,78.20
	|tip He patrols a very small area.
step
	|poiname Firefury Giant
	|poilvl 90
	|poispot Frostfire Ridge 71.40,46.80
	|poitype rare
	|poiquest 33504
	|poiitem 107661
	|poicurrency GR
	_Climb up_ onto the cooled magma |goto Frostfire Ridge/0 70.2,53.8
	_Go up_ the left side of the lava |goto Frostfire Ridge/0 70.9,51.2
	_Continue up_ the left side to the stone |goto Frostfire Ridge/0 71.1,48.3
	click Firefury Stone##6478 |goto Frostfire Ridge/0 71.0,47.4
	kill Firefury Giant##74971 |q 33504 |future |goto Frostfire Ridge 71.40,46.80
	|tip Melee must use the little rocks that spawn to stay out of the lava and avoid its damage.
step
	|poiname Giant-Slayer Kul
	|poilvl 90
	|poispot Frostfire Ridge 54.60,22.20
	|poitype rare
	|poiquest 32918
	|poiitem 111530
	|poicurrency GR
	_Go to_ the small camp |goto Frostfire Ridge/0 54.3,21.8
	kill Giant-Slayer Kul##71665 |q 32918 |future |goto Frostfire Ridge 54.60,22.20
step
	|poiname Gorg'ak the Lava Guzzler
	|poilvl 100
	|poispot Frostfire Ridge 70.00,36.00
	|poitype rare
	|poiquest 33512
	|poiitem 111545
	|poiitem 120945
	|poicurrency AC
	kill Gorg'ak the Lava Guzzler##72364 |q 33512 |future |goto Frostfire Ridge 71.00,27.40
	|tip He is located down by the lava. Be sure to clear all of the goren before pulling him, he will call for help.
step
	|poiname Gorivax
	|poilvl 101
	|poispot Frostfire Ridge 38.00,14.00
	|poitype rare
	|poiquest 37388
	|poiitem 119358
	|poiitem 120945
	|poicurrency AC
	kill Minion of Borgal##89164
	|tip Kill the Minions to spawn Gorivax.
	kill Gorivax##82536 |q 37388 |future |goto Frostfire Ridge 38.00,14.00
step
	|poiname Grutush the Pillager
	|poilvl 90
	|poispot Frostfire Ridge 38.60,63.00
	|poitype rare
	|poiquest 34865
	|poiitem 112077
	|poicurrency GR
	_Go around_ the small peak |goto Frostfire Ridge/0 39.4,63.5
	_Enter_ the cave |goto Frostfire Ridge/0 38.2,63.6
	kill Grutush the Pillager##80312 |q 34865 |future |goto Frostfire Ridge 38.60,63.00
step
	|poiname Gruuk
	|poilvl 90
	|poispot Frostfire Ridge 50.30,52.60
	|poitype rare
	|poiquest 34825
	|poiitem 111948
	|poicurrency GR
	kill Gruuk##80190 |q 34825 |future |goto Frostfire Ridge 50.30,52.60
	|tip He's under the rocky overhang.
step
	|poiname Gurun
	|poilvl 90
	|poispot Frostfire Ridge 47.00,55.20
	|poitype rare
	|poiquest 34839
	|poiitem 111955
	|poicurrency GR
	_Enter_ the cave |goto Frostfire Ridge/0 46.0,57.4
	_Continue down_ into the cave |goto Frostfire Ridge/0 45.5,55.5
	kill Gurun##80235 |q 34839 |future |goto Frostfire Ridge 47.00,55.20
	|tip He's in the back of the cave around the right. Beware of the Gronn.
step
	|poiname Hoarfrost
	|poilvl 101
	|poispot Frostfire Ridge 68.80,19.40
	|poitype rare
	|poiquest 37382
	|poiitem 119415
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Frostfire Ridge/0 69.7,23.2
	_Go through_ the narrow pass |goto Frostfire Ridge/0 68.5,22.6
	kill Hoarfrost##87348 |q 37382 |future |goto Frostfire Ridge/0 68.1,19.9
step
	|poiname Huntmaster Kuang
	|poilvl 92
	|poispot Frostfire Ridge 58.60,34.20
	|poitype rare
	|poiquest 34130
	|poicurrency GR
	kill Giantslayer Kimla##78144
	kill Pathfinder Jalog##78134
	kill Cloudspeaker Daber##78169
	kill Gronnstalker Dawarn##78128
	kill Beastcarver Saramor##78150
	kill Giantbane##77519
	kill Huntmaster Kuang##78151 |q 34130 |future |goto Frostfire Ridge 58.60,34.20
	|tip He patrols around a sizeable area. Look around this field of ice. The other mobs go down fast, having very little health.
step
	|poiname Jabberjaw
	|poilvl 101
	|poispot Frostfire Ridge 48.20,23.40
	|poitype rare
	|poiquest 37386
	|poiitem 119390
	|poiitem 120945
	|poicurrency AC
	kill Jabberjaw##82616 |q 37386 |future |goto Frostfire Ridge 48.20,23.40
	|tip He patrols a small area around this spot.
step
	|poiname Jehil the Climber
	|poilvl 92
	|poispot Frostfire Ridge 61.60,26.40
	|poitype rare
	|poiquest 34708
	|poiitem 112078
	_Go up_ the ramp |goto Frostfire Ridge/0 61.0,26.7
	_Turn left_ at the top |goto Frostfire Ridge/0 62.1,27.1
	_Jump onto_ the bones |goto Frostfire Ridge/0 62.0,26.3 < 8
	_Climb up_ this rib bone and jump over to Jehil's area |goto Frostfire Ridge/0 61.5,25.8 < 4
	kill Jehil the Climber##79678 |q 34708 |future |goto Frostfire Ridge 61.60,26.40
step
	|poiname Moltnoma
	|poilvl 101
	|poispot Frostfire Ridge 43.00,21.00
	|poitype rare
	|poiquest 37387
	|poiitem 119356
	|poiitem 120945
	|poicurrency AC
	_Go down_ to the edge of the lava |goto Frostfire Ridge/0 42.8,19.5
	kill Lava Slime##88430
	Gain the the Lava Slimed buff |havebuff Interface\Icons\Spell_Fire_Burnout |only if not completedq(37387)
	kill Moltnoma##82614 |q 37387 |future |goto Frostfire Ridge 43.00,21.00
	|tip You must kill a Lava Slime to gain immunity to the lava damage for 30 seconds. Pay close attention to your buff and kill another Lava Slime when the duration gets low.
step
	|poiname Mother of Goren
	|poilvl 101
	|poispot Frostfire Ridge 72.20,22.80
	|poitype rare
	|poiquest 37381
	|poiitem 119376
	|poiitem 120945
	|poicurrency AC
	kill Mother of Goren##87351 |q 37381 |future |goto Frostfire Ridge 72.20,22.80
	|tip An AoE cooldown will healp greatly with little Burning Slagmaws.
	|tip When she casts Whirling Lava Breath, she will rotate counter-clockwise. Stay away from the breath.
step
	|poiname Ogom the Mangler
	|poilvl 100
	|poispot Frostfire Ridge 83.60,47.20
	|poitype rare
	|poiquest 37402
	|poiitem 119366
	|poiitem 120945
	|poicurrency AC
	kill Ogom the Mangler##87622 |q 37402 |future |goto Frostfire Ridge 83.60,47.20
	|tip Ogom patrols the road around this area.
step
	|poiname Primalist Mur'og
	|poilvl 90
	|poispot Frostfire Ridge 36.80,34.00
	|poitype rare
	|poiquest 33938
	|poiitem 111576
	|poicurrency GR
	_Go up_ this path |goto Frostfire Ridge/0 33.9,30.0
	_Cross_ the stone bridge |goto Frostfire Ridge/0 36.2,32.2
	_Continue following_ the path up and to the right |goto Frostfire Ridge/0 38.0,33.1
	kill Primalist Mur'og##76918 |q 33938 |future |goto Frostfire Ridge 36.80,34.00
step
	|poiname Ragore Driftstalker
	|poilvl 100
	|poispot Frostfire Ridge 86.60,48.80
	|poitype rare
	|poiquest 37401
	|poiitem 119359
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Frostfire Ridge/0 87.1,49.5
	kill Ragore Driftstalker##84392 |q 37401 |future |goto Frostfire Ridge 86.60,48.80
step
	|poiname Scout Goreseeker
	|poilvl 93
	|poispot Frostfire Ridge 76.40,63.40
	|poitype rare
	|poiquest 34132
	|poiitem 112094
	|poicurrency GR
	_Go up_ into the camp |goto Frostfire Ridge/0 74.6,62.6
	_Enter_ the building and go down the stairs |goto Frostfire Ridge/0 75.9,63.0
	kill Scout Goreseeker##77526 |q 34132 |future |goto Frostfire Ridge/0 76.6,63.6
step
	|poiname Slogtusk the Corpse-Eater
	|poilvl 101
	|poispot Frostfire Ridge 45.00,15.00
	|poitype rare
	|poiquest 37385
	|poiitem 119362
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Frostfire Ridge/0 45.9,14.2
	kill Slogtusk the Corpse-Eater##82617 |q 37385 |future |goto Frostfire Ridge 45.00,15.00
step
	|poiname Son of Goramal
	|poilvl 101
	|poispot Frostfire Ridge 38.20,16.00
	|poitype rare
	|poiquest 37383
	|poiitem 119399
	|poiitem 120945
	|poicurrency AC
	kill Son of Goramal##82620 |q 37383 |future |goto Frostfire Ridge 38.20,16.00
	|tip Goramal will pull with him.
step
	|poiname The Beater
	|poilvl 90
	|poispot Frostfire Ridge 26.80,31.60
	|poitype rare
	|poiquest 34133
	|poiitem 111475
	|poicurrency GR
	_Enter_ the cave here |goto Frostfire Ridge/0 27.2,30.8 < 10
	kill The Beater##77527 |q 34133 |future |goto Frostfire Ridge 26.80,31.60
step
	|poiname The Bone Crawler
	|poilvl 101
	|poispot Frostfire Ridge 72.20,33.00
	|poitype rare
	|poiquest 34361
	|poiitem 111534
	|poiitem 120945
	|poicurrency AC
	_Go down_ this hill |goto Frostfire Ridge/0 70.7,32.5
	kill The Bone Crawler##78265 |q 34361 |future |goto Frostfire Ridge 72.20,33.00
step
	|poiname Tor'goroth
	|poilvl 101
	|poispot Frostfire Ridge 43.60,09.40
	|poitype rare
	|poiquest 37384
	|poiitem 119379
	|poiitem 120945
	|poicurrency AC
	_Follow_ the road down |goto Frostfire Ridge/0 45.8,12.7
	_Cross_ the water |goto Frostfire Ridge/0 43.5,10.4
	kill Tor'goroth##82618 |q 37384 |future |goto Frostfire Ridge 43.60,09.40
step
	|poiname Ug'lok the Frozen
	|poilvl 100
	|poispot Frostfire Ridge 40.60,12.40
	|poitype rare
	|poiquest 34522
	|poiitem 119409
	|poiitem 120945
	|poicurrency AC
	kill Frozen Sanctuary##81988
	kill Ug'lok the Frozen##79104 |q 34522 |future |goto Frostfire Ridge 40.60,12.40
	|tip Ug'lok will use Frozen Sanctuary occasionally. Kill it to free him from the ice barrier and make him attackable.
step
	|poiname Valkor
	|poilvl 101
	|poispot Frostfire Ridge 72.40,24.20
	|poitype rare
	|poiquest 37378
	|poiitem 119416
	|poiitem 120945
	|poicurrency AC
	kill Valkor##87357 |q 37378 |future |goto Frostfire Ridge 72.40,24.20
	|tip Valkor patrols a small area up and down the road. He is a high health rare elite, you will need a group to defeat him.
step
	|poiname Vrok the Ancient
	|poilvl 103
	|poispot Frostfire Ridge 70.60,39.00
	|poitype rare
	|poiquest 37379
	|poiitem 119416
	|poiitem 120945
	|poicurrency AC
	_Start up_ the hill |goto Frostfire Ridge/0 74.0,29.8
	_Continue_ going up the hill |goto Frostfire Ridge/0 73.6,34.9
	kill Vrok the Ancient##87356 |q 37379 |future |goto Frostfire Ridge 70.60,39.00
	|tip Avoid the boulders, tornados, and mobs on the way up.
	|tip Vrok will require a group to defeat.
step
	|poiname Yaga the Scarred
	|poilvl 92
	|poispot Frostfire Ridge/0 40.6,27.6
	|poitype rare
	|poiquest 34559
	|poiitem 111477
	|poicurrency GR
	_Go to_ the top ridge |goto Frostfire Ridge/0 41.3,29.0
	kill Yaga the Scarred##79145 |q 34559 |future |goto Frostfire Ridge/0 40.6,27.6
step
	|poiname Earthshaker Holar
	|poilvl 100
	|poispot Frostfire Ridge 84.60,46.80
	|poitype rare
	|poiquest 37403
	|poiitem 119374
	|poiitem 120945
	|poicurrency AC
	kill Earthshaker Holar##84376 |q 37403 |future |goto Frostfire Ridge 84.60,46.80
	|tip He is in the gladiator pit.
step
	|poiname Gibblette the Cowardly
	|poilvl 101
	|poispot Frostfire Ridge 66.60,25.40
	|poitype rare
	|poiquest 37380
	|poiitem 119349
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Frostfire Ridge/0 69.0,23.9 < 10
	_Follow_ the path around to the left |goto Frostfire Ridge/0 66.8,22.2 < 10
	_Go through_ the stone arch |goto Frostfire Ridge/0 65.8,23.3 < 10
	_Enter_ the cave |goto Frostfire Ridge/0 67.1,25.0 < 10
	kill Gibblette the Cowardly##87352 |q 37380 |future |goto Frostfire Ridge 66.60,25.40
	|tip Interrupt or stun him when he casts Dig or he will escape. Cowardly indeed!
step
	|poiname Kaga the Ironbender
	|poilvl 100
	|poispot Frostfire Ridge 86.80,45.00
	|poitype rare
	|poiquest 37404
	|poiitem 119372
	|poiitem 120945
	|poicurrency AC
	_Go up_ the bridge |goto Frostfire Ridge/0 86.1,47.2 < 10
	_Go inside_ and _up the steps_ |goto Frostfire Ridge/0 86.9,45.0 < 10
	kill Kaga the Ironbender##84374 |q 37404 |future |goto Frostfire Ridge 86.80,45.00
step
	|poiname Doorog's Secret Stash
	|poilvl 90
	|poispot Frostfire Ridge/2 37.1,69.8
	|poitype treasure
	|poiquest 35370
	|poiitem 113189
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	click Doorog's Secret Stash##232218 |q 35370 |future |goto Frostfire Ridge/2 37.1,69.8
	|tip The stash is past the lava pit and boulders, hidden behind the supplies on the ground.
	only Horde
	only if completedq(33527)
step
	|poiname Doorog's Secret Stash
	|poilvl 90
	|poispot Frostfire Ridge/2 37.1,69.8
	|poitype treasure
	|poiquest 35370
	|poiitem 113189
	|poicurrency GL
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	click Doorog's Secret Stash##232218 |q 35370 |future |goto Frostfire Ridge/2 37.1,69.8
	|tip The stash is past the lava pit and boulders, hidden behind the supplies on the ground.
	only Alliance
step
	|poiname Gorr'thogg's Personal Reserve
	|poilvl 90
	|poispot Frostfire Ridge/3 31.3,66.6
	|poitype treasure
	|poiquest 35367
	|poiitem 113108
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure |only if Alliance
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	_Enter_ the citadel here |goto Frostfire Ridge/2 45.9,59.7
	_Go up_ the ramp just inside on the left |goto Frostfire Ridge/2 36.2,46.8
	_Follow_ the ramp all the way around and up into the Bladespire Throne |goto Frostfire Ridge/3 67.4,56.5
	click Gorr'thogg's Personal Reserve##232215 |q 35367 |future |goto Frostfire Ridge/3 31.3,66.6
	|tip It's located to the left of the giant throne.
	only Horde
	only if completedq(33527)
step
	|poiname Gorr'thogg's Personal Reserve
	|poilvl 90
	|poispot Frostfire Ridge/3 31.3,66.6
	|poitype treasure
	|poiquest 35367
	|poiitem 113108
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and go to the ramp |goto Frostfire Ridge/1 33.0,73.8
	_Go to_ the top of the ramp |goto Frostfire Ridge/2 59.9,77.7
	_Enter_ the citadel here |goto Frostfire Ridge/2 45.9,59.7
	_Go up_ the ramp just inside on the left |goto Frostfire Ridge/2 36.2,46.8
	_Follow_ the ramp all the way around and up into the Bladespire Throne |goto Frostfire Ridge/3 67.4,56.5
	click Gorr'thogg's Personal Reserve##232215 |q 35367 |future |goto Frostfire Ridge/3 31.3,66.6
	|tip It's located to the left of the giant throne.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 36.4,28.8
	|poitype treasure
	|poiquest 35347
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 38.2,30.8 < 12
	click Ogre Booty##232214 |q 35347 |future |goto Frostfire Ridge/2 36.4,28.8
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 36.4,28.8
	|poitype treasure
	|poiquest 35347
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 38.2,30.8 < 12
	click Ogre Booty##232214 |q 35347 |future |goto Frostfire Ridge/2 36.4,28.8
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 53.2,28.3
	|poitype treasure
	|poiquest 35368
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go left_ around the bonfire and enter this room |goto Frostfire Ridge/1 51.2,29.9
	click Ogre Booty##232214 |q 35368 |future |goto Frostfire Ridge/1 53.2,28.3
	|tip The treasure is hanging from a wooden beam above you. Climb the crates to reach it.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 53.2,28.3
	|poitype treasure
	|poiquest 35368
	|poicurrency GL
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go left_ around the bonfire and enter this room |goto Frostfire Ridge/1 51.2,29.9
	click Ogre Booty##232214 |q 35368 |future |goto Frostfire Ridge/1 53.2,28.3
	|tip The treasure is hanging from a wooden beam above you. Climb the crates to reach it.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 48.6,67.1
	|poitype treasure
	|poiquest 35369
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35369 |future |goto Frostfire Ridge/1 48.6,67.1
	|tip Climb up the pile of crates and sacks to reach the chest on top of the scaffolding.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 48.6,67.1
	|poitype treasure
	|poiquest 35369
	|poicurrency GL
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35369 |future |goto Frostfire Ridge/1 48.6,67.1
	|tip Climb up the pile of crates and sacks to reach the chest on top of the scaffolding.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 46.2,15.6
	|poitype treasure
	|poiquest 35371
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 46.4,19.9 < 12
	click Ogre Booty##232214 |q 35371 |future |goto Frostfire Ridge/2 46.2,15.6
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 46.2,15.6
	|poitype treasure
	|poiquest 35371
	|poicurrency GL
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 46.4,19.9 < 12
	click Ogre Booty##232214 |q 35371 |future |goto Frostfire Ridge/2 46.2,15.6
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 52.1,52.0
	|poitype treasure
	|poiquest 35373
	|poicurrency GL
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 52.0,48.8 < 12
	click Ogre Booty##232214 |q 35373 |future |goto Frostfire Ridge/2 52.6,52.9
	|tip Jump onto the crates. The treasure is hanging from a beam.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 52.1,52.0
	|poitype treasure
	|poiquest 35373
	|poicurrency GL
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 52.0,48.8 < 12
	click Ogre Booty##232214 |q 35373 |future |goto Frostfire Ridge/2 52.6,52.9
	|tip Jump onto the crates. The treasure is hanging from a beam.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 51.3,17.9
	|poitype treasure
	|poiquest 35567
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 49.8,21.3 < 12
	click Ogre Booty##232214 |q 35567 |future |goto Frostfire Ridge/2 51.3,17.9
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 51.3,17.9
	|poitype treasure
	|poiquest 35567
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Go to_ this room |goto Frostfire Ridge/2 49.8,21.3 < 12
	click Ogre Booty##232214 |q 35567 |future |goto Frostfire Ridge/2 51.3,17.9
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 76.7,62.1
	|poitype treasure
	|poiquest 35568
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35568 |future |goto Frostfire Ridge/2 76.7,62.1
	|tip It's located behind a pile of supplies.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 76.7,62.1
	|poitype treasure
	|poiquest 35568
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35568 |future |goto Frostfire Ridge/2 76.7,62.1
	|tip It's located behind a pile of supplies.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 70.5,67.7
	|poitype treasure
	|poiquest 35569
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35569 |future |goto Frostfire Ridge/2 70.5,67.7
	|tip It's located behind a pile of supplies.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/2 70.5,67.7
	|poitype treasure
	|poiquest 35569
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Go up_ the ramp |goto Frostfire Ridge/1 45.3,22.8 < 8
	_Follow the ramp_ all the way to the top |goto Frostfire Ridge/2 59.8,29.3 < 10
	_Enter_ this room |goto Frostfire Ridge/2 60.0,46.0 < 12
	_Open_ the vault gate and enter the room |goto Frostfire Ridge/2 70.1,61.4 < 10
	click Ogre Booty##232214 |q 35569 |future |goto Frostfire Ridge/2 70.5,67.7
	|tip It's located behind a pile of supplies.
	only Alliance
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 45.5,67.2
	|poitype treasure
	|poiquest 35570
	|poicurrency GR
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35570 |future |goto Frostfire Ridge/1 45.5,67.2
	|tip It's located on a stack of crates inside the room on the right.
	only Horde
	only if completedq(33527)
step
	|poiname Ogre Booty
	|poilvl 90
	|poispot Frostfire Ridge/1 45.5,67.2
	|poitype treasure
	|poiquest 35570
	|poicurrency GR
	_Warning_: You may have to contend with 99 elite Horde wolves to get this treasure
	_Go up_ the road to Bladespire Citadel |goto Frostfire Ridge/0 20.9,43.5
	_Follow_ the bridge and enter the main room of the Citadel |goto Frostfire Ridge/1 36.9,45.0
	_Continue right_ through the Citadel |goto Frostfire Ridge/1 47.7,58.8
	click Ogre Booty##232214 |q 35570 |future |goto Frostfire Ridge/1 45.5,67.2
	|tip It's located on a stack of crates inside the room on the right.
	only Alliance
--//Gorgrond\\--
step
	|poiname Brokor's Sack
	|poilvl 92
	|poispot Gorgrond 41.73,52.97
	|poitype treasure
	|poiquest 36506
	|poiitem 118702
	|poicurrency GL
	_Go through_ the two stone pillars and turn right |goto Gorgrond/0 41.7,53.5
	click Brokor's Sack##207124 |q 36506 |future |goto Gorgrond/0 41.73,52.97
	|tip It's a small sack by the stones.
step
	|poiname Discarded Pack
	|poilvl 92
	|poispot Gorgrond 42.36,83.41
	|poitype treasure
	|poiquest 36625
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
	_Go right_, following the path |goto Gorgrond/0 42.6,81.7
	_Go up_ the hill to the left of the hut |goto Gorgrond/0 42.5,83.4
	click Discarded Pack##236141 |q 36625 |future |goto Gorgrond/0 42.36,83.41
	|tip It's behind the roots just underneath the hut.
step
	|poiname Evermorn Supply Cache
	|poilvl 92
	|poispot Gorgrond 41.82,78.02
	|poitype treasure
	|poiquest 36658
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ Evermorn Springs |goto Gorgrond/0 44.1,79.6
	_Follow_ the path around to the right |goto Gorgrond/0 42.3,78.8
	_Enter_ the hut and jump through the small opening on the right |goto Gorgrond/0 41.7,78.5 < 8
	click Evermorn Supply Cache##236178 |q 36658 |future |goto Gorgrond 41.82,78.02
step
	|poiname Explorer Canister
	|poilvl 92
	|poispot Gorgrond 40.36,76.60
	|poitype treasure
	|poiquest 36621
	|poiitem 118710
	|poicurrency GR
	_Cross_ The Fertile Ground |goto Gorgrond/0 42.2,75.7
	click Explorer Canister##236139 |q 36621 |future |goto Gorgrond 40.36,76.60
	|tip It's at the bottom of the pond in the middle of the rocks in the center.
step
	|poiname Femur of Improbability
	|poilvl 92
	|poispot Gorgrond 40.04,72.23
	|poitype treasure
	|poiquest 36170
	|poiitem 118715
	_Enter_ Deadgrin |goto Gorgrond/0 38.8,73.5
	_Go to_ the right |goto Gorgrond/0 39.9,72.2
	click Femur of Improbability##233917 |q 36170 |future |goto Gorgrond 40.04,72.23
step
	|poiname Harvestable Precious Crystal
	|poilvl 92
	|poispot Gorgrond 46.10,49.99
	|poitype treasure
	|poiquest 36651
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 44.7,50.7
	click Harvestable Precious Crystal##236169 |q 36651 |future |goto Gorgrond/0 46.1,50.0
	|tip It's a big purple-white crystal on the left side of the cave.
step
	|poiname Horned Skull
	|poilvl 92
	|poispot Gorgrond 42.58,46.85
	|poitype treasure
	|poiquest 35056
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.4,47.9
	_Follow_ the spiraling path and jump down at this spot |goto Gorgrond/19 62.3,62.9
	click Horned Skull##231644 |q 35056 |future |goto Gorgrond/19 47.4,67.6
step
	|poiname Iron Supply Chest
	|poilvl 92
	|poispot Gorgrond 43.69,42.48
	|poitype treasure
	|poiquest 36618
	|poicurrency GR
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 42.8,44.4
	click Iron Supply Chest##236138 |q 36618 |future |goto Gorgrond/0 43.69,42.48
	|tip It's by the crates in the southeastern part of the cave.
step
	|poiname Laughing Skull Cache
	|poilvl 92
	|poispot Gorgrond 44.20,74.27
	|poitype treasure
	|poiquest 35709
	|poicurrency GR
	_Climb up_ on the tree trunk |goto Gorgrond/0 44.3,73.6 < 8
	click Laughing Skull Cache##233149 |q 35709 |future |goto Gorgrond 44.20,74.27
step
	|poiname Ockbar's Pack
	|poilvl 92
	|poispot Gorgrond 43.10,92.90
	|poitype treasure
	|poiquest 34241
	|poiitem 118227
	click Ockbar's Pack##227998 |q 34241 |future |goto Gorgrond/0 43.1,92.9
	|tip It's a small bag behind Ockbar's right hoof.
step
	|poiname Odd Skull
	|poilvl 92
	|poispot Gorgrond 52.51,66.96
	|poitype treasure
	|poiquest 36509
	|poiitem 118717
	|poicurrency GL
	click Odd Skull##236715 |q 36509 |future |goto Gorgrond/0 52.5,67.0
	|tip It's on the rock just behind the pile of bones.
step
	|poiname Petrified Rylak Egg
	|poilvl 92
	|poispot Gorgrond 46.24,42.95
	|poitype treasure
	|poiquest 36521
	|poiitem 118707
	|poicurrency GL
	_Jump up_ on this plateau |goto Gorgrond/0 48.2,40.7
	_Cross_ the plateau |goto Gorgrond/0 46.6,42.1
	click Petrified Rylak Egg##235881 |q 36521 |future |goto Gorgrond 46.24,42.95
	|tip It's sitting on the ground between the two smallest nests.
step
	|poiname Pile of Rubble
	|poilvl 92
	|poispot Gorgrond 43.95,70.55
	|poitype treasure
	|poiquest 36118
	|poiitem RANDOM
	|poicurrency GL
	_Get up_ on the small hill |goto Gorgrond/0 44.0,71.1
	click Pile of Rubble##233792 |q 36118 |future |goto Gorgrond 43.95,70.55
	|tip It's located between the stones and the ogre statue head.
step
	|poiname Remains of Balik Orecrusher
	|poilvl 92
	|poispot Gorgrond 53.12,74.49
	|poitype treasure
	|poiquest 36654
	|poiitem 118714
	_Enter_ the cave |goto Gorgrond/0 51.5,74.4
	click Remains of Balik Orecrusher##236170 |q 36654 |future |goto Gorgrond 53.12,74.49
	|tip The remains are behind the left steaming geyser vent.
step
	|poiname Remains of Balldir Deeprock
	|poilvl 92
	|poispot Gorgrond 57.84,55.97
	|poitype treasure
	|poiquest 36605
	|poiitem 118703
	click Remains of Balldir Deeprock##236096 |q 36605 |future |goto Gorgrond 57.84,55.97
	|tip They're in the middle of the pond at the bottom.
step
	|poiname Sasha's Secret Stash
	|poilvl 92
	|poispot Gorgrond 39.03,68.05
	|poitype treasure
	|poiquest 36631
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the tower |goto Gorgrond/0 39.0,68.0
	_Go to_ the top of the spiraling ramp |goto Gorgrond/0 39.0,68.9
	Carefully drop off the edge and land on the wood sticking out of the tower |goto Gorgrond 39.03,68.05
	click Sasha's Secret Stash##236149 |q 36631 |future |goto Gorgrond 39.03,68.05
	|tip It's a bag hanging from the end of the wooden beam.
step
	|poiname Sniper's Crossbow
	|poilvl 92
	|poispot Gorgrond 44.95,42.62
	|poitype treasure
	|poiquest 36634
	|poiitem 118713
	_Climb up_ the hill here |goto Gorgrond/0 44.6,42.3 < 10
	click Sniper's Crossbow##236158 |q 36634 |future |goto Gorgrond 44.95,42.62
	|tip It's a purple crossbow propped up against a telescope.
step
	|poiname Stashed Emergency Rucksack
	|poiaccess Completionist
	|poilvl 92
	|poispot Gorgrond 48.12,93.37
	|poitype treasure
	|poiquest 36604
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the digsite |goto Gorgrond/0 47.7,93.4 < 15
	_Go left_ and jump onto this stone |goto Gorgrond/0 48.0,93.3 < 5
	_Jump onto_ this stone |goto Gorgrond/0 48.0,93.4 < 5
	_Jump over_ to the platform |goto Gorgrond/0 48.1,93.4 < 5
	click Stashed Emergency Rucksack##236092 |q 36604 |future |goto Gorgrond 48.12,93.37
	|tip It's hanging on the cable to the crane.
step
	|poiname Strange Looking Dagger
	|poilvl 92
	|poispot Gorgrond 52.97,79.95
	|poitype treasure
	|poiquest 34940
	|poiitem 118718
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 51.3,77.6 < 15
	_Go right_ at the intersection |goto Gorgrond/0 51.7,79.4 < 15
	_Continue right_ along the wall |goto Gorgrond/0 52.4,80.4 < 15
	_Follow_ right to the room with steam vents |goto Gorgrond/0 52.9,80.6 < 15
	click Strange Looking Dagger##231069 |q 34940 |future |goto Gorgrond/0 52.97,79.95
step
	|poiname Strange Spore
	|poilvl 92
	|poispot Gorgrond 57.08,65.30
	|poitype treasure
	|poiquest 37249
	|poiitem 118106
	_Go up_ this hill towards the mushroom caps |goto Gorgrond/0 57.6,64.7 < 10
	_Climb up_ onto this mushroom |goto Gorgrond/0 57.3,65.4 < 5
	_Jump over_ to the mushroom with the strange spore |goto Gorgrond 57.08,65.30 < 5
	click Strange Spore##232621 |q 37249 |future |goto Gorgrond 57.08,65.30
	|tip It is a purple and orange sack growing on top of the mushrooom.
step
	|poiname Suntouched Spear
	|poilvl 92
	|poispot Gorgrond 45.69,49.72
	|poitype treasure
	|poiquest 36610
	|poiitem 118708
	click Suntouched Spear##236099 |q 36610 |future |goto Gorgrond 45.69,49.72
	|tip It's sticking out of the narrow ridge.
step
	|poiname Vindicator's Hammer
	|poiaccess Completionist
	|poilvl 92
	|poispot Gorgrond 59.4,63.7
	|poitype treasure
	|poiquest 36628
	|poiitem 118712
	Use your Mechashredder ability to reach the top of the mushroom |cast Summon Mechashredder 5000##164050 |only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
	Use your rocket boost ability to reach the top of the mushroom |cast Rocket Boost##165445 |only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
	Use Aviana's Feather to reach the top of the mushroom |use Aviana's Feather##119093 |only if itemcount(119093) > 0
	click Vindicator's Hammer##236147 |q 36628 |future |goto Gorgrond 59.4,63.7
	|tip You cannot reach this treasure without a temporary flying ability such as Aviana's Feather or the Shredder from the War Mill outpost garrison ability |only if itemcount(119093) < 1 and not _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Warm Goren Egg
	|poilvl 92
	|poispot Gorgrond 48.94,47.31
	|poitype treasure
	|poiquest 36203
	|poiitem 118705
	|poicurrency GL
	_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15
	click Warm Goren Egg##234054 |q 36203 |future |goto Gorgrond 48.94,47.31
	|tip It's a glowing red egg sitting against the wall on the back side of the cave.
step
	|poiname Weapons Cache
	|poilvl 92
	|poispot Gorgrond 49.28,43.63
	|poitype treasure
	|poiquest 36596
	|poiitem 107645
	|poicurrency GL
	click Weapons Cache##235869 |q 36596 |future |goto Gorgrond 49.28,43.63
	|tip It's located to the left of the War Machine on the platform.
step
	|poiname Alkali
	|poilvl 100
	|poispot Gorgrond 58.60,41.20
	|poitype rare
	|poiquest 37371
	|poiitem 119361
	|poiitem 120945
	|poicurrency AC
	kill Alkali##86268 |q 37371 |future |goto Gorgrond 58.60,41.20
	Alkali can also spawn _here_ |goto Gorgrond 56.2,40.8
	Or _here_ |goto Gorgrond 71.3,40.4
	|tip Alkali is a lasher located in the pool. Save an interrupt for his Rejuvinate ability.
step
	|poiname Bashiok
	|poilvl 92
	|poispot Gorgrond 40.00,79.00
	|poitype rare
	|poiquest 35335
	|poiitem 118222
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 39.6,79.9
	kill Bashiok##82085 |q 35335 |future |goto Gorgrond 40.00,79.00
	|tip Cleansing Stream is a heal Bashiok casts. Interrupt this whenever possible.
step
	|poiname Basten + Nultra + Valstil
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 69.20,44.60
	|poitype rare
	|poiquest 37369
	|poiitem 119357
	|poiitem 120945
	|poicurrency GR
	kill Basten##86257
	kill Nultra##86258
	kill Valstil##86259 |q 37369 |future |goto Gorgrond 69.20,44.60
	|tip Valstil is the healer of the group and should be dealt with first. You will most likely need a group for this rare.
step
	|poiname Berthora
	|poilvl 92
	|poispot Gorgrond 39.40,74.60
	|poitype rare
	|poiquest 36597
	|poiitem 118232
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 39.7,76.3 < 20
	kill Berthora##85907 |q 36597 |future |goto Gorgrond 39.40,74.60
step
	|poiname Blademaster Ro'gor
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 46.00,33.60
	|poitype rare
	|poiquest 37368
	|poiitem 119228
	|poiitem 120945
	|poicurrency AC
	kill Blademaster Ro'gor##86579 |q 37368 |future |goto Gorgrond 46.00,33.60
	|tip Ro'gor patrols up and down the hill. You will need a group to kill him.
step
	|poiname Char the Burning
	|poilvl 94
	|poispot Gorgrond 53.40,44.60
	|poitype rare
	|poiquest 35503
	|poiitem 118212
	|poicurrency GR
	kill Char the Burning##82311 |q 35503 |future |goto Gorgrond 53.40,44.60
	|tip He is in the valley between two peaks.
step
	|poiname Defector Dazgo
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 48.20,21.00
	|poitype rare
	|poiquest 37362
	|poiitem 119224
	|poiitem 120945
	|poicurrency AC
	kill Defector Dazgo##86566 |q 37362 |future |goto Gorgrond 48.20,21.00
	|tip He is under the bridge. You will need a group to kill this rare.
step
	|poiname Depthroot
	|poilvl 100
	|poispot Gorgrond 72.6,40.9
	|poitype rare
	|poiquest 37370
	|poiitem 119406
	|poiitem 120945
	|poicurrency AC
	kill Depthroot##82058 |q 37370 |future |goto Gorgrond 72.6,40.9
	|tip Depthroot is an Ancient who wanders a small area.
step
	|poiname Durp the Hated
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 50.00,23.80
	|poitype rare
	|poiquest 37366
	|poiitem 119225
	|poiitem 120945
	|poicurrency AC
	kill Durp the Hated##86571 |q 37366 |future |goto Gorgrond 50.00,23.80
	|tip Durp wanders a small area on the northeast side of The Pit. You will need a group to defeat him.
step
	|poiname Firestarter Grash
	|poilvl 100
	|poispot Gorgrond 58.00,36.40
	|poitype rare
	|poiquest 37373
	|poiitem 119381
	|poiitem 120945
	|poicurrency AC
	kill Firestarter Grash##88580 |q 37373 |future |goto Gorgrond 58.00,36.40
	He can also be found _here_ |goto Gorgrond 72.8,35.8
	|tip Grash is easy to spot. He wanders a very small area setting things on fire.
step
	|poiname Fossilwood the Petrified
	|poilvl 92
	|poispot Gorgrond 57.40,68.60
	|poitype rare
	|poiquest 36387
	|poiitem 118221
	|poicurrency GR
	_Go through_ the opening in the thorns |goto Gorgrond/0 58.1,69.0 < 10
	kill Fossilwood the Petrified##85250 |q 36387 |future |goto Gorgrond 57.40,68.60
step
	|poiname Gelgor of the Blue Flame
	|poilvl 93
	|poispot Gorgrond 41.80,45.40
	|poitype rare
	|poiquest 36391
	|poiitem 118230
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.3,47.8 < 20
	_Go to_ the bottom of the spiraling ramp |goto Gorgrond/18 62.7,74.8 < 15
	_Continue clockwise_ around the chamber |goto Gorgrond/18 40.9,61.2 < 10
	_Take a left_ at the side passage |goto Gorgrond/19 45.7,37.7 < 10
	kill Gelgor of the Blue Flame##81038 |q 36391 |future |goto Gorgrond/19 32.5,38.2
step
	|poiname Glut
	|poilvl 93
	|poispot Gorgrond 46.20,50.80
	|poitype rare
	|poiquest 36204
	|poiitem 118229
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 44.7,50.7 < 20
	kill Glut##80868 |q 36204 |future |goto Gorgrond 46.20,50.80
step
	|poiname Gnarljaw
	|poilvl 101
	|poispot Gorgrond/21 54.0,31.0
	|poitype rare
	|poiquest 37413
	|poiitem 119397
	|poiitem 120945
	|poicurrency AC
	_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
	_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
	_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
	_Go to_ the bottom of the spiraling path |goto Gorgrond/20 64.8,38.5 < 15
	_Continue down_ |goto Gorgrond/21 54.4,72.0 < 15
	kill Gnarljaw##78269 |q 37413 |future |goto Gorgrond/21 54.0,31.0
step
	|poiname Greldrok the Cunning
	|poilvl 93
	|poispot Gorgrond 46.80,43.20
	|poitype rare
	|poiquest 36186
	|poiitem 118210
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 46.4,45.4
	kill Greldrok the Cunning##84431 |q 36186 |future |goto Gorgrond 46.80,43.20
step
	|poiname Grove Warden Yal
	|poilvl 100
	|poispot Gorgrond 59.7,42.9
	|poitype rare
	|poiquest 37375
	|poiitem 119414
	|poiitem 120945
	|poicurrency AC
	kill Grove Warden Yal##88583 |q 37375 |future |goto Gorgrond 59.7,42.9
	|tip Yal is inside the hut.
step
	|poiname Hive Queen Skrikka
	|poilvl 92
	|poispot Gorgrond 52.5,70.1
	|poitype rare
	|poiquest 35908
	|poiitem 118209
	|poicurrency GR
	kill Hive Queen Skrikka##83522 |q 35908 |future |goto Gorgrond/0 52.5,70.1
	|tip Skrikka is inside the stone building.
step
	|poiname Horgg
	|poiaccess Completionist
	|poilvl 101
	|poispot Gorgrond 46.1,27.2
	|poitype rare
	|poiquest 37365
	|poiitem 119229
	|poiitem 120945
	|poicurrency AC
	kill Horgg##86577 |q 37365 |future |goto Gorgrond/0 46.1,27.2
	|tip Horgg patrols up and down the road a short distance. You will need a group to defeat him.
step
	|poiname Hunter Bal'ra
	|poilvl 100
	|poispot Gorgrond 55.00,46.20
	|poitype rare
	|poiquest 37377
	|poiitem 119412
	|poiitem 120945
	|poicurrency AC
	kill Hunter Bal'ra##88672 |q 37377 |future |goto Gorgrond 55.00,46.20
	|tip She's next to the pond.
step
	|poiname Inventor Blammo
	|poiaccess Completionist
	|poilvl 101
	|poispot Gorgrond 47.60,30.60
	|poitype rare
	|poiquest 37367
	|poiitem 119226
	|poiitem 120945
	|poicurrency AC
	kill Inventor Blammo##86574 |q 37367 |future |goto Gorgrond 47.60,30.60
	|tip Blammo resides on the south side of The Pit. You will need a group to defeat her.
step
	|poiname King Slime
	|poilvl 100
	|poispot Gorgrond/21 42.0,75.1
	|poitype rare
	|poiquest 37412
	|poiitem 119351
	|poiitem 120945
	|poicurrency AC
	_Start up_ the path here |goto Gorgrond/0 56.0,52.2 < 15
	_Continue up_ |goto Gorgrond/0 54.4,54.9 < 15
	_Enter_ the cave |goto Gorgrond/0 53.8,55.7 < 15
	_Go to_ the bottom of the spiraling path |goto Gorgrond/21 59.2,72.6 < 15
	_Continue down_ |goto Gorgrond/21 50.6,41.4 < 15
	kill King Slime##78260 |q 37412 |future |goto Gorgrond/21 42.0,75.1
step
	|poiname Mandrakor
	|poilvl 93
	|poispot Gorgrond 50.60,53.20
	|poitype rare
	|poiquest 36178
	|poiitem 118709
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 49.4,53.4 < 20
	kill Mandrakor##84406 |q 36178 |future |goto Gorgrond 50.60,53.20
step
	|poiname Maniacal Madgard
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 49.00,33.80
	|poitype rare
	|poiquest 37363
	|poiitem 119230
	|poiitem 120945
	|poicurrency AC
	kill Maniacal Madgard##86562 |q 37363 |future |goto Gorgrond 49.00,33.80
	|tip Madgard will require a group to defeat. He deals extreme physical damage.
step
	|poiname Mogamago
	|poilvl 100
	|poispot Gorgrond 61.80,39.30
	|poitype rare
	|poiquest 37376
	|poiitem 119391
	|poiitem 120945
	|poicurrency AC
	kill Mogamago##88586 |q 37376 |future |goto Gorgrond 61.80,39.30
	|tip Mogamago is in the middle of the pond.
step
	|poiname Morgo Kain
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 46.3,23.6
	|poitype rare
	|poiquest 37364
	|poiitem 119227
	|poiitem 120945
	|poicurrency AC
	kill Morgo Kain##86582 |q 37364 |future |goto Gorgrond 46.3,23.6
	|tip Morgo deals heavy damage and will require a group to defeat. He's the Juggernaut!
step
	|poiname Mother Araneae
	|poilvl 93
	|poispot Gorgrond 53.40,78.20
	|poitype rare
	|poiquest 34726
	|poiitem 118208
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 52.4,77.0 < 20
	kill Mother Araneae##76473 |q 34726 |future |goto Gorgrond 53.40,78.20
step
	|poiname Riptar
	|poilvl 92
	|poispot Gorgrond 37.60,81.40
	|poitype rare
	|poiquest 36600
	|poiitem 118231
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 39.5,79.5 < 30
	_Go between_ the stones |goto Gorgrond/0 38.3,79.8
	kill Riptar##85970 |q 36600 |future |goto Gorgrond 37.60,81.40
step
	|poiname Rolkor
	|poilvl 93
	|poispot Gorgrond 47.80,41.40
	|poitype rare
	|poiquest 36393
	|poiitem 118211
	|poicurrency GR
	kill Rolkor##85264 |q 36393 |future |goto Gorgrond 47.80,41.40
step
	|poiname Stompalupagus
	|poilvl 92
	|poispot Gorgrond 54.20,72.40
	|poitype rare
	|poiquest 36837
	|poiitem 118228
	|poicurrency GR
	kill Stompalupagus##86520 |q 36837 |future |goto Gorgrond/0 54.1,72.5
	|tip Stompy wanders up and down this ravine.
step
	|poiname Stomper Kreego
	|poilvl 92
	|poispot Gorgrond 38.20,66.20
	|poitype rare
	|poiquest 35910
	|poiitem 118224
	|poicurrency GR
	_Go up_ this path |goto Gorgrond/0 39.0,65.7
	kill Stomper Kreego##79629 |q 35910 |future |goto Gorgrond 38.20,66.20
step
	|poiname Sulfurious
	|poilvl 94
	|poispot Gorgrond 40.20,59.60
	|poitype rare
	|poiquest 36394
	|poiitem 114227
	|poicurrency GR
	kill Sulfurious##80725 |q 36394 |future |goto Gorgrond/0 39.8,60.6
	|tip Sulfurious moves around this small pool of water.
step
	|poiname Sunclaw
	|poilvl 93
	|poispot Gorgrond 44.60,92.20
	|poitype rare
	|poiquest 36656
	|poiitem 118223
	|poicurrency GR
	kill Sunclaw##86137 |q 36656 |future |goto Gorgrond 44.60,92.20
	|tip Click the climbing ropes to reach to top of the rock.
step
	|poiname Swift Onyx Flayer
	|poilvl 100
	|poispot Gorgrond 59.6,32.0
	|poitype rare
	|poiquest 37374
	|poiitem 119367
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Gorgrond/0 62.1,34.7 < 15
	_Continue up_ the hill |goto Gorgrond/0 61.1,33.5 < 15
	_Enter_ the cave |goto Gorgrond/0 60.0,32.6 < 15
	kill Swift Onyx Flayer##88582 |q 37374 |future |goto Gorgrond 59.6,32.0
step
	|poiname Sylldross
	|poilvl 93
	|poispot Gorgrond 64.00,61.80
	|poitype rare
	|poiquest 36794
	|poiitem 118213
	|poicurrency GR
	_Go through_ the narrow channel in the Cimson Fen |goto Gorgrond/0 62.1,61.8
	kill Sylldross##86410 |q 36794 |future |goto Gorgrond 64.00,61.80
	|tip He swims around the group of large mushrooms.
step
	|poiname Typhon
	|poiaccess Completionist
	|poilvl 103
	|poispot Gorgrond 76.00,42.00
	|poitype rare
	|poiquest 37405
	|poicurrency GR
	kill Typhon##80371 |q 37405 |future |goto Gorgrond 76.00,42.00
	|tip Typhon will require a group to kill. He has 5 million health.
step
	|poiname Venolasix
	|poiaccess Completionist
	|poilvl 100
	|poispot Gorgrond 63.4,30.7
	|poitype rare
	|poiquest 37372
	|poiitem 119395
	|poiitem 120945
	|poicurrency AC
	_Go towards_ the large pool of water |goto Gorgrond/0 63.8,33.6
	kill Venolasix##86266 |q 37372 |future |goto Gorgrond 63.4,30.7
	|tip Venolasix is elite and does significant physical damage.
--//Saw Blade (Gorgrond)-----------------------------------------------------------------------------------------------
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 42.34,54.77
	|poitype treasure
	|poiquest 36003
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36003 |future |goto Gorgrond 42.34,54.77
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 47.51,43.63
	|poitype treasure
	|poiquest 36717
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36717 |future |goto Gorgrond 47.51,43.63
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 53.35,46.79
	|poitype treasure
	|poiquest 35701
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 35701 |future |goto Gorgrond 53.35,46.79
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 50.15,53.76
	|poitype treasure
	|poiquest 35984
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 49.5,53.4
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 35984 |future |goto Gorgrond 50.15,53.76
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond/19 36.8,50.5
	|poitype treasure
	|poiquest 36720
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.3,47.8
	_Go down_ to the bottom |goto Gorgrond/18 41.1,64.2
	_Go around_ and enter the left chamber |goto Gorgrond/19 48.0,37.9
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36720 |future |goto Gorgrond/19 37.1,51.5
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Botani Essence Seed
	|poilvl 92
	|poispot Gorgrond 41.98,81.55
	|poitype treasure
	|poiquest 35982
	|poicurrency GR
	_Enter_ the Evermoon Springs |goto Gorgrond/0 44.1,79.5
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Botani Essence Seed##226862 |q 35982 |future |goto Gorgrond 41.98,81.55
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Forgotten Ogre Cache
	|poilvl 92
	|poispot Gorgrond 49.65,78.83
	|poitype treasure
	|poiquest 35968
	|poicurrency GR
	_Enter_ the ruins |goto Gorgrond/0 49.6,80.5
	_Cross_ the pond |goto Gorgrond/0 50.1,79.2
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Ogre Cache##233507 |q 35968 |future |goto Gorgrond 49.65,78.83
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 47.01,69.05
	|poitype treasure
	|poiquest 35971
	|poicurrency GR
	_Warning_: Be wary of Horde guards! |only if Alliance
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 35971 |future |goto Gorgrond 47.01,69.05
	|tip It's located behind the tree at the top of the hill.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 45.80,89.31
	|poitype treasure
	|poiquest 36019
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 36019 |future |goto Gorgrond 45.80,89.31
	|tip Against the wall behind the tree.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Forgotten Skull Cache
	|poilvl 92
	|poispot Gorgrond 39.33,56.27
	|poitype treasure
	|poiquest 36716
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Forgotten Skull Cache##233513 |q 36716 |future |goto Gorgrond 39.33,56.27
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 56.74,57.27
	|poitype treasure
	|poiquest 35965
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 35965 |future |goto Gorgrond 56.74,57.27
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 41.14,77.26
	|poitype treasure
	|poiquest 35980
	|poicurrency GR
	_Follow_ the outside wall of Evermorn Springs |goto Gorgrond/0 42.6,76.7
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 35980 |future |goto Gorgrond 41.14,77.26
	|tip It is located around the tree next to the pond.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 60.50,72.76
	|poitype treasure
	|poiquest 36015
	|poicurrency GR
	_Enter_ Tangleheart |goto Gorgrond/0 56.3,71.8
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36015 |future |goto Gorgrond 60.50,72.76
	|tip Against the bramble wall.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 63.28,57.19
	|poitype treasure
	|poiquest 36430
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36430 |future |goto Gorgrond 63.28,57.19
	|tip Southeast of the pond against the rock wall.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 47.64,76.79
	|poitype treasure
	|poiquest 36714
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36714 |future |goto Gorgrond 47.64,76.79
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Mysterious Petrified Pod
	|poilvl 92
	|poispot Gorgrond 51.75,69.09
	|poitype treasure
	|poiquest 36715
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Mysterious Petrified Pod##233501 |q 36715 |future |goto Gorgrond 51.75,69.09
	|tip Next to the rubble and sapling tree.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 40.95,67.32
	|poitype treasure
	|poiquest 35979
	|poicurrency GR
	_Enter_ the Stonemaul Arena |goto Gorgrond/0 41.9,65.3
	_Go left_ at the fork |goto Gorgrond/0 40.3,66.4
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 35979 |future |goto Gorgrond 40.95,67.32
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Remains of Explorer Engineer Toldirk Ashlamp
	|poilvl 92
	|poispot Gorgrond 45.96,93.57
	|poitype treasure
	|poiquest 35975
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Remains of Explorer Engineer Toldirk Ashlamp##233520 |q 35975 |future |goto Gorgrond 45.96,93.57
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Remains of Grimnir Ashpick
	|poilvl 92
	|poispot Gorgrond 51.80,61.48
	|poitype treasure
	|poiquest 35966
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Remains of Grimnir Ashpick##233504 |q 35966 |future |goto Gorgrond 51.80,61.48
	|tip At the edge of the pond.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 51.64,72.26
	|poitype treasure
	|poiquest 35967
	|poicurrency GR
	_Enter_ Overlook Ruins |goto Gorgrond/0 50.4,73.0
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 35967 |future |goto Gorgrond 51.64,72.26
	|tip It's just behind the root by the small hill.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 45.31,81.95
	|poitype treasure
	|poiquest 35981
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 35981 |future |goto Gorgrond 45.31,81.95
	|tip Between the two tree roots.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 42.91,43.50
	|poitype treasure
	|poiquest 36001
	|poicurrency GR
	_Ascend_ the hill |goto Gorgrond/0 43.9,43.9
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36001 |future |goto Gorgrond 42.91,43.50
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 53.00,79.06
	|poitype treasure
	|poiquest 36713
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 51.4,77.6 < 10
	_Go left_ down the side passage |goto Gorgrond/0 52.0,78.6 < 10
	_Continue down_ the passage |goto Gorgrond/0 52.8,78.5 < 10
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36713 |future |goto Gorgrond/0 53.00,79.06
	|tip It's between the two pillars on the right, next to the water.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
step
	|poiname Unknown Petrified Egg
	|poilvl 92
	|poispot Gorgrond 47.24,51.80
	|poitype treasure
	|poiquest 36718
	|poicurrency GR
	|tip Click the mass of vines to summon your shredder, allowing you to access the treasure.
	click Unknown Petrified Egg##233505 |q 36718 |future |goto Gorgrond 47.24,51.80
	|tip It's behind a small outcropping of stones near the edge of the plateau.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("SawBlade")
--//Champion's Bond (Gorgrond)----------------------------------------------------------------------------------------
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 45.63,49.31
	|poitype treasure
	|poiquest 36722
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36722 |future |goto Gorgrond 45.63,49.31
	|tip It's the behind the pillar of stacked stones.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond/19 60.5,43.1
	|poitype treasure
	|poiquest 36723
	|poicurrency GR
	_Enter_ the cave |goto Gorgrond/0 43.5,48.0 < 15
	_Go down_ the spiraling ramp to the bottom |goto Gorgrond/19 61.4,77.1 < 15
	_Continue clockwise_ around the outside |goto Gorgrond/19 45.9,48.1 < 15
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36723 |future |goto Gorgrond/19 60.5,43.1
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 41.76,45.27
	|poitype treasure
	|poiquest 36726
	|poicurrency GR
	_Go up_ the road |goto Gorgrond/0 41.6,46.9
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36726 |future |goto Gorgrond 41.76,45.27
	|tip Up the small hill in front of the pile of stones.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 48.11,55.16
	|poitype treasure
	|poiquest 36730
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36730 |future |goto Gorgrond 48.11,55.16
	|tip Behind the pile of stones next to the stone pillar.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 51.33,40.55
	|poitype treasure
	|poiquest 36734
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 50.9,41.1 < 20
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36734 |future |goto Gorgrond 51.33,40.55
	|tip It's in the crevice between the two peaks.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 46.05,63.05
	|poitype treasure
	|poiquest 36736
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36736 |future |goto Gorgrond 46.05,63.05 
	|tip Next to the mountain.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 58.12,51.46
	|poitype treasure
	|poiquest 36739
	|poicurrency GR
	_Go up_ the hill and hug the wall |goto Gorgrond/0 57.8,52.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36739 |future |goto Gorgrond 58.12,51.46
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 59.56,72.75
	|poitype treasure
	|poiquest 36781
	|poicurrency GR
	_Enter_ Tangleheart |goto Gorgrond/0 56.6,72.0
	_Go right_ |goto Gorgrond/0 59.4,71.8
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36781 |future |goto Gorgrond 59.56,72.75
	|tip It's behind the tree root.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Aged Stone Container
	|poilvl 92
	|poispot Gorgrond 45.74,88.21
	|poitype treasure
	|poiquest 36784
	|poicurrency GR
	_Go up_ here |goto Gorgrond/0 46.3,88.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Aged Stone Container##233455 |q 36784 |future |goto Gorgrond 45.74,88.21
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 45.54,42.98
	|poitype treasure
	|poiquest 36733
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 45.4,44.2 < 20
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36733 |future |goto Gorgrond 45.54,42.98
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 45.07,69.93
	|poitype treasure
	|poiquest 36737
	|poicurrency GR
	_Walk across_ the stone |goto Gorgrond/0 44.7,70.3
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36737 |future |goto Gorgrond 45.07,69.93
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 61.55,58.55
	|poitype treasure
	|poiquest 36740
	|poicurrency GR
	_Follow_ the uppper ridge |goto Gorgrond/0 61.2,56.5
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36740 |future |goto Gorgrond 61.55,58.55
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 54.25,73.13
	|poitype treasure
	|poiquest 36782
	|poicurrency GR
	_Go up_ the hill |goto Gorgrond/0 54.4,71.2
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36782 |future |goto Gorgrond 54.25,73.13
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 42.17,93.08
	|poitype treasure
	|poiquest 36787
	|poicurrency GR
	_Go up_ the trail |goto Gorgrond/0 42.5,91.0
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36787 |future |goto Gorgrond 42.17,93.08
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Ogre Cache
	|poilvl 92
	|poispot Gorgrond 41.52,86.52
	|poitype treasure
	|poiquest 36789
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Ogre Cache##236284 |q 36789 |future |goto Gorgrond 41.52,86.52
	|tip It's next to the big tree.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 49.42,50.84
	|poitype treasure
	|poiquest 36710
	|poicurrency GR
	_Go up_ the trail |goto Gorgrond/0 50.3,49.8 < 10
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36710 |future |goto Gorgrond 49.42,50.84
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 42.19,52.03
	|poitype treasure
	|poiquest 36727
	|poicurrency GR
	_Follow_ the road |goto Gorgrond/0 42.6,53.6
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36727 |future |goto Gorgrond 42.19,52.03
	|tip In the pile of rubble.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 43.36,51.69
	|poitype treasure
	|poiquest 36731
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36731 |future |goto Gorgrond 43.36,51.69
	|tip Next to the stacked stone pillar.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 47.92,39.98
	|poitype treasure
	|poiquest 36735
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36735 |future |goto Gorgrond 47.92,39.98
	|tip Next to the big boulder.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 50.32,66.58
	|poitype treasure
	|poiquest 36738
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36738 |future |goto Gorgrond 50.32,66.58
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Ancient Titan Chest
	|poilvl 92
	|poispot Gorgrond 49.12,82.48
	|poitype treasure
	|poiquest 36783
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Ancient Titan Chest##233139 |q 36783 |future |goto Gorgrond 49.12,82.48
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 48.11,46.38
	|poitype treasure
	|poiquest 36721
	|poicurrency GR
	_Follow_ the top ridge |goto Gorgrond/0 48.8,48.1
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36721 |future |goto Gorgrond 48.11,46.38
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 41.85,58.89
	|poitype treasure
	|poiquest 36728
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36728 |future |goto Gorgrond 41.85,58.89
	|tip It's in the pile of stones.
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 42.05,64.29
	|poitype treasure
	|poiquest 36729
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36729 |future |goto Gorgrond 42.05,64.29
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
step
	|poiname Obsidian Crystal Formation
	|poilvl 92
	|poispot Gorgrond 44.18,46.65
	|poitype treasure
	|poiquest 36732
	|poicurrency GR
	|tip Click the boulder and Beatface will break it, allowing you to access the treasure.
	click Obsidian Crystal Formation##233522 |q 36732 |future |goto Gorgrond 44.18,46.65
	only if _G.select(3,_G.GetSpellInfo(161691)):find("ChampionsBond")
-----------------------------------------------------------------------
step
	|poiname Roardan the Sky Terror (Alliance)
	|poilvl 93
	|poispot Gorgrond/0 53.0,63.1
	|poitype rare
	|poiquest 35817
	|poiitem 113458
	|poicurrency 
	kill Roardan the Sky Terror##77093
	collect 1 Ebony Feather##113458 |n
	accept Trophy of Glory: Roardan the Sky Terror##35817 |use Ebony Feather##113458 |goto Gorgrond/0 53.0,63.1
	|tip Roardan flies all around the basin. Wait here and he will come right to you.
	only Alliance
step
	|poiname Roardan the Sky Terror (Horde)
	|poilvl 93
	|poispot Gorgrond/0 53.0,63.1
	|poitype rare
	|poiquest 35818
	|poiitem 113459
	|poicurrency 
	kill Roardan the Sky Terror##77093
	collect 1 Ebony Feather##113459 |n
	accept Trophy of Glory: Roardan the Sky Terror##35818 |use Ebony Feather##113459 |goto Gorgrond/0 53.0,63.1
	|tip Roardan flies all around the basin. Wait here and he will come right to you.
	only Horde
step
	|poiname Biolante (Alliance)
	|poilvl 93
	|poispot Gorgrond 60.80,54.00
	|poitype rare
	|poiquest 36502
	|poicurrency
	|poiitem 116159
	kill Biolante##75207
	collect 1 Writhing Green Tendril##116159 |n
	accept Trophy of Glory: Biolante##36502 |use Writhing Green Tendril##116159 |goto Gorgrond 60.80,54.00
	|tip Biolante walks around the perimeter of the lake.
	only Alliance
step
	|poiname Biolante (Horde)
	|poilvl 93
	|poispot Gorgrond 60.80,54.00
	|poitype rare
	|poiquest 36503
	|poicurrency
	|poiitem 116160
	kill Biolante##75207
	collect 1 Writhing Green Tendril##116160 |n
	accept Trophy of Glory: Biolante##36503 |use Writhing Green Tendril##116160 |goto Gorgrond 60.80,54.00
	|tip Biolante walks around the perimeter of the lake.
	only Horde
step
	|poiname Charl Doomwing (Alliance)
	|poilvl 93
	|poispot Gorgrond 46.00,46.80
	|poitype rare
	|poiquest 35816
	|poicurrency
	|poiitem 113457
	kill Charl Doomwing##81548
	collect 1 Fang of the Doomwing##113457 |n
	accept Trophy of Glory: Charl Doomwing##35816 |use Fang of the Doomwing##113457 |goto Gorgrond/0 45.8,50.0
	|tip Stand here and Charl will come to you. Be sure to aggro him while he is in flight.
	only Alliance
step
	|poiname Charl Doomwing (Horde)
	|poilvl 93
	|poispot Gorgrond 46.00,46.80
	|poitype rare
	|poiquest 35815
	|poicurrency
	|poiitem 113456
	kill Charl Doomwing##81548
	collect 1 Fang of the Doomwing##113456 |n
	accept Trophy of Glory: Charl Doomwing##35815 |use Fang of the Doomwing##113456 |goto Gorgrond/0 45.8,50.0
	|tip Stand here and Charl will come to you. Be sure to aggro him while he is in flight.
	only Horde
step
	|poiname Crater Lord Igneous (Alliance)
	|poilvl 93
	|poispot Gorgrond 42.80,59.20
	|poitype rare
	|poiquest 35812
	|poicurrency
	|poiitem 113449
	kill Crater Lord Igneous##81528
	collect 1 Chunk of Crater Lord##113449 |n
	accept Trophy of Glory: Crater Lord Igneous##35812 |use Chunk of Crater Lord##113449 |goto Gorgrond 42.80,59.20
	only Alliance
step
	|poiname Crater Lord Igneous (Horde)
	|poilvl 93
	|poispot Gorgrond 42.80,59.20
	|poitype rare
	|poiquest 35811
	|poicurrency
	|poiitem 113448
	kill Crater Lord Igneous##81528
	collect 1 Chunk of Crater Lord##113448 |n
	accept Trophy of Glory: Crater Lord Igneous##35811 |use Chunk of Crater Lord##113448 |goto Gorgrond 42.80,59.20
	only Horde
step
	|poiname Dessicus of the Dead Pools (Alliance)
	|poilvl 93
	|poispot Gorgrond 40.50,51.00
	|poitype rare
	|poiquest 35809
	|poicurrency
	|poiitem 113446
	kill Dessicus of the Dead Pools##81529
	collect 1 Globe of Dead Water##113446 |n
	accept Trophy of Glory: Dessicus##35809 |use Globe of Dead Water##113446 |goto Gorgrond 40.50,51.00
	only Alliance
step
	|poiname Dessicus of the Dead Pools (Horde)
	|poilvl 93
	|poispot Gorgrond 40.50,51.00
	|poitype rare
	|poiquest 35810
	|poicurrency
	|poiitem 113447
	kill Dessicus of the Dead Pools##81529
	collect 1 Globe of Dead Water##113447 |n
	accept Trophy of Glory: Dessicus##35810 |use Globe of Dead Water##113447 |goto Gorgrond 40.50,51.00
	only Horde
step
	|poiname Erosian the Violent (Alliance)
	|poilvl 93
	|poispot Gorgrond 51.80,41.60
	|poitype rare
	|poiquest 35808
	|poicurrency
	|poiitem 113445
	kill Erosian the Violent##81540
	collect 1 Crystalized Steam##113445 |n
	accept Trophy of Glory: Erosian##35808 |use Crystalized Steam##113445 |goto Gorgrond 51.80,41.60
	only Alliance
step
	|poiname Erosian the Violent (Horde)
	|poilvl 93
	|poispot Gorgrond 51.80,41.60
	|poitype rare
	|poiquest 35807
	|poicurrency
	|poiitem 113444
	kill Erosian the Violent##81540
	collect 1 Crystalized Steam##113444 |n
	accept Trophy of Glory: Erosian##35807 |use Crystalized Steam##113444 |goto Gorgrond 51.80,41.60
	only Horde
step
	|poiname Fungal Praetorian (Alliance)
	|poilvl 93
	|poispot Gorgrond 58.00,63.60
	|poitype rare
	|poiquest 35813
	|poicurrency
	|poiitem 113453
	kill Fungal Praetorian##80785
	collect 1 Precious Mushroom##113453 |n
	accept Trophy of Glory: Fungal Praetorian##35813 |use Precious Mushroom##113453 |goto Gorgrond 58.00,63.60
	only Alliance
step
	|poiname Fungal Praetorian (Horde)
	|poilvl 93
	|poispot Gorgrond 58.00,63.60
	|poitype rare
	|poiquest 35814
	|poicurrency
	|poiitem 113454
	kill Fungal Praetorian##80785
	collect 1 Precious Mushroom##113454 |n
	accept Trophy of Glory: Fungal Praetorian##35814 |use Precious Mushroom##113454 |goto Gorgrond 58.00,63.60
	only Horde
step
	|poiname Khargax the Devourer (Alliance)
	|poilvl 93
	|poispot Gorgrond 52.40,65.80
	|poitype rare
	|poiquest 35820
	|poicurrency
	|poiitem 113461
	kill Khargax the Devourer##81537
	collect 1 Shimmering Scale##113461 |n
	accept Trophy of Glory: Khargax the Devourer##35820 |use Shimmering Scale##113461 |goto Gorgrond 52.40,65.80
	only Alliance
step
	|poiname Khargax the Devourer (Horde)
	|poilvl 93
	|poispot Gorgrond 52.40,65.80
	|poitype rare
	|poiquest 35819
	|poicurrency
	|poiitem 113460
	kill Khargax the Devourer##81537
	collect 1 Shimmering Scale##113460 |n
	accept Trophy of Glory: Khargax the Devourer##35819 |use Shimmering Scale##113460 |goto Gorgrond 52.40,65.80
	only Horde
step
	talk Vindicator Maraad##75127
	turnin Trophy of Glory: Roardan the Sky Terror##35817 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113458) > 0
	turnin Trophy of Glory: Biolante##36502 |goto Gorgrond/0 52.8,59.7 |only if itemcount(116159) > 0
	turnin Trophy of Glory: Charl Doomwing##35816 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113457) > 0
	turnin Trophy of Glory: Crater Lord Igneous##35812 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113449) > 0
	turnin Trophy of Glory: Dessicus##35809 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113446) > 0
	turnin Trophy of Glory: Erosian##35808 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113445) > 0
	turnin Trophy of Glory: Fungal Praetorian##35813 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113453) > 0
	turnin Trophy of Glory: Khargax the Devourer##35820 |goto Gorgrond/0 52.8,59.7 |only if itemcount(113461) > 0
	only if havequest(35817) or havequest(36502) or havequest(35816) or havequest(35812) or havequest(35809) or havequest(35808) or havequest(35813) or havequest(35820)
	only Alliance
step
	talk Durotan##74594
	turnin Trophy of Glory: Roardan the Sky Terror##35818 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113459) > 0
	turnin Trophy of Glory: Biolante##36503 |goto Gorgrond/0 46.00,70.20 |only if itemcount(116160) > 0
	turnin Trophy of Glory: Charl Doomwing##35815 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113456) > 0
	turnin Trophy of Glory: Crater Lord Igneous##35811 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113448) > 0
	turnin Trophy of Glory: Dessicus##35810 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113447) > 0
	turnin Trophy of Glory: Erosian##35807 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113444) > 0
	turnin Trophy of Glory: Fungal Praetorian##35814 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113454) > 0
	turnin Trophy of Glory: Khargax the Devourer##35819 |goto Gorgrond/0 46.00,70.20 |only if itemcount(113460) > 0
	only if havequest(35818) or havequest(36503) or havequest(35815) or havequest(35811) or havequest(35810) or havequest(35807) or havequest(35814) or havequest(35819)
	only Horde
--//Talador\\--
step
	|poiname Aarko's Family Treasure
	|poilvl 94
	|poispot Talador 36.53,95.98
	|poitype treasure
	|poiquest 34182
	|poiitem 117567
	|poicurrency GR
	_Follow_ the road |goto Talador/0 36.5,96.0
	talk Aarko##77664
	Ask him: "_Do you need help?_"
	from Shadow Raider##77673+, Shadow Pillager##88039+, Shadow Felcaster##88040+
	kill Surok Darkstorm##77677
	click Aarko's Family Treasure##227793 |q 34182 |future |goto Talador 36.53,95.98
	|tip It's a purple chest that spawns next to Aarko after defeating the waves of enemies.
step
	|poiname Amethyl Crystal
	|poilvl 94
	|poispot Talador 62.08,32.38
	|poitype treasure
	|poiquest 34236
	|poiitem 116131
	|poicurrency GR, GL
	click Amethyl Crystal##227955 |q 34236 |future |goto Talador 62.08,32.38
	|tip It's a pink crystal at the bottom of the water.
step
	|poiname Aruuna Mining Cart
	|poilvl 94
	|poispot Talador 81.84,34.94
	|poitype treasure
	|poiquest 34260
	|poiitem 109118
	_Enter_ the mine |goto Talador/0 78.5,35.5
	_Continue right_ into the mine |goto Talador/0 80.4,34.8
	_Go left_ in the main cave |goto Talador/0 81.2,35.4
	_Drop down_ here |goto Talador/0 81.8,35.6
	click Aruuna Mining Cart##228024 |q 34260 |future |goto Talador 81.84,34.94
	|tip It's a wooden cart full of purple crystals.
step
	|poiname Barrel of Fish
	|poilvl 94
	|poispot Talador 62.41,47.97
	|poitype treasure
	|poiquest 34252
	|poicurrency GR
	click Barrel of Fish##228016 |q 34252 |future |goto Talador 62.41,47.97
	|tip On the dock with two small boats.
step
	|poiname Bonechewer Remnants
	|poilvl 94
	|poispot Talador 33.29,76.80
	|poitype treasure
	|poiquest 34259
	|poicurrency GL
	_Enter_ the hut |goto Talador/0 33.6,76.2
	click Bonechewer Remnants##228023 |q 34259 |future |goto Talador 33.29,76.80
	|tip It's a small brown chest found inside the back of the hut.
step
	|poiname Bonechewer Spear
	|poilvl 94
	|poispot Talador 37.60,74.90
	|poitype treasure
	|poiquest 34148
	|poiitem 112371
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 36.8,75.3
	kill Viperlash##77564
	click Bonechewer Spear##227654 |q 34148 |future |goto Talador 37.60,74.90
	|tip The spear will drop after Viperlash dies. Viperlash is a 95 elite.
step
	|poiname Bright Coin
	|poilvl 94
	|poispot Talador 73.52,51.37
	|poitype treasure
	|poiquest 34471
	|poiitem 116127
	|poicurrency GL
	click Bright Coin##229354 |q 34471 |future |goto Talador 73.52,51.37
	|tip It's underwater beneath the bridge.
step
	|poiname Burning Blade Cache
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 70.10,07.00
	|poitype treasure
	|poiquest 36937
	|poiitem 120945
	|poicurrency AC
	_Enter_ Bladefury's Command |goto Talador/0 68.3,5.6
	_Follow_ the road right |goto Talador/0 69.5,4.5
	_Enter_ the building |goto Talador/0 69.9,6.5
	click Burning Blade Cache##236935 |q 36937 |future |goto Talador 70.10,07.00
	|tip It's a locked brown chest sitting against the wall.
step
	|poiname Charred Sword
	|poilvl 94
	|poispot Talador 77.04,49.96
	|poitype treasure
	|poiquest 34248
	|poiitem 116116
	click Charred Sword##228012 |q 34248 |future |goto Talador 77.04,49.96
	|tip It's a large sword stuck in the ground.
step
	|poiname Curious Deathweb Egg
	|poilvl 94
	|poispot Talador 66.50,86.94
	|poitype treasure
	|poiquest 34239
	|poiitem 117569
	_Enter_ the cave |goto Talador/0 61.3,84.2
	_Go to_ the main cavern |goto Talador/0 65.4,86.2
	click Curious Deathweb Egg##227996 |q 34239 |future |goto Talador 66.50,86.94
	|tip It is a purple, motionless egg sack found behind the large crystal formation towards the back of the cave.
step
	|poiname Deceptia's Smoldering Boots
	|poilvl 94
	|poispot Talador 58.90,12.00
	|poitype treasure
	|poiquest 33933
	|poiitem 108743
	click Deceptia's Smoldering Boots##226976 |q 33933 |future |goto Talador 58.90,12.00
	|tip A small pair of boots in the ruined camp.
step
	|poiname Draenei Weapons
	|poilvl 94
	|poispot Talador 55.25,66.71
	|poitype treasure
	|poiquest 34253
	|poiitem 116118
	|poicurrency GL
	click Draenei Weapons##228017 |q 34253 |future |goto Talador 55.25,66.71
	|tip It's the weapon rack near the anvil.
step
	|poiname Farmer's Bounty
	|poilvl 94
	|poispot Talador 35.41,96.56
	|poitype treasure
	|poiquest 34249
	|poicurrency GL
	_Follow_ the road |goto Talador/0 37.8,95.9
	_Go around_ the building |goto Talador/0 35.9,96.8
	click Farmer's Bounty##228013 |q 34249 |future |goto Talador 35.41,96.56
	|tip It's the barrel at the end of the pier.
step
	|poiname Foreman's Lunchbox
	|poilvl 94
	|poispot Talador 57.36,28.66
	|poitype treasure
	|poiquest 34238
	|poiitem 116120
	_Enter_ Archenon Siegeyard |goto Talador/0 57.2,29.7
	_Jump up_ onto this scaffolding |goto Talador/0 57.6,28.2 < 3
	_Jump up_ onto the right board and then the back of the scaffold, then over to the first pillar |goto Talador/0 57.6,28.4 < 2
	_Jump to_ the second pillar |goto Talador/0 57.5,28.5 < 2
	_Jump onto_ the last scaffold |goto Talador 57.36,28.66 < 3
	click Foreman's Lunchbox##227956 |q 34238 |future |goto Talador 57.36,28.66
	|tip It's a small brown box found sitting on the upper level of a group of scaffolding.
step
	|poiname Iron Box
	|poilvl 94
	|poispot Talador 64.58,79.20
	|poitype treasure
	|poiquest 34251
	|poiitem 117571
	|poicurrency GL
	_Enter_ the building |goto Talador/0 65.2,79.1
	click Iron Box##228015 |q 34251 |future |goto Talador 64.58,79.20
	|tip It's a small gray lockbox found against the wall.
step
	|poiname Iron Scout
	|poilvl 94
	|poispot Talador 75.00,36.00
	|poitype treasure
	|poiquest 33649
	|poicurrency GR
	click Iron Scout##75644
	Choose: "_Search the body._" |q 33649 |future |goto Talador 75.00,36.00
	|tip It's an orc corpse laying on the ground.
step
	|poiname Isaari's Cache
	|poilvl 94
	|poispot Talador 57.20,75.40
	|poitype treasure
	|poiquest 34134
	|poiitem 117563
	|poicurrency GR
	Collecting this Treasure may flag you for PvP |only Horde
	click Isaari's Cache##239198 |q 34134 |future |goto Talador 57.20,75.40
	|tip It's a purple chest sitting at the foot of a bench.
step
	|poiname Jug of Aged Ironwine
	|poilvl 94
	|poispot Talador 65.47,11.37
	|poitype treasure
	|poiquest 34233
	|poiitem 117568
	_Drop down_ at the waterfall |goto Talador/0 65.47,11.37 < 15
	_Drop down_ and enter the cave |goto Talador/0 64.8,9.3 < 10
	click Jug of Aged Ironwine##227953 |q 34233 |future |goto Talador 65.47,11.37
	|tip It's a light-brown jug sitting in shallow water at the back of the cave.
step
	|poiname Keluu's Belongings
	|poilvl 94
	|poispot Talador 75.68,41.40
	|poitype treasure
	|poiquest 34261
	|poicurrency GL
	click Keluu's Belongings##228025 |q 34261 |future |goto Talador 75.68,41.40
	|tip It's under the bridge next to the stream.
step
	|poiname Ketya's Stash
	|poilvl 94
	|poispot Talador 53.97,27.69
	|poitype treasure
	|poiquest 34290
	|poiitem 116402
	|poiitem 116121
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 53.3,26.1
	Avoid the beams of light and totem circles
	click Ketya's Stash##228570 |q 34290 |future |goto Talador 53.97,27.69
	|tip It's a large silver chest found on a platform at the back of the cave.
step
	|poiname Light of the Sea
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 38.19,12.42
	|poitype treasure
	|poiquest 34258
	|poicurrency GL
	_Follow_ the pier |goto Talador/0 35.4,17.1
	click Light of the Sea##228022 |q 34258 |future |goto Talador 38.19,12.42
	|tip It's a bright white sphere.
step
	|poiname Lightbearer
	|poilvl 94
	|poispot Talador 68.80,56.20
	|poitype treasure
	|poiquest 34101
	|poiitem 109192
	click Lightbearer##227527 |q 34101 |future |goto Talador 68.80,56.20
	|tip It's by the tree next to the wall.
step
	|poiname Luminous Shell
	|poilvl 94
	|poispot Talador 52.56,29.54
	|poitype treasure
	|poiquest 34235
	|poiitem 116132
	|poicurrency GL
	click Luminous Shell##227954 |q 34235 |future |goto Talador 52.56,29.54
	|tip On the far shore across the small stream.
step
	|poiname Pure Crystal Dust
	|poilvl 94
	|poispot Talador 78.21,14.71
	|poitype treasure
	|poiquest 34263
	|poiitem 117572
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 75.6,22.0
	_Go up_ the ramp |goto Talador/0 77.9,18.7
	_Continue up and around_ the top level |goto Talador/0 79.3,16.0
	click Pure Crystal Dust##228026 |q 34263 |future |goto Talador 78.21,14.71
	|tip It's a purple pile next to the broken cart.
step
	|poiname Relic of Aruuna
	|poilvl 94
	|poispot Talador 75.78,44.72
	|poitype treasure
	|poiquest 34250
	|poiitem 116128
	|poicurrency GL
	_Enter_ the building |goto Talador/0 76.1,44.4 < 10
	click Relic of Aruuna##228014 |q 34250 |future |goto Talador 75.78,44.72
	|tip It's a small chest found on the upper platform of the building.
step
	|poiname Relic of Telmor
	|poilvl 94
	|poispot Talador 46.96,91.74
	|poitype treasure
	|poiquest 34256
	|poiitem 116128
	|poicurrency GL
	_Enter_ the building |goto Talador/0 47.9,90.7 < 20
	click Relic of Telmor##228020 |q 34256 |future |goto Talador 46.96,91.74
	|tip It's a purple chest sitting on the ground inside the building.
step
	|poiname Rook's Tacklebox
	|poilvl 94
	|poispot Talador 64.90,13.30
	|poitype treasure
	|poiquest 34232
	|poiitem 116117
	|poicurrency GL
	_Cross_ the waterfall |goto Talador/0 65.6,14.3 < 15
	click Rook's Tacklebox##227951 |q 34232 |future |goto Talador 64.90,13.30
	|tip It's an open brown box with lures and bobbers found near the water.
step
	|poiname Rusted Lockbox
	|poilvl 94
	|poispot Talador 65.96,85.13
	|poitype treasure
	|poiquest 34276
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 61.4,84.2 < 15
	_Enter_ the main cavern |goto Talador/0 63.6,84.8 < 15
	_Swim down_ until you see the treasure |goto Talador 65.96,85.13 < 20
	click Rusted Lockbox##228483 |q 34276 |future |goto Talador 65.96,85.13
	|tip It's all the way at the bottom.
step
	|poiname Soulbinder's Reliquary
	|poilvl 94
	|poispot Talador/14 28.2,34.9
	|poitype treasure
	|poiquest 34254
	|poiitem 117570
	|poicurrency GL
	_Enter_ the crypt |goto Talador/14 47.4,86.7 < 15
	_Go left_ into the room |goto Talador/14 38.7,51.6 < 15
	click Soulbinder's Reliquary##228018 |q 34254 |future |goto Talador/14 28.2,34.9
	|tip It's a stone chest with symbols written on it.
step
	|poiname Teroclaw Nest 1
	|poilvl 94
	|poispot Talador 74.60,29.30
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 1##230643 |q 35162 |future |goto Talador 74.60,29.30
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 10
	|poilvl 94
	|poispot Talador 39.30,77.70
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 10##230643 |q 35162 |future |goto Talador 39.30,77.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 2
	|poilvl 94
	|poispot Talador 73.50,30.70
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 2##230643 |q 35162 |future |goto Talador 73.50,30.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 3
	|poilvl 94
	|poispot Talador 74.30,34.00
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 3##230643 |q 35162 |future |goto Talador 74.30,34.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 4
	|poilvl 94
	|poispot Talador 72.80,35.60
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 4##230643 |q 35162 |future |goto Talador 72.80,35.60
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 5
	|poilvl 94
	|poispot Talador 72.40,37.00
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 5##230643 |q 35162 |future |goto Talador 72.40,37.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 6
	|poilvl 94
	|poispot Talador 70.90,35.50
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 6##230643 |q 35162 |future |goto Talador 70.90,35.50
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 7
	|poilvl 94
	|poispot Talador 70.80,32.00
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 7##230643 |q 35162 |future |goto Talador 70.80,32.00
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 8
	|poilvl 94
	|poispot Talador 54.10,56.30
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 8##230643 |q 35162 |future |goto Talador 54.10,56.30
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Teroclaw Nest 9
	|poilvl 94
	|poispot Talador 39.80,76.70
	|poitype treasure
	|poiquest 35162
	|poiitem 112699
	If the nest is not here, click here to try _another location_ |confirm
	click Teroclaw Nest 9##230643 |q 35162 |future |goto Talador 39.80,76.70
	|tip It's a nest of small purple and pink eggs sitting on the ground.
step
	|poiname Treasure of Ango'rosh
	|poilvl 94
	|poispot Talador 38.33,84.50
	|poitype treasure
	|poiquest 34257
	|poiitem 116119
	_Go to_ the ruins |goto Talador/0 38.8,83.6
	click Treasure of Ango'rosh##228021 |q 34257 |future |goto Talador 38.33,84.50
	|tip It is a small gold chest sitting atop a rock.
step
	|poiname Webbed Sac
	|poilvl 94
	|poispot Talador 65.44,88.60
	|poitype treasure
	|poiquest 34255
	|poicurrency GL
	_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
	_Go up_ the ramp |goto Talador/0 64.5,86.9 < 15
	click Webbed Sac##228019 |q 34255 |future |goto Talador 65.44,88.60
	|tip It's hanging from a crystal suspended by webbing.
step
	|poiname Yuuri's Gift
	|poilvl 94
	|poispot Talador 40.60,89.50
	|poitype treasure
	|poiquest 34140
	|poicurrency GR
	click Yuuri's Gift##227587 |q 34140 |future |goto Talador 40.60,89.50
	|tip In the back of the small wagon.
	only if completedq(33530)
step
	|poiname Gift of the Ancients
	|poilvl 94
	|poispot Talador 28.39,74.19
	|poitype treasure
	|poiquest 36829
	|poiitem 118686
	_Go up_ the trail |goto Talador/0 27.3,75.9 < 20
	_Enter_ the cave |goto Talador/0 27.9,75.4 < 15
	click Statue##86486
	click Gift of the Ancients##236483 |q 36829 |future |goto Talador 28.39,74.19
	|tip Click the statues to make all three face inward.
step
	|poiname Sparkling Pool
	|poilvl 94
	|poispot Talador 39.30,41.72
	|poitype treasure
	|poiquest 34207
	|poiitem 112623
	|poicurrency GR
	Fish from the Sparkling Pool |q 34207 |future |goto Talador 39.30,41.72 |cast Fishing##131474
step
	|poiname Norana's Cache
	|poiaccess Completionist
	|poilvl 94
	|poispot Talador 61.10,71.70
	|poitype treasure
	|poiquest 34116
	|poiitem 117563
	|poicurrency GR
	Norana's Cache treasure requires you to save 4 people from Cocoons. Once saved, you must go back to Sunsworn Camp to loot the treasure, even though it will be marked as completed
	The treasure can be found _here_ at [61.1,71.7]
	confirm |q 34116 |future
	only Horde
step
	Open Cocoons and Save 4 Friends |goto Talador 61.2,84.4
	|tip As you find friendly NPC's, they will tell you how many more of their friends you need to save from the cocoons.
	click Norana's Cache##239194 |q 34116 |future |goto Talador 61.10,71.70
	|tip It's a brown and silver chest found after saving 4 NPC's from cocoons.
	Don't forget to loot the treasure _found here_ |goto Talador 61.10,71.70
	only Horde
step
	|poiname Avatar of Socrethar
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 46.60,35.20
	|poitype rare
	|poiquest 37338
	|poiitem 119378
	|poiitem 120945
	|poicurrency AC
	_Enter_ Shattrath Commons |goto Talador/0 50.1,35.1 < 20
	kill Avatar of Socrethar##88043 |q 37338 |future |goto Talador 46.60,35.20
	|tip He patrols a short distance.
step
	|poiname Bombardier Gu'gok
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 44.00,38.00
	|poitype rare
	|poiquest 37339
	|poiitem 119413
	|poiitem 120945
	|poicurrency AC
	kill Gronnling Mount##87601
	kill Bombardier Gu'gok##87597 |q 37339 |future |goto Talador 44.00,38.00
	|tip He patrols a short distance. Killing mobs in the area can cause Gu'gok to spawn.
step
	|poiname Cro Fleshrender
	|poilvl 95
	|poispot Talador 37.3,70.5
	|poitype rare
	|poiquest 34165
	|poiitem 116123
	|poicurrency GR
	kill Cro Fleshrender##77620 |q 34165 |future |goto Talador 37.3,70.5
	|tip He's in the pit.
step
	|poiname Dr. Gloom
	|poilvl 94
	|poispot Talador 68.4,15.8
	|poitype rare
	|poiquest 34142
	|poiitem 112499
	|poicurrency GR
	_Go through_ the pass |goto Talador/0 67.5,17.0 < 20
	kill Dr. Gloom##77561 |q 34142 |future |goto Talador/0 68.4,15.8
step
	|poiname Echo of Murmur
	|poilvl 95
	|poispot Talador 34.20,57.00
	|poitype rare
	|poiquest 34221
	|poiitem 113670
	_Go right_ at the fork in the road |goto Talador/0 33.8,60.2
	kill Shadow Council Summoner##77794
	kill Echo of Murmur##77795 |q 34221 |future |goto Talador/0 34.20,57.00
	|tip Kill the summoners to free Echo of Murmur.
step
	|poiname Felbark
	|poilvl 95
	|poispot Talador 50.80,83.80
	|poitype rare
	|poiquest 35018
	|poiitem 112373
	|poicurrency GR
	kill Felbark##80204 |q 35018 |future |goto Talador 50.80,83.80
	|tip Felbark walks a circle around the big tree.
step
	|poiname Felfire Consort
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 50.20,35.20
	|poitype rare
	|poiquest 37341
	|poiitem 119386
	|poiitem 120945
	|poicurrency AC
	kill Felfire Consort##82992 |q 37341 |future |goto Talador 50.20,35.20
	|tip Felfire Consort is currently bugged and will most often be found in another location evading.
step
	|poiname Frenzied Golem
	|poilvl 95
	|poispot Talador 46.2,54.8
	|poitype rare
	|poiquest 34145
	|poiitem 113287
	|poicurrency GR
	kill Frenzied Golem##77614 |q 34145 |future |goto Talador 46.2,54.8
step
	|poiname Gennadian
	|poilvl 94
	|poispot Talador 67.40,80.60
	|poitype rare
	|poiquest 34929
	|poiitem 116075
	|poicurrency GR
	_Go through_ the stone passage |goto Talador/0 68.4,80.9
	kill Gennadian##80471 |q 34929 |future |goto Talador 67.40,80.60
step
	|poiname Glimmerwing
	|poilvl 94
	|poispot Talador 31.80,63.80
	|poitype rare
	|poiquest 34189
	|poiitem 116113
	|poicurrency GR
	kill Glimmerwing##77719 |q 34189 |future |goto Talador 31.80,63.80
	|tip Glimmerwing patrols the small clearing.
step
	|poiname Grrbrrgle
	|poilvl 97
	|poispot Talador 22.2,74.2
	|poitype rare
	|poiquest 36919
	|poiitem 120436
	|poicurrency GR
	_Go through_ the pass |goto Talador/0 27.7,67.8
	_Cross_ the water |goto Talador/0 24.1,71.5
	click A Restless Crate##3365
	kill Grrbrrgle##85572 |q 36919 |future |goto Talador/0 22.2,74.2
	|tip Opening the crate will spawn Grrbrrgle.
step
	|poiname Gug'tol
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 47.60,39.00
	|poitype rare
	|poiquest 37340
	|poiitem 119402
	|poiitem 120945
	|poicurrency AC
	_Enter_ Shattrath Commons |goto Talador/0 50.0,35.2 < 20
	_Go up_ the steps |goto Talador/0 47.5,36.4 < 15
	_Enter_ the building |goto Talador/0 47.6,37.8 < 10
	kill Gug'tol##83019 |q 37340 |future |goto Talador 47.60,39.00
step
	|poiname Haakun the All-Consuming
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 48.00,25.00
	|poitype rare
	|poiquest 37312
	|poiitem 119403
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Talador/0 46.9,27.5 < 15
	_Go up_ the stairs |goto Talador/0 47.5,25.8 < 7
	_Go to_ the balcony |goto Talador/0 47.8,25.7 < 10
	kill Haakun the All-Consuming##83008 |q 37312 |future |goto Talador 48.00,25.00
step
	|poiname Hammertooth
	|poilvl 94
	|poispot Talador 62.00,46.00
	|poitype rare
	|poiquest 34185
	|poiitem 116124
	|poicurrency GR
	kill Hammertooth##77715 |q 34185 |future |goto Talador 62.00,46.00
	|tip Hammertooth swims all around this side of the lake.
step
	|poiname Hen-Mother Hami
	|poilvl 94
	|poispot Talador 78.00,50.40
	|poitype rare
	|poiquest 34167
	|poiitem 112369
	|poicurrency GR
	kill Hen-Mother Hami##77626 |q 34167 |future |goto Talador 78.00,50.40
	|tip Hami flies all around this area.
step
	|poiname Kharazos the Triumphant + Galzomar + Sikthiss
	|poilvl 95
	|poispot Talador 56.60,63.60
	|poitype rare
	|poiquest 35219
	|poiitem 116122
	|poicurrency GR
	kill Galzomar##78713
	kill Sikthiss##78715
	kill Kharazos the Triumphant##78710 |q 35219 |future |goto Talador 56.60,63.60
	|tip One of these three rares can spawn at a time. They all share the same quest and rewards.
step
	|poiname Klikixx
	|poilvl 95
	|poispot Talador 66.80,85.40
	|poitype rare
	|poiquest 34498
	|poiitem 116125
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 61.3,84.2 < 15
	_Go up_ the right ramp |goto Talador/0 64.4,86.6 < 15
	_Continue_ going down the side passage with spider eggs |goto Talador/0 66.4,87.9 < 15
	kill Klikixx##78872 |q 34498 |future |goto Talador 66.80,85.40
step
	|poiname Kurlosh Doomfang
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 33.5,37.8
	|poitype rare
	|poiquest 37348
	|poiitem 119394
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Residential District |goto Talador/0 35.7,39.8
	_Enter_ the building |goto Talador/0 35.7,38.3 < 8
	_Go up_ the stairs |goto Talador/0 37.0,38.0 < 8
	kill Kurlosh Doomfang##82988 |q 37348 |future |goto Talador 33.5,37.8
step
	|poiname Lady Demlash
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 33.80,37.80
	|poitype rare
	|poiquest 37346
	|poiitem 119352
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Residential District |goto Talador/0 35.7,39.8
	_Enter_ the building |goto Talador/0 33.8,38.3 < 10
	kill Lady Demlash##82942 |q 37346 |future |goto Talador 33.80,37.80
step
	|poiname Legion Vanguard
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 38.0,20.8
	|poitype rare
	|poiquest 37342
	|poiitem 119385
	|poiitem 120945
	|poicurrency AC
	kill Legion Vanguard##88494 |q 37342 |future |goto Talador 38.0,20.8
	|tip You must first kill around 10 channeling Soulspeakers before the event starts. You will then have to deal with 3 waves of enemies before the Vanguard emerges.
step
	|poiname Lo'marg Jawcrusher
	|poilvl 95
	|poispot Talador 49.00,92.00
	|poitype rare
	|poiquest 34208
	|poiitem 116070
	|poicurrency GR
	_Enter_ Telmor |goto Talador/0 48.7,87.4
	_Ride_ the elevator to the top |goto Talador/0 49.1,91.9
	kill Lo'marg Jawcrusher##77784 |q 34208 |future |goto Talador/0 49.2,92.3
step
	|poiname Lord Korinak
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 30.50,26.40
	|poitype rare
	|poiquest 37345
	|poiitem 119388
	|poiitem 120945
	|poicurrency AC
	_Ride_ the elevator up |goto Talador/0 32.5,33.5
	_Cross_ the bridge |goto Talador/0 31.3,28.7
	kill Lord Korinak##82920 |q 37345 |future |goto Talador 30.50,26.40
step
	|poiname Matron of Sin
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 39.00,49.60
	|poitype rare
	|poiquest 37349
	|poiitem 119353
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Talador/0 40.8,49.7
	kill Matron of Sin##82998 |q 37349 |future |goto Talador 39.00,49.60
step
	|poiname No'losh
	|poilvl 95
	|poispot Talador 86.40,30.40
	|poitype rare
	|poiquest 34859
	|poiitem 116077
	|poicurrency GR
	kill No'losh##79334 |q 34859 |future |goto Talador 86.40,30.40
	|tip No'losh walks up and down the ravine.
step
	|poiname Orumo the Observer
	|poiaccess Completionist
	|poilvl 103
	|poispot Talador 31.40,47.50
	|poitype rare
	|poiquest 37344
	|poiitem 119375
	|poiitem 120945
	|poicurrency AC
	_Ride_ the elevator up |goto Talador/0 35.7,45.6
	_Go up_ the stairs |goto Talador/0 32.5,47.6
	kill Orumo the Observer##87668 |q 37344 |future |goto Talador 31.40,47.50
	|tip Orumo can only summoned by activating the 5 runes at the same time. These runes have semi-transparent enemies in them. You will need a full group to kill him.
step
	|poiname Ra'kahn
	|poilvl 95
	|poispot Talador 59.50,59.60
	|poitype rare
	|poiquest 34196
	|poiitem 116112
	|poicurrency GR
	_Enter_ the cave |goto Talador/0 60.0,57.7 < 20
	kill Ra'kahn##77741 |q 34196 |future |goto Talador 59.50,59.60
step
	|poiname Shadowflame Terrorwalker
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 41.00,42.00
	|poitype rare
	|poiquest 37347
	|poiitem 119393
	|poiitem 120945
	|poicurrency AC
	kill Shadowflame Terrorwalker##82930 |q 37347 |future |goto Talador 41.00,42.00
	|tip He is at the heart of Shattrath Commons.
step
	|poiname Shirzir
	|poilvl 95
	|poispot Talador 41.80,59.40
	|poitype rare
	|poiquest 34671
	|poiitem 112370
	|poicurrency GR
	_Enter_ the crypt |goto Talador/14 47.6,87.1 < 15
	_Go straight_ into the large room |goto Talador/14 51.4,45.8 < 15
	kill Shirzir##79543 |q 34671 |future |goto Talador/14 67.4,23.3
step
	|poiname Steeltusk
	|poilvl 95
	|poispot Talador 67.8,35.5
	|poitype rare
	|poiquest 36858
	|poiitem 117562
	|poicurrency GR
	kill Steeltusk##86549 |q 36858 |future |goto Talador 67.8,35.5
step
	|poiname Strategist Ankor + Archmagus Tekar + Soulbinder Naylana
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 46.00,27.40
	|poitype rare
	|poiquest 37337
	|poiitem 119350
	|poicurrency GR
	kill Strategist Ankor##88071
	kill Soulbinder Naylana##88083
	kill Archmagus Tekar##88072
	Defeat the trio |q 37337 |future |goto Talador 46.00,27.40
step
	|poiname Taladorantula
	|poilvl 95
	|poispot Talador 59.00,88.00
	|poitype rare
	|poiquest 34171
	|poiitem 116126
	|poicurrency GR
	_Go up_ the hill |goto Talador/0 58.2,85.5
	kill Taladorantula##77634 |q 34171 |future |goto Talador 59.00,88.00
	|tip Run around stomping on little spiders to get Taladorantula to spawn.
step
	|poiname Talonpriest Zorkra
	|poilvl 95
	|poispot Talador 53.8,91.4
	|poitype rare
	|poiquest 34668
	|poiitem 116110
	|poicurrency GR
	_Go up_ the road |goto Talador/0 53.2,89.0
	kill Talonpriest Zorkra##79485 |q 34668 |future |goto Talador 53.8,91.4
step
	|poiname Underseer Bloodmane
	|poilvl 94
	|poispot Talador 63.80,20.70
	|poitype rare
	|poiquest 34945
	|poiitem 112475
	|poicurrency GR
	_Go up_ the hill |goto Talador/0 62.2,22.9 < 20
	_Enter_ the building |goto Talador/0 63.2,22.1 < 10
	kill Underseer Bloodmane##80524 |q 34945 |future |goto Talador 63.80,20.70
step
	|poiname Vigilant Paarthos
	|poiaccess Completionist
	|poilvl 102
	|poispot Talador 36.80,41.00
	|poitype rare
	|poiquest 37350
	|poiitem 119383
	|poiitem 120945
	|poicurrency AC
	kill Vigilant Paarthos##88436 |q 37350 |future |goto Talador 36.80,41.00
	|tip Near the fountain in the middle of the park.
step
	|poiname Wandering Vindicator
	|poilvl 94
	|poispot Talador 69.7,33.2
	|poitype rare
	|poiquest 34205
	|poiitem 112261
	|poicurrency GR
	kill Wandering Vindicator##77776 |goto Talador 69.60,33.40
	click Hope |q 34205 |future |goto Talador/0 69.7,33.2
	|tip Stuck in the ground near a tombstone and shield.
step
	|poiname Xothear, the Destroyer
	|poiaccess Completionist
	|poilvl 101
	|poispot Talador 38.00,14.60
	|poitype rare
	|poiquest 37343
	|poiitem 119371
	|poiitem 120945
	|poicurrency AC
	kill Xothear, the Destroyer##82922 |q 37343 |future |goto Talador 38.00,14.60
	|tip He is all the way at the end of Shattrath Port.
step
	|poiname Yazheera the Incinerator
	|poilvl 94
	|poispot Talador 53.80,25.80
	|poitype rare
	|poiquest 34135
	|poiitem 112263
	|poicurrency GR
	kill Yazheera the Incinerator##77529 |q 34135 |future |goto Talador 53.80,25.80
--//Spires of Arak\\--
step
	|poiname Abandoned Mining Pick
	|poilvl 96
	|poispot Spires of Arak 40.59,54.97
	|poitype treasure
	|poiquest 36458
	|poiitem 116913
	_Go up_ the hidden path |goto Spires of Arak/0 40.2,55.9
	click Abandoned Mining Pick##235313 |q 36458 |future |goto Spires of Arak 40.59,54.97
	|tip It's a pickaxe wedged between a rock and the mountain.
step
	|poiname Admiral Taylor's Coffer
	|poilvl 96
	|poispot Spires of Arak 36.19,54.46
	|poitype treasure
	|poiquest 36462
	|poicurrency GR
	click An Old Key##235366 |goto Spires of Arak 37.70,56.40 |only if itemcount(116020) < 1
	Get An Old Key |condition itemcount(116020) > 0 |only if itemcount(116020) < 1 and not completedq(36462)
	|tip It's on the rock behind the tree. |only if itemcount(116020) < 1
	_Enter_ the Town Hall |goto Spires of Arak/0 36.4,53.6 < 10
	click Admiral Taylor's Coffer##235365 |q 36462 |future |goto Spires of Arak 36.19,54.46
	|tip It's found inside the Town Hall after looting the Old Key.
step
	|poiname Assassin's Spear
	|poilvl 96
	|poispot Spires of Arak 49.20,37.21
	|poitype treasure
	|poiquest 36445
	|poiitem 116835
	_Go up_ the path |goto Spires of Arak 49.2,38.2
	click Assassin's Spear##235143 |q 36445 |future |goto Spires of Arak 49.20,37.21
	|tip It's a large spear sticking out of a corpse on the ground.
step
	|poiname Campaign Contributions
	|poilvl 96
	|poispot Spires of Arak 55.53,90.86
	|poitype treasure
	|poiquest 36367
	|poicurrency GL
	_Go up_ the hill |goto Spires of Arak 56.9,90.9
	_Enter_ the building |goto Spires of Arak/0 55.7,91.0 < 15
	_Go up_ the steps |goto Spires of Arak/0 55.4,91.0 < 10
	click Campaign Contributions##234473 |q 36367 |future |goto Spires of Arak 55.53,90.86
	|tip You must jump onto the headboard of the bed, then onto the shelves. The treasure is above the doorway.
step
	|poiname Coinbender's Payment
	|poilvl 96
	|poispot Spires of Arak 68.42,88.98
	|poitype treasure
	|poiquest 36453
	|poicurrency GL
	click Coinbender's Payment##235299 |q 36453 |future |goto Spires of Arak 68.42,88.98
	|tip After you swim out to the spot, swim down to the ocean floor and claim your treasure.
step
	|poiname Ephial's Dark Grimoire
	|poilvl 96
	|poispot Spires of Arak 36.58,57.91
	|poitype treasure
	|poiquest 36418
	|poiitem 116914
	_Enter_ the house |goto Spires of Arak/0 36.6,57.6 < 10
	click Ephial's Dark Grimoire##235097 |q 36418 |future |goto Spires of Arak/0 36.4,57.8
	|tip It is on a small crate on the right side of the house.
step
	|poiname Fractured Sunstone
	|poilvl 96
	|poispot Spires of Arak 50.50,22.10
	|poitype treasure
	|poiquest 36246
	|poiitem 116919
	click Fractured Sunstone##234157 |q 36246 |future |goto Spires of Arak 50.50,22.10
	|tip It's a tiny crystal at the base of the stone on the water side.
step
	|poiname Garrison Supplies
	|poilvl 96
	|poispot Spires of Arak 37.15,47.50
	|poitype treasure
	|poiquest 36420
	|poicurrency GR
	_Enter_ the small canyon |goto Spires of Arak/0 38.1,46.7
	click Garrison Supplies##235103 |q 36420 |future |goto Spires of Arak 37.15,47.50
	|tip It's in a little wagon in the canyon.
step
	|poiname Garrison Workman's Hammer
	|poilvl 96
	|poispot Spires of Arak 41.85,50.42
	|poitype treasure
	|poiquest 36451
	|poiitem 116918
	click Garrison Workman's Hammer##235289 |q 36451 |future |goto Spires of Arak 41.85,50.42
	|tip It's in the wagon on the side of the road.
step
	|poiname Elixir of Shadow Sight 1
	|poilvl 96
	|poispot Spires of Arak 43.90,15.00
	|poitype treasure
	|poiquest 36395
	|poiitem 115463
	click Elixir of Shadow Sight 1##234703 |q 36395 |future |goto Spires of Arak 43.90,15.00
	|tip Inside the little hanging basket.
step
	|poiname Elixir of Shadow Sight 2
	|poilvl 96
	|poispot Spires of Arak 43.83,24.64
	|poitype treasure
	|poiquest 36397
	|poiitem 115463
	_Enter_ the burning hut |goto Spires of Arak/0 43.8,25.1 < 8
	click Elixir of Shadow Sight 2##234704 |q 36397 |future |goto Spires of Arak 43.83,24.64
	|tip Inside a little basket in the upper-right corner.
step
	|poiname Elixir of Shadow Sight 3
	|poilvl 96
	|poispot Spires of Arak 69.20,43.30
	|poitype treasure
	|poiquest 36398
	|poiitem 115463
	_Go up_ the wall and drop down |goto Spires of Arak/0 68.9,43.4 < 10
	click Elixir of Shadow Sight 3##234705 |q 36398 |future |goto Spires of Arak 69.20,43.30
	|tip It's in the corner of the tree and the wall.
step
	|poiname Elixir of Shadow Sight 4
	|poilvl 96
	|poispot Spires of Arak 49.0,62.6
	|poitype treasure
	|poiquest 36399
	|poiitem 115463
	_Enter_ the hovel |goto Spires of Arak/0 48.8,62.0 < 10
	click Elixir of Shadow Sight 4##234734 |q 36399 |future |goto Spires of Arak 49.0,62.6
	|tip It's at the edge of the straw on the ground.
step
	|poiname Elixir of Shadow Sight 5
	|poilvl 96
	|poispot Spires of Arak 55.60,22.00
	|poitype treasure
	|poiquest 36400
	|poiitem 115463
	_Go around_ the small hills towards the tree |goto Spires of Arak/0 55.4,21.7 < 10
	click Elixir of Shadow Sight 5##234735 |q 36400 |future |goto Spires of Arak 55.60,22.00
	|tip It's near the hand of the dead arakkoa.
step
	|poiname Elixir of Shadow Sight 6
	|poilvl 96
	|poispot Spires of Arak 53.10,84.50
	|poitype treasure
	|poiquest 36401
	|poiitem 115463
	_Go to_ the edge of the water |goto Spires of Arak/0 53.6,84.1 < 20
	_Swim to_ the end of the sunken wall |goto Spires of Arak 53.10,84.50 < 10
	click Elixir of Shadow Sight 6##3365 |q 36401 |future |goto Spires of Arak 53.10,84.50
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 48.60,44.50
	|poitype treasure
	|poiquest 36386
	|poiitem 118237
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36386 |future |goto Spires of Arak 48.60,44.50 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 57.00,79.00
	|poitype treasure
	|poiquest 36390
	|poiitem 118241
	Take the _side path_ to the altar |goto Spires of Arak/0 57.5,77.6 < 20 |only if itemcount(115463) > 0
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36390 |future |goto Spires of Arak 57.00,79.00 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 46.95,40.44
	|poitype treasure
	|poiquest 36389
	|poiitem 118238
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36389 |future |goto Spires of Arak 46.95,40.44 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 52.03,19.58
	|poitype treasure
	|poiquest 36392
	|poiitem 118239
	_Go up_ the hill |goto Spires of Arak/0 51.2,20.7 < 15 |only if itemcount(115463) > 0
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36392 |future |goto Spires of Arak 52.03,19.58 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 42.40,26.70
	|poitype treasure
	|poiquest 36388
	|poiitem 118242
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36388 |future |goto Spires of Arak 42.40,26.70 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Gift of Anzu
	|poilvl 96
	|poispot Spires of Arak 61.10,55.37
	|poitype treasure
	|poiquest 36381
	|poiitem 118240
	use Elixir of Shadow Sight##115463 |only if itemcount(115463) > 0
	click Gift of Anzu##234618 |q 36381 |future |goto Spires of Arak 61.10,55.37 |only if itemcount(115463) > 0
	You must have an Elixir of Shadow Sight to get this treasure. You currently have none |confirm |only if itemcount(115463) < 1
step
	|poiname Iron Horde Explosives
	|poilvl 96
	|poispot Spires of Arak 50.33,25.79
	|poitype treasure
	|poiquest 36444
	|poiitem 118691
	|poicurrency GR
	_Go up_ between these ridges |goto Spires of Arak/0 50.3,24.4 < 10
	_Go right_ and follow the ridge |goto Spires of Arak/0 50.6,25.1 < 10
	kill Shattered Hand Lookout##85428
	click Iron Horde Explosives##225731 |q 36444 |future |goto Spires of Arak 50.33,25.79
	|tip It helps to drag the lookout away from the explosives so they are easier to loot.
step
	|poiname Lost Herb Satchel --7/7/2015
	|poilvl 96
	|poispot Spires of Arak 50.78,28.74
	|poitype treasure
	|poiquest 36247
	|poiitem 109124
	|poiitem 109126
	|poiitem 109128
	|poiitem 109129
	|poiitem 109125
	|poiitem 109127
	click Lost Herb Satchel##234159 |q 36247 |future |goto Spires of Arak 50.78,28.74
	|tip Underneath the bridge.
step
	|poiname Lost Ring
	|poilvl 96
	|poispot Spires of Arak 47.77,36.12
	|poitype treasure
	|poiquest 36411
	|poiitem 116911
	_Follow_ the path |goto Spires of Arak/0 47.1,37.8
	click Lost Ring##235091 |q 36411 |future |goto Spires of Arak 47.77,36.12
	|tip It's a tiny ring in the middle of the water.
step
	|poiname Misplaced Scroll
	|poilvl 96
	|poispot Spires of Arak 52.47,42.80
	|poitype treasure
	|poiquest 36416
	|poicurrency AA --Arakkoa Archaeology Fragments
	|tip This treasure grants +1-4 to Archaeology skill level.
	_Go up_ the ridge |goto Spires of Arak/0 54.0,47.8 < 5
	_Continue up_ the path |goto Spires of Arak/0 53.8,43.9 < 5
	click Misplaced Scroll##235095 |q 36416 |future |goto Spires of Arak 52.47,42.80
	|tip The scroll is on the left side of the path up against the peak.
	only if skill("Archaeology") >= 1
step
	|poiname Misplaced Scrolls
	|poilvl 96
	|poispot Spires of Arak 42.69,18.32
	|poitype treasure
	|poiquest 36244
	|poicurrency AA --Arakkoa Archaeology Fragments
	|tip This treasure grants +1-4 to Archaeology skill level.
	_Go up_ the path |goto Spires of Arak/0 41.6,21.2
	click Misplaced Scrolls##234154 |q 36244 |future |goto Spires of Arak 42.69,18.32
	|tip It's behind the small broken wall.
	only if skill("Archaeology") >= 1
step
	|poiname Mysterious Mushrooms
	|poilvl 96
	|poispot Spires of Arak 63.58,67.37
	|poitype treasure
	|poiquest 36454
	|poiitem 109127
	_Go between_ these two ridges and continue up |goto Spires of Arak/0 63.2,66.5
	click Mysterious Mushrooms##235300 |q 36454 |future |goto Spires of Arak 63.58,67.37
step
	|poiname Nizzix's Chest
	|poilvl 96
	|poispot Spires of Arak 60.80,87.80
	|poitype treasure
	|poiquest 35481
	|poicurrency GR
	click Escape Pod##6477 |goto Spires of Arak/0 60.9,88.0 < 8
	click Nizzix's Chest##232458 |q 35481 |future |goto Spires of Arak 60.80,87.80
	|tip The pod is at the edge of the water. This will free Nizzix who will walk ashore and drop the chest.
step
	|poiname Offering to the Raven Mother 1
	|poilvl 96
	|poispot Spires of Arak 53.31,55.52
	|poitype treasure
	|poiquest 36403
	|poiitem 118267
	_Go through_ the small opening |goto Spires of Arak/0 52.7,55.4 < 10
	_Go up_ the hill |goto Spires of Arak/0 53.3,55.7 < 5
	click Offering to the Raven Mother 1##234744 |q 36403 |future |goto Spires of Arak 53.31,55.52
	|tip It's in a nest in the tree on the left of the hill.
step
	|poiname Offering to the Raven Mother 2
	|poilvl 96
	|poispot Spires of Arak 48.35,52.61
	|poitype treasure
	|poiquest 36405
	|poiitem 118267
	_Go up_ the hill past Stonescale |goto Spires of Arak/0 49.1,52.3 < 15
	click Offering to the Raven Mother 2##234746 |q 36405 |future |goto Spires of Arak 48.35,52.61
	|tip It's being held by a Cultist Statue.
step
	|poiname Offering to the Raven Mother 3
	|poilvl 96
	|poispot Spires of Arak 48.90,54.70
	|poitype treasure
	|poiquest 36406
	|poiitem 118267
	_Go up_ the path here |goto Spires of Arak/0 48.9,55.9 < 15
	click Offering to the Raven Mother 3##234748 |q 36406 |future |goto Spires of Arak 48.90,54.70
	|tip It's in the nest.
step
	|poiname Offering to the Raven Mother 4
	|poilvl 96
	|poispot Spires of Arak 51.88,64.65
	|poitype treasure
	|poiquest 36407
	|poiitem 118267
	_Go up_ the hidden path |goto Spires of Arak/0 51.5,63.8 < 10
	click Offering to the Raven Mother 4##235073 |q 36407 |future |goto Spires of Arak 51.88,64.65
step
	|poiname Offering to the Raven Mother 5
	|poilvl 96
	|poispot Spires of Arak 60.97,63.87
	|poitype treasure
	|poiquest 36410
	|poiitem 118267
	_Go up_ the hidden path |goto Spires of Arak/0 61.9,64.0 < 10
	click Offering to the Raven Mother 5##235090 |q 36410 |future |goto Spires of Arak 60.97,63.87
step
	|poiname Ogron Plunder
	|poilvl 96
	|poispot Spires of Arak 58.70,60.24
	|poitype treasure
	|poiquest 36340
	|poiitem 116921
	|poiitem 116922
	click Ogron Plunder##234432 |q 36340 |future |goto Spires of Arak 58.70,60.24
	|tip Bort, Wullim, and Toom will aggro when clicking the chest.
step
	|poiname Orcish Signaling Horn
	|poilvl 96
	|poispot Spires of Arak 36.28,39.34
	|poitype treasure
	|poiquest 36402
	|poiitem 120337
	click Orcish Signaling Horn##234740 |q 36402 |future |goto Spires of Arak 36.28,39.34
	|tip It's next to the broken cart.
step
	|poiname Outcast's Belongings 1
	|poilvl 96
	|poispot Spires of Arak 36.82,17.16
	|poitype treasure
	|poiquest 36243
	|poiitem RANDOM
	|poicurrency GL
	_Climb up_ the crevice |goto Spires of Arak/0 36.4,17.6
	click Outcast's Belongings 1##234147 |q 36243 |future |goto Spires of Arak 36.82,17.16
step
	|poiname Outcast's Belongings 2
	|poilvl 96
	|poispot Spires of Arak 42.17,21.68
	|poitype treasure
	|poiquest 36447
	|poiitem RANDOM
	|poicurrency GL
	_Go up_ the ravine |goto Spires of Arak/0 41.6,22.1
	click Outcast's Belongings 2##235172 |q 36447 |future |goto Spires of Arak 42.17,21.68
step
	|poiname Outcast's Pouch
	|poilvl 96
	|poispot Spires of Arak 46.90,34.06
	|poitype treasure
	|poiquest 36446
	|poiitem RANDOM
	|poicurrency GL
	_Climb up_ onto the chain and walk across to the tree |goto Spires of Arak/0 47.2,33.9
	click Outcast's Pouch##235168 |q 36446 |future |goto Spires of Arak 46.90,34.06
	|tip It's on the captive outcast's belt.
step
	|poiname Relics of the Outcasts 1
	|poilvl 96
	|poispot Spires of Arak 42.96,16.37
	|poitype treasure
	|poiquest 36245
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the wall from this point |goto Spires of Arak/0 43.4,15.3 < 8
	_Drop down_ onto the rope and carefully walk to the far wall |goto Spires of Arak/0 43.4,15.8 < 5
	click Relics of the Outcasts 1##73979 |q 36245 |future |goto Spires of Arak 42.96,16.37
	only if skill("Archaeology") >= 1
step
	|poiname Relics of the Outcasts 2
	|poilvl 96
	|poispot Spires of Arak 45.96,44.15
	|poitype treasure
	|poiquest 36354
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump_ from this point on the rock to the rope tethered to the tree |goto Spires of Arak/0 46.9,43.6 < 7
	_Walk across_ the rope to the treasure |goto Spires of Arak/0 46.4,43.8 < 8
	click Relics of the Outcasts 2##73979 |q 36354 |future |goto Spires of Arak 45.96,44.15
	only if skill("Archaeology") >= 1
step
	|poiname Relics of the Outcasts 3
	|poilvl 96
	|poispot Spires of Arak 43.16,27.26
	|poitype treasure
	|poiquest 36355
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the stump and walk the rope around to the treasure |goto Spires of Arak/0 44.6,27.6 < 10
	click Relics of the Outcasts 3##73979 |q 36355 |future |goto Spires of Arak 43.16,27.26
	|tip At the end of the rope, it's on the tree trunk to your right.
	only if skill("Archaeology") >= 1
step
	|poiname Relics of the Outcasts 4
	|poilvl 96
	|poispot Spires of Arak 67.37,39.83
	|poitype treasure
	|poiquest 36356
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Mount up_ and jump from this point onto the wall |goto Spires of Arak/0 68.0,39.6 < 5
	_Follow_ the wall to the treasure |goto Spires of Arak/0 67.8,40.0 < 3
	click Relics of the Outcasts 4##73979 |q 36356 |future |goto Spires of Arak 67.37,39.83
	only if skill("Archaeology") >= 1
step
	|poiname Relics of the Outcasts 5
	|poilvl 96
	|poispot Spires of Arak 60.21,53.91
	|poitype treasure
	|poiquest 36359
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the rope |goto Spires of Arak/0 60.2,53.2
	click Relics of the Outcasts 5##73979 |q 36359 |future |goto Spires of Arak 60.21,53.91
	|tip If you keep falling off, try jumping up the rope.
	only if skill("Archaeology") >= 1
step
	|poiname Relics of the Outcasts 6
	|poilvl 96
	|poispot Spires of Arak 51.89,48.92
	|poitype treasure
	|poiquest 36360
	|poicurrency AA --Arakkoa Archaeology Fragments
	_Jump onto_ the wall here |goto Spires of Arak/0 52.1,49.0 < 5
	_Jump down_ onto the rope from this point |goto Spires of Arak/0 52.4,49.4 < 5
	_Jump onto_ the wall at the end of the rope |goto Spires of Arak/0 51.6,49.1 < 5
	click Relics of the Outcasts 6##73979 |q 36360 |future |goto Spires of Arak 51.89,48.92
	only if skill("Archaeology") >= 1
step
	|poiname Rooby's Roo
	|poilvl 96
	|poispot Spires of Arak 37.37,50.56
	|poitype treasure
	|poiquest 36657
	|poiitem 116887
	_Enter_ the inn |goto Spires of Arak/0 37.6,51.2 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
	_Go downstairs_ |goto Spires of Arak/0 37.4,50.7 < 5 |only if itemcount(114835) < 3 and not completedq(36657)
	talk Miril Dumonde##82432 |only if itemcount(114835) < 3 and not completedq(36657)
	buy 3 Rooby Treat##114835 |goto Spires of Arak/0 37.6,50.9 < 10 |only if itemcount(114835) < 1 and not completedq(36657)
	click Rooby Roo##84332 |goto Spires of Arak/0 37.5,50.8 < 10 |use Rooby Treat##114835 |only if itemcount(114835) > 0
	click Rooby's Roo##233975 |q 36657 |future |goto Spires of Arak 37.37,50.56 < 7
	|tip You must feed Rooby treats and follow her to the treasure. It's in a big surprise! |only if itemcount(114835) > 0
step
	|poiname Rukhmar's Image
	|poilvl 96
	|poispot Spires of Arak 44.33,12.04
	|poitype treasure
	|poiquest 36377
	|poiitem 118693
	_Enter_ the hovel |goto Spires of Arak/0 44.4,12.3
	click Rukhmar's Image |q 36377 |future |goto Spires of Arak 44.33,12.04
step
	|poiname Sailor Zazzuk's 180-Proof Rum
	|poilvl 96
	|poispot Spires of Arak 59.17,90.64
	|poitype treasure
	|poiquest 36366
	|poiitem 116917
	_Enter_ the little shack |goto Spires of Arak/0 59.1,90.6 < 5
	click Sailor Zazzuk's 180-Proof Rum##234472 |q 36366 |future |goto Spires of Arak 59.17,90.64
	|tip It's on the console.
step
	|poiname Sethekk Idol
	|poilvl 96
	|poispot Spires of Arak 68.33,38.93
	|poitype treasure
	|poiquest 36375
	|poiitem 118692
	_Go up_ the path |goto Spires of Arak/0 67.3,38.6
	click Sethekk Idol |q 36375 |future |goto Spires of Arak 68.33,38.93
	|tip It's a skeletal serpent on the altar.
step
	|poiname Sethekk Ritual Brew
	|poilvl 96
	|poispot Spires of Arak 71.64,48.59
	|poitype treasure
	|poiquest 36450
	|poiitem 109223
	|poiitem 117437
	_Go up_ the path |goto Spires of Arak/0 71.2,48.9
	click Sethekk Ritual Brew##235282 |q 36450 |future |goto Spires of Arak 71.64,48.59
step
	|poiname Shattered Hand Cache
	|poilvl 96
	|poispot Spires of Arak 56.23,28.81
	|poitype treasure
	|poiquest 36362
	|poicurrency GR
	_Enter_ the hut |goto Spires of Arak/0 56.1,28.7 < 10
	click Shattered Hand Cache##234458 |q 36362 |future |goto Spires of Arak 56.23,28.81
	|tip It's behind the barrels and crates.
step
	|poiname Shattered Hand Lockbox
	|poilvl 96
	|poispot Spires of Arak 47.92,30.65
	|poitype treasure
	|poiquest 36361
	|poiitem 116920
	click Shattered Hand Lockbox##234456 |q 36361 |future |goto Spires of Arak 47.92,30.65
step
	|poiname Shredder Parts
	|poilvl 96
	|poispot Spires of Arak 60.86,84.61
	|poitype treasure
	|poiquest 36456
	|poicurrency GR
	click Shredder Parts##235310 |q 36456 |future |goto Spires of Arak 60.86,84.61
	|tip In the back of the wagon on the open crate.
step
	|poiname Smuggled Apexis Artifacts
	|poilvl 96
	|poispot Spires of Arak 56.29,45.31
	|poitype treasure
	|poiquest 36433
	|poicurrency AA --Arakkoa Archaeology Fragments
	click Smuggled Apexis Artifacts##235135 |q 36433 |future |goto Spires of Arak 56.29,45.31
	|tip Jump up the mushrooms growing out of the tree to reach it. You need at least 600 Archaelogy to be able to get this treasure.
	only if skill("Archaeology") >= 1
step
	|poiname Spray-O-Matic 5000 XT
	|poilvl 96
	|poispot Spires of Arak 59.63,81.34
	|poitype treasure
	|poiquest 36365
	|poicurrency GR
	click Spray-O-Matic 5000 XT##234471 |q 36365 |future |goto Spires of Arak 59.63,81.34
	|tip In the wrecked hull of the boat.
step
	|poiname Sun-Touched Cache 1
	|poilvl 96
	|poispot Spires of Arak 34.14,27.51
	|poitype treasure
	|poiquest 36421
	|poicurrency AA --Arakkoa Archaeology Fragments
	|poicurrency GL
	_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.9,27.2 
	click Sun-Touched Cache 1##73979 |q 36421 |future |goto Spires of Arak 34.14,27.51
	only if skill("Archaeology") >= 1
step
	|poiname Sun-Touched Cache 2
	|poilvl 96
	|poispot Spires of Arak 33.29,27.27
	|poitype treasure
	|poiquest 36422
	|poicurrency AA --Arakkoa Archaeology Fragments
	|poicurrency GL
	_Jump up_ here to get on the scaffolding |goto Spires of Arak/0 33.4,27.6
	click Sun-Touched Cache 2##73979 |q 36422 |future |goto Spires of Arak 33.29,27.27
	|tip You can loot it from the middle.
	only if skill("Archaeology") >= 1
step
	|poiname Toxicfang Venom
	|poilvl 96
	|poispot Spires of Arak 54.35,32.55
	|poitype treasure
	|poiquest 36364
	|poiitem 118695
	click Toxicfang Venom##234461 |q 36364 |future |goto Spires of Arak 54.35,32.55
	|tip It's a green vial behind the barrel that is laying on its side.
step
	|poiname Waterlogged Satchel
	|poilvl 96
	|poispot Spires of Arak 66.47,56.53
	|poitype treasure
	|poiquest 36455
	|poiitem RANDOM
	|poicurrency GL
	_Swim through_ the channel |goto Spires of Arak/0 66.1,58.1
	click Waterlogged Satchel##235307 |q 36455 |future |goto Spires of Arak 66.47,56.53
	|tip It's at the bottom of the water.
step
	|poiname Statue of Anzu
	|poilvl 96
	|poispot Spires of Arak 57.80,22.20
	|poitype treasure
	|poiquest 36374
	|poiitem 118694
	_Go up_ the narrow trail |goto Spires of Arak/0 56.8,25.4
	_Continue_ going up |goto Spires of Arak/0 58.6,23.9
	click Statue of Anzu##???? |q 36374 |future |goto Spires of Arak/0 58.0,22.3
step
	|poiname Betsi Boombasket
	|poilvl 97
	|poispot Spires of Arak 58.20,84.60
	|poitype rare
	|poiquest 36291
	|poiitem 116907
	|poicurrency GR
	kill Betsi Boombasket##84887 |q 36291 |future |goto Spires of Arak 58.20,84.60
	|tip She's in the grove of trees.
step
	|poiname Blade-Dancer Aeryx
	|poilvl 96
	|poispot Spires of Arak 46.80,23.00
	|poitype rare
	|poiquest 35599
	|poiitem 116839
	|poicurrency GR
	kill Blade-Dancer Aeryx##80614 |q 35599 |future |goto Spires of Arak 46.80,23.00
step
	|poiname Blightglow
	|poilvl 97
	|poispot Spires of Arak 64.00,64.80
	|poitype rare
	|poiquest 36283
	|poiitem 118205
	|poicurrency GR
	_Go to_ the water |goto Spires of Arak/0 63.4,64.0
	kill Blightglow##84856 |q 36283 |future |goto Spires of Arak 64.00,64.80
	|tip Blightglow flies around the area.
step
	|poiname Durkath Steelmaw
	|poilvl 96
	|poispot Spires of Arak 46.40,28.60
	|poitype rare
	|poiquest 36267
	|poiitem 118198
	|poicurrency GR
	kill Durkath Steelmaw##84807 |q 36267 |future |goto Spires of Arak 46.40,28.60
	|tip He is inside the little hut.
step
	|poiname Echidna
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 69.00,54.00
	|poitype rare
	|poiquest 37406
	|poiitem 120945
	|poicurrency AC
	_Go around_ the shore |goto Spires of Arak/0 68.3,57.3
	kill Echidna##80372 |q 37406 |future |goto Spires of Arak 69.00,54.00
	|tip Echidna patrols up and down the coast. Some searching may be necessary.
	|tip Echidna is a level 100 elite with 3.9 million health. You will need a group.
step
	|poiname Festerbloom
	|poilvl 96
	|poispot Spires of Arak 54.80,39.60
	|poitype rare
	|poiquest 36297
	|poiitem 118200
	|poicurrency GR
	kill Festerbloom##84890 |q 36297 |future |goto Spires of Arak 54.80,39.60
	|tip Be sure to clear an area to engage Festerbloom, adds can be a problem.
step
	|poiname Gaze
	|poilvl 97
	|poispot Spires of Arak 25.20,24.20
	|poitype rare
	|poiquest 36943
	|poiitem 118696
	|poicurrency GR
	_Go up_ the trail |goto Spires of Arak/0 28.1,24.6 < 10
	click Fel Grimoire##3365 |goto Spires of Arak/0 24.9,25.6 < 8
	kill Gaze##86978 |q 36943 |future |goto Spires of Arak 25.20,24.20
step
	|poiname Gluttonous Giant
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 74.40,42.80
	|poitype rare
	|poiquest 37390
	|poiitem 119404
	|poiitem 120945
	|poicurrency AC
	kill Gluttonous Giant##87019 |q 37390 |future |goto Spires of Arak 74.40,42.80
	|tip The giant is on a long respawn timer.
step
	|poiname Gobblefin
	|poilvl 97
	|poispot Spires of Arak 33.00,59.00
	|poitype rare
	|poiquest 36305
	|poiitem 116836
	|poicurrency GR
	_Swim around_ the rocks |goto Spires of Arak/0 32.5,56.4
	kill Gobblefin##84951 |q 36305 |future |goto Spires of Arak 33.00,59.00
	|tip Gobblefin swims around underwater.
step
	|poiname Hermit Palefur
	|poilvl 96
	|poispot Spires of Arak 59.20,15.00
	|poitype rare
	|poiquest 36887
	|poiitem 118279
	|poicurrency GR
	_Go through_ the pass |goto Spires of Arak/0 60.3,19.8
	kill Hermit Palefur##86724 |q 36887 |future |goto Spires of Arak 59.20,15.00
step
	|poiname Jiasska the Sporegorger
	|poilvl 97
	|poispot Spires of Arak 56.60,94.60
	|poitype rare
	|poiquest 36306
	|poiitem 118202
	|poicurrency GR
	kill Jiasska the Sporegorger##84955 |q 36306 |future |goto Spires of Arak 56.60,94.60
step
	|poiname Kalos the Bloodbathed
	|poilvl 96
	|poispot Spires of Arak 62.60,37.40
	|poitype rare
	|poiquest 36268
	|poiitem 118735
	|poicurrency GR
	kill Kalos the Bloodbathed##84810 |q 36268 |future |goto Spires of Arak 62.60,37.40
	|tip Clearing the slimes around Kalos is a good idea.
step
	|poiname Mutafen
	|poilvl 96
	|poispot Spires of Arak 53.20,89.00
	|poitype rare
	|poiquest 36396
	|poiitem 118206
	|poicurrency GR
	_Go to_ Pinchwhistle Point |goto Spires of Arak/0 55.5,87.0
	kill Mutafen##84417 |q 36396 |future |goto Spires of Arak 53.20,89.00
step
	|poiname Nas Dunberlin
	|poilvl 96
	|poispot Spires of Arak 36.40,52.40
	|poitype rare
	|poiquest 36129
	|poiitem 116837
	|poicurrency GR
	kill Nas Dunberlin##82247 |q 36129 |future |goto Spires of Arak 36.40,52.40
	|tip He is standing on the gallows platform.
step
	|poiname Oskiira the Vengeful
	|poilvl 96
	|poispot Spires of Arak 66.00,55.00
	|poitype rare
	|poiquest 36288
	|poiitem 118204
	|poicurrency GR
	_Go through_ the pass |goto Spires of Arak/0 64.3,51.6
	kill Oskiira the Vengeful##84872 |q 36288 |future |goto Spires of Arak/0 65.0,54.2
step
	|poiname Poisonmaster Bortusk
	|poilvl 96
	|poispot Spires of Arak 59.40,37.40
	|poitype rare
	|poiquest 36279
	|poiitem 118199
	|poicurrency GR
	_Go around_ the shrine |goto Spires of Arak/0 60.5,38.0
	kill Poisonmaster Bortusk##84838 |q 36279 |future |goto Spires of Arak 59.40,37.40
step
	|poiname Rotcap
	|poilvl 97
	|poispot Spires of Arak 38.40,27.80
	|poitype rare
	|poiquest 36470
	|poiitem 118107
	|poicurrency GR
	kill Rotcap##85504 |q 36470 |future |goto Spires of Arak 38.40,27.80
step
	|poiname Sangrikass
	|poilvl 96
	|poispot Spires of Arak 69.00,48.80
	|poitype rare
	|poiquest 36276
	|poiitem 118203
	|poicurrency GR
	kill Sethekk Serpent Tender##84820
	kill Sangrikass##84833 |q 36276 |future |goto Spires of Arak 69.00,48.80
	|tip Sangrikas will appear immediately upon attacking the Serpent Tenders.
step
	|poiname Shadow Hulk
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 71.20,33.80
	|poitype rare
	|poiquest 37392
	|poiitem 119363
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Spires of Arak/0 73.4,34.8
	_Take the center_ passage |goto Spires of Arak/0 71.8,34.6
	kill Shadow Hulk##87027 |q 37392 |future |goto Spires of Arak 71.20,33.80
	|tip This rare should be considered elite. The Shadow Hulk has annoying stuns and heavy damage.
step
	|poiname Shadowbark
	|poilvl 96
	|poispot Spires of Arak 52.00,35.40
	|poitype rare
	|poiquest 36478
	|poiitem 118201
	|poicurrency GR
	kill Shadowbark##79938 |q 36478 |future |goto Spires of Arak 52.00,35.40
step
	|poiname Solar Magnifier
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 51.80,07.20
	|poitype rare
	|poiquest 37394
	|poiitem 119407
	|poiitem 120945
	|poicurrency AC
	kill Solar Magnifier##83990 |q 37394 |future |goto Spires of Arak 51.80,07.20
	|tip Run away when Solar Magnifier casts Excavation.
step
	|poiname Stonespite
	|poilvl 96
	|poispot Spires of Arak 33.40,22.00
	|poitype rare
	|poiquest 36265
	|poiitem 116858
	|poicurrency GR
	_Go up_ the hidden path |goto Spires of Arak/0 33.4,23.8 < 5
	kill Stonespite##84805 |q 36265 |future |goto Spires of Arak 33.40,22.00
step
	|poiname Sunderthorn
	|poilvl 96
	|poispot Spires of Arak 58.60,45.20
	|poitype rare
	|poiquest 36298
	|poiitem 116855
	|poicurrency GR
	from Stingtail Drone##84909+, Stingtail Worker##84905+
	kill Sunderthorn##84912 |q 36298 |future |goto Spires of Arak 58.60,45.20
	|tip Kill Stingtail mobs to spawn Sunderthorn.
step
	|poiname Swarmleaf
	|poilvl 97
	|poispot Spires of Arak 52.80,54.80
	|poitype rare
	|poiquest 36472
	|poiitem 116857
	|poicurrency GR
	kill Swarmleaf##85520 |q 36472 |future |goto Spires of Arak 52.80,54.80
step
	|poiname Talonbreaker
	|poilvl 96
	|poispot Spires of Arak 54.60,63.20
	|poitype rare
	|poiquest 36278
	|poiitem 116838
	|poicurrency GR
	_Go up_ the hidden path |goto Spires of Arak/0 54.9,60.0
	_Continue up_ the path |goto Spires of Arak/0 53.7,62.0
	kill Talonbreaker##84836 |q 36278 |future |goto Spires of Arak 54.60,63.20
	|tip He is in the little cave.
step
	|poiname Tesska the Broken
	|poilvl 97
	|poispot Spires of Arak 57.40,74.00
	|poitype rare
	|poiquest 36254
	|poiitem 116852
	|poicurrency GR
	kill Tesska the Broken##84775 |q 36254 |future |goto Spires of Arak 57.40,74.00
step
	|poiname Formless Nightmare
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 71.70,20.10
	|poitype rare
	|poiquest 37360
	|poiitem 119373
	|poiitem 120945
	|poicurrency AC
	_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
	kill Formless Nightmare##85036 |q 37360 |future |goto Spires of Arak 71.70,20.10
	|tip When the Void Attunement bar reaches 0, you will return to the normal realm. Formless Nightmare will require a group.
step
	|poiname Giga Sentinel
	|poiaccess Completionist
	|poilvl 102
	|poispot Spires of Arak 71.40,45.00
	|poitype rare
	|poiquest 37393
	|poiitem 119401
	|poiitem 120945
	|poicurrency AC
	kill Giga Sentinel##87029 |q 37393 |future |goto Spires of Arak 71.40,45.00
step
	|poiname Kenos the Unraveler
	|poiaccess Completionist
	|poilvl 103
	|poispot Spires of Arak 70.40,23.80
	|poitype rare
	|poiquest 37361
	|poiitem 119354
	|poiitem 120945
	|poicurrency AC
	_Click_ the portal to enter the shadow realm |goto Spires of Arak/0 72.3,23.6
	kill Kenos the Unraveler##85037 |q 37361 |future |goto Spires of Arak 70.40,23.80
	|tip This rare REQUIRES 3 people to summon. While in the shadow realm, each player must close a portal.
step
	|poiname Mecha Plunderer
	|poiaccess Completionist
	|poilvl 101
	|poispot Spires of Arak 74.41,38.64
	|poitype rare
	|poiquest 37391
	|poiitem 119398
	|poiitem 120945
	|poicurrency AC
	kill Mecha Plunderer##87026 |q 37391 |future |goto Spires of Arak 74.41,38.64
step
	|poiname Soul-Twister Torek
	|poiaccess Completionist
	|poilvl 100
	|poispot Spires of Arak 72.40,19.40
	|poitype rare
	|poiquest 37358
	|poiitem 119410
	|poiitem 120945
	|poicurrency AC
	kill Soul-Twister Torek##85026 |q 37358 |future |goto Spires of Arak 72.40,19.40
	|tip Run out of melee range when he casts Void Tempest.
step
	|poiname Voidreaver Urnae
	|poiaccess Completionist
	|poilvl 101
	|poispot Spires of Arak 72.90,30.90
	|poitype rare
	|poiquest 37359
	|poiitem 119392
	|poiitem 120945
	|poicurrency AC
	kill Voidreaver Urnae##85078 |q 37359 |future |goto Spires of Arak 72.90,30.90
	|tip Clear nearby adds before engaging Urnae.
--//Nagrand\\--
step
	|poiname A Pile of Dirt
	|poilvl 98
	|poispot Nagrand D 73.07,10.80
	|poitype treasure
	|poiquest 35951
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 74.9,8.7
	Very carefully, _drop down_ |goto Nagrand D/0 73.0,10.6 < 3
	click A Pile of Dirt##233452 |q 35951 |future |goto Nagrand D 73.07,10.80
step
	|poiname Abandoned Cargo
	|poilvl 98
	|poispot Nagrand D 67.65,59.71
	|poitype treasure
	|poiquest 35759
	|poiitem 3 RANDOM
	click Abandoned Cargo##233206 |q 35759 |future |goto Nagrand D 67.65,59.71
	|tip Among the broken wagon rubble.
step
	|poiname Abu'Gar's Favorite Lure
	|poilvl 98
	|poispot Nagrand D 38.40,49.40
	|poitype treasure
	|poiquest 36711
	|poiitem 114245
	click Abu'Gar's Favorite Lure##233642 |q 36072 |future |or |goto Nagrand D 38.40,49.40
	'| click Abu'Gar's Favorite Lure##233642 |condition itemcount(114245)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip It's next to the small bridge by the weeds.
	|only if not completedq(36711)
step
	|poiname Abu'gar's Missing Reel
	|poilvl 98
	|poispot Nagrand D 85.40,38.70
	|poitype treasure
	|poiquest 36711
	|poiitem 114243
	click Abu'gar's Missing Reel##233506 |q 36089 |future |or |goto Nagrand D 85.40,38.70
	'| click Abu'gar's Missing Reel##233506 |condition itemcount(114243)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip Next to a little box at the edge of the water by the tree.
	|only if not completedq(36711)
step
	|poiname Abu'gar's Vitality
	|poilvl 98
	|poispot Nagrand D 65.83,61.14
	|poitype treasure
	|poiquest 35711
	|poiitem 114242
	_Enter_ the warsong area |goto Nagrand D/0 69.0,64.3 < 20
	_Continue_ through |goto Nagrand D/0 66.7,63.5 < 10
	_Drop down_ carefully onto the lower ledge |goto Nagrand D/0 65.9,61.5 < 15
	click Abu'gar's Vitality##233157 |q 35711 |or |future |goto Nagrand D 65.83,61.14
	'| click Abu'gar's Vitality##233157 |condition itemcount(114242)>0 |or --Temporary fix, quest ID's on wowhead are still not working
	|tip By the tackle box.
	|only if not completedq(36711)
step
	|poiname Adventurer's Mace
	|poilvl 98
	|poispot Nagrand D 75.81,62.03
	|poitype treasure
	|poiquest 36077
	|poiitem 1 RANDOM
	|poicurrency GL
	_Cross_ the tree bridge |goto Nagrand D/0 74.0,62.2 < 20
	_Follow_ the path around |goto Nagrand D/0 74.0,62.8 < 10
	_Climb_ up the rocks |goto Nagrand D/0 75.0,62.2 < 10
	click Adventurer's Mace##233650 |q 36077 |future |goto Nagrand D 75.81,62.03
	|tip It's on a bloody corpse underneath the planks.
step
	|poiname Adventurer's Pack 1
	|poilvl 98
	|poispot Nagrand D 82.27,56.60
	|poitype treasure
	|poiquest 35765
	|poiitem 1 RANDOM
	|poicurrency GL
	click Adventurer's Pack##233218 |q 35765 |future |goto Nagrand D 82.27,56.60
	|tip Next to the rock underneath the body impaled to the tree.
step
	|poiname Adventurer's Pack 2
	|poilvl 98
	|poispot Nagrand D 45.63,52.00
	|poitype treasure
	|poiquest 35969
	|poiitem 1 RANDOM
	|poicurrency GL
	click Adventurer's Pack##233218 |q 35969 |future |goto Nagrand D 45.63,52.00
	|tip It's in the remains of the bloody corpse at the base of the tree.
step
	|poiname Adventurer's Pack 3
	|poilvl 98
	|poispot Nagrand D 69.95,52.44
	|poitype treasure
	|poiquest 35597
	|poiitem 1 RANDOM
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 69.2,50.4 < 20
	Carefully, _climb onto_ the tree and walk out on the limb |goto Nagrand D/0 69.7,52.2 < 5
	click Adventurer's Pack##233218 |q 35597 |future |goto Nagrand D 69.95,52.44
	|tip Toggling run/walk to the walk setting helps.
step
	|poiname Adventurer's Pouch
	|poilvl 98
	|poispot Nagrand D 56.56,72.94
	|poitype treasure
	|poiquest 36050
	|poiitem 1 RANDOM
	|poicurrency GL
	_Cross_ the field |goto Nagrand D/0 59.1,74.6
	_Drop down_ |goto Nagrand D/0 57.0,73.3 < 8
	click Adventurer's Pouch##233623 |q 36050 |future |goto Nagrand D 56.56,72.94
	|tip It's waist-level with the bloody corpse.
step
	|poiname Adventurer's Sack
	|poilvl 98
	|poispot Nagrand D 73.93,14.05
	|poitype treasure
	|poiquest 35955
	|poiitem 1 RANDOM
	|poicurrency GL
	_Swim to_ the waterfall |goto Nagrand D/0 73.5,14.4
	click Adventurer's Sack##233499 |q 35955 |future |goto Nagrand D 73.93,14.05
	|tip Swim underwater to claim the treasure.
step
	|poiname Adventurer's Staff
	|poilvl 98
	|poispot Nagrand D 81.46,13.07
	|poitype treasure
	|poiquest 35953
	|poiitem 116640
	|poicurrency GL
	_Drop down_ carefully here |goto Nagrand D/0 81.5,13.6 < 5
	click Adventurer's Staff##233457 |q 35953 |future |goto Nagrand D 81.46,13.07
step
	|poiname Appropriated Warsong Supplies
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 73.05,75.54
	|poitype treasure
	|poiquest 35673
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
	click Steamwheedle Exploration Glider## |goto Nagrand D/0 76.1,73.0 < 5
	click Appropriated Warsong Supplies##233079 |q 35673 |future |goto Nagrand D 73.05,75.54
	|tip Use the glider to fly to the treasure.
step
	|poiname Bag of Herbs
	|poilvl 98
	|poispot Nagrand D 62.54,67.08
	|poitype treasure
	|poiquest 36116
	|poiitem 109124
	|poiitem 109128
	|poiitem 109129
	|poiitem 109127
	|poiitem 109126
	|poiitem 109125
	_Go up_ the hill |goto Nagrand D/0 61.4,65.8 < 20
	Hug the mountain and _jump over_ the tree |goto Nagrand D/0 62.1,66.8 < 10
	click Bag of Herbs##233773 |q 36116 |future |goto Nagrand D 62.54,67.08
step
	|poiname Bone-Carved Dagger
	|poilvl 98
	|poispot Nagrand D 77.31,28.07
	|poitype treasure
	|poiquest 35986
	|poiitem 116760
	_Go to_ the earthen bridge |goto Nagrand D/0 78.8,26.4 < 20
	_Cross_ the bridge and drop down here |goto Nagrand D/0 77.6,29.3 < 15
	click Bone-Carved Dagger##233532 |q 35986 |future |goto Nagrand D 77.31,28.07
	|tip It's up against the unidentifiable remains.
step
	|poiname Bounty of the Elements
	|poilvl 98
	|poispot Nagrand D 77.08,16.62
	|poitype treasure
	|poiquest 36174
	|poicurrency GR
	_Go up_ the narrow trail carefully |goto Nagrand D/0 75.9,15.2 < 5
	_Enter_ the cave |goto Nagrand D/0 77.1,17.2 < 10
	click Bounty of the Elements##233973 |q 36174 |future |goto Nagrand D 77.08,16.62
	|tip Click the air totem first, then earth, then water, then fire. Finally, click the chest.
step
	|poiname Brilliant Dreampetal
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 81.08,37.25
	|poitype treasure
	|poiquest 35661
	|poiitem 118262
	_Follow the path_ up |goto Nagrand D/0 83.4,33.1 < 10
	_Continue up_ the mountain |goto 85.0,34.7 < 10
	Proceed _along the mountain_ |goto 87.1,38.6 < 10
	Continue _around_ |goto 88.4,36.7 < 10
	Use the glider to reach the treasure |goto Nagrand D/0 83.7,33.7 < 5
	click Brilliant Dreampetal##233048 |q 35661 |future |goto Nagrand D 81.08,37.25
	|tip Immediately turn left towards the treasure to clear the distance.
step
	|poiname Burning Blade Cache
	|poilvl 98
	|poispot Nagrand D 85.41,53.47
	|poitype treasure
	|poiquest 35696
	|poiitem 1 RANDOM
	_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
	_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
	_Jump over_ to the top of the building from here |goto Nagrand D/0 84.9,53.1 < 5
	click Burning Blade Cache##233137 |q 35696 |future |goto Nagrand D/0 85.4,53.5
	|tip You will need to be mounted for this jump.
step
	|poiname Elemental Offering
	|poilvl 98
	|poispot Nagrand D 66.96,19.49
	|poitype treasure
	|poiquest 35954
	|poiitem 118234
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 66.4,16.3 < 10
	_Drop down_ carefully to the ledge below |goto Nagrand D 66.96,19.49 < 7
	click Elemental Offering##233492 |q 35954 |future |goto Nagrand D 66.96,19.49
step
	|poiname Elemental Shackles
	|poilvl 98
	|poispot Nagrand D 78.90,15.56
	|poitype treasure
	|poiquest 36036
	|poiitem 118251
	_Go up_ the hill |goto Nagrand D/0 77.4,12.0 < 10
	_Jump from_ this spot to the next rock |goto Nagrand D/0 78.2,14.2 < 10
	click Elemental Shackles##233598 |q 36036 |future |goto Nagrand D 78.90,15.56
step
	|poiname Fragment of Oshu'gun
	|poilvl 98
	|poispot Nagrand D 45.86,66.29
	|poitype treasure
	|poiquest 36020
	|poiitem 117981
	click Fragment of Oshu'gun##233560 |q 36020 |future |goto Nagrand D 45.86,66.29
	|tip It's a small white crystal next to the large Oshu'gun crystal.
step
	|poiname Freshwater Clam
	|poilvl 98
	|poispot Nagrand D 73.05,21.53
	|poitype treasure
	|poiquest 35692
	|poiitem 118233
	click Freshwater Clam##233132 |q 35692 |future |goto Nagrand D 73.05,21.53
	|tip Under the water next to Throne of the Elements.
step
	|poiname Fungus-Covered Chest
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 88.90,18.24
	|poitype treasure
	|poiquest 35660
	|poicurrency GR
	_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 15
	_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 15
	Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 5
	click Fungus-Covered Chest##233044 |q 35660 |future |goto Nagrand D 88.90,18.24
	|tip Hang a right immediately after clicking the glider to clear the distance to the treasure.
step
	|poiname Gambler's Purse
	|poilvl 98
	|poispot Nagrand D 75.37,47.11
	|poitype treasure
	|poiquest 36074
	|poiitem 118236
	click Gambler's Purse##233649 |q 36074 |future |goto Nagrand D 75.37,47.11
	|tip It's hidden in the weeds.
step
	|poiname Genedar Debris 1
	|poilvl 98
	|poispot Nagrand D 43.22,57.55
	|poitype treasure
	|poiquest 35987
	|poicurrency GR
	click Genedar Debris##233539 |q 35987 |future |goto Nagrand D 43.22,57.55
	|tip It's a purple object in the middle of the trees.
step
	|poiname Genedar Debris 2
	|poilvl 98
	|poispot Nagrand D 48.06,60.11
	|poitype treasure
	|poiquest 35999
	|poicurrency GR
	click Genedar Debris##233539 |q 35999 |future |goto Nagrand D 48.06,60.11
	|tip It's on the side of the hill. Look for the little blue gem.
step
	|poiname Genedar Debris 3
	|poilvl 98
	|poispot Nagrand D 48.58,72.79
	|poitype treasure
	|poiquest 36008
	|poicurrency GR
	click Genedar Debris##233539 |q 36008 |future |goto Nagrand D 48.58,72.79
	|tip It's wedged between the tree and rock.
step
	|poiname Genedar Debris 4
	|poilvl 98
	|poispot Nagrand D 44.69,67.57
	|poitype treasure
	|poiquest 36002
	|poicurrency GR
	click Genedar Debris##233539 |q 36002 |future |goto Nagrand D 44.69,67.57
	|tip It's pink-purple and hidden just under the tree foliage.
step
	|poiname Genedar Debris 5
	|poilvl 98
	|poispot Nagrand D 55.35,68.28
	|poitype treasure
	|poiquest 36011
	|poicurrency GR
	click Genedar Debris##233539 |q 36011 |future |goto Nagrand D 55.35,68.28
	|tip It's a purple object in the middle of the small grove of trees.
step
	|poiname Goblin Pack 1
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 72.97,62.12
	|poitype treasure
	|poiquest 35590
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2
	_Click_ the Steamwheedle Exploration Glider and use it to reach the treasure |goto Nagrand D/0 75.7,64.5
	click Goblin Pack##232571 |q 35590 |future |goto Nagrand D 72.97,62.12
	|tip The pack is on the side of the stone pillar. It's on a small ledge.
step
	|poiname Goblin Pack 2
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 47.20,74.25
	|poitype treasure
	|poiquest 35576
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Goblin Pack##232571 |q 35576 |future |goto Nagrand D 47.20,74.25
	|tip You will need to pay close attention and land on the horizontal section of the tree trunk.
step
	|poiname Golden Kaliri Egg
	|poilvl 98
	|poispot Nagrand D 58.28,52.49
	|poitype treasure
	|poiquest 35694
	|poiitem 118266
	_Jump from_ the rock onto the tree |goto Nagrand D/0 57.7,52.8 < 8
	click Golden Kaliri Egg##233134 |q 35694 |future |goto Nagrand D 58.28,52.49
step
	|poiname Goldtoe's Plunder
	|poilvl 98
	|poispot Nagrand D 38.34,58.72
	|poitype treasure
	|poiquest 36109
	|poicurrency GL
	_Climb over_ the rocks and wait here for the parrot |goto Nagrand D/0 38.5,58.8 < 10
	click Rusty Keys##84068
	click Goldtoe's Plunder##233715 |q 36109 |future |goto Nagrand D 38.34,58.72
	|tip Click the keys in the green and yellow parrot's mouth.
step
	|poiname Grizzlemaw's Bonepile
	|poilvl 98
	|poispot Nagrand D 87.10,72.88
	|poitype treasure
	|poiquest 36051
	|poiitem 118054
	_Go up_ the hill |goto Nagrand D/0 83.5,68.8 < 8
	_Follow_ the ridge and cross the waterfall |goto Nagrand D/0 85.2,70.1 < 5
	click Grizzlemaw's Bonepile##233626 |q 36051 |future |goto Nagrand D 87.10,72.88
	|tip It's behind the tree on the ground.
step
	|poiname Hidden Stash
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 87.62,44.98
	|poitype treasure
	|poiquest 35622
	|poicurrency GR
	_Cross_ the gap |goto Nagrand D/0 87.0,38.7 < 10
	_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 10
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 5
	click Hidden Stash##232986 |q 35622 |future |goto Nagrand D 87.62,44.98
	|tip The stash is hidden in a tree. You will need to land on it carefully.
step
	|poiname Highmaul Sledge
	|poilvl 98
	|poispot Nagrand D 67.38,49.06
	|poitype treasure
	|poiquest 36039
	|poiitem 118252
	_Follow_ the canyon wall |goto Nagrand D/0 67.7,47.9
	click Highmaul Sledge##233611 |q 36039 |future |goto Nagrand D 67.38,49.06
	|tip It's just past the tree on a hill.
step
	|poiname Important Exploration Supplies
	|poilvl 98
	|poispot Nagrand D 75.23,65.63
	|poitype treasure
	|poiquest 36099
	|poiitem 61986
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 15
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 15
	_Drop down_ to the cave below |goto Nagrand D/0 75.1,65.8 < 10
	click Important Exploration Supplies##233696 |q 36099 |future |goto Nagrand D 75.23,65.63
step
	|poiname Lost Pendant
	|poilvl 98
	|poispot Nagrand D 61.76,57.47
	|poitype treasure
	|poiquest 36082
	|poiitem 116687
	click Lost Pendant##233651 |q 36082 |future |goto Nagrand D 61.76,57.47
	|tip It's hanging from a branch overhead.
step
	|poiname Mountain Climber's Pack
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 70.53,13.85
	|poitype treasure
	|poiquest 35643
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Mountain Climber's Pack##233032 |q 35643 |future |goto Nagrand D 70.53,13.85
	|tip The pack is on the little skeleton.
step
	|poiname Ogre Beads
	|poilvl 98
	|poispot Nagrand D 80.96,79.79
	|poitype treasure
	|poiquest 36049
	|poiitem 118255
	_Go up_ the hill |goto Nagrand D/0 81.7,79.9 < 15
	_Jump over_ onto the wall from here |goto Nagrand D/0 80.9,80.3 < 10
	click Ogre Beads##233618 |q 36049 |future |goto Nagrand D 80.96,79.79
step
	|poiname Pale Elixir
	|poilvl 98
	|poispot Nagrand D 57.79,62.05
	|poitype treasure
	|poiquest 36115
	|poiitem 118278
	_Jump across_ the gap |goto Nagrand D/0 58.9,60.0 < 15
	_Jump across_ the second gap |goto Nagrand D/0 58.3,60.9 < 15
	_Jump down_ to the lower platform |goto Nagrand D/0 57.7,62.1 < 15
	click Pale Elixir##233768 |q 36115 |future |goto Nagrand D 57.79,62.05
	|tip It's on a small rock cradled in the tree trunk.
step
	|poiname Pokkar's Thirteenth Axe
	|poilvl 98
	|poispot Nagrand D 58.29,59.31
	|poitype treasure
	|poiquest 36021
	|poiitem 116688
	_Go to_ this platform |goto Nagrand D/0 58.0,57.8 < 10
	_Jump down_ onto the tree below |goto Nagrand D/0 58.1,59.2 < 5
	click Pokkar's Thirteenth Axe##233561 |q 36021 |future |goto Nagrand D 58.29,59.31
	|tip The axe is on a small tree limb just below the trunk.
step
	|poiname Polished Saberon Skull
	|poilvl 98
	|poispot Nagrand D 72.71,60.92
	|poitype treasure
	|poiquest 36035
	|poiitem 118254
	_Climb over_ the rocks |goto Nagrand D/0 77.0,61.4 < 15
	_Follow_ the ridge |goto Nagrand D/0 75.2,63.0 < 10
	_Go out_ onto the outcropping |goto Nagrand D/0 73.5,63.2 < 10
	click Polished Saberon Skull##233593 |q 36035 |future |goto Nagrand D 72.71,60.92
step
	|poiname Saberon Stash
	|poilvl 98
	|poispot Nagrand D 75.18,64.94
	|poitype treasure
	|poiquest 36102
	|poiitem 1 RANDOM
	|poicurrency GL
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
	_Drop down_ carefully by jumping and moving forward while in the air |goto Nagrand D/0 75.3,65.0 < 8
	click Saberon Stash##232311 |q 36102 |future |goto Nagrand D 75.18,64.94
	|tip It's between the wall and rock.
step
	|poiname Smuggler's Cache
	|poilvl 98
	|poispot Nagrand D 89.07,33.13
	|poitype treasure
	|poiquest 36857
	|poicurrency GR, GL
	_Go down_ the hill |goto Nagrand D/0 88.5,33.4 < 20
	_Enter_ the cave |goto Nagrand D/0 89.0,32.5 < 10
	click Smuggler's Cache##236633 |q 36857 |future |goto Nagrand D 89.07,33.13
	|tip Avoid the tripwires at the entrance of the cave. They are hooked to a gun that will shoot you out of the cave.
step
	|poiname Spirit Coffer
	|poilvl 98
	|poispot Nagrand D 40.34,68.64
	|poitype treasure
	|poiquest 37435
	|poicurrency GR
	_Enter_ the cave |goto Nagrand D/0 41.8,68.2 < 10
	click Spirit Coffer##237946 |q 37435 |future |goto Nagrand D 40.34,68.64
step
	|poiname Steamwheedle Supplies 1
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 50.12,82.28
	|poitype treasure
	|poiquest 35577
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Steamwheedle Supplies##232584 |q 35577 |future |goto Nagrand D 50.12,82.28
step
	|poiname Steamwheedle Supplies 2
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 52.67,80.08
	|poitype treasure
	|poiquest 35583
	|poicurrency GR
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Steamwheedle Supplies##232584 |q 35583 |future |goto Nagrand D 52.67,80.08
step
	|poiname Steamwheedle Supplies 3
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 77.83,51.95
	|poitype treasure
	|poiquest 35591
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 77.3,72.7 < 15
	_Climb over_ the rocks |goto Nagrand D/0 76.1,70.6 < 10
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.2 < 10
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.5 < 10
	click Steamwheedle Supplies##232584 |q 35591 |future |goto Nagrand D 77.83,51.95
	|tip You will need to land on the watchtower.
step
	|poiname Steamwheedle Supplies 4
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 64.59,17.62
	|poitype treasure
	|poiquest 35648
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Steamwheedle Supplies##232584 |q 35648 |future |goto Nagrand D 64.59,17.62
step
	|poiname Steamwheedle Supplies 5
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 70.60,18.60
	|poitype treasure
	|poiquest 35646
	|poicurrency GR
	_Follow_ this path around to the right |goto Nagrand D/0 72.3,12.5 < 10
	_Jump across_ the first gap |goto Nagrand D/0 71.5,13.2 < 15
	_Jump across_ the second gap |goto Nagrand D/0 70.2,13.4 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 67.5,14.3 < 10
	click Steamwheedle Supplies##232584 |q 35646 |future |goto Nagrand D 70.60,18.60
	|tip You need to land on top of the stone pillar with the purple flag waiving.
step
	|poiname Steamwheedle Supplies 6
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 87.60,20.28
	|poitype treasure
	|poiquest 35662
	|poicurrency GR
	_Follow_ the path around towards the glider |goto Nagrand D/0 88.3,37.9 < 20
	_Continue_ towards the glider |goto Nagrand D/0 86.5,34.5 < 20
	Click the Steamwheedle Exploration Glider |goto Nagrand D/0 83.7,33.7 < 10
	click Steamwheedle Supplies##232584 |q 35662 |future |goto Nagrand D 87.60,20.28
	|tip You need to land on the smaller mushroom just under the huge one.
step
	|poiname Steamwheedle Supplies 7
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 88.27,42.62
	|poitype treasure
	|poiquest 35616
	|poicurrency GR
	_Cross_ the bridge |goto Nagrand D/0 87.1,39.4 < 10
	_Go up_ the hill |goto Nagrand D/0 86.3,41.3 < 15
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 10
	click Steamwheedle Supplies##232584 |q 35616 |future |goto Nagrand D 88.27,42.62
step
	|poiname Telaar Defender Shield
	|poilvl 98
	|poispot Nagrand D 64.71,65.83
	|poitype treasure
	|poiquest 36046
	|poiitem 118253
	_Cross_ the waterfall here |goto Nagrand D/0 64.4,67.5 < 15
	click Telaar Defender Shield##233613 |q 36046 |future |goto Nagrand D 64.71,65.83
step
	|poiname Treasure of Kull'krosh
	|poilvl 98
	|poispot Nagrand D 37.71,70.65
	|poitype treasure
	|poiquest 34760
	|poicurrency GR, GL
	_Go up_ the ramp |goto Nagrand D/0 38.8,72.1 < 20
	_Enter_ the building |goto Nagrand D/0 37.8,70.8 < 10
	_Go towards_ the steps |goto Nagrand D/0 37.7,69.8 < 8
	_Go down_ the steps |goto Nagrand D/0 37.2,70.0 < 8
	_Enter_ the vault |goto Nagrand D/0 37.6,70.1 < 10
	click Treasure of Kull'krosh##230725 |q 34760 |future |goto Nagrand D 37.71,70.65
step
	|poiname Void-Infused Crystal
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 49.97,66.51
	|poitype treasure
	|poiquest 35579
	|poiitem 118264
	_Click_ the goblin rocket |goto Nagrand D/0 58.5,76.3 < 5
	_Click_ the Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.3 < 5
	click Void-Infused Crystal##232590 |q 35579 |future |goto Nagrand D 49.97,66.51
step
	|poiname Warsong Cache
	|poilvl 98
	|poispot Nagrand D 51.72,60.29
	|poitype treasure
	|poiquest 35695
	|poicurrency GR
	click Warsong Cache##233135 |q 35695 |future |goto Nagrand D 51.72,60.29
	|tip Inside the hut on the right.
step
	|poiname Warsong Helm
	|poilvl 98
	|poispot Nagrand D 52.41,44.38
	|poitype treasure
	|poiquest 36073
	|poiitem 118250
	click Warsong Helm##233645 |q 36073 |future |goto Nagrand D 52.41,44.38
	|tip On the left side of the waterfall against the rocks.
step
	|poiname Warsong Lockbox
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 73.04,70.36
	|poitype treasure
	|poiquest 35678
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
	click Steamwheedle Exploration Glider## |goto Nagrand D/0 76.1,73.0 < 5
	click Warsong Lockbox##233103 |q 35678 |future |goto Nagrand D 73.04,70.36
	|tip You need to fly under the canopy of the watchtower.
step
	|poiname Warsong Spear
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 76.06,69.90
	|poitype treasure
	|poiquest 35682
	|poiitem 118678
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 10
	click Steamwheedle Exploration Glider## |goto Nagrand D/0 76.1,73.0 < 5
	click Warsong Spear##233113 |q 35682 |future |goto Nagrand D 76.06,69.90
	|tip Fly right and under the long earthen bridge. There is a skeleton hanting from the rock, you need to land on the rock just below it.
step
	|poiname Warsong Spoils
	|poiaccess Completionist
	|poilvl 98
	|poispot Nagrand D 80.65,60.54
	|poitype treasure
	|poiquest 35593
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 78.1,72.0 < 20
	_Go over_ the hills |goto Nagrand D/0 76.4,71.3 < 15
	_Cross_ the bridge |goto Nagrand D/0 75.8,67.4 < 15
	click Steamwheedle Exploration Glider## |goto Nagrand D/0 75.7,64.5 < 5
	click Warsong Spoils##232599 |q 35593 |future |goto Nagrand D 80.65,60.54
	|tip You need to land under the canopy of the watchtower.
step
	|poiname Warsong Supplies
	|poilvl 98
	|poispot Nagrand D 89.40,65.88
	|poitype treasure
	|poiquest 35976
	|poicurrency GR
	_Go up_ the hidden path |goto Nagrand D/0 88.9,65.8 < 10
	kill Lazy Warsong Scout##83791
	click Warsong Supplies##233521 |q 35976 |future |goto Nagrand D 89.40,65.88
step
	|poiname Watertight Bag
	|poilvl 98
	|poispot Nagrand D 64.76,35.73
	|poitype treasure
	|poiquest 36071
	|poiitem 118235
	click Watertight Bag##233641 |q 36071 |future |goto Nagrand D 64.76,35.73
	|tip It's next to a skeleton under the south side of the bridge.
step
	|poiname Adventurer's Pouch
	|poilvl 98
	|poispot Nagrand D/12 66.0,57.5
	|poitype treasure
	|poiquest 36088
	|poiitem RANDOM
	|poicurrency GL
	_Enter_ the Underpale cave |goto Nagrand D/12 93.5,34.2 < 10
	_Go to_ the bottom of the tunnel |goto Nagrand D/12 72.3,46.1 < 10
	_Go up_ the ramp |goto Nagrand D/12 62.0,39.8 < 10
	click Adventurer's Pouch##233623 |q 36088 |future |goto Nagrand D/12 66.0,57.5
	|tip It's the small pouch on the belt of the impaled adventurer.
step
	|poiname Spirit's Gift
	|poilvl 98
	|poispot Nagrand D 35.47,57.25
	|poitype treasure
	|poiquest 36846
	|poicurrency GR
	_Go up_ the path beneath the skull |goto Nagrand D/0 36.7,55.7 < 10
	click Forgotten Brazier##3365
	click Spirit's Gift##236610 |q 36846 |future |goto Nagrand D 35.47,57.25
	|tip After lighting the Baziers, the treasure will appear.
step
	|poiname Ancient Blademaster
	|poilvl 98
	|poispot Nagrand D 84.60,53.40
	|poitype rare
	|poiquest 35778
	|poiitem 116832
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 83.1,52.5 < 10
	_Cross_ the bridge |goto Nagrand D/0 84.0,52.1 < 10
	Click Blademaster Sword
	kill Ancient Blademaster##82899 |q 35778 |future |goto Nagrand D 84.60,53.40
step
	|poiname Aogexon
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 51.00,16.00
	|poitype rare
	|poiquest 37210
	|poiitem 118654
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 53.4,18.9 < 10
	kill Aogexon##86774 |q 37210 |future |goto Nagrand D 51.00,16.00
	|tip Aogexon will require a group.
step
	|poiname Bergruu
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 62.60,16.80
	|poitype rare
	|poiquest 37211
	|poiitem 118655
	|poicurrency GR
	map Nagrand D/0
	path follow smart; loop on; ants curved; dist 20
	path	62.4,27.4	61.6,18.8	61.2,12.4
	path	62.6,14.6	65.8,21.2	65.6,28.0
	kill Bergruu##86732 |q 37211 |future
	|tip Bergruu wanders a small area. You will need a group to defeat him.
step
	|poiname Berserk T-300 Series Mark II
	|poilvl 98
	|poispot Nagrand D 76.9,64.4
	|poitype rare
	|poiquest 35735
	|poiitem 116823
	|poicurrency GR
	_Climb up_ the hill here |goto Nagrand D/0 77.3,65.1 < 5
	kill Berserk T-300 Series Mark II##82826 |q 35735 |future |goto Nagrand D 76.9,64.4
	|tip Click the detonator in front of the cave to release T-300 Series Mark II.
step
	|poiname Bonebreaker
	|poilvl 100
	|poispot Nagrand D 40.00,16.00
	|poitype rare
	|poiquest 37396
	|poiitem 119370
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Nagrand D/0 38.2,16.2 < 10
	kill Bonebreaker##87837 |q 37396 |future |goto Nagrand D 40.00,16.00
	|tip Bonebreaker has a very long respawn timer.
step
	|poiname Brutag Grimblade
	|poilvl 100
	|poispot Nagrand D 43.00,36.40
	|poitype rare
	|poiquest 37400
	|poiitem 119380
	|poiitem 120945
	|poicurrency AC
	kill Brutag Grimblade##87234 |q 37400 |future |goto Nagrand D 43.00,36.40
	|tip He's in front of the big tree.
step
	|poiname Captain Ironbeard
	|poilvl 99
	|poispot Nagrand D 34.3,76.9
	|poitype rare
	|poiquest 34727
	|poiitem 118244
	|poiitem 116809
	|poicurrency GR
	_Swim towards_ the ship |goto Nagrand D/0 35.8,76.4 < 10
	kill Captain Ironbeard##79725 |q 34727 |future |goto Nagrand D 34.3,76.9
	|tip Avoid the mines in the water, they go boom.
	|tip Click the ladder to get on the ship.
step
	|poiname Dekorhan
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 64.20,30.00
	|poitype rare
	|poiquest 37221
	|poiitem 118656
	|poicurrency GR
	kill Dekorhan##86743 |q 37221 |future |goto Nagrand D 64.20,30.00
	|tip Dekorhan sits atop the hill and will require a group to defeat.
step
	|poiname Direhoof
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 60.00,38.00
	|poitype rare
	|poiquest 37222
	|poiitem 118657
	|poicurrency GR
	kill Direhoof##86729 |q 37222 |future |goto Nagrand D/0 60.2,38.7
	|tip Direhoof sits atop the waterfall and will require a group to defeat.
step
	|poiname Durg Spinecrusher
	|poilvl 100
	|poispot Nagrand D 38.60,22.40
	|poitype rare
	|poiquest 37395
	|poiitem 119405
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
	kill Durg Spinecrusher##87788 |q 37395 |future |goto Nagrand D 38.60,22.40
step
	|poiname Explorer Nozzand
	|poilvl 98
	|poispot Nagrand D 89.00,41.20
	|poitype rare
	|poiquest 35623
	|poiitem 118679
	|poicurrency GR
	_Drop down_ from the top of the waterfall here |goto Nagrand D/0 89.4,43.3 < 5
	_Run and jump_ into the cave behind the waterfall |goto Nagrand D/0 88.8,42.7 < 8
	kill Explorer Nozzand##82486 |q 35623 |future |goto Nagrand D 89.00,41.20
step
	|poiname Fangler
	|poilvl 98
	|poispot Nagrand D 74.80,11.80
	|poitype rare
	|poiquest 35836
	|poiitem 116836
	|poicurrency GR
	_Click_ the abandoned fishing rod |goto Nagrand D/0 75.3,10.9
	Select: "_Reel it in!_"
	kill Fangler##82975 |q 35836 |future |goto Nagrand D 74.80,11.80
	|tip You will be pulled into the water in front of Fangler, be prepared.
step
	|poiname Flinthide
	|poilvl 99
	|poispot Nagrand D 69.8,42.0
	|poitype rare
	|poiquest 35893
	|poiitem 116807
	|poicurrency GR
	kill Flinthide##83483 |q 35893 |future |goto Nagrand D 69.8,42.0
	|tip Flinthide resides in the boneyard.
step
	|poiname Gagrog the Brutal
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 48.20,22.20
	|poitype rare
	|poiquest 37223
	|poiitem 118658
	|poicurrency GR
	_Cross_ Earthshaker Gorge |goto Nagrand D/0 49.0,24.9 < 15
	kill Gagrog the Brutal##86771 |q 37223 |future |goto Nagrand D 48.20,22.20
	|tip Gagrog will require a group to defeat.
step
	|poiname Gar'lua
	|poilvl 99
	|poispot Nagrand D 52.20,55.80
	|poitype rare
	|poiquest 35715
	|poiitem 118246
	|poicurrency GR
	kill Gar'lua##82764 |q 35715 |future |goto Nagrand D 52.20,55.80
	|tip Gar'lua is inside the hut.
step
	|poiname Gaz'orda
	|poilvl 99
	|poispot Nagrand D 42.20,78.60
	|poitype rare
	|poiquest 34725
	|poiitem 116798
	|poicurrency GR
	_Enter_ the cave |goto Nagrand D 42.20,78.60 < 10
	kill Gaz'orda##80122 |q 34725 |future |goto Nagrand D/0 43.8,77.7
step
	|poiname Gnarlhoof the Rabid
	|poilvl 98
	|poispot Nagrand D 66.60,56.60
	|poitype rare
	|poiquest 35717
	|poiitem 116824
	|poicurrency GR
	kill Gnarlhoof the Rabid##82778 |q 35717 |future |goto Nagrand D 66.60,56.60
	|tip Gnarlhoof is out on a platform overlooking the canyon.
step
	|poiname Gorepetal
	|poilvl 98
	|poispot Nagrand D 93.20,28.20
	|poitype rare
	|poiquest 35898
	|poiitem 116916
	|poicurrency GR
	_Follow_ the shore |goto Nagrand D/0 92.3,22.2 < 15
	_Enter_ the cave |goto Nagrand D/0 94.1,26.5 < 10
	click Pristine Lily##3365
	kill Gorepetal##83509 |q 35898 |future |goto Nagrand D 93.20,28.20
step
	|poiname Gortag Steelgrip
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 42.00,36.80
	|poitype rare
	|poiquest 37472
	|poiitem 120945
	|poicurrency AC
	kill Mok'gol Pack-Leader##87584
	collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
	_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 |only if itemcount(120290) > 0
	kill Krahl Deadeye##87239
	kill Gortag Steelgrip##87344 |q 37472 |future |goto Nagrand D/0 42.4,36.5
	|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
step
	|poiname Graveltooth
	|poilvl 98
	|poispot Nagrand D 84.60,36.60
	|poitype rare
	|poiquest 36159
	|poiitem 118689
	|poicurrency GR
	If you see crossed swords on the minimap, Graveltooth can spawn
	kill Greedy Stonemuncher##84255
	kill Graveltooth##84263 |q 36159 |future |goto Nagrand D/0 84.0,36.9
	|tip Killing around 15 Greedy Stonemunchers will spawn Graveltooth.
step
	|poiname Greatfeather
	|poilvl 98
	|poispot Nagrand D 66.80,51.20
	|poitype rare
	|poiquest 35714
	|poiitem 116795
	|poicurrency GR
	_Go out_ onto the isthmus |goto Nagrand D/0 67.9,50.3 < 10
	kill Greatfeather##82758 |q 35714 |future |goto Nagrand D 66.80,51.20
step
	|poiname Grizzlemaw
	|poilvl 98
	|poispot Nagrand D 89.5,72.8
	|poitype rare
	|poiquest 35784
	|poiitem 118687
	|poicurrency GR
	kill Grizzlemaw##82912 |q 35784 |future |goto Nagrand D/0 89.5,72.8
	|tip Around the side of the hut.
step
	|poiname Hunter Blacktooth
	|poilvl 98
	|poispot Nagrand D 80.60,30.40
	|poitype rare
	|poiquest 35923
	|poiitem 118245
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 81.2,27.6 < 10
	kill Hunter Blacktooth##83603 |q 35923 |future |goto Nagrand D 80.60,30.40
	|tip Blacktooth is sitting by a bloody corpse.
step
	|poiname Hyperious
	|poilvl 98
	|poispot Nagrand D 87.00,55.00
	|poitype rare
	|poiquest 34862
	|poiitem 116799
	|poicurrency GR
	click Summoning Brazier##6477
	Light the first Summoning Brazier |goto Nagrand D/0 86.6,56.4 < 5
	Light the second Summoning Brazier |goto Nagrand D/0 86.7,55.4 < 5
	Light the third Summoning Brazier |goto Nagrand D/0 87.1,54.2 < 5
	kill Hyperious##78161 |q 34862 |future |goto Nagrand D/0 87.2,55.2
	|tip Hyperious will spawn from the lava when all 3 braziers are lit.
step
	|poiname Karosh Blackwind
	|poilvl 100
	|poispot Nagrand D 45.80,34.80
	|poitype rare
	|poiquest 37399
	|poiitem 119355
	|poiitem 120945
	|poicurrency AC
	kill Karosh Blackwind##86959 |q 37399 |future |goto Nagrand D 45.80,34.80
	|tip Karosh spawns in front of the giant stone pillar in Mok'gol Watchpost.
step
	|poiname Krahl Deadeye
	|poilvl 100
	|poispot Nagrand D 43.80,34.40
	|poitype rare
	|poiquest 37473
	|poiitem 120945
	|poicurrency AC
	kill Mok'gol Pack-Leader##87584
	collect 1 Secret Meeting Details##120290 |n |only if itemcount(120290) < 1
	_Click_ the horn hanging from the right post of the building to summon Gortag |goto Nagrand D/0 42.1,36.8 < 10 |only if itemcount(120290) > 0
	kill Krahl Deadeye##87239 |q 37473 |future |goto Nagrand D/0 42.4,36.5
	kill Gortag Steelgrip##87344
	|tip Deal with Gortag first, as Krahl uses disengage frequenly and will force you to chase him.
step
	|poiname Krud the Eviscerator
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 58.20,12.00
	|poitype rare
	|poiquest 37398
	|poiitem 119384
	|poiitem 120945
	|poicurrency AC
	kill Krud the Eviscerator##88210 |q 37398 |future |goto Nagrand D/0 58.2,11.7
	|tip If Krud is available, you will see a tribute counter at the top of the screen.
	|tip Kill mobs until the counter reaches 0, and Krud will become attackable.
step
	|poiname Lernaea
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 52.00,90.00
	|poitype rare
	|poiquest 37408
	|poiitem 120945
	|poicurrency AC
	kill Lernaea##80370 |q 37408 |future |goto Nagrand D 52.00,90.00
	|tip Lernaea resides out in the South Sea and will require a group to defeat.
step
	|poiname Malroc Stonesunder
	|poilvl 98
	|poispot Nagrand D 81.20,60.00
	|poitype rare
	|poiquest 35932
	|poiitem 116796
	|poicurrency GR
	kill Lieutenant Bruna##83668
	kill Malroc Stonesunder##83643 |q 35932 |future |goto Nagrand D 81.20,60.00
	|tip He is located inside the hut at the crossroads.
step
	|poiname Mr. Pinchy Sr.
	|poilvl 100
	|poispot Nagrand D 45.80,15.20
	|poitype rare
	|poiquest 36229
	|poiitem 118690
	|poicurrency GR
	_Go to_ the Cerulean Lagoon |goto Nagrand D/0 49.7,18.6 < 15
	_Continue along_ the shore |goto Nagrand D/0 46.8,17.9 < 15
	kill Mr. Pinchy Sr.##84435 |q 36229 |future |goto Nagrand D 45.80,15.20
step
	|poiname Mu'gra
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 34.00,51.00
	|poitype rare
	|poiquest 37224
	|poiitem 118659
	|poicurrency GR
	kill Mu'gra##87666 |q 37224 |future |goto Nagrand D 34.00,51.00
	|tip Mu'gra will require a group to defeat.
step
	|poiname Netherspawn
	|poilvl 99
	|poispot Nagrand D 47.60,70.80
	|poitype rare
	|poiquest 35865
	|poiitem 116815
	|poicurrency GR
	kill Netherspawn##83401 |q 35865 |future |goto Nagrand D 47.60,70.80
	|tip Netherspawn will summon little slimes, you may need a cooldown for this.
step
	|poiname Ophiis
	|poilvl 99
	|poispot Nagrand D 42.80,49.20
	|poitype rare
	|poiquest 35875
	|poiitem 116765
	|poicurrency GR
	kill Ophiis##83409 |q 35875 |future |goto Nagrand D 42.80,49.20
	|tip Ophiis swims up and down this section of the river.
	|tip Interrupt Ophiis as much as possible, especially Shocking Blast.
step
	|poiname Outrider Duretha
	|poilvl 98
	|poispot Nagrand D 61.80,69.00
	|poitype rare
	|poiquest 35943
	|poiitem 116800
	|poicurrency GR
	_Cross_ the waterfall |goto Nagrand D/0 63.9,71.2 < 10
	kill Outrider Duretha##83680 |q 35943 |future |goto Nagrand D 61.80,69.00
step
	|poiname Pit Beast
	|poilvl 100
	|poispot Nagrand D 58.1,18.6
	|poitype rare
	|poiquest 37637
	|poiitem 120317
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Gorian Proving Grounds |goto Nagrand D/0 56.9,19.4 < 20
	kill Pit Beast##88208 |q 37637 |future |goto Nagrand D 58.1,18.6
step
	|poiname Pit Slayer
	|poiaccess Completionist
	|poilvl 101
	|poispot Nagrand D 38.00,19.60
	|poitype rare
	|poiquest 37397
	|poiitem 119389
	|poiitem 120945
	|poicurrency AC
	As you travel, look for a blue transformation crystal and click it to transform --Jewel of Transformation
	_Enter_ the Broken Precipice |goto Nagrand D/0 39.3,24.3 < 10
	_Go right_ up the path |goto Nagrand D/0 36.9,19.9 < 10
	_Continue_ going right |goto Nagrand D/0 38.3,15.4 < 10
	_Click_ the Pit Slayer's Trophy while under the effects of a transformation crystal |goto Nagrand D/0 39.8,14.5 < 5
	kill Pit Slayer##87846 |q 37397 |future |goto Nagrand D/0 39.8,14.5
	only if havequest(36677) or havequest(36694) or havequest(38193) or havequest(38180)
step
	|poiname Redclaw the Feral
	|poilvl 98
	|poispot Nagrand D 73.60,57.80
	|poitype rare
	|poiquest 35712
	|poiitem 118243
	|poicurrency GR
	_Go up_ the hill |goto Nagrand D/0 73.6,56.8 < 10
	kill Redclaw the Feral##82755 |q 35712 |future |goto Nagrand D 73.60,57.80
	|tip He is inside the cave.
step
	|poiname Ru'klaa
	|poilvl 99
	|poispot Nagrand D 58.00,84.00
	|poitype rare
	|poiquest 35900
	|poiitem 118688
	|poicurrency GR
	_Follow_ the shore |goto Nagrand D/0 54.0,79.5 < 15
	_Continue_ through the canyon |goto Nagrand D/0 56.8,81.6 < 15
	kill Ru'klaa##83526 |q 35900 |future |goto Nagrand D 58.00,84.00
step
	|poiname Scout Pokhar
	|poilvl 98
	|poispot Nagrand D 54.80,61.20
	|poitype rare
	|poiquest 35931
	|poiitem 116797
	|poicurrency GR
	_Jump to_ this platform |goto Nagrand D/0 58.7,60.3 < 10
	_Jump_ to the second platform |goto Nagrand D/0 58.0,60.9 < 10
	_Go up_ the hill |goto Nagrand D/0 56.1,59.4 < 10
	kill Scout Pokhar##83634 |q 35931 |future |goto Nagrand D 54.80,61.20
step
	|poiname Sean Whitesea
	|poilvl 99
	|poispot Nagrand D 60.93,47.75
	|poitype rare
	|poiquest 35912
	|poiitem 116834
	|poicurrency GR
	click Abandoned Chest##3365
	kill Highwayman##83559
	kill Sean Whitesea##83542 |q 35912 |future |goto Nagrand D 60.93,47.75
	|tip After clicking the chest, Sean and 2 Highwaymen will spawn.
step
	|poiname Soulfang
	|poilvl 98
	|poispot Nagrand D 75.60,65.00
	|poitype rare
	|poiquest 36128
	|poiitem 116806
	|poicurrency GR
	_Go up_ the path |goto Nagrand D/0 75.3,61.6 < 10
	_Cross_ the fallen tree |goto Nagrand D/0 73.9,62.2 < 5
	_Continue_ following the path |goto Nagrand D/0 74.5,62.6 < 10
	_Go over_ the rocks and planks |goto Nagrand D/0 75.5,62.0 < 10
	_Continue_ following the path |goto Nagrand D/0 76.2,61.5 < 10
	_Enter_ the cave |goto Nagrand D/0 74.7,64.0 < 10
	kill Soulfang##80057 |q 36128 |future |goto Nagrand D 75.60,65.00
step
	|poiname Thek'talon
	|poiaccess Completionist
	|poilvl 100
	|poispot Nagrand D 58.40,35.80
	|poitype rare
	|poiquest 37225
	|poiitem 118660
	|poicurrency GR
	kill Thek'talon##86750 |q 37225 |future |goto Nagrand D 58.40,35.80
	|tip Thek'talon patrols around the area and will require a group to kill.
step
	|poiname Tura'aka
	|poilvl 99
	|poispot Nagrand D 65.00,39.00
	|poitype rare
	|poiquest 35920
	|poiitem 116814
	|poicurrency GR
	kill Tura'aka##83591 |q 35920 |future |goto Nagrand D 65.00,39.00
step
	|poiname Vileclaw
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 37.00,38.00
	|poitype rare
	|poiquest 37520
	|poiitem 120172
	|poicurrency GR
	kill Vileclaw##88951 |q 37520 |future |goto Nagrand D 37.00,38.00
	|tip Vileclaw will require a group to defeat.
step
	|poiname Warmaster Blugthol
	|poilvl 99
	|poispot Nagrand D 82.60,76.20
	|poitype rare
	|poiquest 34645
	|poiitem 116805
	|poicurrency GR
	_Enter_ this building |goto Nagrand D/0 82.7,75.6 < 10
	kill Warmaster Blugthol##79024 |q 34645 |future |goto Nagrand D 82.60,76.20
step
	|poiname Windcaller Korast
	|poilvl 99
	|poispot Nagrand D 70.60,29.40
	|poitype rare
	|poiquest 35877
	|poiitem 116808
	|poicurrency GR
	_Go onto_ the ridge |goto Nagrand D/0 77.5,25.2 < 20
	_Follow_ the path |goto Nagrand D/0 75.6,28.2 < 15
	_Continue down_ |goto Nagrand D/0 72.4,31.3 < 15
	kill Windcaller Korast##83428 |q 35877 |future |goto Nagrand D 70.60,29.40
step
	|poiname Xelganak
	|poiaccess Completionist
	|poilvl 103
	|poispot Nagrand D 41.00,44.00
	|poitype rare
	|poiquest 37226
	|poiitem 118661
	|poicurrency GR
	kill Xelganak##86835 |q 37226 |future |goto Nagrand D 41.00,44.00
	|tip You will need a group to defeat this rare.
step
	|poiname Keravnos
	|poiaccess Completionist
	|poilvl 103
	|poispot Tanaan Jungle 41.40,79.60
	|poitype rare
	|poiquest 37407
	|poicurrency GR
	kill Keravnos##80398 |q 37407 |future |goto Tanaan Jungle 41.40,79.60
	|tip Keravnos resides at the mouth of the river flowing out of Tanaan Jungle and will require a group to defeat.
--//Garrison/Misc\\--
step
	|poiname Lunarfall Egg
	|poilvl 90
	|poispot Lunarfall/0 49.60,43.80
	|poitype treasure
	|poiquest 35530
	|poicurrency GR
	click Lunarfall Egg##232507 |q 35530 |future |goto Lunarfall/0 49.60,43.80
	|tip In the wagon.
	only Alliance
	only if garrisonlvl(1)
step
	|poiname Lunarfall Egg
	|poilvl 90
	|poispot Lunarfall/0 37.3,65.9
	|poitype treasure
	|poiquest 35530
	|poicurrency GR
	click Lunarfall Egg##232507 |q 35530 |future |goto Lunarfall/0 37.3,65.9
	|tip In the wagon.
	only Alliance
	only if garrisonlvl(2)
step
	|poiname Lunarfall Egg
	|poilvl 90
	|poispot Lunarfall/0 61.27,72.61
	|poitype treasure
	|poiquest 35530
	|poicurrency GR
	click Lunarfall Egg##232507 |q 35530 |future |goto Lunarfall/0 61.27,72.61
	|tip In the tent.
	only Alliance
	only if garrisonlvl(3)
step
	|poiname Pippers' Buried Supplies 1
	|poilvl 90
	|poispot Lunarfall/0 42.40,54.36
	|poitype treasure
	|poiquest 35381
	|poicurrency GR
	click Pippers' Buried Supplies 1##???? |q 35381 |future |goto Lunarfall/0 42.4,54.4
	only Alliance
	only if garrisonlvl(1)
step
	|poiname Pippers' Buried Supplies 1
	|poilvl 90
	|poispot Lunarfall/0 41.5,58.1
	|poitype treasure
	|poiquest 35381
	|poicurrency GR
	click Pippers' Buried Supplies 1##???? |q 35381 |future |goto Lunarfall/0 41.5,58.1
	only Alliance
	only if garrisonlvl(2)
step
	|poiname Pippers' Buried Supplies 1
	|poilvl 90
	|poispot Lunarfall/0 60.7,55.3
	|poitype treasure
	|poiquest 35381
	|poicurrency GR
	click Pippers' Buried Supplies 1##???? |q 35381 |future |goto Lunarfall/0 60.7,55.3
	only Alliance
	only if garrisonlvl(3)
step
	|poiname Pippers' Buried Supplies 2
	|poilvl 90
	|poispot Lunarfall/0 50.70,48.50
	|poitype treasure
	|poiquest 35382
	|poicurrency GR
	click Pippers' Buried Supplies 2##???? |q 35382 |future |goto Lunarfall/0 50.6,48.4
	only Alliance
	only if garrisonlvl(1)
step
	|poiname Pippers' Buried Supplies 2
	|poilvl 90
	|poispot Lunarfall/0 51.9,45.1
	|poitype treasure
	|poiquest 35382
	|poicurrency GR
	click Pippers' Buried Supplies 2##???? |q 35382 |future |goto Lunarfall/0 51.9,45.1
	only Alliance
	only if garrisonlvl(2)
step
	|poiname Pippers' Buried Supplies 2
	|poilvl 90
	|poispot Lunarfall/0 37.4,74.9
	|poitype treasure
	|poiquest 35382
	|poicurrency GR, 200 OIL
	click Pippers' Buried Supplies 2##???? |q 35382 |future |goto Lunarfall/0 37.4,74.9
	only Alliance
	only if garrisonlvl(3)
step
	|poiname Pippers' Buried Supplies 3
	|poilvl 90
	|poispot Lunarfall/0 30.80,28.30
	|poitype treasure
	|poiquest 35383
	|poicurrency GR
	click Pippers' Buried Supplies 3##???? |q 35383 |future |goto Lunarfall/0 31.1,27.6
	only Alliance
	only if garrisonlvl(1)
step
	|poiname Pippers' Buried Supplies 3
	|poilvl 90
	|poispot Lunarfall/0 35.0,23.8
	|poitype treasure
	|poiquest 35383
	|poicurrency GR
	click Pippers' Buried Supplies 3##???? |q 35383 |future |goto Lunarfall/0 35.0,23.8
	only Alliance
	only if garrisonlvl(2)
step
	|poiname Pippers' Buried Supplies 3
	|poilvl 90
	|poispot Lunarfall/0 37.9,43.8
	|poitype treasure
	|poiquest 35383
	|poicurrency GR
	click Pippers' Buried Supplies 3##???? |q 35383 |future |goto Lunarfall/0 37.9,43.8
	only Alliance
	only if garrisonlvl(3)
step
	|poiname Pippers' Buried Supplies 4
	|poilvl 90
	|poispot Lunarfall/0 49.19,76.83
	|poitype treasure
	|poiquest 35384
	|poicurrency GR
	click Pippers' Buried Supplies 4##???? |q 35384 |future |goto Lunarfall/0 49.1,76.9
	only Alliance
	only if garrisonlvl(1)
step
	|poiname Pippers' Buried Supplies 4
	|poilvl 90
	|poispot Lunarfall/0 46.5,76.1
	|poitype treasure
	|poiquest 35384
	|poicurrency GR
	click Pippers' Buried Supplies 4##???? |q 35384 |future |goto Lunarfall/0 46.5,76.1
	only Alliance
	only if garrisonlvl(2)
step
	|poiname Pippers' Buried Supplies 4
	|poilvl 90
	|poispot Lunarfall/0 61.4,71.4
	|poitype treasure
	|poiquest 35384
	|poicurrency GR
	click Pippers' Buried Supplies 4##???? |q 35384 |future |goto Lunarfall/0 61.4,71.4
	only Alliance
	only if garrisonlvl(3)
step
	|poiname Spark's Stolen Supplies
	|poilvl 90
	|poispot Shadowmoon Valley D 51.80,01.10
	|poitype treasure
	|poiquest 35289
	|poicurrency GR
	_Dive down_ under the water here and enter the cave |goto Lunarfall/0 49.1,11.6
	click Spark's Stolen Supplies##232090 |q 35289 |future |goto Lunarfall/0 51.80,01.10
	only Alliance
step
	|poiname Bahameye
	|poilvl 90
	|poispot Shadowmoon Valley D 29.60,06.20
	|poitype rare
	|poiquest 35281
	|poiitem 111666
	|poicurrency GR
	_Swim around_ the boat |goto Shadowmoon Valley D/0 28.6,6.6
	kill Bahameye##81406 |q 35281 |future |goto Shadowmoon Valley D 29.60,06.20
	|tip He is underwater.
step
	|poiname Gorum
	|poilvl 91
	|poispot Shadowmoon Valley D 21.60,33.00
	|poitype rare
	|poiquest 33664
	|poiitem 113082
	|poicurrency GR
	_Enter_ the cave |goto Shadowmoon Valley D/15 79.6,34.4
	_Go straight_ through the cave |goto Shadowmoon Valley D/15 39.0,17.2
	_Go around_ the path |goto Shadowmoon Valley D/15 25.3,60.6
	kill Gorum##76380 |q 33664 |future |goto Shadowmoon Valley D/15 31.1,34.8
step
	|poiname Windfang Matriarch
	|poilvl 90
	|poispot Shadowmoon Valley D 42.80,41.00
	|poitype rare
	|poiquest 33038
	|poiitem 113553
	|poicurrency GR
	talk Romuul##74741 |goto Shadowmoon Valley D/0 42.9,40.4 |only Alliance
	Tell him: "_Of course_." |only Alliance
	To kill this Rare Elite, an Alliance player must start this event
	|tip You can have a friend who is Alliance help you with this. |only Horde
	kill Windfang Runner##75431+
	kill Windfang Matriarch##75434 |q 33038 |future |goto Shadowmoon Valley D 42.80,41.00
	accept Artificer Romuul##35614 |goto Shadowmoon Valley D/0 42.9,40.4 |only Alliance
step
	|poiname Lady Sena's Other Materials Stash
	|poilvl 90
	|poispot Frostwall/0 74.50,56.20
	|poitype treasure
	|poiquest 34937
	|poicurrency GR
	click Lady Sena's Other Materials Stash##233633 |q 34937 |future |goto Frostwall/0 74.7,56.8
	only Horde
--//Tanaan Jungle\\--
step
	|poiname Axe of Weeping Wolf
	|poilvl 100
	|poispot Tanaan Jungle 15.00,54.40
	|poitype treasure
	|poiquest 38754
	|poiitem 127325
	_Enter_ the building |goto Tanaan Jungle/0 15.4,54.9 < 10
	click Axe of Weeping Wolf##241692 |quest 38754 |goto Tanaan Jungle 15.00,54.40 |future
	|tip The axe is hanging from a dead orc under the steps.
step
	|poiname The Eye of Grannok
	|poilvl 100
	|poispot Tanaan Jungle 15.90,59.30
	|poitype treasure
	|poiquest 38757
	|poiitem 128220
	_Enter_ the building |goto Tanaan Jungle/0 16.4,58.6 < 10
	_Go up_ the first flight of steps |goto Tanaan Jungle 15.90,59.30
	click The Eye of Grannok##241713 |quest 38757 |goto Tanaan Jungle 15.90,59.30 |future
	|tip It's located next to the second flight of steps.
step
	|poiname Spoils of War
	|poilvl 100
	|poispot Tanaan Jungle 17.30,56.90
	|poitype treasure
	|poiquest 38755
	|poicurrency 250 GR
	click Spoils of War##241699 |quest 38755 |goto Tanaan Jungle 17.30,56.90 |future
	|tip The chest is inside the small hut.
step
	|poiname Stolen Captain's Chest
	|poilvl 100
	|poispot Tanaan Jungle 17.00,53.00
	|poitype treasure
	|poiquest 38283
	|poiitem 128219
	|poicurrency GL
	click Stolen Captain's Chest##240543 |quest 38283 |goto Tanaan Jungle 17.00,53.00 |future
	|tip The chest is left of the Felsworn Deserter corpse by the big tree.
step
	|poiname Weathered Axe
	|poilvl 100
	|poispot Tanaan Jungle 15.90,49.80
	|poitype treasure
	|poiquest 38208
	|poiitem 127324
	_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.6 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 16.4,48.8 < 8
	click Weathered Axe##240289 |quest 38208 |goto Tanaan Jungle 15.90,49.80 |future
step
	|poiname Borrowed Enchanted Spyglass
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.30,50.20
	|poitype treasure
	|poiquest 38735
	|poiitem 128222
	_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
	_Go around_ the tree stump |goto Tanaan Jungle/0 24.8,49.3 < 8
	click Grappling Hook and Rope##3365 |goto Tanaan Jungle/0 24.7,49.8 < 5
	click Borrowed Enchanted Spyglass##241664 |quest 38735 |goto Tanaan Jungle 25.30,50.20 |future
	|tip It's at the top of the watchtower.
step
	|poiname Bleeding Hollow Warchest
	|poilvl 100
	|poispot Tanaan Jungle 22.00,47.80
	|poitype treasure
	|poiquest 38678
	|poicurrency 50 GR
	_Go up_ the path |goto Tanaan Jungle/0 26.4,48.0 < 15
	_Go to_ the crossroads |goto Tanaan Jungle/0 23.3,48.7 < 15
	_Enter_ the hut |goto Tanaan Jungle/0 22.1,48.4 < 8
	click Bleeding Hollow Warchest##241560 |quest 38678 |goto Tanaan Jungle 22.00,47.80 |future
step
	|poiname Looted Bleeding Hollow Treasure
	|poilvl 100
	|poispot Tanaan Jungle 26.80,44.10
	|poitype treasure
	|poiquest 38683
	|poiitem 127709
	_Go up_ the path |goto Tanaan Jungle/0 27.6,47.4
	_Follow_ the right path to the fork |goto Tanaan Jungle/0 27.6,44.7
	click Looted Bleeding Hollow Treasure##241565 |quest 38683 |goto Tanaan Jungle 26.80,44.10 |future
	only if havequest(38453) or havequest(38560)
step
	|poiname The Blade of Kra'nak
	|poilvl 100
	|poispot Tanaan Jungle 19.30,40.90
	|poitype treasure
	|poiquest 38320
	|poiitem 127338
	_Enter_ the Ruins of Kra'nak |goto Tanaan Jungle/0 24.9,39.8 < 8
	_Go through_ the left passage |goto Tanaan Jungle/0 22.0,40.5 < 8
	_Go to_ the water's edge |goto Tanaan Jungle/0 19.8,40.8
	click The Blade of Kra'nak##240577 |quest 38320 |goto Tanaan Jungle 19.30,40.90 |future
	|tip It's underwater in the pond.
step
	|poiname Jeweled Arakkoa Effigy
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 31.40,31.10
	|poitype treasure
	|poiquest 38732
	|poiitem 127413
	_Go up_ the hill |goto Tanaan Jungle/0 26.0,33.8 < 8
	_Cross_ the platform |goto Tanaan Jungle/0 28.7,32.7 < 15
	_Jump_ from this point to the first small ledge on the side of the mountain |goto Tanaan Jungle/0 30.2,32.1 < 5
	_Jump again_ to the next point |goto Tanaan Jungle/0 30.6,31.8 < 5
	_Climb_ the small hill |goto Tanaan Jungle/0 30.9,31.3 < 10
	click Jeweled Arakkoa Effigy##241657 |quest 38732 |goto Tanaan Jungle 31.40,31.10 |future
	|tip It's on an altar.
step
	|poiname Partially Mined Apexis Crystal
	|poilvl 100
	|poispot Tanaan Jungle 28.80,34.60
	|poitype treasure
	|poiquest 38863
	|poicurrency 150 AC
	_Enter_ the cave |goto Tanaan Jungle/0 29.2,31.1 < 8
	click Partially Mined Apexis Crystal##242249 |quest 38863 |goto Tanaan Jungle 28.80,34.60 |future
	|tip Climb the rocks to access the treasure on the side of the cave.
step
	|poiname Skull of the Mad Chief
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.70,34.60
	|poitype treasure
	|poiquest 38742
	|poiitem 127669
	_Enter_ the cave |goto Tanaan Jungle/0 32.5,37.3 < 8
	_Go down_ the spiraling path and into the cave |goto Tanaan Jungle/0 32.1,37.3 < 8
	_Continue along_ the path |goto Tanaan Jungle/0 32.5,38.4 < 10
	_Follow_ the path down to the next level |goto Tanaan Jungle/0 32.7,37.3 < 8
	_Go through_ the side passage |goto Tanaan Jungle/0 33.8,36.3 < 10
	click Skull of the Mad Chief##241674 |quest 38742 |goto Tanaan Jungle 34.70,34.60 |future
step
	|poiname Looted Bleeding Hollow Treasure
	|poilvl 100
	|poispot Tanaan Jungle 26.50,63.00
	|poitype treasure
	|poiquest 38741
	|poicurrency 150 AC, GR
	_Follow_ the path towards the tower |goto Tanaan Jungle/0 25.9,60.6 < 20
	click Grappling Hook and Rope##3365 |goto Tanaan Jungle/0 26.4,62.0 < 5
	click Looted Bleeding Hollow Treasure##241565 |quest 38741 |goto Tanaan Jungle 26.50,63.00 |future
step
	|poiname Tome of Secrets
	|poilvl 100
	|poispot Tanaan Jungle 32.40,70.40
	|poitype treasure
	|poiquest 38426
	|poiitem 127670
	_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
	_Enter_ the small building |goto Tanaan Jungle/0 32.1,70.8 < 5
	click Tome of Secrets##240855 |quest 38426 |goto Tanaan Jungle 32.40,70.40 |future
step
	|poiname Polished Crystal
	|poilvl 100
	|poispot Tanaan Jungle 30.40,72.00
	|poitype treasure
	|poiquest 38629
	|poiitem 127390
	|poiitem 127389
	_Go up_ the steps |goto Tanaan Jungle/0 30.6,71.0 < 8
	click Polished Crystal##225774 |quest 38629 |goto Tanaan Jungle 30.40,72.00 |future
step
	|poiname Pale Removal Equipment
	|poilvl 100
	|poispot Tanaan Jungle 37.05,46.30
	|poitype treasure
	|poiquest 38640
	|poicurrency 75 GR
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 38.7,44.2 < 15
	_Go between_ the crates |goto Tanaan Jungle/0 37.2,46.0 < 10
	click Pale Removal Equipment##241524 |quest 38640 |goto Tanaan Jungle 37.05,46.30 |future
step
	|poiname Strange Sapphire
	|poilvl 100
	|poispot Tanaan Jungle 36.30,43.50
	|poitype treasure
	|poiquest 37956
	|poiitem 127397
	_Go through_ the barricade |goto Tanaan Jungle/0 38.4,39.5 < 15
	_Go up_ the little hill |goto Tanaan Jungle/0 36.6,43.1 < 10
	click Strange Sapphire##240003 |quest 37956 |goto Tanaan Jungle 36.30,43.50 |future
	|tip It's in the far right cage.
step
	|poiname The Commander's Shield
	|poilvl 100
	|poispot Tanaan Jungle 43.20,38.30
	|poitype treasure
	|poiquest 38821
	|poiitem 127348
	_Enter_ the building |goto Tanaan Jungle/0 42.5,37.8 < 5
	click The Commander's Shield##241847 |quest 38821 |goto Tanaan Jungle 43.20,38.30 |future
	|tip It's on the back wall next to the right side torch.
step
	|poiname Dazzling Rod
	|poilvl 100
	|poispot Tanaan Jungle 42.80,35.40
	|poitype treasure
	|poiquest 38822
	|poiitem 127859
	_Enter_ the building |goto Tanaan Jungle/0 43.0,35.8 < 10
	_Take the stairs_ all the way up |goto Tanaan Jungle/0 42.9,35.0 < 5
	click Dazzling Rod##241848 |quest 38822 |goto Tanaan Jungle 42.80,35.40 |future
	|tip It is found at the very top of the tower.
step
	|poiname Sacrificial Blade
	|poilvl 100
	|poispot Tanaan Jungle/0 46.9,42.2
	|poitype treasure
	|poiquest 38776
	|poiitem 127328
	click Sacrificial Blade##241760 |quest 38776 |goto Tanaan Jungle/0 46.9,42.2 |future
	|tip It's on the right-hand side of the fel pool.
step
	|poiname Fel-Drenched Satchel
	|poilvl 100
	|poispot Tanaan Jungle 46.90,44.40
	|poitype treasure
	|poiquest 38773
	|poiitem 128218
	click Fel-Drenched Satchel##241745 |quest 38773 |goto Tanaan Jungle 46.90,44.40 |future
	|tip It's in the back of the partially submerged broken wagon.
step
	|poiname Book of Zyzzix
	|poilvl 100
	|poispot Tanaan Jungle 46.90,36.60
	|poitype treasure
	|poiquest 38771
	|poiitem 127347
	_Go up_ the path |goto Tanaan Jungle/0 46.9,42.2 < 15
	click Book of Zyzzix##241742 |quest 38771 |goto Tanaan Jungle 46.90,36.60 |future
step
	|poiname Overgrown Relic
	|poilvl 100
	|poispot Tanaan Jungle 50.80,64.90
	|poitype treasure
	|poiquest 38731
	|poiitem 127412
	click Overgrown Relic##241656 |quest 38731 |goto Tanaan Jungle 50.80,64.90 |future
	|tip It's on the little island in the thicket.
step
	|poiname Lodged Hunting Spear
	|poilvl 100
	|poispot Tanaan Jungle 54.80,69.30
	|poitype treasure
	|poiquest 38593
	|poiitem 127334
	_Climb up_ onto the rocks |goto Tanaan Jungle/0 55.0,67.1 < 8
	_Cross_ the tree and drop down to the spear |goto Tanaan Jungle/0 55.0,69.1 < 5
	click Lodged Hunting Spear##241434 |quest 38593 |goto Tanaan Jungle 54.80,69.30 |future
step
	|poiname Crystalized Essence of Elements
	|poilvl 100
	|poispot Tanaan Jungle 47.90,70.40
	|poitype treasure
	|poiquest 38705
	|poiitem 127329
	_Go up_ the path and onto the big rock |goto Tanaan Jungle/0 47.8,70.8 < 10
	click Crystalized Essence of Elements##241605 |quest 38705 |goto Tanaan Jungle 47.90,70.40 |future
step
	|poiname Forgotten Sack
	|poilvl 100
	|poispot Tanaan Jungle 57.00,65.00
	|poitype treasure
	|poiquest 38591
	|poiitem 127408
	|poiitem 110609
	_Follow_ the mountain |goto Tanaan Jungle/0 56.6,63.9
	_Go under_ the canopy of vines |goto Tanaan Jungle/0 56.7,65.9 < 15
	click Forgotten Sack##211537 |quest 38591 |goto Tanaan Jungle 57.00,65.00 |future
step
	|poiname Mysterious Corrupted Obelisk
	|poilvl 100
	|poispot Tanaan Jungle 46.20,72.80
	|poitype treasure
	|poiquest 38739
	|poiitem 128320
	_Enter_ the cave |goto Tanaan Jungle/0 47.3,70.6 < 10 |walk
	click Mysterious Corrupted Obelisk##241666 |quest 38739 |goto Tanaan Jungle 46.20,72.80 |future
	only if completedq(38463) or completedq(39394)
step
	|poiname Forgotten Champion's Blade
	|poilvl 100
	|poispot Tanaan Jungle 41.60,73.30
	|poitype treasure
	|poiquest 38657
	|poiitem 127339
	click Forgotten Champion's Blade##241533 |quest 38657 |goto Tanaan Jungle 41.60,73.30 |future
	|tip It's sticking out of the dead tree.
step
	|poiname The Perfect Blossom
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 40.80,75.50
	|poitype treasure
	|poiquest 38639
	|poiitem 127766
	Get the Pollen Protection buff |havebuff Interface\Icons\Spell_Nature_ProtectionformNature |only if not completedq(38639)
	|tip Click Mysterious Fruit around the area until you receive the buff.
	click The Perfect Blossom##241522 |quest 38639 |goto Tanaan Jungle 40.80,75.50 |future
	|tip It's hidden under the giant tree.
step
	|poiname Snake Charmer's Flute
	|poilvl 100
	|poispot Tanaan Jungle 40.60,79.80
	|poitype treasure
	|poiquest 38638
	|poiitem 127333
	click Snake Charmer's Flute##241521 |quest 38638 |goto Tanaan Jungle 40.60,79.80 |future
	|tip It's located next to the skeleton and baskets at the edge of the cliff.
step
	|poiname Stashed Iron Sea Booty #3
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.40,78.30
	|poitype treasure
	|poiquest 38762
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	click Stashed Iron Sea Booty #3##241716 |quest 38762 |goto Tanaan Jungle 34.40,78.30 |future
step
	|poiname Stashed Iron Sea Booty #2
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 35.00,77.30
	|poitype treasure
	|poiquest 38761
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	_Jump across_ to the small boulder |goto Tanaan Jungle/0 34.8,77.5 < 5
	click Stashed Iron Sea Booty #2##241715 |quest 38761 |goto Tanaan Jungle 35.00,77.30 |future
step
	|poiname Stashed Iron Sea Booty #1
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 33.90,78.10
	|poitype treasure
	|poiquest 38760
	|poicurrency 25 GR, GL
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the left passage |goto Tanaan Jungle/0 36.8,78.8 < 10
	_Continue around_ the passage |goto Tanaan Jungle/0 34.6,80.3 < 10
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.0,78.0 < 5
	_Jump over_ the gap |goto Tanaan Jungle/0 34.7,78.0 < 8
	click Stashed Iron Sea Booty #1##241714 |quest 38760 |goto Tanaan Jungle 33.90,78.10 |future
step
	|poiname Ironbeard's Treasure
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 35.90,78.60
	|poitype treasure
	|poiquest 38758
	|poicurrency GL, 100 GR
	_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 10
	_Go through_ the right passage |goto Tanaan Jungle/0 35.4,76.4 < 10
	_Jump into_ the water |goto Tanaan Jungle/0 34.8,77.0 < 12
	_Swim underwater_ to the barrels |goto Tanaan Jungle/0 35.1,78.4 < 12
	_Jump up_ the rocks |goto Tanaan Jungle/0 35.4,78.4 < 5
	_Jump onto_ the broken stairs |goto Tanaan Jungle/0 35.9,78.9 < 5
	click Ironbeard's Treasure##241712 |quest 38758 |goto Tanaan Jungle 35.90,78.60 |future
step
	|poiname Brazier of Awakening
	|poilvl 100
	|poispot Tanaan Jungle 37.70,80.70
	|poitype treasure
	|poiquest 38788
	|poiitem 127770
	_Go down_ the short path |goto Tanaan Jungle/0 38.6,79.6 < 12
	click Brazier of Awakening##241775 |quest 38788 |goto Tanaan Jungle 37.70,80.70 |future
	|tip It's inside the hut.
step
	|poiname Looted Mystical Staff
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.50,75.20
	|poitype treasure
	|poiquest 38814
	|poiitem 127337
	_Enter_ the cave |goto Tanaan Jungle/0 44.6,77.6 < 5
	_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 5
	_Go up_ the ramp on the right |goto Tanaan Jungle/0 49.1,78.8 < 8
	_Go down_ the passage and jump onto the rocks |goto Tanaan Jungle/0 51.0,75.7 < 5
	Carefully _walk across_ the first vine |goto Tanaan Jungle/0 50.2,75.7 < 5
	_Walk across_ the second vine |goto Tanaan Jungle/0 49.5,74.9 < 5
	_Jump over_ the gap to the platform |goto Tanaan Jungle/0 49.1,75.2 < 5
	click Looted Mystical Staff##241841 |quest 38814 |goto Tanaan Jungle 48.50,75.20 |future
step
	|poiname Bleeding Hollow Mushroom Stash
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,76.80
	|poitype treasure
	|poiquest 38809
	|poiitem 128223
	_Enter_ the cavern |goto Tanaan Jungle/0 44.6,77.5 < 8
	_Follow_ the tunnel |goto Tanaan Jungle/0 46.8,76.3 < 8
	_Go up_ the vine |goto Tanaan Jungle/0 49.3,77.1 < 5
	_Jump down_ to the platform with the barrel |goto Tanaan Jungle/0 50.0,77.2 < 5
	click Bleeding Hollow Mushroom Stash##241835 |quest 38809 |goto Tanaan Jungle 49.90,76.80 |future
step
	|poiname Crystallized Fel Spike
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.10,70.70
	|poitype treasure
	|poiquest 38602
	|poiitem 128217
	_Follow_ the shore |goto Tanaan Jungle/0 59.9,74.0 < 8
	_Go to_ the fel pool |goto Tanaan Jungle/0 61.9,72.2 < 8
	_Stand on_ this rock |goto Tanaan Jungle/0 62.0,70.8 < 5
	click Crystallized Fel Spike##241450 |quest 38602 |goto Tanaan Jungle 62.10,70.70 |future
	|tip This treasure is surrounded by level 100 elites.
step
	|poiname Blackfang Island Cache
	|poilvl 100
	|poispot Tanaan Jungle 61.20,75.80
	|poitype treasure
	|poiquest 38601
	|poicurrency GR
	click Blackfang Island Cache##241449 |quest 38601 |goto Tanaan Jungle 61.20,75.80 |future
step
	|poiname Scout's Belongings
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,79.60
	|poitype treasure
	|poiquest 38703
	|poiitem 127354
	_Go up_ the hill |goto Tanaan Jungle/0 51.5,79.4 < 8
	_Go up_ the hidden path |goto Tanaan Jungle/0 50.8,81.3 < 8
	click Scout's Belongings##241601 |quest 38703 |goto Tanaan Jungle 49.90,79.60 |future
step
	|poiname Discarded Helm
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 49.90,81.20
	|poitype treasure
	|poiquest 38702
	|poiitem 127312
	_Enter_ the cave |goto Tanaan Jungle/0 51.2,79.6 < 8
	click Discarded Helm##241600 |quest 38702 |goto Tanaan Jungle 49.90,81.20 |future
step
	|poiname Strange Fruit
	|poilvl 100
	|poispot Tanaan Jungle 64.6,42.1
	|poitype treasure
	|poiquest 38701
	|poiitem 127396
	click Loose Soil##241606 |goto Tanaan Jungle 64.70,42.80 < 8
	click Strange Fruit##241599 |quest 38701 |goto Tanaan Jungle 64.6,42.1 |future
	|tip Clicking the loose soil will cause a vine to throw you up into the tree. The fruit is on the branch you land on.
step
	|poiname Rune Etched Femur
	|poilvl 100
	|poispot Tanaan Jungle 51.70,24.30
	|poitype treasure
	|poiquest 38686
	|poiitem 127341
	click Rune Etched Femur##241566 |quest 38686 |goto Tanaan Jungle 51.70,24.30 |future
step
	|poiname Jewel of the Fallen Star
	|poilvl 100
	|poispot Tanaan Jungle 58.50,25.20
	|poitype treasure
	|poiquest 38679
	|poiitem 115808
	|poiitem 115803
	|poiitem 115806
	|poiitem 115807
	|poiitem 115804
	|poiitem 115805
	click Jewel of the Fallen Star##241561 |quest 38679 |goto Tanaan Jungle 58.50,25.20 |future
step
	|poiname Censer of Torment
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.60,20.50
	|poitype treasure
	|poiquest 38682
	|poiitem 127401
	_Go up_ the path |goto Tanaan Jungle/0 61.3,22.8 < 12
	click Censer of Torment##241563 |quest 38682 |goto Tanaan Jungle 62.60,20.50 |future
	|tip It's on an altar surrounded by torches.
step
	|poiname Fel-Tainted Apexis Formation
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 51.60,32.70
	|poitype treasure
	|poiquest 39075
	|poicurrency 500 AC
	_Follow_ the fel river |goto Tanaan Jungle/0 53.2,28.8 < 12
	_Scale_ the rocks on the left side of the river |goto Tanaan Jungle/0 52.2,30.4 < 10
	_Jump down_ carefully at the first waterfall towards the end |goto Tanaan Jungle/0 51.6,31.2 < 5
	click Fel-Tainted Apexis Formation##242649 |quest 39075 |goto Tanaan Jungle 51.60,32.70 |future
step
	|poiname Jewel of Hellfire
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 28.70,23.30
	|poitype treasure
	|poiquest 38334
	|poiitem 127668
	click Jewel of Hellfire##240580 |quest 38334 |goto Tanaan Jungle 28.70,23.30 |future
	|tip This treasure is on the shore. You will need to swim from Ironhold Harbor to reach it.
step
	|poiname Forgotten Shard of the Cipher
	|poilvl 100
	|poispot Tanaan Jungle 63.40,28.10
	|poitype treasure
	|poiquest 38740
	|poiitem 128309
	click Forgotten Shard of the Cipher##241671 |quest 38740 |goto Tanaan Jungle 63.40,28.10 |future
	only if havequest(39394) or havequest(38463) or completedq(39394) or completedq(38463)
step
	|poiname Dead Man's Chest
	|poilvl 100
	|poispot Tanaan Jungle 54.90,90.70
	|poitype treasure
	|poiquest 39470
	|poicurrency 100 GR
	_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
	_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
	click Dead Man's Chest##243693 |quest 39470 |goto Tanaan Jungle 54.90,90.70 |future
	|tip If the chest isn't there try logging out and back in. It's found on the far side of the tree next to a bush and skeleton.
step
	|poiname Bejeweled Egg
	|poilvl 100
	|poispot Tanaan Jungle 65.90,85.00
	|poitype treasure
	|poiquest 39469
	|poiitem 128386
	_Go through_ the narrow pass |goto Tanaan Jungle/0 54.6,83.2 < 8
	_Drop down_ over the rocks |goto Tanaan Jungle/0 54.6,88.3 < 15
	_Follow_ the shore |goto Tanaan Jungle/0 62.2,87.9
	click Bejeweled Egg##243690 |quest 39469 |goto Tanaan Jungle 65.90,85.00 |future
step
	|poiname Forgotten Iron Horde Supplies
	|poilvl 100
	|poispot Tanaan Jungle 69.70,56.00
	|poitype treasure
	|poiquest 38704
	|poicurrency 25 GR
	_Go through_ the gates |goto Tanaan Jungle/0 69.3,53.4 < 8
	_Enter_ the hut |goto Tanaan Jungle/0 69.9,55.9 < 5
	click Forgotten Iron Horde Supplies##241602 |quest 38704 |goto Tanaan Jungle 69.70,56.00 |future
step
	|poiname Stashed Bleeding Hollow Loot
	|poilvl 100
	|poispot Tanaan Jungle 73.60,43.20
	|poitype treasure
	|poiquest 38779
	|poiitem 27729
	|poicurrency GL
	_Cross_ the Bleeding Hollow grounds |goto Tanaan Jungle/0 70.8,53.6
	_Climb up_ the rocks |goto Tanaan Jungle/0 73.4,43.8 < 10
	click Stashed Bleeding Hollow Loot##241764 |goto Tanaan Jungle 73.60,43.20 |quest 38779 |future
step
	|poiname Tho'gar Gorefist
	|poilvl 100
	|poispot Tanaan Jungle 13.60,56.80
	|poitype rare
	|poiquest 38747
	|poiitem 127310
	|poiitem 120945
	|poicurrency AC
	kill Tho'gar Gorefist##91243 |quest 38747 |goto Tanaan Jungle 13.60,56.80 |future
	|tip This rare will require a group to defeat.
step
	|poiname The Iron Houndmaster
	|poilvl 100
	|poispot Tanaan Jungle 12.7,56.9
	|poitype rare
	|poiquest 38751
	|poiitem 127321
	|poiitem 120945
	|poicurrency AC
	Click the Strongpoint banner |goto Tanaan Jungle/0 12.6,56.9 < 5
	|tip Successfully defending the Strongpoint will spawn the Iron Houndmaster.
	kill The Iron Houndmaster##92977 |goto Tanaan Jungle 12.7,56.9 |quest 38751 |future
step
	|poiname Grannok
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 16.00,59.20
	|poitype rare
	|poiquest 38750
	|poiitem 127649
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 16.4,58.7 < 8
	kill Grannok##93057 |quest 38750 |goto Tanaan Jungle 16.00,59.20 |future
	|tip This rare will require a group to defeat. He is all the way at the top of the tower.
step
	|poiname Commander Krag'goth
	|poilvl 100
	|poispot Tanaan Jungle 15.00,54.20
	|poitype rare
	|poiquest 38746
	|poiitem 127319
	|poiitem 120945
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 15.4,54.8 < 8
	kill Commander Krag'goth##91232 |quest 38746 |goto Tanaan Jungle 15.00,54.20 |future
	|tip This rare will require a group to defeat. He is all the way at the top of the tower.
step
	|poiname Szirek the Twisted
	|poilvl 100
	|poispot Tanaan Jungle 16.00,57.20
	|poitype rare
	|poiquest 38752
	|poiitem 127296
	|poiitem 120945
	|poicurrency AC
	Click the Strongpoint banner |goto Tanaan Jungle/0 15.8,57.5 < 5
	|tip Successfully defending the Strongpoint will spawn Szirek.
	kill Szirek the Twisted##93001 |quest 38752 |goto Tanaan Jungle 16.00,57.20 |future
	|tip This rare will require a group to defeat. He sits atop the massive war machine and jumps down when Strongpoint - East is captured.
step
	|poiname Podlord Wakkawam
	|poilvl 100
	|poispot Tanaan Jungle 17.0,48.7
	|poitype rare
	|poiquest 38282
	|poiitem 127336
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 17.1,50.5 < 8
	kill Podlord Wakkawam##91374 |quest 38282 |goto Tanaan Jungle 17.0,48.7 |future
step
	|poiname Bilkor the Thrower
	|poilvl 100
	|poispot Tanaan Jungle/0 23.8,51.9
	|poitype rare
	|poiquest 38262
	|poiitem 127307
	|poiitem 120945
	|poicurrency AC
	kill Bilkor the Thrower##90884 |quest 38262 |goto Tanaan Jungle/0 23.8,51.9 |future
	|tip Bilkor is inside the hut.
step
	|poiname Rogond the Tracker
	|poilvl 100
	|poispot Tanaan Jungle 20.5,49.6
	|poitype rare
	|poiquest 38263
	|poiitem 127314
	|poiitem 120945
	|poicurrency AC
	_Enter_ the hut |goto Tanaan Jungle/0 20.6,50.0 < 6
	kill Rogond the Tracker##90885 |quest 38263 |goto Tanaan Jungle/0 20.5,49.6 |future
step
	|poiname Driss Vile
	|poilvl 100
	|poispot Tanaan Jungle 19.80,53.60
	|poitype rare
	|poiquest 38736
	|poiitem 127331
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 21.0,52.8 < 8
	click Grappling Hook and Rope##3365 |goto Tanaan Jungle/0 20.6,53.5 < 5
	|tip Use the Grappling Hook to reach the top of the tower.
	kill Driss Vile##93028 |quest 38736 |goto Tanaan Jungle 19.80,53.60 |future
step
	|poiname Drivnul
	|poilvl 100
	|poispot Tanaan Jungle 25.50,46.20
	|poitype rare
	|poiquest 38264
	|poiitem 127298
	|poiitem 120945
	|poicurrency AC
	_Go up_ the road |goto Tanaan Jungle/0 23.8,47.4 < 20
	kill Drivnul##90888 |quest 38264 |goto Tanaan Jungle 25.50,46.20 |future
	|tip He is in the blood pit.
step
	|poiname Dorg the Bloody
	|poilvl 100
	|poispot Tanaan Jungle 23.20,48.40
	|poitype rare
	|poiquest 38265
	|poiitem 127301
	|poiitem 120945
	|poicurrency AC
	kill Dorg the Bloody##90887 |quest 38265 |goto Tanaan Jungle 23.20,48.40 |future
	|tip Dorg wanders around this area.
step
	|poiname Bloodhunter Zulk
	|poilvl 100
	|poispot Tanaan Jungle 24.7,50.1
	|poitype rare
	|poiquest 38266
	|poiitem 127303
	|poiitem 120945
	|poicurrency AC
	kill Bloodhunter Zulk##90936 |quest 38266 |goto Tanaan Jungle/0 24.7,50.1 |future
	|tip Zulk spawns at the tower and patrolls the paths.
	|tip Zulk wanders around this area.
step
	|poiname Remnant of the Blood Moon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 22.20,50.80
	|poitype rare
	|poiquest 39159
	|poiitem 127666
	|poiitem 120945
	|poicurrency AC
	kill Remnant of the Blood Moon##91227 |quest 39159 |goto Tanaan Jungle 22.20,50.80 |future
	|tip Drained Blood Crystals are found all over the area.
	|tip This rare will require you and your allies to collect 125 Drained Blood Crystals and use them at this altar. You will see a progress bar at the top of the screen.
	|tip This rare will require a group to defeat.
step
	|poiname Rasthe
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 17.3,42.9
	|poitype rare
	|poiquest 38034
	|poiitem 127661
	|poiitem 120945
	|poicurrency AC
	_Proceed_ through the arch |goto Tanaan Jungle/0 18.2,41.1 < 8
	kill Rasthe##90782 |quest 38034 |goto Tanaan Jungle 17.3,42.9 |future
	|tip This rare will require a group to defeat.
step
	|poiname High Priest Ikzan
	|poilvl 100
	|poispot Tanaan Jungle 20.40,40.00
	|poitype rare
	|poiquest 38028
	|poiitem 122117
	|poiitem 120945
	|poicurrency AC
	kill High Priest Ikzan##90777 |quest 38028 |goto Tanaan Jungle 20.40,40.00 |future
step
	|poiname Varyx the Damned
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 27.60,32.80
	|poitype rare
	|poiquest 37937
	|poiitem 127351
	|poiitem 120945
	|poicurrency AC
	_Note:_ This rare currently has phasing issues and often cannot be engaged! --As of patch 6.2.0
	_Go through_ the arch |goto Tanaan Jungle/0 23.8,36.9 < 8
	_Go up_ the hill |goto Tanaan Jungle/0 25.6,34.1 < 12
	kill Varyx the Damned##92451 |quest 37937 |goto Tanaan Jungle 27.60,32.80 |future
	|tip This rare will require a group to defeat. To release him, the five beams binding him must be interrupted by players standing in their path.
step
	|poiname Relgor
	|poilvl 100
	|poispot Tanaan Jungle 26.30,54.20
	|poitype rare
	|poiquest 38496
	|poiitem 127335
	|poiitem 120945
	|poicurrency AC
	kill Relgor##92197 |quest 38496 |goto Tanaan Jungle 26.30,54.20 |future
step
	|poiname Felbore
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 28.60,50.80
	|poitype rare
	|poiquest 38775
	|poiitem 127350
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 30.9,53.1 < 10
	kill Felbore##93168 |quest 38775 |goto Tanaan Jungle 28.60,50.80 |future
	|tip This rare will require a group to defeat.
step
	|poiname Ceraxas
	|poilvl 100
	|poispot Tanaan Jungle 31.40,68.00
	|poitype rare
	|poiquest 38031
	|poiitem 120945
	|poicurrency AC
	_Go up_ the steps |goto Tanaan Jungle/0 30.5,68.6 < 10
	kill Ceraxas##90434 |quest 38031 |goto Tanaan Jungle 31.40,68.00 |future
step
	|poiname Jax'zor
	|poilvl 100
	|poispot Tanaan Jungle 26.6,75.3
	|poitype rare
	|poiquest 38030
	|poiitem 127322
	|poiitem 120945
	|poicurrency AC
	_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
	kill Jax'zor##90437 |quest 38030 |goto Tanaan Jungle 26.6,75.3 |future
	|tip Jax'zor wanders a small area around the bottom floor of the cavern.
step
	|poiname Mistress Thavra
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.80,79.00
	|poitype rare
	|poiquest 38032
	|poiitem 127300
	|poiitem 120945
	|poicurrency AC
	_Enter_ the mine |goto Tanaan Jungle/0 29.3,70.9 < 8
	_Go up_ the ramp on the right |goto Tanaan Jungle/0 26.2,74.8 < 10
	_Continue around_ the tunnel |goto Tanaan Jungle/0 24.2,75.7 < 12
	kill Mistress Thavra##90442 |quest 38032 |goto Tanaan Jungle 25.80,79.00 |future
step
	|poiname Lady Oran
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 25.40,77.20
	|poitype rare
	|poiquest 38029
	|poiitem 127316
	|poiitem 120945
	|poicurrency AC
	kill Lady Oran##90438 |quest 38029 |goto Tanaan Jungle 25.40,77.20 |future
step
	|poiname Imp-Master Valessa
	|poilvl 100
	|poispot Tanaan Jungle 31.60,72.80
	|poitype rare
	|poiquest 38026
	|poiitem 127655
	|poiitem 120945
	|poicurrency AC
	_Enter_ the Temple of Sha'naar |goto Tanaan Jungle/0 28.7,67.1 < 8
	kill Imp-Master Valessa##90429 |quest 38026 |goto Tanaan Jungle 31.60,72.80 |future
step
	|poiname Belgork
	|poilvl 100
	|poispot Tanaan Jungle 35.40,46.80
	|poitype rare
	|poiquest 38609
	|poiitem 127650
	|poiitem 126950
	|poiitem 120945
	|poicurrency AC
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
	_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
	kill Belgork##92552 |quest 38609 |goto Tanaan Jungle 35.40,46.80 |future
step
	|poiname Thromma the Gutslicer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.00,44.40
	|poitype rare
	|poiquest 38620
	|poiitem 127327
	|poiitem 120945
	|poicurrency AC
	_Enter_ Ironmonger's Hold |goto Tanaan Jungle/0 32.4,48.9 < 12
	_Go to_ the end of the hallway |goto Tanaan Jungle/0 34.8,47.2 < 12
	_Continue along_ the left passage |goto Tanaan Jungle/0 34.5,45.5 < 12
	_Drop down_ the hole |goto Tanaan Jungle/0 35.0,44.5 < 5
	kill Thromma the Gutslicer##92574 |quest 38620 |goto Tanaan Jungle 34.00,44.40 |future
step
	|poiname Gorabosh
	|poilvl 100
	|poispot Tanaan Jungle 33.00,35.70
	|poitype rare
	|poiquest 38709
	|poiitem 127304
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 31.4,36.4
	kill Gorabosh##92941 |quest 38709 |goto Tanaan Jungle 33.00,35.70 |future
step
	|poiname Zoug the Heavy
	|poilvl 100
	|poispot Tanaan Jungle 37.00,32.80
	|poitype rare
	|poiquest 39045
	|poiitem 127308
	|poiitem 128252
	|poiitem 120945
	|poicurrency AC
	_Go up_ the ramp |goto Tanaan Jungle/0 37.7,35.2
	kill Zoug the Heavy##90122 |quest 39045 |goto Tanaan Jungle 37.00,32.80 |future
step
	|poiname Harbormaster Korak
	|poilvl 100
	|poispot Tanaan Jungle 39.60,32.60
	|poitype rare
	|poiquest 39046
	|poiitem 127309
	|poiitem 120945
	|poicurrency AC
	kill Harbormaster Korak##90094 |quest 39046 |goto Tanaan Jungle 39.60,32.60 |future
step
	|poiname Sergeant Mor'grak
	|poilvl 100
	|poispot Tanaan Jungle 42.40,37.30
	|poitype rare
	|poiquest 37953
	|poiitem 127318
	|poiitem 120945
	|poicurrency AC
	kill Sergeant Mor'grak##90024 |quest 37953 |goto Tanaan Jungle 42.40,37.30 |future
	|tip He wanders around the training grounds.
step
	|poiname Cindral the Wildfire
	|poilvl 100
	|poispot Tanaan Jungle 44.60,37.60
	|poitype rare
	|poiquest 37990
	|poiitem 127660
	|poiitem 128255
	|poiitem 120945
	|poicurrency AC
	kill Remnant of Cindral##90522
	|tip Killing the Remnant will spawn Cindral.
	_Enter_ the building |goto Tanaan Jungle/0 43.9,37.0 < 8
	kill Cindral the Wildfire##90519 |quest 37990 |goto Tanaan Jungle 44.60,37.60 |future
step
	|poiname Felsmith Damorka
	|poilvl 100
	|poispot Tanaan Jungle 45.80,47.00
	|poitype rare
	|poiquest 38634
	|poiitem 127302
	|poiitem 128258
	|poiitem 120945
	|poicurrency AC
	kill Felsmith Damorka##92647 |quest 38634 |goto Tanaan Jungle 45.80,47.00 |future
step
	|poiname Executor Riloth
	|poilvl 100
	|poispot Tanaan Jungle 50.00,36.00
	|poitype rare
	|poiquest 38411
	|poiitem 127323
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Tanaan Jungle/0 47.5,38.8
	_Cross_ the bridge |goto Tanaan Jungle/0 48.6,36.6 < 10
	kill Executor Riloth##91727 |quest 38411 |goto Tanaan Jungle 50.00,36.00 |future
	|tip Riloth patrols a large area. You will have to search around for him.
step
	|poiname Grand Warlock Nethekurse
	|poilvl 100
	|poispot Tanaan Jungle 46.20,42.40
	|poitype rare
	|poiquest 38400
	|poiitem 127299
	|poiitem 120945
	|poicurrency AC
	kill Grand Warlock Nethekurse##16807 |quest 38400 |goto Tanaan Jungle 46.20,42.40 |future
step
	|poiname Commander Org'mok
	|poilvl 100
	|poispot Tanaan Jungle 51.00,46.00
	|poitype rare
	|poiquest 38749
	|poiitem 127313
	|poiitem 120945
	|poicurrency AC
	kill Commander Org'mok##89675 |quest 38749 |goto Tanaan Jungle 51.00,46.00 |future
step
	|poiname Captain Grok'mar
	|poilvl 100
	|poispot Tanaan Jungle/0 48.6,57.4
	|poitype rare
	|poiquest 38820
	|poiitem 127664
	|poiitem 120945
	|poicurrency AC
	kill Captain Grok'mar##93264 |quest 38820 |goto Tanaan Jungle/0 48.6,57.4 |future
	|tip He sits on a chair next to the torch.
step
	|poiname Shadowthrash
	|poilvl 100
	|poispot Tanaan Jungle 49.70,61.40
	|poitype rare
	|poiquest 38812
	|poiitem 127665
	|poiitem 120945
	|poicurrency AC
	kill Shadowthrash##93236 |quest 38812 |goto Tanaan Jungle 49.70,61.40 |future
	|tip Shadowthrash is next to the broken tree.
step
	|poiname Magwia
	|poilvl 100
	|poispot Tanaan Jungle 52.20,65.10
	|poitype rare
	|poiquest 38726
	|poiitem 127332
	|poiitem 120945
	|poicurrency AC
	kill Magwia##93002 |quest 38726 |goto Tanaan Jungle 52.20,65.10 |future
	|tip Magwai is in the small clearing next to the pond.
step
	|poiname Bramblefell
	|poilvl 100
	|poispot Tanaan Jungle 40.80,70.00
	|poitype rare
	|poiquest 38209
	|poiitem 127652
	|poiitem 120945
	|poicurrency AC
	kill Bramblefell##91093 |quest 38209 |goto Tanaan Jungle 40.80,70.00 |future
	|tip Bramblefell wanders around the marsh in a small area.
step
	|poiname Kris'kar the Unredeemed
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 39.60,68.10
	|poitype rare
	|poiquest 38825
	|poiitem 127653
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 42.3,68.9 < 10
	_Go through_ the side passage |goto Tanaan Jungle/0 40.5,69.3 < 8
	kill Kris'kar the Unredeemed##93279 |quest 38825 |goto Tanaan Jungle 39.60,68.10 |future
step
	|poiname The Goreclaw
	|poilvl 100
	|poispot Tanaan Jungle 34.30,72.50
	|poitype rare
	|poiquest 38654
	|poiitem 127305
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 36.1,72.5 < 8
	kill The Goreclaw##92694 |quest 38654 |goto Tanaan Jungle 34.30,72.50 |future
	|tip The Goreclaw is in the back of the cave on the giant rock.
step
	|poiname The Night Haunter
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 39.40,73.80
	|poitype rare
	|poiquest 38632
	|poiitem 127355
	|poiitem 120945
	|poicurrency AC
	click Mutilated Corpse##92651
	|tip You must click corpses to gain 10 stacks of the night haunter debuff.
	kill The Night Haunter##92636 |quest 38632 |goto Tanaan Jungle 39.40,73.80 |future
	|tip This rare will require a group to defeat.
step
	|poiname Sylissa
	|poilvl 100
	|poispot Tanaan Jungle 41.00,78.80
	|poitype rare
	|poiquest 38628
	|poiitem 127311
	|poiitem 120945
	|poicurrency AC
	kill Sylissa##92606 |quest 38628 |goto Tanaan Jungle 41.00,78.80 |future
	|tip Sylissa is at the end of the river by the waterfall.
step
	|poiname Rendrak
	|poilvl 100
	|poiaccess Completionist
	|poispot Tanaan Jungle 41.80,73.80
	|poitype rare
	|poiquest 38631
	|poiitem 127356
	|poiitem 120945
	|poicurrency AC
	kill Direwing Predator##89788
	|tip They fly around Zorammarsh.
	collect 10 Smelly Musk Gland##124045 |only if not completedq(38631)
	Use the Musk Glands to summon Rendrak |use Smelly Musk Gland##124045 |only if itemcount(124045) > 9
	kill Rendrak##92627 |quest 38631 |goto Tanaan Jungle 41.80,73.80 |future
	|tip Rendrak flies around this area.
step
	|poiname Captain Ironbeard
	|poilvl 100
	|poispot Tanaan Jungle 36.20,79.70
	|poitype rare
	|poiquest 38756
	|poiitem 127659
	|poiitem 128257
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
	_Go down_ the left passage |goto Tanaan Jungle/0 36.9,77.8 < 10
	kill Captain Ironbeard ##93076 |quest 38756 |goto Tanaan Jungle 36.20,79.70 |future
step
	|poiname Glub'glok
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 34.60,78.20
	|poitype rare
	|poiquest 38764
	|poiitem 127317
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 37.3,75.9 < 10
	_Go into_ the big cavern |goto Tanaan Jungle/0 35.4,76.3 < 12
	_Swim across_ the pool |goto Tanaan Jungle/0 34.4,79.6
	_Follow_ the ledge |goto Tanaan Jungle/0 34.9,78.8 < 8
	_Jump across_ the rocks |goto Tanaan Jungle/0 35.1,78.1
	click Ironbeard's Treasure##3365
	|tip Opening the chest will spawn Glub'glok, be ready.
	kill Glub'glok##93125 |quest 38764 |goto Tanaan Jungle 34.60,78.20 |future
step
	|poiname Bleeding Hollow Horror
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 51.00,74.40
	|poitype rare
	|poiquest 38696
	|poiitem 127654
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 44.7,77.6
	_Proceed into_ the cavern |goto Tanaan Jungle/0 46.8,76.3 < 12
	_Go up_ the ramp |goto Tanaan Jungle/0 48.8,77.9 < 12
	_Continue around_ the path |goto Tanaan Jungle/0 51.1,77.4 < 15
	kill Bleeding Hollow Horror##92657 |quest 38696 |goto Tanaan Jungle 51.00,74.40 |future
	|tip This rare will require a group to defeat.
step
	|poiname Broodlord Ixkor
	|poilvl 100
	|poispot Tanaan Jungle 57.60,67.20
	|poitype rare
	|poiquest 38589
	|poiitem 127349
	|poiitem 120945
	|poicurrency AC
	_Follow_ the path |goto Tanaan Jungle/0 55.6,65.6 < 15
	kill Broodlord Ixkor##92429 |quest 38589 |goto Tanaan Jungle/0 57.8,67.3 |future
step
	|poiname Soulslicer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 62.60,72.00
	|poitype rare
	|poiquest 38600
	|poiitem 127315
	|poiitem 120945
	|poicurrency AC
	_Follow_ the shore |goto Tanaan Jungle/0 59.4,74.7 < 12
	kill Soulslicer##92495 |quest 38600 |goto Tanaan Jungle/0 62.7,72.2 |future
	|tip This rare will require a group to defeat.
step
	|poiname Gloomtalon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 63.60,81.10
	|poitype rare
	|poiquest 38604
	|poiitem 127306
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 62.6,80.1 < 10
	kill Gloomtalon##92508 |quest 38604 |goto Tanaan Jungle 63.60,81.10 |future
	|tip This rare will require a group to defeat.
step
	|poiname Krell the Serene
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 52.0,83.9
	|poitype rare
	|poiquest 38605
	|poiitem 127418
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 51.5,79.8 < 12
	kill Krell the Serene##92517 |quest 38605 |goto Tanaan Jungle 52.0,83.9 |future
	|tip This rare will require a group to defeat.
step
	|poiname The Blackfang
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.80,72.80
	|poitype rare
	|poiquest 38597
	|poiitem 127330
	|poiitem 120945
	|poicurrency AC
	_Enter_ the cave |goto Tanaan Jungle/0 49.8,74.3 < 10
	kill The Blackfang##92465 |quest 38597 |goto Tanaan Jungle 48.80,72.80 |future
	|tip This rare will require a group to defeat.
step
	|poiname Zeter'el
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 48.40,28.50
	|poitype rare
	|poiquest 38207
	|poiitem 127340
	|poiitem 120945
	|poicurrency AC
	_Cross_ the fel water here |goto Tanaan Jungle/0 51.7,32.5 < 12
	_Continue_ along the path |goto Tanaan Jungle/0 49.0,33.0 < 12
	_Enter_ the Blighted Hollow |goto Tanaan Jungle/0 48.1,32.7 < 10
	kill Zeter'el##91087 |quest 38207 |goto Tanaan Jungle 48.40,28.50 |future
step
	|poiname Felspark
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 52.80,25.60
	|poitype rare
	|poiquest 38211
	|poiitem 127656
	|poiitem 120945
	|poicurrency AC
	kill Felspark##91098 |quest 38211 |goto Tanaan Jungle 52.80,25.60 |future
	|tip Felspark is in the fel water pool. This rare will require a group to defeat.
step
	|poiname Painmistress Selora
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 53.60,21.70
	|poitype rare
	|poiquest 38557
	|poiitem 127297
	|poiitem 120945
	|poicurrency AC
	|tip In order to start this event, you must kill the corruptors around the glowing portal before new ones spawn.
	|tip Immediately after, three waves of elite demons will come out. Kill them and Selora will spawn.
	kill Painmistress Selora##92274 |quest 38557 |goto Tanaan Jungle 53.60,21.70 |future
	|tip This rare will require a group to defeat.
step
	|poiname Putre'thar
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 57.10,22.80
	|poitype rare
	|poiquest 38457
	|poiitem 127657
	|poiitem 120945
	|poicurrency AC
	kill Putre'thar##91009 |quest 38457 |goto Tanaan Jungle 57.10,22.80 |future
	|tip Putre'thar patrols around the felhunter pit. This rare will require a group to defeat.
step
	|poiname Overlord Ma'gruth
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 53.00,20.00
	|poitype rare
	|poiquest 38580
	|poiitem 127320
	|poiitem 120945
	|poicurrency AC
	_Go up_ the path |goto Tanaan Jungle/0 55.2,22.6
	kill Overlord Ma'gruth##92411 |quest 38580 |goto Tanaan Jungle 53.00,20.00 |future
	|tip He patrols a very small area. This rare will require a group to defeat.
step
	|poiname Xanzith the Everlasting
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 60.20,20.90
	|poitype rare
	|poiquest 38579
	|poiitem 127658
	|poiitem 128232
	|poiitem 120945
	|poicurrency AC
	kill Xanzith the Everlasting##92408 |quest 38579 |goto Tanaan Jungle 60.20,20.90 |future
	|tip Xanzith is just in front of the pool of fel water. This rare will require a group to defeat.
step
	|poiname Steelsnout
	|poilvl 100
	|poispot Tanaan Jungle 65.40,36.60
	|poitype rare
	|poiquest 38700
	|poiitem 127357
	|poiitem 120945
	|poicurrency AC
	_Go up_ the hill |goto Tanaan Jungle/0 64.0,37.4
	kill Steelsnout##92887 |quest 38700 |goto Tanaan Jungle 65.40,36.60 |future
step
	|poiname Terrorfist
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 15.40,63.40
	|poitype rare
	|poiquest 39288
	|poiitem 128315
	|poiitem 128025
	|poicurrency OIL
	_Go up_ the hill |goto Tanaan Jungle/0 13.7,60.2 < 15
	kill Terrorfist##95044 |quest 39288 |goto Tanaan Jungle 15.40,63.40 |future
	|tip Terrorfist patrols up and down the hill. This rare will require a group to defeat.
step
	|poiname Deathtalon
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 23.0,40.2
	|poitype rare
	|poiquest 39287
	|poiitem 128315
	|poiitem 128025
	|poiitem 120945
	|poicurrency OIL
	kill Deathtalon##95053 |quest 39287 |goto Tanaan Jungle/0 23.0,40.2 |future
	|tip Deathtalon sits atop the broken pillar. This rare will require a group to defeat.
step
	|poiname Vengeance
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 32.40,74.00
	|poitype rare
	|poiquest 39290
	|poiitem 128315
	|poiitem 128025
	|poiitem 120945
	|poicurrency OIL
	kill Vengeance##95054 |quest 39290 |goto Tanaan Jungle 32.40,74.00 |future
	|tip This rare will require a group to defeat.
step
	|poiname Doomroller
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle 47.00,52.60
	|poitype rare
	|poiquest 39289
	|poiitem 128315
	|poiitem 128025
	|poicurrency OIL
	kill Doomroller##95056 |quest 39289 |goto Tanaan Jungle 47.00,52.60 |future
	|tip This rare will require a group to defeat.
step
	|poiname Argosh the Destroyer
	|poiaccess Completionist
	|poilvl 100
	|poispot Tanaan Jungle/0 52.60,40.20
	|poitype rare
	|poiquest 38430
	|poiitem 120945
	|poiitem 127326
	|poicurrency AC
	_Cross_ the field |goto Tanaan Jungle/0 53.7,44.2
	_Jump across_ the rocks |goto Tanaan Jungle/0 53.3,41.5 < 8
	kill Felblood Warlock##89754 |tip Kill the warlocks to release Argosh.
	kill Argosh the Destroyer##91871 |quest 38430 |goto Tanaan Jungle/0 52.60,40.20 |future
	|tip This rare will require a group to defeat.
--- New with 6.2
step
	|poiname Fel Overseer Mudlump
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 40.9,56.4
	|poitype rare
	|poiquest 40107
	|poiitem 120945
	|poiitem 129295
	|poicurrency AC
	kill Fel Overseer Mudlump##98408 |quest 40107 |goto Tanaan Jungle/0 40.9,56.4 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poiname Drakum
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 83.6,43.6
	|poitype rare
	|poiquest 40105
	|poiitem 120945
	|poiitem 108631
	|poicurrency AC
	_Enter_ the building |goto Tanaan Jungle/0 84.4,43.8 < 10 |walk
	kill Drakum##98283 |quest 40105 |goto Tanaan Jungle/0 83.6,43.6 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poiname Smashum Grabb
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 88.1,55.8
	|poitype rare
	|poiquest 40107
	|poiitem 120945
	|poiitem 108634
	|poicurrency AC
	kill Smashum Grabb##98285 |quest 40104 |goto Tanaan Jungle/0 88.1,55.8 |future
	|tip You must have Draenor Flying to reach this rare.
	|tip This rare will require a group to defeat.
step
	|poiname Gondar
	|poiaccess Completionist
	|poilvl 102
	|poispot Tanaan Jungle/0 80.6,56.4
	|poitype rare
	|poiquest 40107
	|poiitem 120945
	|poiitem 108633
	|poicurrency AC
	_Jump onto_ the temple grounds |goto Tanaan Jungle/0 75.6,55.4 < 10
	_Go up_ the sets of stairs |goto 76.8,55.2 < 15
	_Reach_ the top of the temple |goto 78.8,54.3 < 15
	_Enter_ the building |goto Tanaan Jungle/0 80.7,56.3 < 10 |walk
	kill Gondar##98284 |quest 40106 |goto Tanaan Jungle/0 80.6,56.4 |future
	|tip This rare will require a group to defeat.
]])