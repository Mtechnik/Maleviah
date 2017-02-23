
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Mark of the Thunderlord"] = {
			[159234] = "Interface\\Icons\\ability_thunderking_maim",
		},
		["Divine Protection"] = {
			[498] = "Interface\\Icons\\spell_holy_divineprotection",
		},
		["Gathering Clouds"] = {
			[215294] = "Interface\\Icons\\ability_shawaterelemental_swirl",
		},
		["Infusion of Light"] = {
			[54149] = "Interface\\Icons\\Ability_Paladin_InfusionofLight",
		},
		["Mark of Ysondre"] = {
			[203102] = "Interface\\Icons\\inv_misc_head_dragon_green_nightmare",
		},
		["Shadow Burst"] = {
			[204044] = "Interface\\Icons\\Spell_Shadow_ShadowBolt",
			[204040] = "Interface\\Icons\\INV_Elemental_Mote_Shadow01",
		},
		["Mark of Taerar"] = {
			[203121] = "Interface\\Icons\\inv_misc_head_dragon_black_nightmare",
		},
		["Judgment of Light"] = {
			[196941] = "Interface\\Icons\\Spell_Holy_DivineProvidence",
		},
		["Bellowing Roar"] = {
			[204078] = "Interface\\Icons\\Spell_Shadow_Charm",
		},
		["Aura of Mercy"] = {
			[183415] = "Interface\\Icons\\Spell_Holy_BlessedLife",
		},
		["Seeping Fog"] = {
			[205341] = "Interface\\Icons\\Spell_Nature_Sleep",
		},
		["Nightmare Bloom"] = {
			[207681] = "Interface\\Icons\\ability_priest_voidentropy",
		},
		["Consecration"] = {
			[188370] = "Interface\\Icons\\Spell_Holy_InnerFire",
		},
		["Magnifying Light"] = {
			[185100] = "INTERFACE\\ICONS\\inv_misc_eye_04",
		},
		["Mark of Lethon"] = {
			[203124] = "Interface\\Icons\\inv_misc_head_dragon_bronze_nightmare",
		},
		["Defiled Vines"] = {
			[203770] = "Interface\\Icons\\Spell_Nature_StrangleVines",
		},
	},
	["displays"] = {
		["Ancient Mana"] = {
			["textFlags"] = "None",
			["stacksSize"] = 10,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 15,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["barColor"] = {
				0, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Wulliee",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksFont"] = "Arial Narrow",
			["spark"] = false,
			["timerFont"] = "Arial Narrow",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = 1377394,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "None",
			["sparkOffsetX"] = 0,
			["disjunctive"] = "any",
			["customText"] = "function()\n    name, currentAmount, texture, earnedThisWeek, weeklyMax, totalMax, isDiscovered = GetCurrencyInfo(1155);\n    return string.format(\"%.0f\", (currentAmount))\nend",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = " %c",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_hide"] = "custom",
				["unevent"] = "auto",
				["custom_type"] = "event",
				["use_resting"] = true,
				["event"] = "Conditions",
				["names"] = {
				},
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom"] = "function () return true end",
				["events"] = "PLAYER_MONEY PLAYER_ENTERING_WORLD",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["borderOffset"] = 5,
			["customTextUpdate"] = "update",
			["sparkWidth"] = 10,
			["height"] = 11.512469291687,
			["timer"] = false,
			["timerFlags"] = "None",
			["numTriggers"] = 2,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["auto"] = true,
			["textSize"] = 10,
			["width"] = 7.19531440734863,
			["backgroundColor"] = {
				0.4, -- [1]
				0.4, -- [2]
				0.4, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["displayText"] = " %i %c",
			["borderSize"] = 16,
			["id"] = "Ancient Mana",
			["icon_side"] = "RIGHT",
			["timerSize"] = 10,
			["displayTextRight"] = "%i",
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkHidden"] = "NEVER",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_alive"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkRotation"] = 0,
			["frameStrata"] = 9,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["color"] = {
				0.227450980392157, -- [1]
				0.709803921568628, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["untrigger"] = {
			},
			["parent"] = "Currencies 3",
		},
		["XP WeakAura 2"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"XP Percent 2", -- [1]
				"XP Amount 2", -- [2]
				"XP Circle Progress 2", -- [3]
				"XP Level", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -737.821578979492,
			["border"] = false,
			["yOffset"] = -463.052238464355,
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["expanded"] = false,
			["borderEdge"] = "None",
			["disjunctive"] = "all",
			["borderOffset"] = 5,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "XP WeakAura 2",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Currencies 3"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Ancient Mana", -- [1]
				"Order Hall Resources 2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["yOffset"] = -354.657043457031,
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["expanded"] = false,
			["xOffset"] = -200.982299804688,
			["untrigger"] = {
			},
			["borderOffset"] = 5,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Currencies 3",
			["anchorPoint"] = "CENTER",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["borderEdge"] = "None",
		},
		["AP/AM"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"AP Percent", -- [1]
				"AP Amount", -- [2]
				"iLvl", -- [3]
				"AM Amount", -- [4]
				"Level", -- [5]
				"XP percent", -- [6]
				"AP Circle Progress", -- [7]
				"AncientManaCircle", -- [8]
				"XP Circle", -- [9]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 435.578247070313,
			["border"] = false,
			["yOffset"] = -434.155136108399,
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["expanded"] = false,
			["borderEdge"] = "None",
			["disjunctive"] = "all",
			["borderOffset"] = 5,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["id"] = "AP/AM",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Starlight Rose Counter"] = {
			["disjunctive"] = "all",
			["untrigger"] = {
				["itemName"] = 124105,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124105,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["count"] = "0",
				["events"] = "CHAT_MSG_LOOT",
				["event"] = "Item Count",
				["custom_type"] = "event",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_realm"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["yOffset"] = 522.528381347656,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -140.155456542969,
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["id"] = "Starlight Rose Counter",
			["icon"] = true,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Dreamleaf Counter"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -8.6407470703125,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124102,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["events"] = "CHAT_MSG_LOOT",
				["count"] = "0",
				["event"] = "Item Count",
				["custom_type"] = "status",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_realm"] = false,
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["selfPoint"] = "CENTER",
			["untrigger"] = {
				["itemName"] = 124102,
			},
			["disjunctive"] = "all",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Dreamleaf Counter",
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -22.3436889648438,
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Dreamleaf\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["icon"] = true,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["AP Percent"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				1, -- [1]
				0.584313725490196, -- [2]
				0.0431372549019608, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local _,_,_,spendPower,currentPower,currentTraits = C_ArtifactUI.GetEquippedArtifactInfo();\n    if spendPower ~= nill then\n        local numTraitsLearnable, power, powerForNextTrait = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(currentTraits, currentPower);\n        return string.format(\"%d%s\", currentPower / powerForNextTrait * 100, \"%%\")\n    else\n        return \"Artifact\"\n    end\nend\n\n\n\n",
			["yOffset"] = 25,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "all",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["justify"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 40.293758392334,
			["height"] = 15.8296241760254,
			["id"] = "AP Percent",
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Fjarnskaggl Counter"] = {
			["xOffset"] = -72.1089477539063,
			["untrigger"] = {
				["itemName"] = 124104,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124104,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["events"] = "CHAT_MSG_LOOT",
				["count"] = "0",
				["event"] = "Item Count",
				["custom_type"] = "event",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_realm"] = false,
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Fjarnskaggl\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "Fjarnskaggl Counter",
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["disjunctive"] = "all",
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["icon"] = true,
			["yOffset"] = -8.640625,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Judgment of Light Debuffing Target"] = {
			["textFlags"] = "None",
			["stacksSize"] = 16,
			["xOffset"] = -188.036437988281,
			["stacksFlags"] = "None",
			["yOffset"] = -294.718078613281,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["spellName"] = "183778",
			["icon_color"] = {
				1, -- [1]
				0.988235294117647, -- [2]
				1, -- [3]
				0.610401749610901, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.956862745098039, -- [1]
				0.549019607843137, -- [2]
				0.729411764705882, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["sparkDesaturate"] = false,
			["texture"] = "Glamour5",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = "Interface\\Icons\\spell_holy_divineprovidence",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
			},
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					196941, -- [1]
				},
				["names"] = {
					"Judgment of Light", -- [1]
				},
				["unit"] = "target",
				["use_unit"] = true,
				["debuffType"] = "HARMFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["timer"] = true,
			["timerFlags"] = "None",
			["height"] = 186.857559204102,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["barInFront"] = true,
			["inverse"] = false,
			["textSize"] = 24,
			["sparkWidth"] = 10,
			["border"] = false,
			["borderEdge"] = "None",
			["width"] = 56.6999053955078,
			["borderSize"] = 16,
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["icon"] = true,
			["id"] = "Judgment of Light Debuffing Target",
			["sparkHeight"] = 30,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 24,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["additional_triggers"] = {
			},
			["sparkHidden"] = "NEVER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["customTextUpdate"] = "update",
			["borderOffset"] = 5,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["stacksFont"] = "Friz Quadrata TT",
			["cooldown"] = true,
			["fontFlags"] = "OUTLINE",
		},
		["HonorPrestige"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return string.format(\"Prestige: %d\", UnitPrestige(\"player\"))\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 18,
			["regionType"] = "text",
			["parent"] = "Honor",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "all",
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventPrefix"] = "SPELL",
				["event"] = "Health",
				["use_unit"] = true,
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return UnitLevel(\"player\") == 110\nend\n\n\n\n",
				["spellIds"] = {
				},
				["check"] = "update",
				["unit"] = "player",
				["custom_type"] = "status",
				["custom_hide"] = "timed",
			},
			["id"] = "HonorPrestige",
			["frameStrata"] = 1,
			["width"] = 10.0734062194824,
			["anchorFrameType"] = "SCREEN",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8296070098877,
			["selfPoint"] = "BOTTOM",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n",
			},
		},
		["XP Circle Progress 2"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "function()\n    return UnitXP(\"player\"), UnitXPMax(\"player\"), true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return true\nend\n\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 150,
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["parent"] = "XP WeakAura 2",
			["crop_y"] = 0.41,
			["mirror"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["regionType"] = "progresstexture",
			["crop"] = 0.41,
			["blendMode"] = "ADD",
			["anchorPoint"] = "CENTER",
			["inverse"] = false,
			["init_completed"] = 1,
			["yOffset"] = 0,
			["startAngle"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["additional_triggers"] = {
			},
			["compress"] = false,
			["id"] = "XP Circle Progress 2",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 150,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["color"] = {
			},
			["backgroundOffset"] = 2,
		},
		["AM Amount"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local _,currentAncientMana,_,_,_,totalAncientMana,_,_ = GetCurrencyInfo(1155)\n    return string.format(\"%d / %d\", currentAncientMana, totalAncientMana)\nend",
			["yOffset"] = -30,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "AM Amount",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 8.63437652587891,
			["height"] = 11.5124530792236,
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "==",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.733333333333333, -- [1]
				0.580392156862745, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["XP WeakAura"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"XP Percent", -- [1]
				"XP Amount", -- [2]
				"XP Circle Progress", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["yOffset"] = 376.840942382813,
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["expanded"] = false,
			["untrigger"] = {
			},
			["xOffset"] = 672.328308105469,
			["borderOffset"] = 5,
			["id"] = "XP WeakAura",
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["borderEdge"] = "None",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["XP Amount"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "function()\n    return string.format(\"%d / %d\", UnitXP(\"player\"), UnitXPMax(\"player\"))\nend",
			["yOffset"] = -30.0000610351563,
			["regionType"] = "text",
			["parent"] = "XP WeakAura",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "XP Amount",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 8.63437652587891,
			["height"] = 11.5123672485352,
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["load"] = {
				["use_never"] = false,
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Willbur",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["level_operator"] = "<",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["Order Hall Resources 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 10,
			["xOffset"] = 0,
			["displayText"] = " %i %c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.4, -- [1]
				0.4, -- [2]
				0.4, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["barColor"] = {
				1, -- [1]
				0.992156862745098, -- [2]
				0.105882352941176, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Wulliee",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = true,
			["texture"] = "Blizzard",
			["textFont"] = "Arial Narrow",
			["stacksFont"] = "Arial Narrow",
			["auto"] = true,
			["timerFont"] = "Arial Narrow",
			["alpha"] = 1,
			["borderInset"] = 11,
			["displayIcon"] = "1397630",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "None",
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "function()\n    name, currentAmount, texture, earnedThisWeek, weeklyMax, totalMax, isDiscovered = GetCurrencyInfo(1220);\n    return string.format(\"%.0f\", (currentAmount))\nend",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = " %c",
			["spark"] = false,
			["sparkRotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_hide"] = "custom",
				["unevent"] = "auto",
				["use_resting"] = true,
				["custom_type"] = "event",
				["event"] = "Conditions",
				["names"] = {
				},
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom"] = "function () return true end",
				["events"] = "PLAYER_MONEY PLAYER_ENTERING_WORLD",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["customTextUpdate"] = "update",
			["stickyDuration"] = false,
			["icon"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = false,
			["timerFlags"] = "None",
			["sparkWidth"] = 10,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["width"] = 7.19531440734863,
			["borderOffset"] = 5,
			["color"] = {
				1, -- [1]
				0.76078431372549, -- [2]
				0.313725490196078, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_alive"] = true,
						["use_unit"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["borderSize"] = 16,
			["sparkOffsetX"] = 0,
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%i",
			["justify"] = "LEFT",
			["sparkHeight"] = 30,
			["stacksFlags"] = "None",
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 10,
			["id"] = "Order Hall Resources 2",
			["sparkHidden"] = "NEVER",
			["height"] = 11.512469291687,
			["frameStrata"] = 9,
			["anchorFrameType"] = "SCREEN",
			["textSize"] = 10,
			["zoom"] = 0,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["untrigger"] = {
			},
			["parent"] = "Currencies 3",
		},
		["AncientManaCircle"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["foregroundColor"] = {
				0.27843137254902, -- [1]
				0.254901960784314, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local _,currentAncientMana,_,_,_,totalAncientMana,_,_ = GetCurrencyInfo(1155);\n    return currentAncientMana, totalAncientMana, true\nend",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    local am = select(2,GetCurrencyInfo(1155));\n    return am\nend\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 200,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "==",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["inverse"] = false,
			["parent"] = "AP/AM",
			["mirror"] = false,
			["crop_y"] = 0.41,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["blendMode"] = "ADD",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["additional_triggers"] = {
			},
			["compress"] = false,
			["id"] = "AncientManaCircle",
			["startAngle"] = 0,
			["frameStrata"] = 1,
			["width"] = 200,
			["color"] = {
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["crop"] = 0.41,
			["backgroundOffset"] = 2,
		},
		["Legion Herb Counter"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Fjarnskaggl Counter", -- [1]
				"Felwort", -- [2]
				"FoxFlower Counter", -- [3]
				"Dreamleaf Counter", -- [4]
				"Aethril counter", -- [5]
				"Starlight Rose Counter", -- [6]
			},
			["disjunctive"] = "all",
			["yOffset"] = -268.989196777344,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["stagger"] = 0,
			["height"] = 39.6250610351563,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["additional_triggers"] = {
			},
			["id"] = "Legion Herb Counter",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["xOffset"] = 786.227600097656,
			["numTriggers"] = 1,
			["align"] = "CENTER",
			["rotation"] = 0,
			["radius"] = 200,
			["selfPoint"] = "CENTER",
			["width"] = 241.657958984375,
		},
		["iLvl"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 14,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local longilvl, longequippedilvl = GetAverageItemLevel(\"player\");\n    local decimal = 1;\n    local ilvl = math.floor((longilvl * 10) + 0.5) / (10^decimal );\n    local equippedilvl = math.floor((longequippedilvl * 10) + 0.5) / (10^decimal );\n    \n    return equippedilvl .. \" / \" .. ilvl\nend",
			["yOffset"] = -8,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				0, -- [1]
				0.0588235294117647, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "iLvl",
			["justify"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 97.8560028076172,
			["height"] = 14.3905611038208,
			["additional_triggers"] = {
			},
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "100",
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Felwort"] = {
			["xOffset"] = -123.905883789063,
			["untrigger"] = {
				["itemName"] = 124106,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124106,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["events"] = "CHAT_MSG_LOOT",
				["count"] = "0",
				["event"] = "Item Count",
				["custom_type"] = "event",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_realm"] = false,
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Felwort\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "Felwort",
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["disjunctive"] = "all",
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["icon"] = true,
			["yOffset"] = -8.6407470703125,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Aethril counter"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -7.625,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124101,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["events"] = "CHAT_MSG_LOOT",
				["count"] = "0",
				["event"] = "Item Count",
				["custom_type"] = "event",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_realm"] = false,
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["selfPoint"] = "CENTER",
			["untrigger"] = {
				["itemName"] = 124101,
			},
			["disjunctive"] = "all",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "Aethril counter",
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 30.46875,
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Aethril\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["icon"] = true,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Level"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    return string.format(\"%d\", UnitLevel(\"player\"))\nend",
			["yOffset"] = -30,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				0.0117647058823529, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Level",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 31.6592483520508,
			["height"] = 15.8296070098877,
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["AP Circle Progress"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["foregroundColor"] = {
				1, -- [1]
				0.72156862745098, -- [2]
				0.0901960784313726, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local _,_,_,spendPower,currentPower,currentTraits = C_ArtifactUI.GetEquippedArtifactInfo();\n    if spendPower ~= nill then\n        local numTraitsLearnable, power, powerForNextTrait = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(currentTraits, currentPower);\n        return currentPower,  powerForNextTrait, true\n    else\n        return 0,  100, true\n    end\nend",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return true\nend\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 150,
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["parent"] = "AP/AM",
			["crop_y"] = 0.41,
			["mirror"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["crop"] = 0.41,
			["regionType"] = "progresstexture",
			["blendMode"] = "ADD",
			["anchorPoint"] = "CENTER",
			["inverse"] = false,
			["init_completed"] = 1,
			["yOffset"] = 0,
			["startAngle"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["id"] = "AP Circle Progress",
			["compress"] = false,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 150,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["color"] = {
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["disjunctive"] = "all",
			["backgroundOffset"] = 2,
		},
		["XP Level"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 38,
			["xOffset"] = -4.0931396484375,
			["displayText"] = "%c\n",
			["customText"] = "function()\n    return string.format(\"%d\", UnitLevel(\"player\"))\nend",
			["yOffset"] = -14.3262634277344,
			["regionType"] = "text",
			["parent"] = "XP WeakAura 2",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				0, -- [1]
				1, -- [2]
				0.0156862745098039, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "XP Level",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["width"] = 64.7575073242188,
			["height"] = 74.8309097290039,
			["trigger"] = {
				["type"] = "status",
				["use_alwaystrue"] = true,
				["unevent"] = "auto",
				["event"] = "Conditions",
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
				["spellIds"] = {
				},
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["custom_hide"] = "timed",
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["XP Circle"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["disjunctive"] = "all",
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.0823529411764706, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    return UnitXP(\"player\"), UnitXPMax(\"player\"), true\nend",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return true\nend\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 200,
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["parent"] = "AP/AM",
			["xOffset"] = 0,
			["mirror"] = false,
			["regionType"] = "progresstexture",
			["crop"] = 0.41,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["blendMode"] = "ADD",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["init_completed"] = 1,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["additional_triggers"] = {
			},
			["compress"] = false,
			["id"] = "XP Circle",
			["startAngle"] = 0,
			["frameStrata"] = 1,
			["width"] = 200,
			["color"] = {
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["crop_y"] = 0.41,
			["backgroundOffset"] = 2,
		},
		["Honor"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"HonorCircle", -- [1]
				"HonorAmt", -- [2]
				"HonorPrestige", -- [3]
				"HonorLevel", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["expanded"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 5,
			["yOffset"] = -466.254104614258,
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["id"] = "Honor",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -577.061401367188,
		},
		["XP Circle Progress"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "function()\n    return UnitXP(\"player\"), UnitXPMax(\"player\"), true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return true\nend\n\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 150,
			["load"] = {
				["use_never"] = false,
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Willbur",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["level_operator"] = "<",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["mirror"] = false,
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["regionType"] = "progresstexture",
			["color"] = {
			},
			["blendMode"] = "ADD",
			["disjunctive"] = "all",
			["parent"] = "XP WeakAura",
			["crop"] = 0.41,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["width"] = 150,
			["alpha"] = 1,
			["startAngle"] = 0,
			["compress"] = false,
			["id"] = "XP Circle Progress",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["crop_y"] = 0.41,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["selfPoint"] = "CENTER",
			["backgroundOffset"] = 2,
		},
		["XP Amount 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "function()\n    return string.format(\"%d / %d\", UnitXP(\"player\"), UnitXPMax(\"player\"))\nend",
			["yOffset"] = -29.6761016845703,
			["regionType"] = "text",
			["parent"] = "XP WeakAura 2",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["untrigger"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "XP Amount 2",
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 109.368270874023,
			["height"] = 11.5124397277832,
			["additional_triggers"] = {
			},
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -2.04656982421875,
		},
		["AP Amount"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 10,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    local _,_,_,spendPower,currentPower,currentTraits = C_ArtifactUI.GetEquippedArtifactInfo();\n    if spendPower ~= nill then\n        local numTraitsLearnable, power, powerForNextTrait = MainMenuBar_GetNumArtifactTraitsPurchasableFromXP(currentTraits, currentPower);\n        return string.format(\"%d / %d\", currentPower, powerForNextTrait)\n    else\n        return\"not equipped\"\n    end\nend",
			["yOffset"] = 10,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				0.619607843137255, -- [2]
				0.0431372549019608, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["justify"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["id"] = "AP Amount",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 60.440372467041,
			["height"] = 10.073390007019,
			["additional_triggers"] = {
			},
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["XP percent"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-- Weakaura & Lua-code by Katoma\n-- Visit http://blackring.net for updates\n\nfunction()\n    return string.format(\"%d%s\", UnitXP(\"player\") / UnitXPMax(\"player\") * 100, \"%%\")\nend\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -45,
			["regionType"] = "text",
			["parent"] = "AP/AM",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "XP percent",
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["untrigger"] = {
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 33.0983085632324,
			["height"] = 11.5124349594116,
			["additional_triggers"] = {
			},
			["load"] = {
				["use_level"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.0470588235294118, -- [1]
				1, -- [2]
				0.0705882352941177, -- [3]
				1, -- [4]
			},
		},
		["XP Percent"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 38,
			["disjunctive"] = "all",
			["displayText"] = "%c%",
			["customText"] = "function()\n    return string.format(\"%d\", UnitXP(\"player\") / UnitXPMax(\"player\") * 100)\nend",
			["yOffset"] = -15,
			["regionType"] = "text",
			["parent"] = "XP WeakAura",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 41.7328224182129,
			["height"] = 37.4153633117676,
			["id"] = "XP Percent",
			["load"] = {
				["use_never"] = false,
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Willbur",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["level_operator"] = "<",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["XP Percent 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 25,
			["xOffset"] = -2.046630859375,
			["displayText"] = "%c%",
			["customText"] = "function()\n    return string.format(\"%d\", UnitXP(\"player\") / UnitXPMax(\"player\") * 100)\nend",
			["yOffset"] = -17.0465774536133,
			["regionType"] = "text",
			["parent"] = "XP WeakAura 2",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "all",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "XP Percent 2",
			["justify"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Continuum Medium",
			["numTriggers"] = 1,
			["width"] = 61.8794288635254,
			["height"] = 24.4639492034912,
			["trigger"] = {
				["use_alwaystrue"] = true,
				["level_operator"] = "<",
				["use_character"] = false,
				["unit"] = "player",
				["level"] = "111",
				["use_powertype"] = false,
				["custom_hide"] = "timed",
				["type"] = "status",
				["use_level"] = false,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Conditions",
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_unit"] = true,
			},
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = "<",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level"] = "110",
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["FoxFlower Counter"] = {
			["xOffset"] = 77.18701171875,
			["untrigger"] = {
				["itemName"] = 124103,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_message"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 124103,
				["use_count"] = true,
				["duration"] = "8",
				["use_unit"] = true,
				["use_includeCharges"] = false,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["type"] = "status",
				["names"] = {
				},
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_itemName"] = true,
				["unit"] = "player",
				["use_includeBank"] = true,
				["spellIds"] = {
				},
				["custom"] = "function(m, t)\n    rv = string.find(t, \"Starlight Rose\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
				["events"] = "CHAT_MSG_LOOT",
				["count"] = "0",
				["event"] = "Item Count",
				["custom_type"] = "event",
				["count_operator"] = ">",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 39.6250686645508,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = true,
				["use_realm"] = false,
				["name"] = "Jockpie",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["realm"] = "Broken Isles",
			},
			["fontSize"] = 24,
			["displayStacks"] = "%p",
			["regionType"] = "icon",
			["parent"] = "Legion Herb Counter",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "CHAT_MSG_LOOT",
						["custom"] = "function(m, t)\n    rv = string.find(t, \"Foxflower\")\n    if rv ~= nil then\n        return true\n    else\n        return false\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "FoxFlower Counter",
			["inverse"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["disjunctive"] = "all",
			["width"] = 38.6096458435059,
			["numTriggers"] = 2,
			["icon"] = true,
			["yOffset"] = -5.5938720703125,
			["displayIcon"] = 1387619,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HonorLevel"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return string.format(\"Honor Level: %d\", UnitHonorLevel(\"player\"))\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -22,
			["regionType"] = "text",
			["parent"] = "Honor",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "all",
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["event"] = "Chat Message",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["custom"] = "function()\n    return UnitLevel(\"player\") == 110\nend\n\n\n\n",
				["subeventSuffix"] = "_CAST_START",
				["check"] = "update",
				["spellIds"] = {
				},
				["custom_type"] = "status",
				["custom_hide"] = "timed",
			},
			["id"] = "HonorLevel",
			["frameStrata"] = 1,
			["width"] = 10.0734062194824,
			["anchorFrameType"] = "SCREEN",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8296155929565,
			["selfPoint"] = "BOTTOM",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n",
			},
		},
		["Consecration CD"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -246.335876464844,
			["yOffset"] = -302.903121948242,
			["foregroundColor"] = {
				0.172549019607843, -- [1]
				0.0196078431372549, -- [2]
				0.949019607843137, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["backgroundColor"] = {
				0.501960784313726, -- [1]
				0.501960784313726, -- [2]
				0.501960784313726, -- [3]
				0, -- [4]
			},
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Spell)",
				["subeventPrefix"] = "SPELL",
				["realSpellName"] = "Consecration",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["showOn"] = "showAlways",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["spellName"] = 26573,
			},
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 100,
			["rotate"] = true,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
			["fontSize"] = 12,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_Smooth_Border",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stickyDuration"] = false,
			["mirror"] = false,
			["anchorPoint"] = "CENTER",
			["regionType"] = "progresstexture",
			["inverse"] = false,
			["blendMode"] = "BLEND",
			["untrigger"] = {
				["showOn"] = "showAlways",
				["spellName"] = 26573,
			},
			["startAngle"] = 0,
			["init_completed"] = 1,
			["anchorFrameType"] = "SCREEN",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_Smooth",
			["alpha"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "Consecration CD",
			["compress"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
							"Consecration", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["width"] = 100,
			["rotation"] = 0,
			["color"] = {
				0.854901960784314, -- [1]
				0.733333333333333, -- [2]
				0.192156862745098, -- [3]
				0.75, -- [4]
			},
			["numTriggers"] = 2,
			["crop"] = 0.41,
			["orientation"] = "VERTICAL",
			["crop_x"] = 0.41,
			["desaturateForeground"] = false,
			["backgroundOffset"] = 2,
		},
		["HonorCircle"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
			},
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
			["foregroundColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = -10,
			["sameTexture"] = true,
			["desaturateForeground"] = false,
			["endAngle"] = 360,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "function()\n    local h = UnitHonor(\"player\")\n    local hNext = UnitHonorMax(\"player\")\n    return h, hNext, true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["names"] = {
				},
				["spellIds"] = {
				},
				["unit"] = "player",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return UnitLevel(\"player\") == 110\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
				["custom_hide"] = "timed",
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["height"] = 150,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["level"] = "100",
				["use_level"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["foregroundTexture"] = "Spells\\AURARUNE256",
			["inverse"] = false,
			["parent"] = "Honor",
			["mirror"] = false,
			["xOffset"] = 0,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["blendMode"] = "ADD",
			["disjunctive"] = "all",
			["crop"] = 0.41,
			["anchorPoint"] = "CENTER",
			["yOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["startAngle"] = 0,
			["compress"] = false,
			["additional_triggers"] = {
			},
			["id"] = "HonorCircle",
			["frameStrata"] = 1,
			["width"] = 150,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["crop_y"] = 0.41,
			["backgroundOffset"] = 2,
		},
		["Infusion of Light"] = {
			["xOffset"] = -189.571472167969,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["subEventPrefix"] = "SPELL",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					54149, -- [1]
				},
				["spellName"] = 54149,
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Infusion of Light", -- [1]
				},
				["use_unit"] = true,
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["stacksPoint"] = "BOTTOMRIGHT",
			["spellName"] = "53576",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = false,
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = -171.152191162109,
			["width"] = 64,
			["inverse"] = false,
			["id"] = "Infusion of Light",
			["stickyDuration"] = false,
			["displayIcon"] = "Interface\\Icons\\ability_paladin_infusionoflight",
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["HonorAmt"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    local h = UnitHonor(\"player\")\n    local hNext = UnitHonorMax(\"player\")\n    return string.format(\"%d / %d\", h, hNext)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -2,
			["regionType"] = "text",
			["parent"] = "Honor",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["disjunctive"] = "all",
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["check"] = "update",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return UnitLevel(\"player\") == 110\nend",
				["custom_hide"] = "timed",
			},
			["id"] = "HonorAmt",
			["frameStrata"] = 1,
			["width"] = 10.0734062194824,
			["anchorFrameType"] = "SCREEN",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["anchorPoint"] = "CENTER",
			["height"] = 15.8296070098877,
			["selfPoint"] = "BOTTOM",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
			},
		},
	},
	["login_squelch_time"] = 5,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -1073.6787109375,
		["yOffset"] = -59.2066650390625,
		["height"] = 492,
		["width"] = 630.000061035156,
	},
	["talent_cache"] = {
		["HUNTER"] = {
			{
				["name"] = "Posthaste",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_posthaste",
			}, -- [1]
			{
				["name"] = "Narrow Escape",
				["icon"] = "Interface\\Icons\\INV_Misc_Web_01",
			}, -- [2]
			{
				["name"] = "Crouching Tiger, Hidden Chimaera",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_pet_chimera",
			}, -- [3]
			{
				["name"] = "Binding Shot",
				["icon"] = "INTERFACE\\ICONS\\spell_shaman_bindelemental",
			}, -- [4]
			{
				["name"] = "Wyvern Sting",
				["icon"] = "Interface\\Icons\\INV_Spear_02",
			}, -- [5]
			{
				["name"] = "Intimidation",
				["icon"] = "Interface\\Icons\\Ability_Devour",
			}, -- [6]
			{
				["name"] = "Exhilaration",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_onewithnature",
			}, -- [7]
			{
				["name"] = "Iron Hawk",
				["icon"] = "Interface\\Icons\\spell_hunter_aspectoftheironhawk",
			}, -- [8]
			{
				["name"] = "Spirit Bond",
				["icon"] = "Interface\\Icons\\Ability_Hunter_AspectMastery",
			}, -- [9]
			{
				["name"] = "Steady Focus",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ImprovedSteadyShot",
			}, -- [10]
			{
				["name"] = "Dire Beast",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_sickem",
			}, -- [11]
			{
				["name"] = "Thrill of the Hunt",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ThrilloftheHunt",
			}, -- [12]
			{
				["name"] = "A Murder of Crows",
				["icon"] = "Interface\\Icons\\ability_hunter_murderofcrows",
			}, -- [13]
			{
				["name"] = "Blink Strikes",
				["icon"] = "Interface\\Icons\\Spell_Arcane_Arcane04",
			}, -- [14]
			{
				["name"] = "Stampede",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_bestialdiscipline",
			}, -- [15]
			{
				["name"] = "Glaive Toss",
				["icon"] = "Interface\\Icons\\ability_glaivetoss",
			}, -- [16]
			{
				["name"] = "Powershot",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_resistanceisfutile",
			}, -- [17]
			{
				["name"] = "Barrage",
				["icon"] = "Interface\\Icons\\Ability_Hunter_RapidRegeneration",
			}, -- [18]
			{
				["name"] = "Exotic Munitions",
				["icon"] = "Interface\\Icons\\inv_ammo_bullet_07",
			}, -- [19]
			{
				["name"] = "Focusing Shot",
				["icon"] = "Interface\\Icons\\spell_hunter_focusingshot",
			}, -- [20]
			{
				["name"] = "Lone Wolf",
				["icon"] = "Interface\\Icons\\spell_hunter_lonewolf",
			}, -- [21]
		},
		["WARRIOR"] = {
			{
				["name"] = "Juggernaut",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BullRush",
			}, -- [1]
			{
				["name"] = "Double Time",
				["icon"] = "Interface\\Icons\\INV_Misc_Horn_04",
			}, -- [2]
			{
				["name"] = "Warbringer",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Warbringer",
			}, -- [3]
			{
				["name"] = "Enraged Regeneration",
				["icon"] = "Interface\\Icons\\Ability_Warrior_FocusedRage",
			}, -- [4]
			{
				["name"] = "Second Wind",
				["icon"] = "Interface\\Icons\\Ability_Hunter_Harass",
			}, -- [5]
			{
				["name"] = "Impending Victory",
				["icon"] = "Interface\\Icons\\spell_impending_victory",
			}, -- [6]
			{
				["name"] = "Furious Strikes",
				["icon"] = "INTERFACE\\ICONS\\warrior_talent_icon_furyintheblood",
			}, -- [7]
			{
				["name"] = "Sudden Death",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ImprovedDisciplines",
			}, -- [8]
			{
				["name"] = "Unquenchable Thirst",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BloodBath",
			}, -- [9]
			{
				["name"] = "Storm Bolt",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_stormbolt",
			}, -- [10]
			{
				["name"] = "Shockwave",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Shockwave",
			}, -- [11]
			{
				["name"] = "Dragon Roar",
				["icon"] = "Interface\\Icons\\ability_warrior_dragonroar",
			}, -- [12]
			{
				["name"] = "Mass Spell Reflection",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ShieldBreak",
			}, -- [13]
			{
				["name"] = "Safeguard",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Safeguard",
			}, -- [14]
			{
				["name"] = "Vigilance",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Vigilance",
			}, -- [15]
			{
				["name"] = "Avatar",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_avatar",
			}, -- [16]
			{
				["name"] = "Bloodbath",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BloodBath",
			}, -- [17]
			{
				["name"] = "Bladestorm",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Bladestorm",
			}, -- [18]
			{
				["name"] = "Anger Management",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_angermanagement",
			}, -- [19]
			{
				["name"] = "Ravager",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_ravager",
			}, -- [20]
			{
				["name"] = "Siegebreaker",
				["icon"] = "Interface\\Icons\\inv_mace_2h_draenorguard_b_01_horde",
			}, -- [21]
		},
		["ROGUE"] = {
			{
				["name"] = "Nightstalker",
				["icon"] = "Interface\\Icons\\Ability_Stealth",
			}, -- [1]
			{
				["name"] = "Subterfuge",
				["icon"] = "Interface\\Icons\\rogue_subterfuge",
			}, -- [2]
			{
				["name"] = "Shadow Focus",
				["icon"] = "Interface\\Icons\\rogue_shadowfocus",
			}, -- [3]
			{
				["name"] = "Deadly Throw",
				["icon"] = "Interface\\Icons\\INV_ThrowingKnife_06",
			}, -- [4]
			{
				["name"] = "Nerve Strike",
				["icon"] = "Interface\\Icons\\rogue_nerve _strike",
			}, -- [5]
			{
				["name"] = "Combat Readiness",
				["icon"] = "INTERFACE\\ICONS\\ability_rogue_combatreadiness",
			}, -- [6]
			{
				["name"] = "Cheat Death",
				["icon"] = "Interface\\Icons\\Ability_Rogue_CheatDeath",
			}, -- [7]
			{
				["name"] = "Leeching Poison",
				["icon"] = "Interface\\Icons\\rogue_leeching_poison",
			}, -- [8]
			{
				["name"] = "Elusiveness",
				["icon"] = "Interface\\Icons\\Ability_Rogue_TurntheTables",
			}, -- [9]
			{
				["name"] = "Cloak and Dagger",
				["icon"] = "Interface\\Icons\\Ability_Rogue_UnfairAdvantage",
			}, -- [10]
			{
				["name"] = "Shadowstep",
				["icon"] = "Interface\\Icons\\Ability_Rogue_Shadowstep",
			}, -- [11]
			{
				["name"] = "Burst of Speed",
				["icon"] = "Interface\\Icons\\rogue_burstofspeed",
			}, -- [12]
			{
				["name"] = "Prey on the Weak",
				["icon"] = "Interface\\Icons\\Ability_Rogue_PreyontheWeak",
			}, -- [13]
			{
				["name"] = "Internal Bleeding",
				["icon"] = "Interface\\Icons\\Ability_Rogue_BloodSplatter",
			}, -- [14]
			{
				["name"] = "Dirty Tricks",
				["icon"] = "Interface\\Icons\\ability_rogue_dirtydeeds",
			}, -- [15]
			{
				["name"] = "Shuriken Toss",
				["icon"] = "INTERFACE\\ICONS\\inv_throwingknife_07",
			}, -- [16]
			{
				["name"] = "Marked for Death",
				["icon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			}, -- [17]
			{
				["name"] = "Anticipation",
				["icon"] = "Interface\\Icons\\Ability_Rogue_SlaughterfromtheShadows",
			}, -- [18]
			{
				["name"] = "Venom Rush",
				["icon"] = "Interface\\Icons\\rogue_venomzest",
			}, -- [19]
			{
				["name"] = "Shadow Reflection",
				["icon"] = "Interface\\Icons\\rogue_shadow_reflection",
			}, -- [20]
			{
				["name"] = "Death from Above",
				["icon"] = "Interface\\Icons\\spell_rogue_deathfromabove",
			}, -- [21]
		},
		["MAGE"] = {
			{
				["name"] = "Evanesce",
				["icon"] = "Interface\\Icons\\Ability_Mage_NetherWindPresence",
			}, -- [1]
			{
				["name"] = "Blazing Speed",
				["icon"] = "Interface\\Icons\\Spell_Fire_BurningSpeed",
			}, -- [2]
			{
				["name"] = "Ice Floes",
				["icon"] = "Interface\\Icons\\spell_mage_iceflows",
			}, -- [3]
			{
				["name"] = "Alter Time",
				["icon"] = "Interface\\Icons\\spell_mage_altertime",
			}, -- [4]
			{
				["name"] = "Flameglow",
				["icon"] = "Interface\\Icons\\INV_Elemental_Primal_Fire",
			}, -- [5]
			{
				["name"] = "Ice Barrier",
				["icon"] = "Interface\\Icons\\Spell_Ice_Lament",
			}, -- [6]
			{
				["name"] = "Ring of Frost",
				["icon"] = "INTERFACE\\ICONS\\spell_frost_ring of frost",
			}, -- [7]
			{
				["name"] = "Ice Ward",
				["icon"] = "Interface\\Icons\\Spell_Frost_FrostWard",
			}, -- [8]
			{
				["name"] = "Frostjaw",
				["icon"] = "Interface\\Icons\\ability_mage_frostjaw",
			}, -- [9]
			{
				["name"] = "Greater Invisibility",
				["icon"] = "Interface\\Icons\\ability_mage_greaterinvisibility",
			}, -- [10]
			{
				["name"] = "Cauterize",
				["icon"] = "Interface\\Icons\\spell_fire_rune",
			}, -- [11]
			{
				["name"] = "Cold Snap",
				["icon"] = "Interface\\Icons\\Spell_Frost_WizardMark",
			}, -- [12]
			{
				["name"] = "Living Bomb",
				["icon"] = "Interface\\Icons\\Ability_Mage_LivingBomb",
			}, -- [13]
			{
				["name"] = "Unstable Magic",
				["icon"] = "Interface\\Icons\\spell_mage_unstablemagic",
			}, -- [14]
			{
				["name"] = "Blast Wave",
				["icon"] = "Interface\\Icons\\Spell_Holy_Excorcism_02",
			}, -- [15]
			{
				["name"] = "Mirror Image",
				["icon"] = "Interface\\Icons\\Spell_Magic_LesserInvisibilty",
			}, -- [16]
			{
				["name"] = "Rune of Power",
				["icon"] = "Interface\\Icons\\spell_mage_runeofpower",
			}, -- [17]
			{
				["name"] = "Incanter's Flow",
				["icon"] = "Interface\\Icons\\Ability_Mage_IncantersAbsorbtion",
			}, -- [18]
			{
				["name"] = "Kindling",
				["icon"] = "Interface\\Icons\\spell_mage_kindling",
			}, -- [19]
			{
				["name"] = "Prismatic Crystal",
				["icon"] = "Interface\\Icons\\spell_mage_focusingcrystal",
			}, -- [20]
			{
				["name"] = "Meteor",
				["icon"] = "Interface\\Icons\\spell_mage_meteor",
			}, -- [21]
		},
		["PRIEST"] = {
			{
				["name"] = "Desperate Prayer",
				["icon"] = "Interface\\Icons\\Spell_Holy_TestOfFaith",
			}, -- [1]
			{
				["name"] = "Spectral Guise",
				["icon"] = "Interface\\Icons\\spell_priest_spectralguise",
			}, -- [2]
			{
				["name"] = "Angelic Bulwark",
				["icon"] = "Interface\\Icons\\ability_priest_angelicbulwark",
			}, -- [3]
			{
				["name"] = "Body and Soul",
				["icon"] = "Interface\\Icons\\Spell_Holy_SymbolOfHope",
			}, -- [4]
			{
				["name"] = "Angelic Feather",
				["icon"] = "Interface\\Icons\\ability_priest_angelicfeather",
			}, -- [5]
			{
				["name"] = "Phantasm",
				["icon"] = "Interface\\Icons\\ability_priest_phantasm",
			}, -- [6]
			{
				["name"] = "Surge of Light",
				["icon"] = "Interface\\Icons\\Spell_Holy_SurgeOfLight",
			}, -- [7]
			{
				["name"] = "Mindbender",
				["icon"] = "Interface\\Icons\\Spell_Shadow_SoulLeech_3",
			}, -- [8]
			{
				["name"] = "Power Word: Solace",
				["icon"] = "Interface\\Icons\\ability_priest_flashoflight",
			}, -- [9]
			{
				["name"] = "Void Tendrils",
				["icon"] = "Interface\\Icons\\spell_priest_voidtendrils",
			}, -- [10]
			{
				["name"] = "Psychic Scream",
				["icon"] = "Interface\\Icons\\Spell_Shadow_PsychicScream",
			}, -- [11]
			{
				["name"] = "Dominate Mind",
				["icon"] = "Interface\\Icons\\Spell_Shadow_ShadowWordDominate",
			}, -- [12]
			{
				["name"] = "Twist of Fate",
				["icon"] = "Interface\\Icons\\Spell_Shadow_MindTwisting",
			}, -- [13]
			{
				["name"] = "Power Infusion",
				["icon"] = "Interface\\Icons\\Spell_Holy_PowerInfusion",
			}, -- [14]
			{
				["name"] = "Spirit Shell",
				["icon"] = "Interface\\Icons\\ability_shaman_astralshift",
			}, -- [15]
			{
				["name"] = "Cascade",
				["icon"] = "Interface\\Icons\\ability_priest_cascade",
			}, -- [16]
			{
				["name"] = "Divine Star",
				["icon"] = "Interface\\Icons\\spell_priest_divinestar",
			}, -- [17]
			{
				["name"] = "Halo",
				["icon"] = "Interface\\Icons\\ability_priest_halo",
			}, -- [18]
			{
				["name"] = "Clarity of Will",
				["icon"] = "Interface\\Icons\\ability_priest_clarityofwill",
			}, -- [19]
			{
				["name"] = "Words of Mending",
				["icon"] = "Interface\\Icons\\ability_priest_wordsofmeaning",
			}, -- [20]
			{
				["name"] = "Saving Grace",
				["icon"] = "Interface\\Icons\\ability_priest_savinggrace",
			}, -- [21]
		},
		["WARLOCK"] = {
		},
		["SHAMAN"] = {
			{
				["name"] = "Nature's Guardian",
				["icon"] = "Interface\\Icons\\Spell_Nature_NatureGuardian",
			}, -- [1]
			{
				["name"] = "Stone Bulwark Totem",
				["icon"] = "Interface\\Icons\\ability_shaman_stonebulwark",
			}, -- [2]
			{
				["name"] = "Astral Shift",
				["icon"] = "Interface\\Icons\\ability_shaman_astralshift",
			}, -- [3]
			{
				["name"] = "Frozen Power",
				["icon"] = "Interface\\Icons\\Spell_Fire_BlueCano",
			}, -- [4]
			{
				["name"] = "Earthgrab Totem",
				["icon"] = "Interface\\Icons\\Spell_Nature_StrangleVines",
			}, -- [5]
			{
				["name"] = "Windwalk Totem",
				["icon"] = "Interface\\Icons\\ability_shaman_windwalktotem",
			}, -- [6]
			{
				["name"] = "Call of the Elements",
				["icon"] = "Interface\\Icons\\ability_shaman_multitotemactivation",
			}, -- [7]
			{
				["name"] = "Totemic Persistence",
				["icon"] = "Interface\\Icons\\ability_shaman_totemcooldownrefund",
			}, -- [8]
			{
				["name"] = "Totemic Projection",
				["icon"] = "Interface\\Icons\\ability_shaman_totemrelocation",
			}, -- [9]
			{
				["name"] = "Elemental Mastery",
				["icon"] = "Interface\\Icons\\Spell_Nature_WispHeal",
			}, -- [10]
			{
				["name"] = "Ancestral Swiftness",
				["icon"] = "Interface\\Icons\\Spell_Shaman_ElementalOath",
			}, -- [11]
			{
				["name"] = "Echo of the Elements",
				["icon"] = "Interface\\Icons\\ability_shaman_echooftheelements",
			}, -- [12]
			{
				["name"] = "Rushing Streams",
				["icon"] = "Interface\\Icons\\INV_Spear_04",
			}, -- [13]
			{
				["name"] = "Ancestral Guidance",
				["icon"] = "Interface\\Icons\\ability_shaman_ancestralguidance",
			}, -- [14]
			{
				["name"] = "Conductivity",
				["icon"] = "Interface\\Icons\\ability_shaman_fortifyingwaters",
			}, -- [15]
			{
				["name"] = "Unleashed Fury",
				["icon"] = "Interface\\Icons\\shaman_talent_unleashedfury",
			}, -- [16]
			{
				["name"] = "Primal Elementalist",
				["icon"] = "Interface\\Icons\\shaman_talent_primalelementalist",
			}, -- [17]
			{
				["name"] = "Elemental Blast",
				["icon"] = "Interface\\Icons\\shaman_talent_elementalblast",
			}, -- [18]
			{
				["name"] = "Elemental Fusion",
				["icon"] = "Interface\\Icons\\spell_shaman_shockinglava",
			}, -- [19]
			{
				["name"] = "Storm Elemental Totem",
				["icon"] = "Interface\\Icons\\spell_shaman_stormtotem",
			}, -- [20]
			{
				["name"] = "Liquid Magma",
				["icon"] = "Interface\\Icons\\spell_shaman_spewlava",
			}, -- [21]
		},
		["DEATHKNIGHT"] = {
			{
				["name"] = "Plaguebearer",
				["icon"] = "Interface\\Icons\\Achievement_Zone_WesternPlaguelands_01",
			}, -- [1]
			{
				["name"] = "Plague Leech",
				["icon"] = "Interface\\Icons\\Ability_Creature_Disease_02",
			}, -- [2]
			{
				["name"] = "Unholy Blight",
				["icon"] = "Interface\\Icons\\Spell_Shadow_Contagion",
			}, -- [3]
			{
				["name"] = "Lichborne",
				["icon"] = "Interface\\Icons\\Spell_Shadow_RaiseDead",
			}, -- [4]
			{
				["name"] = "Anti-Magic Zone",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_AntiMagicZone",
			}, -- [5]
			{
				["name"] = "Purgatory",
				["icon"] = "Interface\\Icons\\INV_Misc_ShadowEgg",
			}, -- [6]
			{
				["name"] = "Death's Advance",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DemonicEmpathy",
			}, -- [7]
			{
				["name"] = "Chilblains",
				["icon"] = "Interface\\Icons\\Spell_Frost_Wisp",
			}, -- [8]
			{
				["name"] = "Asphyxiate",
				["icon"] = "Interface\\Icons\\ability_deathknight_asphixiate",
			}, -- [9]
			{
				["name"] = "Blood Tap",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_BloodTap",
			}, -- [10]
			{
				["name"] = "Runic Empowerment",
				["icon"] = "Interface\\Icons\\INV_Misc_Rune_10",
			}, -- [11]
			{
				["name"] = "Runic Corruption",
				["icon"] = "INTERFACE\\ICONS\\spell_shadow_rune",
			}, -- [12]
			{
				["name"] = "Death Pact",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DeathPact",
			}, -- [13]
			{
				["name"] = "Death Siphon",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon",
			}, -- [14]
			{
				["name"] = "Conversion",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon2",
			}, -- [15]
			{
				["name"] = "Gorefiend's Grasp",
				["icon"] = "Interface\\Icons\\ability_deathknight_aoedeathgrip",
			}, -- [16]
			{
				["name"] = "Remorseless Winter",
				["icon"] = "Interface\\Icons\\ability_deathknight_remorselesswinters2",
			}, -- [17]
			{
				["name"] = "Desecrated Ground",
				["icon"] = "Interface\\Icons\\ability_deathknight_desecratedground",
			}, -- [18]
			{
				["name"] = "Necrotic Plague",
				["icon"] = "Interface\\Icons\\spell_deathknight_necroticplague",
			}, -- [19]
			{
				["name"] = "Defile",
				["icon"] = "Interface\\Icons\\spell_deathknight_defile",
			}, -- [20]
			{
				["name"] = "Breath of Sindragosa",
				["icon"] = "Interface\\Icons\\spell_deathknight_breathofsindragosa",
			}, -- [21]
		},
		["DRUID"] = {
			{
				["name"] = "Feline Swiftness",
				["icon"] = "Interface\\Icons\\spell_druid_tirelesspursuit",
			}, -- [1]
			{
				["name"] = "Displacer Beast",
				["icon"] = "Interface\\Icons\\spell_druid_displacement",
			}, -- [2]
			{
				["name"] = "Wild Charge",
				["icon"] = "Interface\\Icons\\spell_druid_wildcharge",
			}, -- [3]
			{
				["name"] = "Ysera's Gift",
				["icon"] = "Interface\\Icons\\INV_Misc_Head_Dragon_Green",
			}, -- [4]
			{
				["name"] = "Renewal",
				["icon"] = "Interface\\Icons\\Spell_Nature_NatureBlessing",
			}, -- [5]
			{
				["name"] = "Cenarion Ward",
				["icon"] = "Interface\\Icons\\Ability_Druid_NaturalPerfection",
			}, -- [6]
			{
				["name"] = "Faerie Swarm",
				["icon"] = "Interface\\Icons\\spell_druid_swarm",
			}, -- [7]
			{
				["name"] = "Mass Entanglement",
				["icon"] = "Interface\\Icons\\spell_druid_massentanglement",
			}, -- [8]
			{
				["name"] = "Typhoon",
				["icon"] = "Interface\\Icons\\Ability_Druid_Typhoon",
			}, -- [9]
			{
				["name"] = "Soul of the Forest",
				["icon"] = "Interface\\Icons\\Ability_Druid_ManaTree",
			}, -- [10]
			{
				["name"] = "Incarnation: Chosen of Elune",
				["icon"] = "Interface\\Icons\\spell_druid_incarnation",
			}, -- [11]
			{
				["name"] = "Force of Nature",
				["icon"] = "Interface\\Icons\\Ability_Druid_ForceofNature",
			}, -- [12]
			{
				["name"] = "Incapacitating Roar",
				["icon"] = "Interface\\Icons\\Ability_Druid_DemoralizingRoar",
			}, -- [13]
			{
				["name"] = "Ursol's Vortex",
				["icon"] = "Interface\\Icons\\spell_druid_ursolsvortex",
			}, -- [14]
			{
				["name"] = "Mighty Bash",
				["icon"] = "Interface\\Icons\\Ability_Druid_Bash",
			}, -- [15]
			{
				["name"] = "Heart of the Wild",
				["icon"] = "Interface\\Icons\\Spell_Holy_BlessingOfAgility",
			}, -- [16]
			{
				["name"] = "Dream of Cenarius",
				["icon"] = "Interface\\Icons\\Ability_Druid_Dreamstate",
			}, -- [17]
			{
				["name"] = "Nature's Vigil",
				["icon"] = "Interface\\Icons\\Achievement_Zone_Feralas",
			}, -- [18]
			{
				["name"] = "Euphoria",
				["icon"] = "INTERFACE\\ICONS\\achievement_boss_valithradreamwalker",
			}, -- [19]
			{
				["name"] = "Stellar Flare",
				["icon"] = "Interface\\Icons\\ability_druid_stellarflare",
			}, -- [20]
			{
				["name"] = "Balance of Power",
				["icon"] = "Interface\\Icons\\Ability_Druid_BalanceofPower",
			}, -- [21]
		},
		["MONK"] = {
			{
				["name"] = "Celerity",
				["icon"] = "Interface\\Icons\\ability_monk_quipunch",
			}, -- [1]
			{
				["name"] = "Tiger's Lust",
				["icon"] = "Interface\\Icons\\ability_monk_tigerslust",
			}, -- [2]
			{
				["name"] = "Momentum",
				["icon"] = "Interface\\Icons\\ability_monk_standingkick",
			}, -- [3]
			{
				["name"] = "Chi Wave",
				["icon"] = "Interface\\Icons\\ability_monk_chiwave",
			}, -- [4]
			{
				["name"] = "Zen Sphere",
				["icon"] = "Interface\\Icons\\ability_monk_forcesphere",
			}, -- [5]
			{
				["name"] = "Chi Burst",
				["icon"] = "Interface\\Icons\\Spell_Arcane_ArcaneTorrent",
			}, -- [6]
			{
				["name"] = "Power Strikes",
				["icon"] = "Interface\\Icons\\ability_monk_powerstrikes",
			}, -- [7]
			{
				["name"] = "Ascension",
				["icon"] = "Interface\\Icons\\ability_monk_ascension",
			}, -- [8]
			{
				["name"] = "Chi Brew",
				["icon"] = "Interface\\Icons\\ability_monk_chibrew",
			}, -- [9]
			{
				["name"] = "Ring of Peace",
				["icon"] = "Interface\\Icons\\spell_monk_ringofpeace",
			}, -- [10]
			{
				["name"] = "Charging Ox Wave",
				["icon"] = "Interface\\Icons\\ability_monk_chargingoxwave",
			}, -- [11]
			{
				["name"] = "Leg Sweep",
				["icon"] = "Interface\\Icons\\ability_monk_legsweep",
			}, -- [12]
			{
				["name"] = "Healing Elixirs",
				["icon"] = "Interface\\Icons\\ability_monk_jasmineforcetea",
			}, -- [13]
			{
				["name"] = "Dampen Harm",
				["icon"] = "Interface\\Icons\\ability_monk_dampenharm",
			}, -- [14]
			{
				["name"] = "Diffuse Magic",
				["icon"] = "Interface\\Icons\\spell_monk_diffusemagic",
			}, -- [15]
			{
				["name"] = "Rushing Jade Wind",
				["icon"] = "Interface\\Icons\\ability_monk_rushingjadewind",
			}, -- [16]
			{
				["name"] = "Invoke Xuen, the White Tiger",
				["icon"] = "Interface\\Icons\\ability_monk_summontigerstatue",
			}, -- [17]
			{
				["name"] = "Chi Torpedo",
				["icon"] = "Interface\\Icons\\ability_monk_quitornado",
			}, -- [18]
			{
				["name"] = "Hurricane Strike",
				["icon"] = "Interface\\Icons\\ability_monk_hurricanestrike",
			}, -- [19]
			{
				["name"] = "Chi Explosion",
				["icon"] = "Interface\\Icons\\ability_monk_chiexplosion",
			}, -- [20]
			{
				["name"] = "Serenity",
				["icon"] = "Interface\\Icons\\ability_monk_serenity",
			}, -- [21]
		},
		["PALADIN"] = {
			{
				["name"] = "Speed of Light",
				["icon"] = "Interface\\Icons\\ability_paladin_speedoflight",
			}, -- [1]
			{
				["name"] = "Long Arm of the Law",
				["icon"] = "Interface\\Icons\\ability_paladin_longarmofthelaw",
			}, -- [2]
			{
				["name"] = "Pursuit of Justice",
				["icon"] = "Interface\\Icons\\ability_paladin_veneration",
			}, -- [3]
			{
				["name"] = "Fist of Justice",
				["icon"] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
			}, -- [4]
			{
				["name"] = "Repentance",
				["icon"] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing",
			}, -- [5]
			{
				["name"] = "Blinding Light",
				["icon"] = "Interface\\Icons\\ability_paladin_blindinglight",
			}, -- [6]
			{
				["name"] = "Selfless Healer",
				["icon"] = "Interface\\Icons\\Ability_Paladin_GaurdedbytheLight",
			}, -- [7]
			{
				["name"] = "Eternal Flame",
				["icon"] = "Interface\\Icons\\INV_Torch_Thrown",
			}, -- [8]
			{
				["name"] = "Sacred Shield",
				["icon"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
			}, -- [9]
			{
				["name"] = "Hand of Purity",
				["icon"] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
			}, -- [10]
			{
				["name"] = "Unbreakable Spirit",
				["icon"] = "Interface\\Icons\\spell_holy_unyieldingfaith",
			}, -- [11]
			{
				["name"] = "Clemency",
				["icon"] = "Interface\\Icons\\ability_paladin_clemency",
			}, -- [12]
			{
				["name"] = "Holy Avenger",
				["icon"] = "Interface\\Icons\\ability_paladin_holyavenger",
			}, -- [13]
			{
				["name"] = "Sanctified Wrath",
				["icon"] = "Interface\\Icons\\Ability_Paladin_SanctifiedWrath",
			}, -- [14]
			{
				["name"] = "Divine Purpose",
				["icon"] = "Interface\\Icons\\Spell_Holy_DivinePurpose",
			}, -- [15]
			{
				["name"] = "Holy Prism",
				["icon"] = "Interface\\Icons\\spell_paladin_holyprism",
			}, -- [16]
			{
				["name"] = "Light's Hammer",
				["icon"] = "Interface\\Icons\\spell_paladin_lightshammer",
			}, -- [17]
			{
				["name"] = "Execution Sentence",
				["icon"] = "Interface\\Icons\\spell_paladin_executionsentence",
			}, -- [18]
			{
				["name"] = "Beacon of Faith",
				["icon"] = "Interface\\Icons\\ability_paladin_beaconsoflight",
			}, -- [19]
			{
				["name"] = "Beacon of Insight",
				["icon"] = "Interface\\Icons\\ability_paladin_beaconofinsight",
			}, -- [20]
			{
				["name"] = "Saved by the Light",
				["icon"] = "Interface\\Icons\\ability_paladin_savedbythelight",
			}, -- [21]
		},
	},
}
