EPGPLoot2 = LibStub("AceAddon-3.0"):NewAddon("EPGPLoot2", "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0", "AceComm-3.0")

EPGPLoot2_debug = false
EPGPLoot2_debug_MerchantTesting = false
EPGPLoot2_debug_MLtesting = false

EPGPLoot2_Progress = {}
EPGPLoot2_Sharder = nil

EPGPLoot2_MasterLooterHasOldVersion = false

EPGPLoot2_CanINeed = false

local EPGPLoot2_versionchecktable = {}
local EPGPLoot2_noodlechecktable = {}

local EPGPLootVersion = "3.04"
EPGPLoot2TooltipScan = EPGPLoot2ScanTooltip_Class:new( "EPGPLoot2_ScanTooltip" )	

EPGPLoot2_ignored_items = {
  [20725] = true, -- Nexus Crystal
  [22450] = true, -- Void Crystal
  [34057] = true, -- Abyss Crystal
  [52722] = true, -- Maelstrom Crystal
  [29434] = true, -- Badge of Justice
  [40752] = true, -- Emblem of Heroism
  [40753] = true, -- Emblem of Valor
  [45624] = true, -- Emblem of Conquest
  [47241] = true, -- Emblem of Triumph
  [49426] = true, -- Emblem of Frost
  [30311] = true, -- Warp Slicer
  [30312] = true, -- Infinity Blade
  [30313] = true, -- Staff of Disintegration
  [30314] = true, -- Phaseshift Bulwark
  [30316] = true, -- Devastation
  [30317] = true, -- Cosmic Infuser
  [30318] = true, -- Netherstrand Longbow
  [30319] = true, -- Nether Spikes
  [30320] = true, -- Bundle of Nether Spikes
  [45038] = true, -- Fragment of Val'anyr
  [50226] = true, --Festergut's Acidic Blood  ---+
  [49869] = true, --Light's Vengeance            |
  [50231] = true, --Rotface's Acidic Blood       |
  [50274] = true, --Shadowfrost Shard -----------+--- Shadowmourne Questline
  [69815] = true, --Seething Cinder --+
  [69848] = true, --Heart of Flame ---+--- Dragonwrath questline
  [71141] = true, -- eternal ember
  [69237] = true, -- living ember
  [77952] = true, -- Elementium Gem Cluster --+
  [77951] = true, -- Shadowy Gem  ------------+--- Fangs of the Father Questline
  [71998] = true, -- Essence of Destruction
  [87208] = true, -- Sigil of Power
  [87209] = true, -- Sigil of Wisdom
  [74248] = true, -- Sha Crystal
  [105718] = true, -- Sha Crystal Fragment
  [113588] = true, -- Temporal Crystal
  [111245] = true, -- Luminous Shard
  [115504] = true, -- Fractured Temporal Crystal
  
  --[44758] = true, -- Icy spinneret (for debugging)
}

