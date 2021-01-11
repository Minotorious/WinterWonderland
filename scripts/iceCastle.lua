--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      ICE CASTLE                      | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathStraightPart", "RAMPART_PATH_STRAIGHT_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathStraightHalfPart", "RAMPART_PATH_STRAIGHT_HALF_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner45SharpPart", "RAMPART_PATH_CORNER_45_SHARP_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner60SharpPart", "RAMPART_PATH_CORNER_60_SHARP_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner90SharpPart", "RAMPART_PATH_CORNER_90_SHARP_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner90SharpHalfPart", "RAMPART_PATH_CORNER_90_SHARP_HALF_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner120SharpPart", "RAMPART_PATH_CORNER_120_SHARP_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCorner135SharpPart", "RAMPART_PATH_CORNER_135_SHARP_PART_PREFAB")

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCrossJunctionSharpPart", "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathTJunctionSharpPart", "RAMPART_PATH_T_JUNCTION_SHARP_PART_PREFAB")

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartPathCornerCurvedPart", "RAMPART_PATH_CORNER_CURVED_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/rampartTowerSquareMediumPart", "RAMPART_TOWER_SQUARE_MEDIUM_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/hollowSquareWithTowerPart", "HOLLOW_SQUARE_WITH_TOWER_PART_PREFAB")

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/crenellationSpikesPart", "CRENELLATION_SPIKES_PART_PREFAB")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/wallSpikesPart", "WALL_SPIKES_PART_PREFAB")

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.StonebrickBlueIce", "MATERIAL_STONEBRICK_BLUE_ICE")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.CrystalBlue", "MATERIAL_CRYSTAL_BLUE")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.BlueIceTransparent", "MATERIAL_BLUE_ICE_TRANSPARENT")

winterWonderland:override({
    Id = "MATERIAL_STONEBRICK_BLUE_ICE",
    IsLighted = false
})

winterWonderland:override({
    Id = "MATERIAL_CRYSTAL_BLUE",
    IsLighted = false
})

winterWonderland:override({
    Id = "MATERIAL_BLUE_ICE_TRANSPARENT",
    IsLighted = false
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/iceCastleMonument/iceCastleMonument.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

winterWonderland:registerPrefabComponent("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/crenellationSpikesPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/wallSpikesPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
    Id = "ICE_CASTLE_MONUMENT",
    Name = "ICE_CASTLE_MONUMENT_NAME",
	Description = "ICE_CASTLE_MONUMENT_DESC",
    BuildingType = "MONUMENT",
	AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    BuildingPartSetList = {
        {
            Name = "ICE_CASTLE_RAMPART_PATHS_CATEGORY",
            BuildingPartList = {
                "RAMPART_PATH_STRAIGHT_PART", "RAMPART_PATH_STRAIGHT_HALF_PART", "RAMPART_PATH_CORNER_45_SHARP_PART",
                "RAMPART_PATH_CORNER_60_SHARP_PART", "RAMPART_PATH_CORNER_90_SHARP_PART", "RAMPART_PATH_CORNER_90_SHARP_HALF_PART",
                "RAMPART_PATH_CORNER_120_SHARP_PART", "RAMPART_PATH_CORNER_135_SHARP_PART", "RAMPART_PATH_CORNER_CURVED_PART",
                "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART", "RAMPART_PATH_T_JUNCTION_SHARP_PART"
            }
		},
        {
            Name = "ICE_CASTLE_TOWERS_CATEGORY",
            BuildingPartList = {
                "HOLLOW_SQUARE_WITH_TOWER_PART", "RAMPART_TOWER_SQUARE_MEDIUM_PART"
            }
		},
        {
            Name = "ICE_CASTLE_DECORATIVES_CATEGORY",
            BuildingPartList = {
                "CRENELLATION_SPIKES_PART", "WALL_SPIKES_PART"
            }
		}
    }
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_STRAIGHT_PART",
	Name = "RAMPART_PATH_STRAIGHT_PART_NAME",
	Description = "RAMPART_PATH_STRAIGHT_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_STRAIGHT_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_STRAIGHT_HALF_PART",
	Name = "RAMPART_PATH_STRAIGHT_HALF_PART_NAME",
	Description = "RAMPART_PATH_STRAIGHT_HALF_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_STRAIGHT_HALF_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_45_SHARP_PART",
	Name = "RAMPART_PATH_CORNER_45_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CORNER_45_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_45_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_60_SHARP_PART",
	Name = "RAMPART_PATH_CORNER_60_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CORNER_60_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_60_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_90_SHARP_PART",
	Name = "RAMPART_PATH_CORNER_90_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CORNER_90_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_90_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_90_SHARP_HALF_PART",
	Name = "RAMPART_PATH_CORNER_90_SHARP_HALF_PART_NAME",
	Description = "RAMPART_PATH_CORNER_90_SHARP_HALF_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_90_SHARP_HALF_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_120_SHARP_PART",
	Name = "RAMPART_PATH_CORNER_120_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CORNER_120_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_120_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_135_SHARP_PART",
	Name = "RAMPART_PATH_CORNER_135_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CORNER_135_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_135_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART",
	Name = "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART_NAME",
	Description = "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CROSS_JUNCTION_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_T_JUNCTION_SHARP_PART",
	Name = "RAMPART_PATH_T_JUNCTION_SHARP_PART_NAME",
	Description = "RAMPART_PATH_T_JUNCTION_SHARP_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_T_JUNCTION_SHARP_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_PATH_CORNER_CURVED_PART",
	Name = "RAMPART_PATH_CORNER_CURVED_PART_NAME",
	Description = "RAMPART_PATH_CORNER_CURVED_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_PATH_CORNER_CURVED_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "RAMPART_TOWER_SQUARE_MEDIUM_PART",
	Name = "RAMPART_TOWER_SQUARE_MEDIUM_PART_NAME",
	Description = "RAMPART_TOWER_SQUARE_MEDIUM_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "RAMPART_TOWER_SQUARE_MEDIUM_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "HOLLOW_SQUARE_WITH_TOWER_PART",
	Name = "HOLLOW_SQUARE_WITH_TOWER_PART_NAME",
	Description = "HOLLOW_SQUARE_WITH_TOWER_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(6 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "HOLLOW_SQUARE_WITH_TOWER_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CRENELLATION_SPIKES_PART",
	Name = "CRENELLATION_SPIKES_PART_NAME",
	Description = "CRENELLATION_SPIKES_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {},
    },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "CRENELLATION_SPIKES_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "WALL_SPIKES_PART",
	Name = "WALL_SPIKES_PART_NAME",
	Description = "WALL_SPIKES_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {},
    },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "WALL_SPIKES_PART_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
