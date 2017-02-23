
MacroBankDB = {
	["profileKeys"] = {
		["Molevia - Area 52"] = "Default",
		["Riipjaw - Area 52"] = "Default",
		["Conflagra - Area 52"] = "Default",
	},
	["DBVersion"] = 5,
	["global"] = {
		["Macros"] = {
			{
				"Artifact Macros", -- [1]
				{
					{
						"Spec Swap", -- [1]
						"Spec Swap", -- [2]
						"1266395", -- [3]
						"/run SetSpecialization(GetSpecialization()==2 and 3 or 2)\n", -- [4]
					}, -- [1]
					{
						"Temp Description", -- [1]
						"Temp Name", -- [2]
						"INV_MISC_QUESTIONMARK", -- [3]
						"", -- [4]
					}, -- [2]
				}, -- [2]
			}, -- [1]
			{
				"Temp Category", -- [1]
				{
					{
						"Temp Description", -- [1]
						"Temp Name", -- [2]
						"INV_MISC_QUESTIONMARK", -- [3]
						"/castsequence reset=4 Attack(Pet Command), Immolate, Conflagrate, Conflagrate, Chaos Bolt", -- [4]
					}, -- [1]
				}, -- [2]
			}, -- [2]
		},
	},
	["profiles"] = {
		["Default"] = {
			["Options"] = {
				["AutoAccept"] = false,
				["AutoOpenMacroBank"] = false,
			},
		},
	},
}
