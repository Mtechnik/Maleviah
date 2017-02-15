local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingALEGIONdhstart") then return end

ZygorGuidesViewer.GuideMenuTier = "LEG"

ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Starter Guides\\Demon Hunter (98-100)",{
	author="support@zygorguides.com",
	condition_suggested="raceclass('DemonHunter') and level<=100",
	condition_suggested_exclusive=true,
	image=ZGV.DIR.."\\Guides\\Images\\Mardum",
	startlevel=98.0,
	endlevel=100.0,
	},[[
	step
		talk Kayn Sunfury##93011
		accept The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 22.08,55.83
	step
		Kill enemies around this area
		kill 15 Demons |q 40077/1 |goto 28.10,65.30
	step
		click Legion Banner
		Change the Legion Banner |q 40077/2 |goto 28.66,62.92
	step
		talk Kayn Sunfury##98229
		turnin The Invasion Begins##40077 |goto 28.60,63.06
		accept Bonus Objective: Assault on Mardum##39279 |goto 28.60,63.06
		accept Enter the Illidari: Ashtongue##40378 |goto 28.60,63.06
	step
		click Legion Gateway Activator
		Summon the Ashtongue Forces |q 40378/1 |goto 31.57,61.89
	step
		Watch the dialogue
		click Felsaber##101518
		Accept Illidan's Gift |q 40378/2 |goto 31.53,62.37
	stickystart "AssaultOnMardum"
	step
		Find Allari to the Southeast |q 40378/3 |goto 32.18,69.63
	step
		talk Allari the Souleater##94410
		turnin Enter the Illidari: Ashtongue##40378 |goto 33.94,70.05
		accept Set Them Free##38759 |goto 33.94,70.05
		accept Eye On the Prize##39049 |goto 33.94,70.05
	step
		talk Sevis Brightflame##100982
		accept Enter the Illidari: Coilskar##40379 |goto 33.94,69.96
	step
		kill Anguish Jailer##95226+
		get Soulwrought Key##128227 |q 38759/1 |goto 38.29,73.76
	step
		click Jailer Cage##103381
		Free Cyana Nightglaive |q 38759/3 |goto 39.34,71.72
	step
		click Jailer Cage##103381
		Free Belath Dawnblade |q 38759/2 |goto 41.73,73.22
	step
		kill Inquisitor Baleful##93105
		Slay Inquisitor Baleful & Take His Power |q 39049/1 |goto 42.64,79.34	
	step
		talk Ashtongue Mystic##99914
		Sacrifice the Soul |q 40379/1 |goto 43.44,72.69
	step
		click Legion Gateway Activator
		Summon the Coilskar Forces |q 40379/2 |goto 43.79,72.04
	step
		click Jailer Cage##103381
		Free Mannethrel Darkstar |q 38759/5 |goto 41.57,66.68
	step
		click Jailer Cage##103381
		|tip Inside the small room.
		Free Izal Whitemoon |q 38759/4 |goto 38.62,67.90
	step "AssaultOnMardum"
		Kill enemies around this area
		click Legion Communicators
		click Fel Spreaders
		Assault the Legion in the Lowlands |q 39279/1 |goto 42.16,73.96
	step
		Follow the path |goto 40.09,67.11 < 30
		talk Jace Darkweaver##93759
		turnin Set Them Free##38759 |goto 38.80,60.64
		turnin Eye On the Prize##39049 |goto 38.80,60.64
		turnin Enter the Illidari: Coilskar##40379 |goto 38.80,60.64
		accept Meeting With the Queen##39050 |goto 38.80,60.64
	step
		click Nether Crucible
		Complete the Ritual |q 39050/1 |goto 38.75,60.52
	step
		talk Jace Darkweaver##93759
		turnin Meeting With the Queen##39050 |goto 38.80,60.64
		accept Enter the Illidari: Shivarra##38765 |goto 38.80,60.64
		accept Before We're Overrun##38766 |goto 38.80,60.64
	step
		Follow the path up |goto 39.33,57.01 < 30
		clicknpc Spire Stabilizers ##6477+
		|tip They look like big green floating crystals nearby.
		kill Doom Commander Beliash##93221
		Slay Beliash & Take His Power |q 38766/1 |goto 35.16,39.57
	step
		Follow the path up |goto 37.75,40.17 < 30
		talk Sevis Brightflame##99915
		Tell him _"Sevis, I need to sacrifice you in order to power the final gateway."_
		Tell him_"I'm certain, Sevis. I need to sacrifice you to power the gateway."_
		Make the Sacrifice |q 38765/1 |goto 39.69,39.47
	step
		click Legion Gateway Activator
		Summon the Shivarra Forces |q 38765/2 |goto 40.36,38.42
	step
		Follow the path |goto 45.51,47.30 < 30
		talk Kayn Sunfury##93127
		turnin Enter the Illidari: Shivarra##38765 |goto 60.51,44.75
		turnin Before We're Overrun##38766 |goto 60.51,44.75
		accept Orders for Your Captains##38813 |goto 60.51,44.75
	step
		talk Lady S'theno##93693
		Brief Lady Lady S'theno |q 38813/2 |goto 59.24,46.13
	step
		talk Matron Mother Malevolence##94435
		Brief Matron Mother Malevolence |q 38813/3 |goto 60.98,46.97
	step
		talk Battlelord Gaardoun##90247
		Brief Battlelord Gaardoun |q 38813/1 |goto 62.18,46.29
	step
		talk Kayn Sunfury##93127
		turnin Orders for Your Captains##38813 |goto 60.51,44.75
		accept Give Me Sight Beyond Sight##39262 |goto 60.51,44.75
	step
		Follow the path up |goto 62.86,49.52 < 30
		talk Jace Darkweaver##96436
		Speak with Jace Darkweaver |q 39262/1 |goto 64.05,52.29
	step
		Use your Spectral Sight ability
		|tip Look toward the cave entrance blocked by huge boulders.
		Face the Cave & Use Spectral Sight |q 39262/2 |goto 63.86,53.13
	step
		talk Jace Darkweaver##96436
		turnin Give Me Sight Beyond Sight##39262 |goto 64.05,52.29
		accept Hidden No More##39495 |goto 64.05,52.29
	step
		Enter the cave |goto 63.59,53.98 > 1000
		Follow the path up |goto Mardum, the Shattered Abyss C/1 33.75,43.35 < 20
		Run up the stairs |goto 31.89,61.25 < 20		
		kill Fel Lord Caza##96441
		Slay Caza & Take His Power |q 39495/1 |goto 60.93,62.58
	step
		Glide down here |goto 55.24,56.71 < 10
		Follow the path up |goto 42.54,39.43 < 20
		Leave the cave |goto 50.49,13.89 > 1000
		talk Kayn Sunfury##93127
		turnin Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
		accept Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
	step
		talk Cyana Nightglaive##96420
		accept Their Numbers Are Legion##38819 |goto 60.54,44.87
	step
		talk Allari the Souleater##96655
		accept Into the Foul Creche##38725 |goto 60.52,44.67
	stickystart "NumbersAreLegion"
	step
		Follow the path |goto 66.99,52.09 < 30
		click Illidari Banner
		Watch the dialogue
		Destroy the Doom Fortress Devastator |q 38727/1 |goto 69.28,48.78
	step
		Run up the path |goto 70.79,50.27 < 30
		Follow the path |goto 74.21,51.37 < 30
		Follow the path |goto 77.74,47.63 < 30	
		click Illidari Banner
		Watch the dialogue
		Destroy the Forge of Corruption Devastator |q 38727/2 |goto 75.01,41.09
	step
		Follow the path up |goto 75.60,40.19 < 30
		talk Kor'vas Bloodthorn##98711
		turnin Into the Foul Creche##38725 |goto 73.16,33.82
		accept The Imp Mother's Tome##40222 |goto 73.16,33.82
	stickystop "NumbersAreLegion"
	step
		Enter the cave |goto 73.72,32.13 < 15
		Follow the path |goto 76.26,30.05 < 20
		kill Prolifica##98986
		get Tome of Fel Secrets##129957 |q 40222/1 |goto 77.12,27.69
	stickystart "NumbersAreLegion"
	step
		Follow the path |goto 76.26,30.05 < 20
		Leave the cave |goto 73.72,32.13 < 20
		Follow the path |goto 72.57,32.96 < 30
		click Illidari Banner
		Watch the dialogue
		Destroy the Soul Engine Devastator |q 38727/3 |goto 66.40,30.40
	step "NumbersAreLegion"
		Kill enemies around this area
		click Doom Fortress Stabilizers, Soul Harvesters
		|tip They look like big green floating crystals.
		click Demon Hunters, Ashtongue Warriors
		|tip They look like bodies laying on the ground with red tear drop icons above them.
		Complete the War Progress |q 38819/1 |goto 65.73,28.83
	step
		Follow the path |goto 62.43,34.94 < 30
		Jump across the cracked bridge |goto 59.57,41.00 < 30
		talk Kayn Sunfury##93127
		turnin Stop the Bombardment##38727 |goto 60.51,44.75
		turnin Their Numbers Are Legion##38819 |goto 60.51,44.75
	step
		talk Kor'vas Bloodthorn##99045
		turnin The Imp Mother's Tome##40222 |goto 60.51,44.83
		accept Fel Secrets##40051 |goto 60.51,44.83
	step
		click Tome of Fel Secrets
		Choose Your Specialization:
		|tip Havoc specialization is a DPS spec.
		|tip Vengeance specialization is a Tank spec. 
		Choose Between Havoc & Vengeance |q 40051/1 |goto 60.54,44.77
	step
		talk Kayn Sunfury##93127
		turnin Fel Secrets##40051 |goto 60.51,44.75 |oncomplete ZGV:QuestRewardConfirm()
	step
		talk Kayn Sunfury##93127
		accept Cry Havoc and Let Slip the Illidari!##39516 |goto 60.51,44.75
		|only if raceclass("DemonHunter") and selected("DEMONHUNTER_Havoc")
	step
		talk Kayn Sunfury##93127
		accept Vengeance Will Be Mine!##39515 |goto 60.51,44.75
		|only if raceclass("DemonHunter") and selected("DEMONHUNTER_Vengeance")
//HAVOC QUEST - START
	step
		talk Cyana Nightglaive##96420
		Teach Cyana |q 39516/2 |goto 60.55,44.86
		|only if havequest(39516) or completedq(39516)
	step
		talk Kor'vas Bloodthorn##99045
		Teach Kor'vas |q 39516/4 |goto 60.51,44.82
		|only if havequest(39516) or completedq(39516)
	step
		talk Kayn Sunfury##93127
		Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
		Teach Kayn |q 39516/3 |goto 60.51,44.75
		|only if havequest(39516) or completedq(39516)
	step
		talk Allari the Souleater##96655
		Teach Allari |q 39516/1 |goto 60.52,44.66
		|only if havequest(39516) or completedq(39516)
	step
		talk Mannethrel Darkstar##96652
		Teach Mannethrel |q 39516/5 |goto 60.26,44.59
		|only if havequest(39516) or completedq(39516)
//HAVOC QUEST - END

//VENGEANCE QUEST - START
	step
		talk Cyana Nightglaive##96420
		Teach Cyana |q 39515/2 |goto 60.55,44.86
		|only if havequest(39515) or completedq(39515)
	step
		talk Kor'vas Bloodthorn##99045
		Teach Kor'vas |q 39515/4 |goto 60.51,44.82
		|only if havequest(39515) or completedq(39515)
	step
		talk Kayn Sunfury##93127
		Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
		Teach Kayn |q 39515/3 |goto 60.51,44.75
		|only if havequest(39515) or completedq(39515)
	step
		talk Allari the Souleater##96655
		Teach Allari |q 39515/1 |goto 60.52,44.66
		|only if havequest(39515) or completedq(39515)
	step
		talk Mannethrel Darkstar##96652
		Teach Mannethrel |q 39515/5 |goto 60.26,44.59
		|only if havequest(39515) or completedq(39515)
//VENGEANCE QUEST - END
	
	step
		talk Kayn Sunfury##93127
		turnin Cry Havoc and Let Slip the Illidari!##39516 |or |goto 60.51,44.75 |only if havequest(39516) or completedq(39516)
		turnin Vengeance Will Be Mine!##39515 |or |goto 60.51,44.75 |only if havequest(39515) or completedq(39515)
		accept On Felbat Wings##39663 |goto 60.51,44.75
	step
		talk Izal Whitemoon##96653
		Ride to the Fel Hammer |q 39663/1 |goto 62.52,44.90
	step
		talk Cyana Nightglaive##97297
		turnin On Felbat Wings##39663 |goto 69.93,44.23
		accept The Keystone##38728 |goto 69.93,44.23
	step
		kill Brood Queen Tyranna##95048
		get Sargerite Keystone##124672 |q 38728/1 |goto 69.87,40.53
	step
		Find the Way Downstairs |q 38728/2 |goto 71.02,41.76
	step
		Follow the path down |goto 71.12,40.49 < 20
		talk Kayn Sunfury##97303
		turnin The Keystone##38728 |goto 69.86,37.89
		accept Return to the Black Temple##38729 |goto 69.86,37.89
	step
		click Sargerite Keystone
		Activate the Sargerite Keystone |q 38729/1 |goto 69.85,37.80
	step
		click Fel Portal
		turnin Return to the Black Temple##38729 |goto 69.85,37.51
	step
		talk Maiev Shadowsong##92718
		accept Breaking Out##38672 |goto Vault of the Wardens/1 80.06,36.57
	step
		click Altruis's Cell##103655
		Free Altruis |q 38672/1 |goto 78.59,38.29
	step
		click Kayn's Cell##103658
		Free Kayn |q 38672/2 |goto 78.56,34.93
	step
		Watch the dialogue
		|tip Wait until the dialogue is finished until you proceed.
		|confirm |q 38672 |goto 77.93,35.59
	step
		click Lever##211284
		turnin Breaking Out##38672 |goto 77.93,35.59
	step
		talk Kayn Sunfury##92980
		accept Rise of the Illidari##38690 |goto 74.47,35.97
	step
		talk Altruis the Sufferer##92986
		accept Fel Infusion##38689 |goto 74.40,37.16
	stickystart "RegainFelEnergy"
	stickystart "RepelLegionAttackers"
	step
		click Warden Cells
		|tip They look like glass sections in the wall around this area.
		Free 8 Imprisoned Illidari |q 38690/1 |goto 69.11,36.51
	step "RegainFelEnergy"
		Kill enemies around this area
		Regain 100 Fel Energy |q 38689/1 |goto 69.11,36.51
	step "RepelLegionAttackers"
		Kill enemies around this area
		click Legion Portal##54513+
		Repel the Legion Attackers |q 39742/1 |goto 69.11,36.51
	step
		Follow the path |goto 62.62,36.54 < 30
		Follow the path |goto 50.95,38.63 < 30
		talk Altruis the Sufferer##92986
		turnin Fel Infusion##38689 |goto 49.67,49.34
	step
		talk Kayn Sunfury##96665
		turnin Rise of the Illidari##38690 |goto 49.18,49.44
	step
		talk Maiev Shadowsong##92718
		|tip You will only be able to accept one of these quests.
		accept Stop Gul'dan!##40253 |goto 49.46,49.75 |or
		accept Stop Gul'dan!##38723 |goto 49.46,49.75 |or
	step
		kill Crusher##66724
		kill Sledge##92990
		Slay Crusher & Sledge & Take Their Power |q 40253/2 |goto 49.9,77.6 |only if havequest(40253) or completedq(40253)
		Slay Crusher & Sledge & Take Their Power |q 38723/2 |goto 49.9,77.6 |only if havequest(38723) or completedq(38723)
	step
		talk Kayn Sunfury##96665
		turnin Stop Gul'dan!##40253 |goto 50.8,72.8 |only if havequest(40253) or completedq(40253)
		turnin Stop Gul'dan!##38723 |goto 50.8,72.8 |only if havequest(38723) or completedq(38723)
		accept Grand Theft Felbat##39682 |goto 50.8,72.8
	step
		Follow the path |goto 49.90,37.30 < 20
		Run up the path |goto 42.73,30.02 < 20	
		Continue up the path |goto 54.24,29.11 < 20
		click Vampiric Felbat##96659
		Ride a Vampiric Felbat to the Upper Vault |q 39682/1 |goto 48.47,20.16
	step
		talk Kor'vas Bloodthorn##97643
		turnin Grand Theft Felbat##39682 |goto Vault of the Wardens/2 41.34,47.35
		accept Frozen in Time##39685 |goto Vault of the Wardens/2 41.34,47.35
		accept Beam Me Up##39684 |goto Vault of the Wardens/2 41.34,47.35
	step
		talk Allari the Souleater##96675
		|tip You will only be able to accept one of these quests.
		accept Forged in Fire##40254 |goto 41.12,47.16 |or
		accept Forged in Fire##39683 |goto 41.12,47.16 |or
	step
		Follow the path |goto 46.75,38.72 < 20
		kill Immolanth##96682
		Slay Immolanth & Take His Power |q 40254/1 |goto 46.79,17.11 |only if havequest(40254) or completedq(40254)
		Slay Immolanth & Take His Power |q 39683/1 |goto 46.79,17.11 |only if havequest(39683) or completedq(39683)
	step
		Follow the path |goto 46.77,36.25 < 20
		Go through the doorway |goto 54.51,48.23 < 20		
		click Reflective Mirror
		|tip Avoid the stuff on the ground.
		Rotate the Mirror |q 39684/1 |goto 70.62,49.58
	step
		Follow the path |goto 54.72,48.22 < 20
		Go through the doorway |goto 46.79,60.08 < 20		
		click Countermeasures##99240
		Activate the Eastern Countermeasure |q 39685/1 |goto 50.11,78.10
	step
		click Countermeasures##99240
		Activate the Southern Countermeasure |q 39685/2 |goto 46.85,84.26
	step
		click Countermeasures##99240
		Activate the Western Countermeasure |q 39685/3 |goto 43.41,78.25
	step
		Follow the path |goto 46.78,66.77 < 20
		talk Allari the Souleater##96675
		turnin Frozen in Time##39685 |goto 41.12,47.17
		turnin Beam Me Up##39684 |goto 41.12,47.17
		turnin Forged in Fire##40254 |goto 41.12,47.17 |only if havequest(40254) or completedq(40254)
		turnin Forged in Fire##39683 |goto 41.12,47.17 |only if havequest(39683) or completedq(39683)
		accept All The Way Up##39686 |goto 41.12,47.17
	step
		Ascend to the Hall of Judgement |q 39686/1 |goto 46.73,48.24
		|tip Wait for the elevator to come down, then ride it up.
	step
		Follow the path |goto Vault of the Wardens/3 24.39,25.22 < 20	
		talk Kor'vas Bloodthorn##97644
		turnin All The Way Up##39686 |goto 24.43,55.82
		accept A New Direction##40373 |goto 24.43,55.82
	step
		click Pool of Judgement
		View the Pool of Judgement |q 40373/1 |goto 24.40,53.08
	step
		talk Kor'vas Bloodthorn##97644
		|tip You must now choose who to side with, Kayn Sunfury or Altruis the Sufferer.
		|tip Choose whichever you agree with, it doesn't matter.
		Choose Between Kayn and Altruis |q 40373/2 |goto 24.43,55.82
	step
		talk Kor'vas Bloodthorn##97644
		turnin A New Direction##40373 |goto 24.43,55.82
		|tip You will only be able to accept one of these quests.
		accept Between Us and Freedom##39688 |goto 24.43,55.82 |or
		accept Between Us and Freedom##39694 |goto 24.43,55.82 |or
		accept Between Us and Freedom##40255 |goto 24.43,55.82 |or
		accept Between Us and Freedom##40256 |goto 24.43,55.82 |or	
	step
		Follow the path |goto 24.44,71.72 < 20
		kill Bastillax##96783
		Slay Bastillax & Take His Power |q 39688/1 |goto 50.38,77.52 |only if havequest(39688) or completedq(39688)
		Slay Bastillax & Take His Power |q 39694/1 |goto 50.38,77.52 |only if havequest(39694) or completedq(39694)
		Slay Bastillax & Take His Power |q 40255/1 |goto 50.38,77.52 |only if havequest(40255) or completedq(40255)
		Slay Bastillax & Take His Power |q 40256/1 |goto 50.38,77.52 |only if havequest(40256) or completedq(40256)
	step
		Follow the path up |goto 67.48,77.59 < 20
		Follow the path |goto 80.18,79.97 < 10		
		talk Kayn Sunfury##93127
		|tip Altruis the Sufferer will be here instead, if you chose to side with him earlier.
		turnin Between Us and FreedomFreedom##39688 |goto 84.12,82.84 |only if havequest(39688) or completedq(39688)
		turnin Between Us and FreedomFreedom##39694 |goto 84.12,82.84 |only if havequest(39694) or completedq(39694)
		turnin Between Us and FreedomFreedom##40255 |goto 84.12,82.84 |only if havequest(40255) or completedq(40255)
		turnin Between Us and FreedomFreedom##40256 |goto 84.12,82.84 |only if havequest(40256) or completedq(40256)
	step
		talk Archmage Khadgar##97978
		|tip You will only be able to accept one of these quests.
		accept Illidari, We Are Leaving##39690 |goto 85.98,84.32 |or
		accept Illidari, We Are Leaving##39689 |goto 85.98,84.32 |or
	step
		talk Archmage Khadgar##97978
		turnin Illidari, We Are Leaving##39690 |goto 85.98,84.32 |only if havequest(39690) or completedq(39690)
		turnin Illidari, We Are Leaving##39689 |goto 85.98,84.32 |only if havequest(39689) or completedq(39689)
	step
		talk Archmage Khadgar##97296
		accept The Call of War##39691 |goto Stormwind City/0 72.55,47.01
	step
		Follow the path |goto 80.64,37.87 < 20
		Enter the Throne Room |q 39691/1 |goto 84.39,33.74
	step
		talk Jace Darkweaver##102585
		turnin The Call of War##39691 |goto 84.39,33.74
		accept Second Sight##44471 |goto 84.39,33.74
	step
		Use your Spectral Sight ability
		Use Spectral Sight |q 44471/1 |goto 84.39,33.74
	step
		talk Jace Darkweaver##102585
		turnin Second Sight##44471 |goto 84.39,33.74
		accept Demons Among Them##44463 |goto 84.39,33.74
	step
		talk Anduin Wrynn##100429
		Warn Anduin Wrynn |q 44463/1 |goto 85.87,31.60
	step
		Kill enemies around this area
		Slay #5# Demons |q 44463/2 |goto 84.8,32.5
	step
		talk Anduin Wrynn##100973
		turnin Demons Among Them##44463 |goto 85.77,31.74
		accept A Weapon of the Alliance##44473 |goto 85.77,31.74
	step
		talk Elerion Bladedancer##101004
		|tip On the balcony of the building.
		turnin A Weapon of the Alliance##44473 |goto 40.26,77.69	
	step
		talk Khadgar's Upgraded Servant##114550
		|tip It appears next to you in Stormwind City.
		accept Calling of the Council##40717 |goto 40.3,77.7
	step
		click Portal to Dalaran
		|tip Inside Stormwind Keep.
		Take the Portal to Dalaran over Karazhan in Stormwind Keep |q 40717/1 |goto 80.26,34.85
	step
		talk Archmage Khadgar##101425
		Watch the dialogue
		|tip Follow Archmage Khadgar.
		Speak to Archmage Khadgar in Dalaran |q 40717/2 |goto Deadwind Pass/21 31.25,43.78
	step
		talk Archmage Khadgar##101427
		Watch the dialogue
		Have Khadgar Address the Council of Six |q 40717/3 |goto 30.55,48.97
	step
		talk Archmage Khadgar##113637
		turnin Calling of the Council##40717 |goto 29.76,48.83
	step
		Watch the dialogue
		talk Brann Bronzebeard##113655
		accept The Diamond King##42970 |goto 30.82,49.01
	step
		talk Brann Bronzebeard##113655
		Tell Brann It's Time to Go |q 42970/1 |goto 30.82,49.01
	step
		click Ulduar Teleportation Pad
		Take Brann's Portal to Ulduar |q 42970/2 |goto 30.47,48.95
	step
		Begin the Finding Magni Scenario |scenariostart |q 42970
	step
		Watch the dialogue
		Follow the Caretaker through Ulduar's Antechamber |scenariostage 1 |goto Ulduar L/1 37.12,54.93 |q 42970
	step
		Watch the dialogue
		Kill the enemies that attack
		Defeat the Invaders |scenariostage 2 |goto 37.12,54.93 |q 42970
	step
		Find Magni Bronzebeard |scenariostage 3 |goto 45.81,31.83 |q 42970
		|tip Follow your allies.
	step
		talk Archmage Khadgar##107771
		Speak to Khadgar to Bring Down the Fel Barrier |scenariostage 4 |goto 45.81,31.83 |q 42970
	step
		Kill the enemies that attack
		Defeat the Demons Holding Magni Bronzebeard |scenariostage 5 |goto 51.32,33.18 |q 42970
	step
		Watch the dialogue
		|tip Follow your allies.
		Walk to the Entrance of the Celestial Planetarium |scenariostage 6 |goto 59.64,46.15 |q 42970
	step
		talk Magni Bronzebeard##106697
		|tip Wait for Magni to open the door.
		Tell Magni you are Ready to Enter the Celestial Planetarium |scenariostage 7 |goto 59.64,46.15 |q 42970
	step
		Watch the dialogue
		Receive Magni's Important Message |scenarioend |goto 74.95,46.55 |q 42970
		Learn Magni Bronzebeard's Information |q 42970/3 |goto 74.95,46.55
	step
		click Portal to Karazhan
		Take Khadgar's Portal to Karazhan |q 42970/4 |goto 75.36,48.27
	step
		talk Archmage Khadgar##101547
		turnin The Diamond King##42970 |goto Deadwind Pass/0 47.00,75.08
		accept Hiding in the Stacks##40755 |goto Deadwind Pass/0 47.00,75.08
	step
		click Karazhan Gatehouse Portcullis
		|tip Walk into the swirling portal.
		Begin the Return to Karazhan Scenario |scenariostart |goto 46.80,74.56 |q 40755
	step
		Watch the dialogue
		talk Archmage Khadgar##101159
		Meet with Khadgar |scenariostage 1 |goto Karazhan L/1 53.62,64.58 |q 40755
	step
		Run up the stairs |goto 53.19,62.83 > 10000 |walk
		Watch the dialogue
		|tip Follow Archmage Khadgar.
		Listen to the Story of Khadgar's Arrival|scenariostage 2 |goto Karazhan L/2 66.41,50.38 |q 40755
	step
		Kill the enemy that attacks
		Disable the Arcane Protector |scenariostage 3 |goto 61.89,57.87 |q 40755
	step
		Watch the dialogue
		Stay with Khadgar |scenariostage 4 |goto 54.27,67.07 |q 40755
	step
		clicknpc Mark of the Kirin Tor##101407
		Deactivate the Protective Rune |scenariostage 5 |goto 67.51,48.73 |q 40755
	step
		Run up the stairs |goto 71.48,42.35 > 10000 |walk
		Watch the dialogue
		click Guardian's Arcanum
		Escape to the Library |scenariostage 6 |goto Karazhan L/3 67.26,41.90 |q 40755
	step
		kill Agitated Tome##101633+
		Destroy the Agitated Tomes |scenariostage 7 |goto Karazhan L/4 72.40,25.30 |q 40755
	step
		Watch the dialogue
		Kill the enemies that attack
		Subdue the Guardians |scenariostage 8 |goto 72.64,24.73 |q 40755
	step
		Watch the dialogue
		clicknpc Ancient Curator##101792+
		clicknpc Arcane Keeper##101432
		|tip Click all 3 of them. They will be wherever you killed them.
		Reactivate the Guardians |scenariostage 9 |goto 72.64,24.73 |q 40755
	step
		Watch the dialogue
		click Notable Antiquities of Ancient Azeroth
		Recover the Tome |scenariostage 10 |goto 75.32,24.15 |q 40755
		Recover the Knowledge of the Pillars of Creation |q 40755/1 |goto 75.32,24.15
	step
		Watch the dialogue
		Listen to Khadgar's Instructions |scenarioend |goto 72.51,25.45 |q 40755
	step
		click Portal to Dalaran |goto 71.76,23.99 |n
		Travel to Dalaran |goto 71.76,23.99 > 1000 |noway |c |q 40755
	step
		talk Archmage Modera##113836
		turnin Hiding in the Stacks##40755 |goto Deadwind Pass/21 30.19,51.21
	step
		talk Khadgar's Upgraded Servant##114561
		|tip It appears next to you in Dalaran.
		accept City Under Siege##44182 |goto Deadwind Pass/21 30.19,51.21
	step
		Enter the building |goto 45.73,43.42 < 10
		talk Archmage Khadgar##113986
		turnin City Under Siege##44182 |goto 49.83,48.27
		accept Anomalous Anomalies##44421 |goto 49.83,48.27
	step
		Use your Translocation Anomaly Neutralization Crystal on Unstable Anomalies |use Translocation Anomaly Neutralization Crystal##141411
		|tip They look like purple orbs floating all around Dalaran.
		Neutralize #4# Unstable Anomalies |q 44421/1 |goto 43.47,38.72
	step
		Enter the building |goto 45.73,43.42 < 10
		talk Archmage Khadgar##113986
		turnin Anomalous Anomalies##44421 |goto 49.83,48.27
		accept Author! Author!##44500 |goto 49.76,48.28
	step
		talk Archmage Khadgar##113986
		Watch the dialogue
		Summon Alodi and Learn the Location of the Pillars |q 44500/1 |goto 49.83,48.27
	step
		talk Archmage Khadgar##113986
		turnin Author! Author!##44500 |goto 49.82,48.29
	step
		Congratulations!  You completed the Legion Demon Hunter intro.
		|tip See you for more on Augusth 30th!
		.
		|tip Be ready to take on the Burning Legion with Zygor Elite!
]])