local EPGPLoot2_ilevel_conversion = {
	[40625] = 213, -- T7.25 Breastplate of the Lost Conqueror
	[40626] = 213, -- T7.25 Breastplate of the Lost Protector
	[40627] = 213, -- T7.25 Breastplate of the Lost Vanquisher
	[40628] = 213, -- T7.25 Gauntlets of the Lost Conqueror
	[40629] = 213, -- T7.25 Gauntlets of the Lost Protector
	[40630] = 213, -- T7.25 Gauntlets of the Lost Vanquisher
	[40631] = 213, -- T7.25 Crown of the Lost Conqueror
	[40632] = 213, -- T7.25 Crown of the Lost Protector
	[40633] = 213, -- T7.25 Crown of the Lost Vanquisher
	[40634] = 213, -- T7.25 Legplates of the Lost Conqueror
	[40635] = 213, -- T7.25 Legplates of the Lost Protector
	[40636] = 213, -- T7.25 Legplates of the Lost Vanquisher
	[40637] = 213, -- T7.25 Mantle of the Lost Conqueror
	[40638] = 213, -- T7.25 Mantle of the Lost Protector
	[40639] = 213, -- T7.25 Mantle of the Lost Vanquisher
	[45635] = 219, -- T8.10 Chestguard of the Wayward Conqueror
	[45636] = 219, -- T8.10 Chestguard of the Wayward Protector
	[45637] = 219, -- T8.10 Chestguard of the Wayward Vanquisher
	[45644] = 219, -- T8.10 Gloves of the Wayward Conqueror
	[45645] = 219, -- T8.10 Gloves of the Wayward Protector
	[45646] = 219, -- T8.10 Gloves of the Wayward Vanquisher
	[45647] = 219, -- T8.10 Helm of the Wayward Conqueror
	[45648] = 219, -- T8.10 Helm of the Wayward Protector
	[45649] = 219, -- T8.10 Helm of the Wayward Vanquisher
	[45650] = 219, -- T8.10 Leggings of the Wayward Conqueror
	[45651] = 219, -- T8.10 Leggings of the Wayward Protector
	[45652] = 219, -- T8.10 Leggings of the Wayward Vanquisher
	[45659] = 219, -- T8.10 Spaulders of the Wayward Conqueror
	[45660] = 219, -- T8.10 Spaulders of the Wayward Protector
	[45661] = 219, -- T8.10 Spaulders of the Wayward Vanquisher
	[45632] = 226, -- T8.25 Breastplate of the Wayward Conqueror
	[45633] = 226, -- T8.25 Breastplate of the Wayward Protector
	[45634] = 226, -- T8.25 Breastplate of the Wayward Vanquisher
	[45641] = 226, -- T8.25 Gauntlets of the Wayward Conqueror
	[45642] = 226, -- T8.25 Gauntlets of the Wayward Protector
	[45643] = 226, -- T8.25 Gauntlets of the Wayward Vanquisher
	[45638] = 226, -- T8.25 Crown of the Wayward Conqueror
	[45639] = 226, -- T8.25 Crown of the Wayward Protector
	[45640] = 226, -- T8.25 Crown of the Wayward Vanquisher
	[45653] = 226, -- T8.25 Legplates of the Wayward Conqueror
	[45654] = 226, -- T8.25 Legplates of the Wayward Protector
	[45655] = 226, -- T8.25 Legplates of the Wayward Vanquisher
	[45656] = 226, -- T8.25 Mantle of the Wayward Conqueror
	[45657] = 226, -- T8.25 Mantle of the Wayward Protector
	[45658] = 226, -- T8.25 Mantle of the Wayward Vanquisher
	[47242] = 245, -- T9.25/T9.10H Trophy of the Crusade
	[49643] = 245, -- Head of Onyxia
	[49644] = 245, -- Head of Onyxia
	[47557] = 258, -- T9.25H Regalia of the Grand Conqueror
	[47558] = 258, -- T9.25H Regalia of the Grand Conqueror
	[47559] = 258, -- T9.25H Regalia of the Grand Conqueror
	[52025] = 264, -- T10.25 Mark of Sanctification
	[52026] = 264, -- T10.25 Mark of Sanctification
	[52027] = 264, -- T10.25 Mark of Sanctification
	[52028] = 277, -- T10.25H Heroic Mark of Sanctification
	[52029] = 277, -- T10.25H Heroic Mark of Sanctification
	[52030] = 277, -- T10.25H Heroic Mark of Sanctification
	[63682] = 359, -- T11 helm
	[63683] = 359, -- T11 helm
	[63684] = 359, -- T11 helm
	[64314] = 359, -- T11 shoulders
	[64315] = 359, -- T11 shoulders
	[64316] = 359, -- T11 shoulders
	[67423] = 372, -- T11H chest
	[67424] = 372, -- T11H chest
	[67425] = 372, -- T11H chest
	[65000] = 372, -- T11H helm
	[65001] = 372, -- T11H helm
	[65002] = 372, -- T11H helm
	[67429] = 372, -- T11H gloves
	[67430] = 372, -- T11H gloves
	[67431] = 372, -- T11H gloves
	[67426] = 372, -- T11H legs
	[67427] = 372, -- T11H legs
	[67428] = 372, -- T11H legs
	[65087] = 372, -- T11H shoulders
	[65088] = 372, -- T11H shoulders
	[65089] = 372, -- T11H shoulders
	[71674] = 378, -- T12 SHOULDER
	[71688] = 378, -- T12 SHOULDER
	[71681] = 378, -- T12 SHOULDER
	[71668] = 378, -- T12 HEAD
	[71682] = 378, -- T12 HEAD
	[71675] = 378, -- T12 HEAD
	[71679] = 391, -- T12H CHEST
	[71686] = 391, -- T12H CHEST
	[71672] = 391, -- T12H CHEST
	[71677] = 391, -- T12H HEAD
	[71684] = 391, -- T12H HEAD
	[71670] = 391, -- T12H HEAD
	[71676] = 391, -- T12H HAND
	[71683] = 391, -- T12H HAND
	[71669] = 391, -- T12H HAND
	[71678] = 391, -- T12H LEGS
	[71685] = 391, -- T12H LEGS
	[71671] = 391, -- T12H LEGS
	[71680] = 391, -- T12H SHOULDER
	[71687] = 391, -- T12H SHOULDER
	[71673] = 391, -- T12H SHOULDER
	[71617] = 391, -- crystallized firestone
	[78184] = 397, -- T13 CHEST
	[78179] = 397, -- T13 CHEST
	[78174] = 397, -- T13 CHEST
	[78182] = 397, -- T13 HEAD 
	[78177] = 397, -- T13 HEAD 
	[78172] = 397, -- T13 HEAD 
	[78183] = 397, -- T13 HAND 
	[78178] = 397, -- T13 HAND 
	[78173] = 397, -- T13 HAND 
	[78181] = 397, -- T13 LEGS 
	[78176] = 397, -- T13 LEGS 
	[78171] = 397, -- T13 LEGS 
	[78180] = 397, -- T13 SHOULDER
	[78175] = 397, -- T13 SHOULDER 
	[78170] = 397, -- T13 SHOULDER
	[78847] = 410, -- T13 heroic CHEST
	[78848] = 410, -- T13 heroic CHEST
	[78849] = 410, -- T13 heroic CHEST
	[78850] = 410, -- T13 heroic HEAD
	[78851] = 410, -- T13 heroic HEAD
	[78852] = 410, -- T13 heroic HEAD
	[78853] = 410, -- T13 heroic HAND
	[78854] = 410, -- T13 heroic HAND
	[78855] = 410, -- T13 heroic HAND
	[78856] = 410, -- T13 heroic LEGS
	[78857] = 410, -- T13 heroic LEGS
	[78858] = 410, -- T13 heroic LEGS
	[78859] = 410, -- T13 heroic SHOULDER
	[78860] = 410, -- T13 heroic SHOULDER
	[78861] = 410, -- T13 heroic SHOULDER

	-- T14 Normal
	[99686] = 553, -- Chest of the Cursed Conqueror
	[99691] = 553, -- Chest of the Cursed Protector
	[99696] = 553, -- Chest of the Cursed Vanquisher
	[99687] = 553, -- Gauntlets of the Cursed Conqueror
	[99692] = 553, -- Gauntlets of the Cursed Protector
	[99682] = 553, -- Gauntlets of the Cursed Vanquisher
	[99689] = 553, -- Helm of the Cursed Conqueror
	[99694] = 553, -- Helm of the Cursed Protector
	[99683] = 553, -- Helm of the Cursed Vanquisher
	[99688] = 553, -- Leggings of the Cursed Conqueror
	[99693] = 553, -- Leggings of the Cursed Protector
	[99684] = 553, -- Leggings of the Cursed Vanquisher
	[99690] = 553, -- Shoulders of the Cursed Conqueror
	[99695] = 553, -- Shoulders of the Cursed Protector
	[99685] = 553, -- Shoulders of the Cursed Vanquisher
	
	[105857] = 553, -- Essence of the Cursed Protector
	[105858] = 553, -- Essence of the Cursed Conqueror
	[105859] = 553, -- Essence of the Cursed Vanquisher
	

	-- T14 Heroic
	[99715] = 566, -- Chest of the Cursed Conqueror
	[99716] = 566, -- Chest of the Cursed Protector
	[99714] = 566, -- Chest of the Cursed Vanquisher
	[99721] = 566, -- Gauntlets of the Cursed Conqueror
	[99722] = 566, -- Gauntlets of the Cursed Protector
	[99720] = 566, -- Gauntlets of the Cursed Vanquisher
	[99724] = 566, -- Helm of the Cursed Conqueror
	[99725] = 566, -- Helm of the Cursed Protector
	[99723] = 566, -- Helm of the Cursed Vanquisher
	[99712] = 566, -- Leggings of the Cursed Conqueror
	[99713] = 566, -- Leggings of the Cursed Protector
	[99726] = 566, -- Leggings of the Cursed Vanquisher
	[99718] = 566, -- Shoulders of the Cursed Conqueror
	[99719] = 566, -- Shoulders of the Cursed Protector
	[99717] = 566, -- Shoulders of the Cursed Vanquisher

	[105866] = 566, -- Essence of the Cursed Protector
	[105868] = 566, -- Essence of the Cursed Conqueror
	[105867] = 566, -- Essence of the Cursed Vanquisher
	
}

