--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      ICE CASTLE                      | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/crenellationSpikesPart", "PREFAB_CRENELLATION_SPIKES_PART")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/wallSpikesPart", "PREFAB_WALL_SPIKES_PART")

function registerScalablePrefabBuildingParts(_nodePrefix)
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".Root", "PREFAB_" ..  _nodePrefix[2] .. "_ROOT_PART")
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".Filler1", "PREFAB_" ..  _nodePrefix[2] .. "_FILLER1_PART")
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".Filler2", "PREFAB_" ..  _nodePrefix[2] .. "_FILLER2_PART")
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".Filler3", "PREFAB_" ..  _nodePrefix[2] .. "_FILLER3_PART")
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".Filler4", "PREFAB_" ..  _nodePrefix[2] .. "_FILLER4_PART")
	winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Prefab/" .. _nodePrefix[1] .. ".End", "PREFAB_" ..  _nodePrefix[2] .. "_END_PART")
end

local scalablePrefabNodePrefixList = {
	{ "rampartPathStraightPart", "RAMPART_PATH_STRAIGHT" },
	{ "rampartPathStraightHalfPart", "RAMPART_PATH_STRAIGHT_HALF" },
	{ "rampartPathCorner45SharpPart", "RAMPART_PATH_CORNER_45_SHARP" },
	{ "rampartPathCorner60SharpPart", "RAMPART_PATH_CORNER_60_SHARP" },
	{ "rampartPathCorner90SharpPart", "RAMPART_PATH_CORNER_90_SHARP" },
	{ "rampartPathCorner90SharpHalfPart", "RAMPART_PATH_CORNER_90_SHARP_HALF" },
    { "rampartPathCorner120SharpPart", "RAMPART_PATH_CORNER_120_SHARP" },
	{ "rampartPathCorner135SharpPart", "RAMPART_PATH_CORNER_135_SHARP" },
	{ "rampartPathTJunctionSharpPart", "RAMPART_PATH_T_JUNCTION_SHARP" },
    { "rampartPathCrossJunctionSharpPart", "RAMPART_PATH_CROSS_JUNCTION_SHARP" },
    
    {"rampartTowerSquareMediumPart", "RAMPART_TOWER_SQUARE_MEDIUM"}
}

for i, nodePrefix in ipairs(scalablePrefabNodePrefixList) do
	registerScalablePrefabBuildingParts(nodePrefix)
end

winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.StonebrickBlueIce", "MATERIAL_STONEBRICK_BLUE_ICE")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.CrystalBlue", "MATERIAL_CRYSTAL_BLUE")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.BlueIceTransparent", "MATERIAL_BLUE_ICE_TRANSPARENT")
winterWonderland:registerAssetId("models/iceCastleMonument/iceCastleMonument.fbx/Materials/Material.MetalIceTransparent", "MATERIAL_METAL_ICE_TRANSPARENT")

winterWonderland:override({
    Id = "MATERIAL_STONEBRICK_BLUE_ICE",
    IsLighted = false,
    --BackFaceVisible = true
})

winterWonderland:override({
    Id = "MATERIAL_CRYSTAL_BLUE",
    IsLighted = false
})

winterWonderland:override({
    Id = "MATERIAL_BLUE_ICE_TRANSPARENT",
    IsLighted = false
})

