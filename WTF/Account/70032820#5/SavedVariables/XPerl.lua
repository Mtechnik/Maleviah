
XPerlConfig = nil
XPerlConfig_Global = nil
XPerlConfigNew = {
	["global"] = {
		["highlight"] = {
			["AGGRO"] = 1,
			["SHIELD"] = 1,
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["spell"] = "Holy Light",
			},
			["Main"] = {
				["enabled"] = true,
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["spell"] = "Holy Light",
			},
			["NameFrame"] = {
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["spell"] = "Holy Light",
			},
		},
		["party"] = {
			["debuffs"] = {
				["curable"] = 0,
				["halfSize"] = 1,
				["below"] = 1,
				["size"] = 32,
			},
			["portrait"] = 1,
			["scale"] = 1.15,
			["castBar"] = {
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["portrait3D"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["values"] = 1,
			["target"] = {
				["large"] = 1,
				["size"] = 120,
			},
			["buffs"] = {
				["size"] = 22,
				["rows"] = 2,
				["castable"] = 0,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["raidpet"] = {
			["warlock"] = 1,
			["hunter"] = 1,
		},
		["target"] = {
			["debuffs"] = {
				["size"] = 29,
				["curable"] = 0,
				["big"] = 1,
			},
			["portrait"] = 1,
			["combo"] = {
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["eliteGfx"] = true,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["elite"] = true,
			["scale"] = 0.9,
			["values"] = 1,
			["buffs"] = {
				["size"] = 22,
				["rows"] = 3,
				["castable"] = 0,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["scale"] = 0.8,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
			},
			["hideframemanager"] = {
				["enable"] = 0,
			},
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
			},
			["titles"] = 1,
			["hideframecontainer"] = {
				["enable"] = 1,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["spacing"] = 0,
			["anchor"] = "TOP",
			["buffs"] = {
				["castable"] = 0,
				["inside"] = 1,
				["right"] = 1,
				["size"] = 20,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["optionsColour"] = {
			["r"] = 0.7,
			["g"] = 0.2,
			["b"] = 0.2,
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 1,
				["r"] = 0.5,
				["g"] = 0.5,
				["b"] = 0.5,
			},
			["reaction"] = {
				["tapped"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 0.5,
				},
				["enemy"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["neutral"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["unfriendly"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0,
				},
				["friend"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["none"] = {
					["r"] = 0.5,
					["g"] = 0.5,
					["b"] = 1,
				},
			},
			["classbarBright"] = 1,
			["class"] = 1,
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["r"] = 0.25,
					["g"] = 0.25,
					["b"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["r"] = 0.1,
					["g"] = 0.1,
					["b"] = 0.1,
				},
			},
			["frame"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["bar"] = {
				["rage"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["healthFull"] = {
					["r"] = 0,
					["g"] = 1,
					["b"] = 0,
				},
				["focus"] = {
					["r"] = 1,
					["g"] = 0.5,
					["b"] = 0.25,
				},
				["energy"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 0,
				},
				["mana"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 1,
				},
				["healthEmpty"] = {
					["r"] = 1,
					["g"] = 0,
					["b"] = 0,
				},
				["runic_power"] = {
					["r"] = 0,
					["g"] = 0.82,
					["b"] = 1,
				},
			},
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mana"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["size"] = 22,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["xperlOldroleicons"] = 1,
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["size"] = 22,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["minimap"] = {
			["pos"] = 186,
			["radius"] = 78,
		},
		["focus"] = {
			["portrait3D"] = 1,
			["debuffs"] = {
				["size"] = 29,
				["curable"] = 0,
				["big"] = 1,
			},
			["values"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["scale"] = 0.9,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["castBar"] = {
			},
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["hitIndicator"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["size"] = 22,
				["rows"] = 3,
				["castable"] = 0,
				["maxrows"] = 2,
			},
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mana"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["size"] = 22,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mana"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["size"] = 22,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["enable"] = 1,
				["castable"] = 0,
				["size"] = 12,
				["maxrows"] = 2,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["transparency"] = {
			["frame"] = 1,
			["text"] = 1,
		},
		["player"] = {
			["xpBar"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 25,
			},
			["scale"] = 0.9,
			["castBar"] = {
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["dockRunes"] = 1,
			["size"] = {
				["width"] = 57,
			},
			["threat"] = 1,
			["portrait3D"] = 1,
			["repBar"] = 1,
			["threatMode"] = "portraitFrame",
			["extendPortrait"] = 1,
			["values"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["size"] = 25,
				["maxrows"] = 2,
				["count"] = 40,
				["hideBlizzard"] = 1,
				["rows"] = 2,
				["wrap"] = 1,
				["cooldown"] = 1,
				["flash"] = 1,
			},
			["percent"] = 1,
		},
		["highlightDebuffs"] = {
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["tooltip"] = {
			["enable"] = 1,
			["modifier"] = "all",
		},
		["pet"] = {
			["debuffs"] = {
				["size"] = 20,
			},
			["portrait3D"] = 1,
			["scale"] = 0.7,
			["castBar"] = {
			},
			["threatMode"] = "portraitFrame",
			["hitIndicator"] = 1,
			["buffs"] = {
				["size"] = 18,
				["maxrows"] = 2,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["enable"] = 1,
				["width"] = 0,
				["size"] = 20,
			},
		},
		["buffs"] = {
			["countdown"] = 1,
			["countdownStart"] = 20,
		},
		["maximumScale"] = 1.5,
		["bar"] = {
			["texture"] = {
				"Perl v2", -- [1]
				"Interface\\Addons\\XPerl\\Images\\XPerl_StatusBar", -- [2]
			},
			["background"] = 1,
			["fadeTime"] = 0.5,
			["fat"] = 1,
		},
	},
	["savedPositions"] = {
		["Aszune"] = {
			["Wullie"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 1073.57763803821,
					["left"] = 1829.035686300627,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 79.99999234062918,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 79.99999234062918,
					["left"] = 579.6666458541502,
					["width"] = 206.0000999821441,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 733.1950000830018,
					["left"] = 425.6000415750405,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 627.5975353512447,
					["height"] = 149.9999976748339,
					["left"] = 912.3955266265375,
					["width"] = 140.0000982040759,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 909.3785278665429,
					["left"] = 561.0360352395285,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 733.1950000830018,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 733.1950000830018,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 83.42993429025799,
					["left"] = 504.7341481547099,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 614.5975785035928,
					["height"] = 123.9999964438636,
					["left"] = 817.3955887905381,
					["width"] = 330.0000439046077,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 733.1950000830018,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 733.1950000830018,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 171.1030249653536,
					["left"] = 564.1887547651252,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 837.947352630799,
					["height"] = 540.000103675055,
					["left"] = 842.0868792857856,
					["width"] = 759.5352135128261,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 733.1950000830018,
					["left"] = 304.0000296964575,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000382968541,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 733.1950000830018,
					["left"] = 60.8000059392915,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 821.7328904999358,
					["left"] = 2.046650805355081,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1045.695031865333,
					["left"] = 164.4999979166477,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 733.1950000830018,
					["left"] = 547.2000534536235,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 733.1950000830018,
					["left"] = 364.8000076243353,
				},
				["XPerl_Target"] = {
					["top"] = 62.18670008461074,
					["left"] = 1272.258903691618,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1096.795019745404,
					["left"] = 412.9999832966964,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 733.1950000830018,
					["left"] = 121.600011878583,
				},
			},
		},
	},
	["ConfigVersion"] = "3.2.1",
}
XPerlConfigSavePerCharacter = nil