local options = {
    name = "EPGPLoot2",
    handler = EPGPLoot2,
	order = 1,
    type = "group",
    args = {
		titlebar = {
		type = "description",
		name = "EPGPLoot2 v".. EPGPLootVersion .." by |cFFff8000Raksl|r <Elysium> EU-Earthen Ring",
		order = 1,
		},
		PlayerGroup= {
		order = 2,
		type= "group",
		childGroups="tree",
		handler= EPGPLoot2,
		cmdHidden = true,
		name = "Playersettings",
			args = {
				AutoPass = {
					type = "toggle",
					order = 1,
					handler = EPGPLoot2,
					name = "Auto pass unusable",
					desc = "Automatically pass on loot you cannot use.",
					get = "IsAutoPassing",
					set = "ToggleAutoPass",
				},
				AutoAFK = {
					type = "toggle",
					order = 2,
					handler = EPGPLoot2,
					name = "Auto pass while AFK",
					desc = "Automatically pass on loot while AFK.",
					get = "IsAutoAFKing",
					set = "ToggleAutoAFK",
				},
				AutoPassingOnLowArmor = {
					type = "toggle",
					order = 3,
					handler = EPGPLoot2,
					name = "Auto pass lower armor type",
					desc = "Automatically pass on armor of a lower type than your main class type.",
					get = "IsAutoPassingOnLowArmor",
					set = "ToggleAutoPassingOnLowArmor",
				},	
				AutoPassExceptions = {
					type = "input",
					handler = EPGPLoot2,
					order = 4,
					name = "Lower armor exceptions",
					desc = "The itemIDs seperated by a semicolon (;) to which you don't want to pass.",
					get = "IsAutoPassExceptions",
					set = "SetAutoPassExceptions",
				},				
				Wishlist = {
					type = "input",
					handler = EPGPLoot2,
					order = 4,
					name = "Item wishlist",
					desc = "The itemIDs seperated by a semicolon (;) on your wishlist. You will automatically 'need' on these items.",
					get = "IsWishlist",
					set = "SetWishlist",
				},				
				
			},
		},
		MLGroup = {
		type= "group",
		childGroups = "tree",
		cmdHidden = true,
		handler = EPGPLoot2,
		order = 3,
		name = "Masterlooter",
			args = {
				RaiderRank = {
					type = "select",
					handler = EPGPLoot2,
					order = 1,
					values = function() local t={};for i=1,GuildControlGetNumRanks() do t[i]=GuildControlGetRankName(i);end;return t end,
					name = "Raiderrank",
					desc = "The lowest raider rank - ranks below this are presumed to be trialists. Players holding this or higher rank have priority over players holding a lower rank.",
					get = "IsRaiderRank",
					set = "SetRaiderRank",
				},

				TrialistRank = {
					type = "select",
					handler = EPGPLoot2,
					order = 2,
					values = function() local t={};for i=1,GuildControlGetNumRanks() do t[i]=GuildControlGetRankName(i);end;return t end,
					name = "Trialistrank",
					desc = "The lowest trailist rank - ranks below this are presumed to be friends and alts. Players holding this or higher rank have priority over players holding a lower rank.",
					get = "IsTrialistRank",
					set = "SetTrialistRank",
				},
				
				
				RarityThreshold = {
					type = "select",
					handler = EPGPLoot2,
					order = 3,
					values = {
								[0]="|cFF9d9d9dTrash|r",
								[1]="|cFFffffffCommon|r",
								[2]="|cFF1eff00Uncommon|r",
								[3]="|cFF0070ddRare|r",
								[4]="|cFFa335eeEpic|r",
								[5]="|cFFff8000Legendary|r",
							},
					name = "Rarity threshold",
					desc = "The minimum itemquality required to trigger EPGPLoot.",
					get = "IsRarityThreshold",
					set = "SetRarityThreshold",
				},
				
				
				RaiderRolls = {
					type = "input",
					handler = EPGPLoot2,
					order = 4,
					name = "Raider roll items",
					desc = "The itemIDs seperated by a semicolon (;) to which only raiders are elegible to roll.",
					get = "IsRaiderRoll",
					set = "SetRaiderRoll",
				},

				FFARolls = {
					type = "input",
					handler = EPGPLoot2,
					order = 5,
					name = "Free for all roll items",
					desc = "The itemIDs seperated by a semicolon (;) to which both trialists and raiders are elegible to roll.",
					get = "IsFFARoll",
					set = "SetFFARoll",
				},

				ShowLootResults = {
					type = "toggle",
					order = 6,
					handler = EPGPLoot2,
					name = "Show results",
					desc = "Announce the results in raidchat.",
					get = "IsShowLootResults",
					set = "ToggleShowLootResults",
				},
--
--				AltsShareMainRank = {
--					type = "toggle",
--					order = 7,
--					handler = EPGPLoot2,
--					name = "Alts use main rank",
--					desc = "If a character joins the raid on an alt- use the same rank as their main.",
--					get = "IsAltsShareMainRank",
--					set = "ToggleAltsShareMainRank",
--				},
--				
				HighestFarmLevel = {
					type = "select",
					order = 8,
					values = {
								[0]="no farm content",
--								[213]="213 |cFF9d9d9d(Naxxramas 10)|r",
--								[219]="219 |cFF9d9d9d(Naxxramas 25/Ulduar 10)|r",
--								[226]="226 |cFF9d9d9d(Ulduar 10/25)|r",
--								[232]="232 |cFF9d9d9d(Ulduar 25/ ToTC 10)|r",
--								[239]="239 |cFF9d9d9d(Ulduar 25 hard)|r",
--								[245]="245 |cFF9d9d9d(ToC 25/ToC 10 heroic)|r",
--								[258]="258 |cFF9d9d9d(ToC 25 heroic/ICC 10)|r",
--								[264]="264 |cFF9d9d9d(ICC 25/ICC 10 heroic)|r",
--								[271]="271 |cFF9d9d9d(ICC 25 LK normal)|r",
--								[277]="277 |cFF9d9d9d(ICC 25 heroic)|r",
								[359]="359 |cFF9d9d9d(Tier 11)|r",
								[372]="372 |cFF9d9d9d(Tier 11 heroic)|r",
								[359]="378 |cFF9d9d9d(Tier 12)|r",
								[372]="391 |cFF9d9d9d(Tier 12 heroic)|r",
						
							},					
					handler = EPGPLoot2,
					name = "ilevel for Farming",
					desc = "Any item of this or lower ilevel will be a free for all roll.",
					get = "IsHighestFarmlevel",
					set = "SetHighestFarmlevel",
				},
				
				MLGroup2 = {
					type= "group",
					childGroups = "tree",
					cmdHidden = true,
					handler = EPGPLoot2,
					order = 3,
					name = "Armorclass priorities",
						args = {
							titlebar = {
								type = "description",
								name = "Due to itemisation, to some specs the BiS items are of lower amorclass than their main armor proficiency. Set the specs that are allowed to 'need' on armor lower than their main class.",
								order = 1,
							},
							ArmorNeedForAll = {
								type = "toggle",
								handler = EPGPLoot2,
								order = 2,
								name = "All can need on lower rank armor",
								desc = "Allow all members to need on armor outside their main proficiency. When enabled, consider all checkboxes below to be 'checked'.",
								get = "IsArmorNeedForAll",
								set = "ToggleArmorNeedForAll",
							},
							
							ArmorNeedForDruidBalance = {
								type = "toggle",
								handler = EPGPLoot2,
								order = 3,
								name = "Druid-Balance",
								desc = "Allow Balance Druids to need.",
								get = "IsArmorNeedForDruidBalance",
								set = "ToggleArmorNeedForDruidBalance",
							},
							ArmorNeedForDruidRestoration = {
								type = "toggle",
								handler = EPGPLoot2,
								order = 5,
								name = "Druid-Restoration",
								desc = "Allow Restoration Druids to need.",
								get = "IsArmorNeedForDruidRestoration",
								set = "ToggleArmorNeedForDruidRestoration",
							},
							subtitlebar = {
								type = "description",
								name = "This function is experimental. More to be added in the future. Suggestions welcomed at the addon-download page on Curse. Thankyou.",
								order = 6,
							},

							
						},
					},
				},
		},
		setsharder = {
			name = "setsharder", type = "input",
			desc = "Set the current disenchanter.",
			set = "SetSharderCMD",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},			
		showsharder = {
			name = "showsharder", type = "execute",
			desc = "Shows who is set as the current disenchanter.",
			func = "ShowSharder",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},			
		resetsharder = {
			name = "resetsharder", type = "execute",
			desc = "Set the designater disenchanter to nobody.",
			func = "ResetSharder",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},		
		showexceptions = {
			name = "showexceptions", type = "execute",
			desc = "Shows the items you want outside your main armor proficiency.",
			func = "ShowExceptions",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},		
		showRRolls = {
			name = "showrr", type = "execute",
			desc = "Show the items listed as raiderroll.",
			func = "ShowRaiderRolls",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},	
		showFFARolls = {
			name = "showffa", type = "execute",
			desc = "Show the items listed as free for all rolls.",
			func = "ShowFFARolls",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},			
		showwishlist = {
			name = "showwishlist", type = "execute",
			desc = "Show the items on your wishlist.",
			func = "ShowWishlist",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},			
		versioncheck = {
			name = "versioncheck", type = "execute",
			desc = "Execute a versioncheck.",
			func = "Versioncheck",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},
		noodlecheck = {
			name = "noodlecheck", type = "execute",
			desc = "Execute a noodlecheck.",
			func = "Noodlecheck",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},
		dumpprio = {
			name = "dumpprio", type = "execute",
			desc = "Shows the EPGP priorities.",
			func = "DumpPrio",
			guiHidden= true,
			dialogHidden = true,
			dropdownHidden = true, 
		},	
		
	},
}

