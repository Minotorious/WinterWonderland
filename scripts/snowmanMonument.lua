--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   SNOWMAN MONUMENT                   | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

--winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowmanPart", "PREFAB_SNOWMAN_PART")

winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonBlackPart", "PREFAB_BUTTON_BLACK_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonBluePart", "PREFAB_BUTTON_BLUE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonCyanPart", "PREFAB_BUTTON_CYAN_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonGreenPart", "PREFAB_BUTTON_GREEN_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonOrangePart", "PREFAB_BUTTON_ORANGE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonPurplePart", "PREFAB_BUTTON_PURPLE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/ButtonRedPart", "PREFAB_BUTTON_RED_PART")

winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/HatRibbonBluePart", "PREFAB_HAT_RIBBON_BLUE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/HatRibbonPurplePart", "PREFAB_HAT_RIBBON_PURPLE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/HatRibbonRedPart", "PREFAB_HAT_RIBBON_RED_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/HatRibbonYellowPart", "PREFAB_HAT_RIBBON_YELLOW_PART")

winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowBaseBluePart", "PREFAB_SNOW_BASE_BLUE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowBaseOrangePart", "PREFAB_SNOW_BASE_ORANGE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowBaseWhitePart", "PREFAB_SNOW_BASE_WHITE_PART")

winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowmanBaseBluePart", "PREFAB_SNOWMAN_BASE_BLUE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowmanBaseOrangePart", "PREFAB_SNOWMAN_BASE_ORANGE_PART")
winterWonderland:registerAssetId("models/SnowmanMonument.fbx/Prefab/SnowmanBaseWhitePart", "PREFAB_SNOWMAN_BASE_WHITE_PART")

--[[----------------------- ASSET PROCESSOR & PART TYPES ----------------------]]--

winterWonderland:registerAssetProcessor("models/SnowmanMonument.fbx", {	DataType = "BUILDING_ASSET_PROCESSOR" })

winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/HatRibbonBluePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/HatRibbonPurplePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/HatRibbonRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/HatRibbonYellowPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })

winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonBlackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonBluePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonCyanPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonGreenPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonOrangePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonPurplePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/SnowmanMonument.fbx/Prefab/ButtonRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWMAN_MONUMENT",
	Name = "SNOWMAN_MONUMENT_NAME",
	Description = "SNOWMAN_MONUMENT_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    BuildingPartSetList = {
		{
            Name = "Snow Bases",
            BuildingPartList = {
                "SNOW_BASE_BLUE_PART", "SNOW_BASE_ORANGE_PART", "SNOW_BASE_WHITE_PART"
            }
		},
        {
            Name = "Snowman Base Parts",
            BuildingPartList = {
                "SNOWMAN_BASE_BLUE_PART", "SNOWMAN_BASE_ORANGE_PART", "SNOWMAN_BASE_WHITE_PART"
            }
		},
        {
            Name = "Hats",
            BuildingPartList = {
                "HAT_RIBBON_BLUE_PART", "HAT_RIBBON_PURPLE_PART", "HAT_RIBBON_RED_PART", "HAT_RIBBON_YELLOW_PART"
            }
		},
        {
            Name = "Buttons",
            BuildingPartList = {
                "BUTTON_BLACK_PART", "BUTTON_BLUE_PART", "BUTTON_CYAN_PART",
                "BUTTON_GREEN_PART", "BUTTON_ORANGE_PART", "BUTTON_PURPLE_PART",
                "BUTTON_RED_PART"
            }
		},
	}
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_BLUE_PART",
	Description = "SNOW_BASE_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOW_BASE_BLUE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 1.5 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_ORANGE_PART",
	Description = "SNOW_BASE_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOW_BASE_ORANGE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 1.5 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_WHITE_PART",
	Description = "SNOW_BASE_WHITE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOW_BASE_WHITE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 1.5 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_BLUE_PART",
	Description = "SNOWMAN_BASE_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_BLUE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_ORANGE_PART",
	Description = "SNOWMAN_BASE_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_ORANGE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_WHITE_PART",
	Description = "SNOWMAN_BASE_WHITE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_WHITE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_BLUE_PART",
	Description = "HAT_RIBBON_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_BLUE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_PURPLE_PART",
	Description = "HAT_RIBBON_PURPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_PURPLE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_RED_PART",
	Description = "HAT_RIBBON_RED_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_RED_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_YELLOW_PART",
	Description = "HAT_RIBBON_YELLOW_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_YELLOW_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_BLACK_PART",
	Description = "BUTTON_BLACK_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_BLACK_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_BLUE_PART",
	Description = "BUTTON_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_BLUE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_CYAN_PART",
	Description = "BUTTON_CYAN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_CYAN_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_GREEN_PART",
	Description = "BUTTON_GREEN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_GREEN_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_ORANGE_PART",
	Description = "BUTTON_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_ORANGE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_PURPLE_PART",
	Description = "BUTTON_PURPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_PURPLE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "BUTTON_RED_PART",
	Description = "BUTTON_RED_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_RED_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--