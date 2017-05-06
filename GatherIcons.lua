--[[

	Icon set definitions

]]

function Gatherer_update_localized_indexes()
	Gather_IconSet = {
		["original"] = {
			["Default"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Blue"},
			["Ore"]			= {["default"] = "Interface\\AddOns\\Gatherer\\Original\\Ore"},
			["Herb"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Original\\Herb"},
			["Treasure"]	= {["default"] = "Interface\\AddOns\\Gatherer\\Original\\Chest"},
			["Test"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Original\\Test"},
		},
		["iconshade"] = {
			["Test"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Original\\Test"},
		},
		["shaded"] = {
			["Default"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Blue"},
			["Ore"]			= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Red"},
			["Herb"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Green"},
			["Treasure"]	= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Yellow"},
			["Test"]		= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Test"},
		},
		["iconic"] = {
			["Default"] = {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Blue"},
			["Ore"] = {
				["default"]      = "Interface\\AddOns\\Gatherer\\Shaded\\Red",
				[ORE_COPPER]     = "Interface\\AddOns\\Gatherer\\Icons\\OreCopper",
				[ORE_TIN]        = "Interface\\AddOns\\Gatherer\\Icons\\OreTin",
				[ORE_SILVER]     = "Interface\\AddOns\\Gatherer\\Icons\\OreSilver",
				[ORE_IRON]       = "Interface\\AddOns\\Gatherer\\Icons\\OreIron",
				[ORE_GOLD]       = "Interface\\AddOns\\Gatherer\\Icons\\OreGold",
				[ORE_MITHRIL]    = "Interface\\AddOns\\Gatherer\\Icons\\OreMithril",
				[ORE_TRUESILVER] = "Interface\\AddOns\\Gatherer\\Icons\\OreTruesilver",
				[ORE_THORIUM]    = "Interface\\AddOns\\Gatherer\\Icons\\OreThorium",
				[ORE_RTHORIUM]   = "Interface\\Addons\\Gatherer\\Icons\\OreRThorium",
				[ORE_DARKIRON]   = "Interface\\Addons\\Gatherer\\Icons\\OreDarkIron",
			},
			["Herb"] = {
				["default"]               = "Interface\\AddOns\\Gatherer\\Shaded\\Green",
				[HERB_ARTHASTEAR]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbArthasTears",
				[HERB_BLACKLOTUS]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbBlackLotus",
				[HERB_BLINDWEED]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbBlindweed",
				[HERB_BRIARTHORN]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbBriarthorn",
				[HERB_BRUISEWEED]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbBruiseweed",
				[HERB_DREAMFOIL]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbDreamfoil",
				[HERB_EARTHROOT]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbEarthroot",
				[HERB_FADELEAF]           = "Interface\\AddOns\\Gatherer\\Icons\\HerbFadeleaf",
				[HERB_FIREBLOOM]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbFirebloom",
				[HERB_GHOSTMUSHROOM]      = "Interface\\AddOns\\Gatherer\\Icons\\HerbGhostMushroom",
				[HERB_GOLDENSANSAM]       = "Interface\\AddOns\\Gatherer\\Icons\\HerbGoldenSansam",
				[HERB_GOLDTHORN]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbGoldthorn",
				[HERB_GRAVEMOSS]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbGraveMoss",
				[HERB_GROMSBLOOD]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbGromsblood",
				[HERB_ICECAP]             = "Interface\\AddOns\\Gatherer\\Icons\\HerbIcecap",
				[HERB_KHADGARSWHISKER]    = "Interface\\AddOns\\Gatherer\\Icons\\HerbKhadgarsWhisker",
				[HERB_KINGSBLOOD]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbKingsblood",
				[HERB_LIFEROOT]           = "Interface\\AddOns\\Gatherer\\Icons\\HerbLiferoot",
				[HERB_MAGEROYAL]          = "Interface\\AddOns\\Gatherer\\Icons\\HerbMageroyal",
				[HERB_MOUNTAINSILVERSAGE] = "Interface\\AddOns\\Gatherer\\Icons\\HerbMountainSilversage",
				[HERB_PEACEBLOOM]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbPeacebloom",
				[HERB_PLAGUEBLOOM]        = "Interface\\AddOns\\Gatherer\\Icons\\HerbPlaguebloom",
				[HERB_PURPLELOTUS]        = "Interface\\AddOns\\Gatherer\\Icons\\HerbPurpleLotus",
				[HERB_SILVERLEAF]         = "Interface\\AddOns\\Gatherer\\Icons\\HerbSilverleaf",
				[HERB_STRANGLEKELP]       = "Interface\\AddOns\\Gatherer\\Icons\\HerbStranglekelp",
				[HERB_SUNGRASS]           = "Interface\\AddOns\\Gatherer\\Icons\\HerbSungrass",
				[HERB_SWIFTTHISTLE]       = "Interface\\AddOns\\Gatherer\\Icons\\HerbSwiftthistle",
				[HERB_WILDSTEELBLOOM]     = "Interface\\AddOns\\Gatherer\\Icons\\HerbWildSteelbloom",
				[HERB_WINTERSBITE]        = "Interface\\AddOns\\Gatherer\\Icons\\HerbWintersbite",
				[HERB_WILDVINE]           = "Interface\\AddOns\\Gatherer\\Icons\\HerbKingsblood",
			},
			["Treasure"] = {
				["default"]			= "Interface\\AddOns\\Gatherer\\Shaded\\Yellow",
				[TREASURE_BOX]			= "Interface\\AddOns\\Gatherer\\Icons\\TreasureCrate",
				[TREASURE_CHEST]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureChest",
				[TREASURE_CLAM]			= "Interface\\AddOns\\Gatherer\\Icons\\TreasureClam",
				[TREASURE_CRATE]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureCrate",
				[TREASURE_BARREL]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureBarrel",
				[TREASURE_CASK]			= "Interface\\AddOns\\Gatherer\\Icons\\TreasureBarrel",
				[TREASURE_FOOTLOCKER]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureChest",
				[TREASURE_UNGOROSOIL]		= "Interface\\AddOns\\Gatherer\\Icons\\UngoroDirtPile",
				[TREASURE_BLOODPETAL]		= "Interface\\AddOns\\Gatherer\\Icons\\UngoroSprout",
				[TREASURE_POWERCRYST]		= "Interface\\AddOns\\Gatherer\\Icons\\UngoroCrystal",
				[TREASURE_BLOODHERO]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureBloodHero",
				[TREASURE_SHELLFISHTRAP]	= "Interface\\AddOns\\Gatherer\\Icons\\TreasureShellfishTrap",
				[TREASURE_FISHNODE]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureFishnode",
				[TREASURE_FISHWRECK]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureFishwreck",
				[TREASURE_FISHELEM]		= "Interface\\AddOns\\Gatherer\\Icons\\TreasureFishElem",
				[TREASURE_NIGHTDRAGON]		= "Interface\\Icons\\INV_Misc_Food_45",
				[TREASURE_WHIPPERROOT]		= "Interface\\Icons\\INV_Misc_Food_55",
				[TREASURE_WINDBLOSSOM]		= "Interface\\Icons\\INV_Misc_Food_58",
				[TREASURE_SONGFLOWER]		= "Interface\\Icons\\Spell_Holy_MindVision",
			},
			["Test"]	= {["default"] = "Interface\\AddOns\\Gatherer\\Shaded\\Test"},
		},
	};

	-- Ore rare spawn/Herbs find with  matching table
	Gather_RareMatch = {
		[ORE_TIN] = ORE_SILVER,
		[ORE_IRON] = ORE_GOLD,
		[ORE_MITHRIL] = ORE_TRUESILVER,
		[HERB_MAGEROYAL] = HERB_SWIFTTHISTLE,
		[HERB_BRIARTHORN] = HERB_SWIFTTHISTLE,
		[HERB_PURPLELOTUS] = HERB_WILDVINE,
	};

	-- Skill levels required
	Gather_SkillLevel = {
			-- Ores
			[ORE_COPPER]     = 1,
			[ORE_TIN]        = 65,
			[ORE_SILVER]     = 75,
			[ORE_IRON]       = 125,
			[ORE_GOLD]       = 155,
			[ORE_MITHRIL]    = 175,
			[ORE_TRUESILVER] = 230,
			[ORE_THORIUM]    = 245,
			[ORE_RTHORIUM]   = 270,
			[ORE_DARKIRON]   = 230,
			-- Herbs
			[HERB_PEACEBLOOM]        = 1,
			[HERB_SILVERLEAF]        = 1,
			[HERB_EARTHROOT]         = 15,
			[HERB_MAGEROYAL]         = 50,
			[HERB_BRIARTHORN]        = 75,
			[HERB_SWIFTTHISTLE]      = 50,
			[HERB_STRANGLEKELP]      = 85,
			[HERB_BRUISEWEED]        = 100,
			[HERB_WILDSTEELBLOOM]    = 115,
			[HERB_GRAVEMOSS]         = 120,
			[HERB_KINGSBLOOD]        = 125,
			[HERB_LIFEROOT]          = 150,
			[HERB_FADELEAF]          = 160,
			[HERB_GOLDTHORN]         = 175,
			[HERB_KHADGARSWHISKER]   = 185,
			[HERB_WINTERSBITE]       = 195,
			[HERB_FIREBLOOM]         = 205,
			[HERB_PURPLELOTUS]       = 210,
			[HERB_WILDVINE]	         = 210,
			[HERB_SUNGRASS]          = 230,
			[HERB_BLINDWEED]         = 235,
			[HERB_GHOSTMUSHROOM]     = 245,
			[HERB_GROMSBLOOD]        = 250,
			[HERB_GOLDENSANSAM]      = 260,
			[HERB_ARTHASTEAR]        = 220,
			[HERB_DREAMFOIL]         = 270,
			[HERB_MOUNTAINSILVERSAGE]= 280,
			[HERB_PLAGUEBLOOM]       = 285,
			[HERB_ICECAP]            = 290,
			[HERB_BLACKLOTUS]        = 300,
	};

	-- Icon indexes
	-- 0 => Treasures
	-- 1 => Herbs
	-- 2 => Ores
	-- Note: If you add new items, use icon index numbers starting from 100

	-- index with localized keys
	-- type: Dict[GatherTypeIndex, Dict[IconName, IconIndex]]
	Gather_DB_IconIndex = {
		[Gatherer_EGatherType.treasure] = {
			["default"]             = 0,
			[TREASURE_BOX]          = 1,
			[TREASURE_CHEST]        = 2,
			[TREASURE_CLAM]         = 3,
			[TREASURE_CRATE]        = 4,
			[TREASURE_BARREL]       = 5,
			[TREASURE_CASK]         = 6,
			[TREASURE_FOOTLOCKER]   = 7,
			[TREASURE_UNGOROSOIL]   = 8,
			[TREASURE_BLOODPETAL]   = 9,
			[TREASURE_POWERCRYST]   = 10,
			[TREASURE_BLOODHERO]    = 11,
			[TREASURE_SHELLFISHTRAP]= 12,
			[TREASURE_FISHNODE]     = 13,
			[TREASURE_FISHWRECK]    = 14,
			[TREASURE_FISHELEM]     = 15,
			[TREASURE_NIGHTDRAGON]	= 16,
			[TREASURE_WHIPPERROOT]	= 17,
			[TREASURE_WINDBLOSSOM]	= 18,
			[TREASURE_SONGFLOWER]	= 19,
		},
		[Gatherer_EGatherType.herb] = {
			["default"]              = 0,
			[HERB_PEACEBLOOM]        = 1,
			[HERB_SILVERLEAF]        = 2,
			[HERB_EARTHROOT]         = 3,
			[HERB_MAGEROYAL]         = 4,
			[HERB_BRIARTHORN]        = 5,
			[HERB_SWIFTTHISTLE]      = 6,
			[HERB_STRANGLEKELP]      = 7,
			[HERB_BRUISEWEED]        = 8,
			[HERB_WILDSTEELBLOOM]    = 9,
			[HERB_GRAVEMOSS]         = 10,
			[HERB_KINGSBLOOD]        = 11,
			[HERB_LIFEROOT]          = 12,
			[HERB_FADELEAF]          = 13,
			[HERB_GOLDTHORN]         = 14,
			[HERB_KHADGARSWHISKER]   = 15,
			[HERB_WINTERSBITE]       = 16,
			[HERB_FIREBLOOM]         = 17,
			[HERB_PURPLELOTUS]       = 18,
			[HERB_WILDVINE]	         = 19,
			[HERB_SUNGRASS]          = 20,
			[HERB_BLINDWEED]         = 21,
			[HERB_GHOSTMUSHROOM]     = 22,
			[HERB_GROMSBLOOD]        = 23,
			[HERB_GOLDENSANSAM]      = 24,
			[HERB_ARTHASTEAR]        = 25,
			[HERB_DREAMFOIL]         = 26,
			[HERB_MOUNTAINSILVERSAGE]= 27,
			[HERB_PLAGUEBLOOM]       = 28,
			[HERB_ICECAP]            = 29,
			[HERB_BLACKLOTUS]        = 30,
		},
		[Gatherer_EGatherType.ore] = {
			["default"]      = 0,
			[ORE_COPPER]     = 1,
			[ORE_TIN]        = 2,
			[ORE_SILVER]     = 3,
			[ORE_IRON]       = 4,
			[ORE_GOLD]       = 5,
			[ORE_MITHRIL]    = 6,
			[ORE_TRUESILVER] = 7,
			[ORE_THORIUM]    = 8,
			[ORE_RTHORIUM]   = 9,
			[ORE_DARKIRON]   = 10,
		},
		[Gatherer_EGatherType.default] = {
			["default"] = 0,
		}
	};
end

-- Match tables for shorter DB format
-- converting IconIndex to IconName and vice versa
function Gatherer_GetDB_IconIndex(iconIndex, gatherType)
	-- type: (Icon, Optional[GatherType]) -> Tuple[Icon, Optional[GatherType]]
	local iconName, gatherTypeIndex;

	-- if gatherType wasn't set while icon was searched by name
	if ( not gatherType and type(iconIndex) == "string" ) then
		-- try to find icon index by looking through *every* possible gatherType
		for myGather in Gatherer_EGatherType do
			local icon = Gatherer_GetDB_IconIndex(iconIndex, myGather);
			if (icon) then
				-- this time return both index and hitted gatherType
				return icon, myGather;
			end;
		end
	end

	gatherTypeIndex = Gatherer_EGatherType_ensure_index(gatherType)
	-- when gatherType isn't set and type(iconIndex) ~= 'string'
	-- it'll loudly fail since gatherTypeIndex would be nil
	for iconName in Gather_DB_IconIndex[gatherTypeIndex] do
		if ( type(iconIndex) == "string" and iconName == iconIndex ) then
			-- return index number
			return Gather_DB_IconIndex[gatherTypeIndex][iconName];
		elseif ( type(iconIndex) == "number" and Gather_DB_IconIndex[gatherTypeIndex][iconName] == iconIndex ) then
			-- return icon string
			return iconName;
		end
	end

	return nil;
end

function Gatherer_GetDB_IconByGatherName(gatherName)
	local iconName, numType;
	local iconName = Gatherer_FindOreType(gatherName);
	if (iconName) then -- Ore
		numType = 2;
	else
		iconName = Gatherer_FindTreasureType(gatherName);
		if (iconName) then -- Treasure
			numType = 0;
		else -- Herb
			iconName = gatherName;
			numType = 1;
		end
	end
	if (not iconName) then
		iconName = "default";
		numType = 3;
	end

	return iconName, numType;
end

-- english defaults as a fallback
-- type: Dict[GatherTypeIndex, Dict[IconName, IconIndex]]
Gather_DB_IconIndex_default = {
	[Gatherer_EGatherType.treasure] = {
		["default"]             = 0,
		[TREASURE_BOX_DEFAULT]          = 1,
		[TREASURE_CHEST_DEFAULT]        = 2,
		[TREASURE_CLAM_DEFAULT]         = 3,
		[TREASURE_CRATE_DEFAULT]        = 4,
		[TREASURE_BARREL_DEFAULT]       = 5,
		[TREASURE_CASK_DEFAULT]         = 6,
		[TREASURE_FOOTLOCKER_DEFAULT]   = 7,
		[TREASURE_UNGOROSOIL_DEFAULT]   = 8,
		[TREASURE_BLOODPETAL_DEFAULT]   = 9,
		[TREASURE_POWERCRYST_DEFAULT]   = 10,
		[TREASURE_BLOODHERO_DEFAULT]    = 11,
		[TREASURE_SHELLFISHTRAP_DEFAULT]= 12,
		[TREASURE_FISHNODE_DEFAULT]     = 13,
		[TREASURE_FISHWRECK_DEFAULT]    = 14,
		[TREASURE_FISHELEM_DEFAULT]     = 15,
		[TREASURE_NIGHTDRAGON_DEFAULT]	= 16,
		[TREASURE_WHIPPERROOT_DEFAULT]	= 17,
		[TREASURE_WINDBLOSSOM_DEFAULT]	= 18,
		[TREASURE_SONGFLOWER_DEFAULT]	= 19,
	},
	[Gatherer_EGatherType.herb] = {
		["default"]              = 0,
		[HERB_PEACEBLOOM_DEFAULT]        = 1,
		[HERB_SILVERLEAF_DEFAULT]        = 2,
		[HERB_EARTHROOT_DEFAULT]         = 3,
		[HERB_MAGEROYAL_DEFAULT]         = 4,
		[HERB_BRIARTHORN_DEFAULT]        = 5,
		[HERB_SWIFTTHISTLE_DEFAULT]      = 6,
		[HERB_STRANGLEKELP_DEFAULT]      = 7,
		[HERB_BRUISEWEED_DEFAULT]        = 8,
		[HERB_WILDSTEELBLOOM_DEFAULT]    = 9,
		[HERB_GRAVEMOSS_DEFAULT]         = 10,
		[HERB_KINGSBLOOD_DEFAULT]        = 11,
		[HERB_LIFEROOT_DEFAULT]          = 12,
		[HERB_FADELEAF_DEFAULT]          = 13,
		[HERB_GOLDTHORN_DEFAULT]         = 14,
		[HERB_KHADGARSWHISKER_DEFAULT]   = 15,
		[HERB_WINTERSBITE_DEFAULT]       = 16,
		[HERB_FIREBLOOM_DEFAULT]         = 17,
		[HERB_PURPLELOTUS_DEFAULT]       = 18,
		[HERB_WILDVINE_DEFAULT]	         = 19,
		[HERB_SUNGRASS_DEFAULT]          = 20,
		[HERB_BLINDWEED_DEFAULT]         = 21,
		[HERB_GHOSTMUSHROOM_DEFAULT]     = 22,
		[HERB_GROMSBLOOD_DEFAULT]        = 23,
		[HERB_GOLDENSANSAM_DEFAULT]      = 24,
		[HERB_ARTHASTEAR_DEFAULT]        = 25,
		[HERB_DREAMFOIL_DEFAULT]         = 26,
		[HERB_MOUNTAINSILVERSAGE_DEFAULT]= 27,
		[HERB_PLAGUEBLOOM_DEFAULT]       = 28,
		[HERB_ICECAP_DEFAULT]            = 29,
		[HERB_BLACKLOTUS_DEFAULT]        = 30,
	},
	[Gatherer_EGatherType.ore] = {
		["default"]      = 0,
		[ORE_COPPER_DEFAULT]     = 1,
		[ORE_TIN_DEFAULT]        = 2,
		[ORE_SILVER_DEFAULT]     = 3,
		[ORE_IRON_DEFAULT]       = 4,
		[ORE_GOLD_DEFAULT]       = 5,
		[ORE_MITHRIL_DEFAULT]    = 6,
		[ORE_TRUESILVER_DEFAULT] = 7,
		[ORE_THORIUM_DEFAULT]    = 8,
		[ORE_RTHORIUM_DEFAULT]   = 9,
		[ORE_DARKIRON_DEFAULT]   = 10,
	},
	[Gatherer_EGatherType.default] = {
		["default"] = 0,
	}
};