local defaults = {
    profile = {
        AutoPass = true,
		AutoAFK = true,
		AutoPassingOnLowArmor = true,
		AutoPassExceptions = "",
		RaiderRank = 3,
		TrialistRank = 5,
		Wishlist = "",
		RaiderRoll = "32458;43953;43952;43954;44083;43959", -- ashes of alar, blue drake, azure drake, twilight drake, grand black warmammoth
		FFARoll = "43345;43346", --dragonhide bag, large satchel of spoils
		RarityThreshold = 4,
		MLpoint = "CENTER", -- remember ML window position
		MLrelativeTo = nil, 
		MLrelativePoint = "CENTER", 
		MLxOfs = 0, 
		MLyOfs = 0,
		ArmorNeedForAll = 0,
		ArmorNeedForSpec = {},
		ShowLootResults = false,
		HighestFarmlevel = 0,
		AltsShareMainRank =0,
		Sharder = nil,
    },
}


-- ninjaed from oqueue
-- takes name-realm and returns name,realm
-- if there is no realm, player_realm assumed
--
function EPGPLoot2:crack_name(n)
    if (n == nil) then
        return nil, nil;
    end

    local name = n;
    realm = GetRealmName();

    local p = n:find("-");
    if (p) then
        name  = n:sub( 1, p-1 );
        realm = n:sub( p+1, -1 );
    end

    return name, realm;
end

function EPGPLoot2:FixUnitName(n)
    local cleanedname = "";

--  self:Print("param n= " .. n );
    if (n == nil) then
        return nil;
    end

    local name = name;
    local playerrealm = GetRealmName();
    
    local p = n:find("-");
    if (p) then
--      self:Print("n has dash, returning " .. n );
        cleanedname = n
    else
        local _n, _r ;
        _n, _r = UnitName(n);
        if (_n == nil) or (_n == "") then
--          self:Print("no name")
            cleanedname = n
        else
            if (_r == nil) or (_r == "" )  then
--              self:Print("returning player realm " .. playerrealm );
                cleanedname = _n .. "-" .. playerrealm
            else
--              self:Print("returning UnitName realm " .. _r );
                cleanedname = _n .. _r
            end
        end
    end

    return string.gsub(cleanedname, " ", "")
end



function EPGPLoot2:IsFreeForAllRollOrFarmItem(item_id,ilevel)


	if EPGPLoot2:IsItemFreeForAllRoll(tostring(item_id)) then
		return true
	end

	if tonumber(self.db.profile.HighestFarmlevel) == 0 then
		return false
	end 
		
	if EPGPLoot2_ilevel_conversion[tonumber(item_id)] ~= nil then
		-- this is an item in the conversion list
		if EPGPLoot2_ilevel_conversion[tonumber(item_id)] > self.db.profile.HighestFarmlevel then
			-- the ilevel returned by the conversion is higher than the farm content
			return false
		else
			-- the ilevel returned by the conversion is lower or equal to the farm content
			return true
		end
	end

	if ilevel > tonumber(self.db.profile.HighestFarmlevel) then

		return false
	end	
	-- no positive check responses so it is not a free for all roll item after all...

	return true
end

function EPGPLoot2:IsML()

	if EPGPLoot2_debug_MLtesting then
		return true
	end

    if UnitInRaid("player") then
        local loot_method, ml_party_id, ml_raid_id = GetLootMethod()
        if loot_method == "master" and ml_party_id == 0 then return true end
        if loot_method == "personalloot" and UnitIsGroupLeader("player") then return true end
        --if loot_method ~= "master" and UnitIsGroupLeader("player") then return true end
    end

    return false

end




--Setting armorclass priorities
function EPGPLoot2:IsArmorNeedForDruidBalance(info)
	if self.db.profile.ArmorNeedForSpec["DruidBalance"] then
		return true
	else
		return false
	end
end

function EPGPLoot2:ToggleArmorNeedForDruidBalance(info, value)
    if value == false then
		self.db.profile.ArmorNeedForSpec["DruidBalance"]=nil
	else
		self.db.profile.ArmorNeedForSpec["DruidBalance"]=true
	end
	
end

function EPGPLoot2:IsArmorNeedForDruidRestoration(info)
	if self.db.profile.ArmorNeedForSpec["DruidRestoration"] then
		return true
	else
		return false
	end
end

function EPGPLoot2:ToggleArmorNeedForDruidRestoration(info, value)
    if value == false then
		self.db.profile.ArmorNeedForSpec["DruidRestoration"]=nil
	else
		self.db.profile.ArmorNeedForSpec["DruidRestoration"]=true
	end
end

function EPGPLoot2:IsAltsShareMainRank(info)
    return self.db.profile.AltsShareMainRank
end

function EPGPLoot2:ToggleAltsShareMainRank(info, value)
    self.db.profile.AltsShareMainRank = value
end

function EPGPLoot2:SetHighestFarmlevel(info, value)
    self.db.profile.HighestFarmlevel = tonumber(value)