winterWonderland:override({
    Id = "MATERIAL_METAL_ICE_TRANSPARENT",
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
            Name = "ICE_CASTLE_TOWERS_CATEGORY",
            BuildingPartList = {
                "RAMPART_TOWER_SQUARE_MEDIUM_SCALABLE_PART"
            }
		},
        {
            Name = "ICE_CASTLE_RAMPART_PATHS_CATEGORY",
            BuildingPartList = {
                "RAMPART_PATH_STRAIGHT_SCALABLE_PART", "RAMPART_PATH_STRAIGHT_HALF_SCALABLE_PART", "RAMPART_PATH_CORNER_45_SHARP_SCALABLE_PART",
                "RAMPART_PATH_CORNER_60_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_HALF_SCALABLE_PART",
                "RAMPART_PATH_CORNER_120_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_135_SHARP_SCALABLE_PART", "RAMPART_PATH_CROSS_JUNCTION_SHARP_SCALABLE_PART",
                "RAMPART_PATH_T_JUNCTION_SHARP_SCALABLE_PART"
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

function registerDefaultBuildingPart(_nodePrefix)
	winterWonderland:register({
		DataType = "BUILDING_PART",
		Id = _nodePrefix .. "_PART",
		ConstructorData = { DataType = "BUILDING_CONSTRUCTOR_DEFAULT", CoreObjectPrefab = "PREFAB_" .. _nodePrefix .. "_PART" }
	})
end

local defaultNodePrefixList = {
	"RAMPART_PATH_STRAIGHT_FILLER1",
	"RAMPART_PATH_STRAIGHT_FILLER2",
	"RAMPART_PATH_STRAIGHT_FILLER3",
	"RAMPART_PATH_STRAIGHT_FILLER4",
	"RAMPART_PATH_STRAIGHT_END",
    "RAMPART_PATH_STRAIGHT_HALF_FILLER1",
	"RAMPART_PATH_STRAIGHT_HALF_FILLER2",
	"RAMPART_PATH_STRAIGHT_HALF_FILLER3",
	"RAMPART_PATH_STRAIGHT_HALF_FILLER4",
	"RAMPART_PATH_STRAIGHT_HALF_END",
    "RAMPART_PATH_CORNER_45_SHARP_FILLER1",
    "RAMPART_PATH_CORNER_45_SHARP_FILLER2",
    "RAMPART_PATH_CORNER_45_SHARP_FILLER3",
    "RAMPART_PATH_CORNER_45_SHARP_FILLER4",
    "RAMPART_PATH_CORNER_45_SHARP_END",
    "RAMPART_PATH_CORNER_60_SHARP_FILLER1",
    "RAMPART_PATH_CORNER_60_SHARP_FILLER2",
    "RAMPART_PATH_CORNER_60_SHARP_FILLER3",
    "RAMPART_PATH_CORNER_60_SHARP_FILLER4",
    "RAMPART_PATH_CORNER_60_SHARP_END",
    "RAMPART_PATH_CORNER_90_SHARP_FILLER1",
    "RAMPART_PATH_CORNER_90_SHARP_FILLER2",
    "RAMPART_PATH_CORNER_90_SHARP_FILLER3",
    "RAMPART_PATH_CORNER_90_SHARP_FILLER4",
    "RAMPART_PATH_CORNER_90_SHARP_END",
    "RAMPART_PATH_CORNER_90_SHARP_HALF_FILLER1",
    "RAMPART_PATH_CORNER_90_SHARP_HALF_FILLER2",
    "RAMPART_PATH_CORNER_90_SHARP_HALF_FILLER3",
    "RAMPART_PATH_CORNER_90_SHARP_HALF_FILLER4",
    "RAMPART_PATH_CORNER_90_SHARP_HALF_END",
    "RAMPART_PATH_CORNER_120_SHARP_FILLER1",
    "RAMPART_PATH_CORNER_120_SHARP_FILLER2",
    "RAMPART_PATH_CORNER_120_SHARP_FILLER3",
    "RAMPART_PATH_CORNER_120_SHARP_FILLER4",
    "RAMPART_PATH_CORNER_120_SHARP_END",
    "RAMPART_PATH_CORNER_135_SHARP_FILLER1",
    "RAMPART_PATH_CORNER_135_SHARP_FILLER2",
    "RAMPART_PATH_CORNER_135_SHARP_FILLER3",
    "RAMPART_PATH_CORNER_135_SHARP_FILLER4",
    "RAMPART_PATH_CORNER_135_SHARP_END",
    "RAMPART_PATH_T_JUNCTION_SHARP_FILLER1",
	"RAMPART_PATH_T_JUNCTION_SHARP_FILLER2",
	"RAMPART_PATH_T_JUNCTION_SHARP_FILLER3",
	"RAMPART_PATH_T_JUNCTION_SHARP_FILLER4",
	"RAMPART_PATH_T_JUNCTION_SHARP_END",
    "RAMPART_PATH_CROSS_JUNCTION_SHARP_FILLER1",
	"RAMPART_PATH_CROSS_JUNCTION_SHARP_FILLER2",
	"RAMPART_PATH_CROSS_JUNCTION_SHARP_FILLER3",
	"RAMPART_PATH_CROSS_JUNCTION_SHARP_FILLER4",
	"RAMPART_PATH_CROSS_JUNCTION_SHARP_END",
    
    "RAMPART_TOWER_SQUARE_MEDIUM_FILLER1",
    "RAMPART_TOWER_SQUARE_MEDIUM_FILLER2",
    "RAMPART_TOWER_SQUARE_MEDIUM_FILLER3",
    "RAMPART_TOWER_SQUARE_MEDIUM_FILLER4",
    "RAMPART_TOWER_SQUARE_MEDIUM_END"
}

for i, nodePrefix in ipairs(defaultNodePrefixList) do
	registerDefaultBuildingPart(nodePrefix)
end

function registerDefaultScalableBuildingPart(_nodePrefix)
    winterWonderland:register({
        DataType = "BUILDING_PART",
        Id = _nodePrefix[1] .. "_SCALABLE_PART",
        Name = _nodePrefix[1] .. "_SCALABLE_PART_NAME",
        --Description = _nodePrefix[1] .. "_SCALABLE_PART_DESC",
        Category = "CORE",
        ConstructorData = {
            DataType = "BUILDING_CONSTRUCTOR_SCALER",
            CoreObjectPrefab = "PREFAB_" .. _nodePrefix[1] .. "_ROOT_PART",
            EndPart = _nodePrefix[1] .. "_END_PART",
            FillerList = {
                _nodePrefix[1] .. "_FILLER1_PART",
                _nodePrefix[1] .. "_FILLER2_PART",
                _nodePrefix[1] .. "_FILLER3_PART",
                _nodePrefix[1] .. "_FILLER4_PART"
            },
            BasementFillerList = {
            },
            MinimumScale = 4,
            IsVertical = true
        },
        BuildingZone = {
            ZoneEntryList = _nodePrefix[2],
        },
        Cost = {
            RessourcesNeeded = {}
        }
    })
end

local defaultScalableNodePrefixList = {
	{ "RAMPART_PATH_STRAIGHT",
        {
            {
            Polygon = polygon.createRectangle( { 5, 20 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_STRAIGHT_HALF",
        {
            {
            Polygon = polygon.createRectangle( { 5, 10 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_45_SHARP",
        {
            {
            Polygon = { { -2.5, -6 }, { -2.5, 17 }, { 2.5, 17 }, { 2.5, 6 }, { 10, 14 }, { 14, 10 } },
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_60_SHARP",
        {
            {
            Polygon = { {-2.5, -4.5}, { -2.5, 18 }, { 2.5, 18 }, { 2.5, 4 }, { 14.5, 11.5}, { 17, 7 } },
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_90_SHARP",
        {
            {
            Polygon = polygon.createRectangle( { 5, 21 }, { 0, 8 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
            {
            Polygon = polygon.createRectangle( { 21, 5 }, { 8, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_90_SHARP_HALF",
        {
            {
            Polygon = polygon.createRectangle( { 5, 11 }, { 0, 3 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
            {
            Polygon = polygon.createRectangle( { 11, 5 }, { 3, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_120_SHARP",
        {
            {
            Polygon = { { -2.5, -1.5 }, { -2.5, 20 }, { 2.5, 20 }, { 2.5, 1.5 }, { 18.5, -8 }, { 16, -12 } },
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_CORNER_135_SHARP",
        {
            {
            Polygon = { { -2.5, -1 }, { -2.5, 20 }, { 2.5, 20 }, { 2.5, 1 }, { 16, -12.5}, { 12.5,-16 } },
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    { "RAMPART_PATH_T_JUNCTION_SHARP",
        {
            {
            Polygon = polygon.createRectangle( { 5, 20 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
            {
            Polygon = polygon.createRectangle( { 12.5, 5 }, { -3.75, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
        }
    },
    { "RAMPART_PATH_CROSS_JUNCTION_SHARP",
        {
            {
            Polygon = polygon.createRectangle( { 5, 20 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
            {
            Polygon = polygon.createRectangle( { 20, 5 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
        }
    },
    { "RAMPART_TOWER_SQUARE_MEDIUM",
        {
            {
            Polygon = polygon.createRectangle( { 10, 10 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    }
}

for i, nodePrefix in ipairs(defaultScalableNodePrefixList) do
	registerDefaultScalableBuildingPart(nodePrefix)
end

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CRENELLATION_SPIKES_PART",
	Name = "CRENELLATION_SPIKES_PART_NAME",
	--Description = "CRENELLATION_SPIKES_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {},
    },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CRENELLATION_SPIKES_PART"
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
	--Description = "WALL_SPIKES_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {},
    },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_WALL_SPIKES_PART"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