end

function EPGPLoot2:IsHighestFarmlevel(info)
    return self.db.profile.HighestFarmlevel
end

function EPGPLoot2:IsShowLootResults(info)
	return self.db.profile.ShowLootResults
end

function EPGPLoot2:ToggleShowLootResults(info, value)
    self.db.profile.ShowLootResults = value
end

function EPGPLoot2:IsArmorNeedForAll(info)
	return self.db.profile.ArmorNeedForAll
end

function EPGPLoot2:ToggleArmorNeedForAll(info, value)
    self.db.profile.ArmorNeedForAll = value
end

function EPGPLoot2:IsAutoPassing(info)
    return self.db.profile.AutoPass
end

function EPGPLoot2:ToggleAutoPass(info, value)
    self.db.profile.AutoPass = value
end

function EPGPLoot2:IsAutoAFKing(info)
    return self.db.profile.AutoAFK
end

function EPGPLoot2:ToggleAutoAFK(info, value)
    self.db.profile.AutoAFK = value
end

function EPGPLoot2:IsAutoPassingOnLowArmor(info)
    return self.db.profile.AutoPassingOnLowArmor
end

function EPGPLoot2:ToggleAutoPassingOnLowArmor(info, value)
    self.db.profile.AutoPassingOnLowArmor = value
end

function EPGPLoot2:IsAutoPassExceptions(info)
    return self.db.profile.AutoPassExceptions
end

function EPGPLoot2:SetAutoPassExceptions(info, value)
    self.db.profile.AutoPassExceptions = value
end

function EPGPLoot2:IsWishlist(info)
    return self.db.profile.Wishlist
end

function EPGPLoot2:SetWishlist(info, value)
    self.db.profile.Wishlist = value
end


function EPGPLoot2:IsRaiderRank(info)
    return self.db.profile.RaiderRank
end

function EPGPLoot2:SetRaiderRank(info, value)
    self.db.profile.RaiderRank = value
end

function EPGPLoot2:IsTrialistRank(info)
    return self.db.profile.TrialistRank
end

function EPGPLoot2:SetTrialistRank(info, value)
    self.db.profile.TrialistRank = value
end

function EPGPLoot2:SetRaiderRoll(info, value)
    self.db.profile.RaiderRoll = value
end

function EPGPLoot2:IsRaiderRoll(info)
    return self.db.profile.RaiderRoll
end

function EPGPLoot2:SetFFARoll(info, value)
    self.db.profile.FFARoll = value
end

function EPGPLoot2:IsFFARoll(info)
    return self.db.profile.FFARoll
end

function EPGPLoot2:SetRarityThreshold(info, value)
    self.db.profile.RarityThreshold = value
end

function EPGPLoot2:IsRarityThreshold(info)
    return self.db.profile.RarityThreshold
end

function EPGPLoot2:IsRaider(rank)
	return (rank <= (self.db.profile.RaiderRank-1))
end

function EPGPLoot2:IsTrialist(rank)
	return (rank > (self.db.profile.RaiderRank-1))
end

function EPGPLoot2:PriorityRankName(rank)
	if (rank <= (self.db.profile.RaiderRank-1)) then
		return "Raider"
	else
		if (rank <= (self.db.profile.TrialistRank-1)) then
			return "Trial"
		else
			return "Reservist"
		end 
	end
end

function EPGPLoot2:IsRaiderByName(name)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo(name);
	return (tonumber(guildRankIndex) <= (self.db.profile.RaiderRank-1))
end

function EPGPLoot2:IsTrialistByName(name)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo(name);
	return (tonumber(guildRankIndex) > (self.db.profile.RaiderRank-1))
end

function EPGPLoot2:IsFriendOrAltByName(name)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo(name);
	return (tonumber(guildRankIndex) > (self.db.profile.TrialistRank-1))
end

function EPGPLoot2:AmIRaider(MLRankThreshold)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo("player");
	return (tonumber(guildRankIndex) <= (tonumber(MLRankThreshold)-1))
end

function EPGPLoot2:AmITrialist(MLRankThreshold)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo("player");
	return (tonumber(guildRankIndex) > (tonumber(MLRankThreshold)-1))
end

function EPGPLoot2:AmIFriendOrAlt(MLRankThreshold)
	local guildName, guildRankName, guildRankIndex = GetGuildInfo("player");
	return (tonumber(guildRankIndex) > (tonumber(MLRankThreshold)-1))
end

function EPGPLoot2:IsItemFreeForAllRoll(itemid)
	return string.find(self.db.profile.FFARoll,itemid)~=nil
end

function EPGPLoot2:IsItemRaiderRoll(itemid)
	return string.find(self.db.profile.RaiderRoll,itemid)~=nil
end

function EPGPLoot2:IsItemAPassOnLowerArmorException(itemid)
	if self.db.profile.AutoPassExceptions == "" then
		return false
	end
	return string.find(self.db.profile.AutoPassExceptions,itemid)~=nil
end

function EPGPLoot2:IsItemAOnWishlist(itemid)
	if self.db.profile.Wishlist == "" then
		return false
	end
	return string.find(self.db.profile.Wishlist,itemid)~=nil
end

function EPGPLoot2:Split(str, delim, maxNb)
	-- Eliminate bad cases...
	if str == "" then	
		return {}
	end
    if string.find(str, delim) == nil then
        return { str }
    end
    if maxNb == nil or maxNb < 1 then
        maxNb = 0    -- No limit
    end
    local result = {}
    local pat = "(.-)" .. delim .. "()"
    local nb = 0
    local lastPos
    for part, pos in string.gmatch(str, pat) do
        nb = nb + 1
        result[nb] = part
        lastPos = pos
        if nb == maxNb then break end
    end
    -- Handle the last field
    if nb ~= maxNb then
        result[nb + 1] = string.sub(str, lastPos)
    end
    return result
end

function EPGPLoot2:OnInitialize()
    -- Called when the addon is loaded
	self.db = LibStub("AceDB-3.0"):New("EPGPLoot2DB", defaults, "Default")
	LibStub("AceConfig-3.0"):RegisterOptionsTable("EPGPLoot2", options, {"epgploot2","epgpl"})
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("EPGPLoot2", "EPGPLoot2")

--	replaced with AceComm RegisterComm
--	RegisterAddonMessagePrefix("epgploot2")
end

function EPGPLoot2:ShowExceptions()

	if self.db.profile.AutoPassingOnLowArmor then
		self:Print("You are passing on armor outside of your primary armor proficiency.");
	else
		self:Print("You are NOT passing on armor outside of your primary armor proficiency.");
	end
	
	local exceptionitems = {}
	if self.db.profile.AutoPassExceptions then
		exceptionitems = EPGPLoot2:Split(self.db.profile.AutoPassExceptions,";")
	end
	if #exceptionitems==0 then
		self:Print("You have no items in your exception list.");
	else
		self:Print("Items in your exceptionlist are:");
		for i=1,#exceptionitems do
			EPGPLoot2TooltipScan:SetHyperlink("item:"..exceptionitems[i])
			local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount = GetItemInfo(exceptionitems[i]);
			if sLink then
				self:Print(sLink);
			else
				self:Print("The item #"..exceptionitems[i].." hasn't dropped on this server yet.")
			end
		end
	
	end
end

function EPGPLoot2:ShowWishlist()

	local listitems = {}
	if self.db.profile.Wishlist then
		listitems = EPGPLoot2:Split(self.db.profile.Wishlist,";")
	end
	if #listitems==0 then
		self:Print("You have no items in your wishlist.");
	else
		self:Print("Items in your wishlist are:");
		for i=1,#listitems do
			EPGPLoot2TooltipScan:SetHyperlink("item:"..listitems[i])
			local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount = GetItemInfo(listitems[i]);
			if sLink then
				self:Print(sLink);
			else
				self:Print("The item #"..listitems[i].." hasn't dropped on this server yet.")
			end
		end
	
	end
end

function EPGPLoot2:ShowRaiderRolls()

	if not EPGPLoot2:IsML() then
		self:Print("Note that you are not the masterlooter- your list may not match to the Masterlooterlist.");
	end
	
	local listitems = {}
	if self.db.profile.RaiderRoll then
		listitems = EPGPLoot2:Split(self.db.profile.RaiderRoll,";")
	end
	if #listitems==0 then
		self:Print("You have no items in Raider Roll list.");
	else
		self:Print("Items in your Raider Roll are:");
		for i=1,#listitems do
			EPGPLoot2TooltipScan:SetHyperlink("item:"..listitems[i])
			local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount = GetItemInfo(listitems[i]);
			if sLink then
				self:Print(sLink);
			else
				self:Print("The item #"..listitems[i].." hasn't dropped on this server yet.")
			end
		end
	
	end
end

function EPGPLoot2:ShowFFARolls()

	if not EPGPLoot2:IsML() then
		self:Print("Note that you are not the masterlooter- your list may not match to the Masterlooterlist.");
	end
	
	local listitems = {}
	if self.db.profile.FFARoll then
		listitems = EPGPLoot2:Split(self.db.profile.FFARoll,";")
	end
	if #listitems==0 then
		self:Print("You have no items in Free For All Roll list.");
	else
		self:Print("Items in your Free For All Roll are:");
		for i=1,#listitems do
			EPGPLoot2TooltipScan:SetHyperlink("item:"..listitems[i])
			local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount = GetItemInfo(listitems[i]);
			if sLink then
				self:Print(sLink);
			else
				self:Print("The item #"..listitems[i].." hasn't dropped on this server yet.")
			end
		end
	
	end
end

function EPGPLoot2:DumpPrio()
	local PrioCache = {}
	PrioCache = EPGPLoot2:UpdateRaidPrio()
	
	if UnitInRaid("player") then
		for i=1, GetNumGroupMembers() do
--			local name, _, _, _, _, _, _, _, _, _, _ = GetRaidRosterInfo(i);
			local name = GetUnitName( "raid".. i, true ) ;
			name = EPGPLoot2:FixUnitName(name);
			
			if PrioCache[name] then
	    		self:Print(name..": "..strsub(tostring(PrioCache[name].prio),1,4).." ("..PrioCache[name].note..";"..EPGPLoot2:PriorityRankName(PrioCache[name].rank)..")")
			end
		end
	else
		for k,v in pairs(PrioCache) do
			self:Print(k..": "..strsub(tostring(PrioCache[k].prio),1,4).." ("..PrioCache[k].note..";"..EPGPLoot2:PriorityRankName(PrioCache[k].rank)..")")
		end
	end
end

function EPGPLoot2:DumpVersionCheckResults()
		  --do stuff here-- 
			local strUnknown = ""
			local strSame = ""
			local strDifferent = ""
			
			local fullname
			local playername, realmname
			
   		for i=1,GetNumGroupMembers() do
--			name, _ , _ , _, _ , _ , _ , _ , _ , _ , _ = GetRaidRosterInfo(i);
				fullname = GetUnitName( "raid".. i, true ) ;

				if (fullname) then
					fullname = EPGPLoot2:FixUnitName(fullname) ;

          playername, realmname = EPGPLoot2:crack_name(fullname);


					if EPGPLoot2_versionchecktable[fullname] ~= nil then
						if EPGPLoot2_versionchecktable[fullname] == EPGPLootVersion then
							strSame = strSame .. playername .. " "
						else
							strDifferent = strDifferent .. playername .. " ( " .. EPGPLoot2_versionchecktable[fullname] ..  " ) "
						end
					else
						strUnknown = strUnknown .. playername .. " "
					end
				end
			end

--			SendChatMessage("EPGPLoot versioncheck, by player: " .. UnitName("player") .. " with version:"..EPGPLootVersion, "RAID", nil);		
			if strSame ~= "" then
				SendChatMessage("EPGPLoot2: People with version "..EPGPLootVersion..": ".. strSame, "RAID", nil);
			end
			if strDifferent ~= "" then
				SendChatMessage("EPGPLoot2: People with a different version: ".. strDifferent, "RAID", nil);
			end
			if strUnknown ~= "" then
				SendChatMessage("EPGPLoot2: People with an unknown version: ".. strUnknown, "RAID", nil);
			end
end;

function EPGPLoot2:DumpNoodleCheckResults()

    local strMaxNoodles = ""
    local strSlackerNoodles = ""

    for i = 1, GetNumGroupMembers() do
        name = GetUnitName( "raid".. i, true ) ;

        if (name) then
            name = EPGPLoot2:FixUnitName(name) ;
            __name, __realm = EPGPLoot2:crack_name(name);

            if EPGPLoot2_noodlechecktable[name] ~= nil then
                if EPGPLoot2_noodlechecktable[name] == 5 then
                    strMaxNoodles = strMaxNoodles .. __name .. " "
                else
                    strSlackerNoodles = strSlackerNoodles .. __name .. " (" .. EPGPLoot2_noodlechecktable[name] ..  ") "
                end
            else
                strSlackerNoodles = strSlackerNoodles .. __name .. " (?) "
            end
        end
    end

    -- SendChatMessage("EPGPLoot noodlecheck, by player: " .. UnitName("player"), "RAID", nil);		
    if strMaxNoodles ~= "" then
        SendChatMessage("EPGPNoodle2: People who stocked up on noodles: " .. strMaxNoodles, "RAID", nil);
    end
    if strSlackerNoodles ~= "" then
        SendChatMessage("EPGPNoodle2: People with too few noodles: " .. strSlackerNoodles, "RAID", nil);
    end
end;

function EPGPLoot2:Versioncheck()
	EPGPLoot2_versionchecktable = {}
	EPGPLoot2:SomeCheck(1);
end

function EPGPLoot2:Noodlecheck()
	EPGPLoot2_noodlechecktable = {}
	EPGPLoot2:SomeCheck(2);
end

function EPGPLoot2:SomeCheck(checktype)

	if checktype == 1 then
		if EPGPLoot2_debug then
			self:Print("initiating versioncheck")
		end
	else
		if checktype == 2 then
			if EPGPLoot2_debug then
				self:Print("initiating noodlecheck")
			end
		else
			self:Print("Unknown checktype: "..checktype)
			return
		end
	end
	
	
	local f = CreateFrame("Frame","EPGPVersionchecker",UIParent)
	f:SetFrameStrata("BACKGROUND")
	f:SetWidth(140)
	f:SetHeight(80)
	f:SetBackdrop(
		{
			bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
			tile = true, tileSize = 16, edgeSize = 16, 
			insets = {
				left = 4,
				right = 4,
				top = 4,
				bottom = 4
			}
		}
	);
	f:SetBackdropColor(0,0,0,1);
	f:SetPoint("CENTER",0,0)
	
	local infobox = f:CreateFontString("versionchecker")
	infobox:SetFont("Fonts\\FRIZQT__.TTF", 10)
	infobox:SetWidth(100)
	infobox:SetPoint("CENTER",0,0)
	if checktype == 1 then
		infobox:SetText("Checking versions")
	else
		if checktype == 2 then
			infobox:SetText("Checking noodles")
		end
	end
	infobox:SetJustifyH("CENTER") 

	f:Hide()
 
	local timer
	 
	f:SetScript("OnShow",
		function() 
			timer = 5
			if checktype == 1 then
				self:SendCommMessage("epgploot2","versioncheck:nil", "RAID");
			else
				if checktype == 2 then
					self:SendCommMessage("epgploot2","noodlecheck:nil", "RAID");
				end
			end
		end
	)

	f:SetScript("OnUpdate",
		function(self, elap)
	  	timer = timer - elap
			if checktype == 1 then
		  	infobox:SetText("EPGPLoot2|nChecking versions (".. strsub(tostring(timer),1,3) .. ")")
			else
				if checktype == 2 then
		  		infobox:SetText("EPGPLoot2|nChecking noodles (".. strsub(tostring(timer),1,3) .. ")")
		  	end
			end
	  	if timer > 0 then
	  		return
	  	end

	  	self:Hide()
	  	
			if checktype == 1 then
		  	EPGPLoot2:DumpVersionCheckResults();
			else
				if checktype == 2 then
		  		EPGPLoot2:DumpNoodleCheckResults();
		  	end
			end
		end
	)
	
	f:Show()
	
	

		
end

function EPGPLoot2:ShowSharder()
	if EPGPLoot2_Sharder then
		self:Print(EPGPLoot2_Sharder.." is the designated disenchanter.");
	else
		self:Print("There is no designated disenchanter.");
	end
	
end

function EPGPLoot2:ResetSharder()
	self:Print(EPGPLoot2_Sharder.." is no longer the designated disenchanter.");
	EPGPLoot2_Sharder = nil
end

function EPGPLoot2:SetSharderCMD(info,value)
	if value=="" or value==nil then
		self:Print("You must specify a name.")
	else
		local name, realm = UnitName(value)
--		name = EPGPLoot2:FixUnitName(name);
		if name == nil then
			self:Print("Unable to find ".. value .. ".")
		end
		
		if UnitInRaid(name) or UnitInRaid( EPGPLoot2:FixUnitName(name) ) then
			self:Print("Setting sharder to " .. name);
			EPGPLoot2_Sharder = name
			self.db.profile.Sharder = name
			SendChatMessage("EPGPLoot2: " .. name .. " is set as disenchanter.", "RAID", nil);
		else
			self:Print("You must specify a raidmember as disenchanter.")
		end
	end
end
--
--function EPGPLoot2:SetSharder()
--	local name = _G["UIDROPDOWNMENU_INIT_MENU"].name
--	self:Print("Setting sharder to " .. name);
--	EPGPLoot2_Sharder = name
--	SendChatMessage("EPGPLoot2: " .. name .. " is set as disenchanter.", "RAID", nil);
--end

--UnitPopupButtons["SET_SHARDER"] = {
--	text = "Set as EPGPLoot2 Sharder",
--	dist = 0,
--	func = function () EPGPLoot2:SetSharder() end
--}

function EPGPLoot2:OnEnable()
    -- Called when the addon is enabled
	self:Print("EPGPLoot2 version " .. EPGPLootVersion .. " loaded.");

--	UnitPopupButtons["SET_SHARDER"].func = function() EPGPLoot2:SetSharder() end
--	tinsert(UnitPopupMenus["SELF"], 	#UnitPopupMenus["SELF"] - 1,	"SET_SHARDER")
--	tinsert(UnitPopupMenus["PARTY"], 	#UnitPopupMenus["PARTY"] - 1,	"SET_SHARDER")
--	tinsert(UnitPopupMenus["FRIEND"], 	#UnitPopupMenus["FRIEND"] - 1,	"SET_SHARDER")
--	tinsert(UnitPopupMenus["RAID"], 	#UnitPopupMenus["RAID"] - 1,	"SET_SHARDER")
--	self:SecureHook("UnitPopup_ShowMenu")
	
	self:RegisterEvent("LOOT_OPENED")
--	self:RegisterEvent("CHAT_MSG_ADDON")

	-- debug mode triggers on merchants for easy testing
	if EPGPLoot2_debug_MerchantTesting then
		self:RegisterEvent("MERCHANT_SHOW");
	end

	self:RegisterComm("epgploot2");

	EPGPloot2Progress:SetMovable(true)
	EPGPloot2Progress:EnableMouse(true)
	EPGPloot2Progress:SetScript("OnMouseDown",function()
					EPGPloot2Progress:StartMoving()
					end)
	EPGPloot2Progress:SetScript("OnMouseUp",function()
					EPGPloot2Progress:StopMovingOrSizing()
					end)
	EPGPloot2ProgressLabel1Label:SetJustifyH("RIGHT") 
	EPGPloot2ProgressLabel1Label:SetJustifyV("TOP") 
	if self.db.profile.Sharder then
		EPGPLoot2_Sharder = self.db.profile.Sharder
	end 
end

function EPGPLoot2:OnDisable()
    -- Called when the addon is disabled
end

--function EPGPLoot2:UnitPopup_ShowMenu(dropdownMenu, which, unit, name, userData, ...)
--	for i=1, UIDROPDOWNMENU_MAXBUTTONS do
--		local button = _G["DropDownList"..UIDROPDOWNMENU_MENU_LEVEL.."Button"..i];
--		if button.value == "SET_SHARDER" then
--		    button.func = UnitPopupButtons["SET_SHARDER"].func
--		end
--	end
--end


-- todo:
-- returns from loop on first failure to find item id?
-- fails for items that don't have a link (slink nil value error)
function EPGPLoot2:LOOT_OPENED()

	if self:IsML() then
		--self:Print("Picking up loot!")
		--self:SendCommMessage("epgploot2","end", "RAID");

		local EPGPLootAction = false

		-- Check if there is any loot that requires our attention.
		for index = 1, GetNumLootItems() do
			if (LootSlotHasItem(index)) then
				local iteminfo = GetLootSlotLink(index);

                if iteminfo then

                    --self:Print("iteminfo: " .. iteminfo);
                    --SendChatMessage("EPGPLoot iteminfo: " .. iteminfo, "RAID", nil);		

				    local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount = GetItemInfo(iteminfo);
				
				    -- todo: replace with GetItemIDFromItemLink
				    local item_id = select(3, sLink:find("item:(%d+):"))
				    if not item_id then return end
				    item_id = tonumber(item_id:trim())
				    if not item_id then return end
				
				    if iRarity>= self.db.profile.RarityThreshold and EPGPLoot2_ignored_items[item_id]==nil then
					    EPGPLootAction = true
				    end
				    if iRarity<self.db.profile.RarityThreshold and iRarity>1 and EPGPLoot2_Sharder~=nil then
					    if UnitInRaid(EPGPLoot2_Sharder) then	
						    --automagically send item to the Sharder, if the item is not BoP.
						
						    EPGPLoot2TooltipScan:SetHyperlink(sLink)
						    if EPGPLoot2TooltipScan:Contains(ITEM_BIND_ON_PICKUP) then
							    self:Print("Ignoring ".. sLink .." when automatic looting; the item is Bind on Pickup.")
						    else
							    EPGPLoot2:GiveLootItemToPlayer(item_id,EPGPLoot2_Sharder)
						    end
						
					    end
				    end
                end
			end
		end
		
		if EPGPLootAction then
			self:StartTheMasterLooting()
		end
		
	end
	
end

function EPGPLoot2:MERCHANT_SHOW()
	if self:IsML() then
		self:StartTheMasterLooting(true)
	end;
end;

function EPGPLoot2:OnCommReceived(prefix, message, distribution, sender)
    -- process the incoming message


    if (prefix == "epgploot2") then

--[[
        if EPGPLoot2_debug then

            for i=1,GetNumGroupMembers() do
                -- name, _ , _ , _, _ , _ , _ , _ , _ , _ , _ = GetRaidRosterInfo(i);
                name = GetUnitName( "raid".. i, true ) ;
                name = EPGPLoot2:FixUnitName(name);
                self:Print("Group members: " .. name);
            end;

            self:Print("prefix: ".. prefix);
            self:Print("message: ".. message);
            self:Print("distribution: ".. distribution);
            self:Print("sender: ".. sender);
        end

--]]
		
		local command, param = strsplit(":", message, 2);
		local numparam = 0;
		if param then
			-- item links are strings now, not numbers. todo: remove numparam
			--numparam = tonumber(param);
			numparam = param
		end;
		
--        self:Print("command: "..command);

		local from = EPGPLoot2:FixUnitName(sender);
			

		-- old versions with itemid instead of itemlink used "start"
		-- insert "item:" in front of item id's so we're compatible
		if command == "start" then
			local s = param;

			-- check for item id's we send to old versions, see masterlooter:StartTheLooting
			local isCompatibilityHack = string.find(s, "18230");
			if isCompatibilityHack then
				if EPGPLoot2_debug then
					self:Print("Ignoring old loot command from new version");
				end;
				return;
			end;

			EPGPLoot2_MasterLooterHasOldVersion = true;

			s = string.gsub(s, "FR:", "FR:item:");
			s = string.gsub(s, "RR:", "RR:item:");
			s = string.gsub(s, "NG:", "NG:item:");

			EPGPLoot2_Progress={}
			EPGPLoot2:StartRaiderLoot(from, s)
		end


		-- check for item id's we send to old versions, see masterlooter:StartTheLooting
		if (param == "18230") or (param == "116660") then
			EPGPLoot2:Print("Player " .. from .. " has an old EPGPLoot2 version");
			return;
		end;

		if command == "start2" then
			EPGPLoot2_MasterLooterHasOldVersion = false;
			EPGPLoot2_Progress={}
			EPGPLoot2:StartRaiderLoot(from,param)
		end
		
		if command == "need" then
			EPGPLoot2:NeedReceived(from,numparam)
		end
		
		if command == "pass" then
			EPGPLoot2:PassReceived(from,numparam)
		end
		
		if command == "offspec" then
			EPGPLoot2:OffspecReceived(from,numparam)
		end
		
		if command == "upgrade" then
			EPGPLoot2:UpgradeReceived(from,numparam)		
		end
		
		if command == "roll" then
			EPGPLoot2:RollReceived(from,numparam)
		end
		
		if command == "finished" then
			EPGPLoot2:FinishedReceived(from)
		end
		
		if command == "progress" then
			EPGPLoot2:UpdateProgress(from)
		end
		
		if command == "lootroundend" then
			EPGPLoot2:ForcedLootRoundEnded()
		end
		
		if command == "rollreport" then
			EPGPLoot2:RollReportFromMasterLooter(param)
		end
		
		if command == "versioncheck" then
			self:SendCommMessage("epgploot2", "versioncheckresponse:"..EPGPLootVersion, "WHISPER", from);
--			self:Print("You have EPGPLoot2 version "..EPGPLootVersion);
		end

		if command == "noodlecheck" then
			local NoodleCount=GetItemCount(101618, false, false);
			self:SendCommMessage("epgploot2", "noodlecheckresponse:"..NoodleCount, "WHISPER", from);
			self:Print("You have "..NoodleCount.." noodles");
		end

		if command == "versioncheckresponse" then
			EPGPLoot2_versionchecktable[from] = param
			if EPGPLoot2_debug then
				self:Print("response from " ..from.." "..param);
--				self:Print("vt[name] " .. EPGPLoot2_versionchecktable[from] );
			end
		end
		
		if command == "noodlecheckresponse" then
			EPGPLoot2_noodlechecktable[from] = param
			if EPGPLoot2_debug then
				self:Print("response from "..from.." "..param);
--				self:Print("vt[name] " .. EPGPLoot2_noodlechecktable[from] );
			end
		end
		
		if command == "extracmd" then
			EPGPLoot2_CanINeed = false
			if param == "4all" then
				EPGPLoot2_CanINeed=true
			else
				if string.find(param,UnitClass("player")..EPGPLoot2:GetMyTalentSpec()) then
					EPGPLoot2_CanINeed=true
				end
			end
		end
	end
end

function EPGPLoot2:GetMyTalentSpec()

	local currentSpec = GetSpecialization()
	local currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec)) or "None"
	return currentSpecName

--[[
	local i = 1 
	local spec = ""
	local mostTalents = 0
	while i <= GetNumTalentTabs() do 
		local numTalents = GetNumTalents(i) 
			if numTalents>mostTalents then
				mostTalents=numTalents
				spec=GetTalentTabInfo(i)
			end
		   i = i+1
	end
	return spec
]]--

end

-- Get ItemID from an ItemLink. Returns 0 if not found
function EPGPLoot2:GetItemIDFromItemLink(itemLink)
    local itemID = 0;

    if itemLink then
        local itemIDString = select(3, itemLink:find("item:(%d+):"));
        if itemIDString then
            itemID = tonumber(itemIDString:trim())
        end;
    end;

    return itemID;
end;
