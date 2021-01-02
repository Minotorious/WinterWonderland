--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |               CHRISTMAS TREE MONUMENT                | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreeMonumentPolePart", "PREFAB_CHRISTMAS_TREE_MONUMENT_POLE_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreeGreenPart", "PREFAB_CHRISTMAS_TREE_GREEN_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreeWhitePart", "PREFAB_CHRISTMAS_TREE_WHITE_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperSnowflakePart", "PREFAB_TOPPER_SNOWFLAKE_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperSpikePart", "PREFAB_TOPPER_SPIKE_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperStarPart", "PREFAB_TOPPER_STAR_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentBluePart", "PREFAB_SPHERE_ORNAMENT_BLUE_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentBurgundyPart", "PREFAB_SPHERE_ORNAMENT_BURGUNDY_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentCyanPart", "PREFAB_SPHERE_ORNAMENT_CYAN_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGoldPart", "PREFAB_SPHERE_ORNAMENT_GOLD_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGreenPart", "PREFAB_SPHERE_ORNAMENT_GREEN_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGreyPart", "PREFAB_SPHERE_ORNAMENT_GREY_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentOrangePart", "PREFAB_SPHERE_ORNAMENT_ORANGE_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentPinkPart", "PREFAB_SPHERE_ORNAMENT_PINK_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentPurplePart", "PREFAB_SPHERE_ORNAMENT_PURPLE_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentRedPart", "PREFAB_SPHERE_ORNAMENT_RED_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentSilverPart", "PREFAB_SPHERE_ORNAMENT_SILVER_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentYellowPart", "PREFAB_SPHERE_ORNAMENT_YELLOW_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentBurgundyPart", "PREFAB_STAR_ORNAMENT_BURGUNDY_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentGoldPart", "PREFAB_STAR_ORNAMENT_GOLD_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentSilverPart", "PREFAB_STAR_ORNAMENT_SILVER_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Materials/Material.BranchesGreen", "MATERIAL_BRANCHES_GREEN")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Materials/Material.BranchesWhite", "MATERIAL_BRANCHES_WHITE")

winterWonderland:override({
    Id = "MATERIAL_BRANCHES_GREEN",
    HasAlphaTest = true,
    BackFaceVisible = true
})

winterWonderland:override({
    Id = "MATERIAL_BRANCHES_WHITE",
    HasAlphaTest = true,
    BackFaceVisible = true
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/christmasTreeMonument/christmasTreeMonument.fbx", {	DataType = "BUILDING_ASSET_PROCESSOR" })

winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperSnowflakePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperSpikePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/TopperStarPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })

winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentBluePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentBurgundyPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentCyanPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGoldPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGreenPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGreyPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentOrangePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentPinkPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentPurplePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentSilverPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentYellowPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentBurgundyPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentGoldPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/StarOrnamentSilverPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreeGreenPart/AttachTop.001", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "INNER_TOP" }, AllowedAngles = {-180, 180} })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreeWhitePart/AttachTop.004", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "INNER_TOP" }, AllowedAngles = {-180, 180} })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "CHRISTMAS_TREE_MONUMENT",
	Name = "CHRISTMAS_TREE_MONUMENT_NAME",
	Description = "CHRISTMAS_TREE_MONUMENT_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_TREE_MONUMENT_POLE_PART",
    BuildingPartSetList = {
        {
            Name = "CHRISTMAS_TREE_MONUMENT_TREES_CATEGORY_NAME",
            BuildingPartList = {
                "CHRISTMAS_TREE_GREEN_PART", "CHRISTMAS_TREE_WHITE_PART"
            }
		},
        {
            Name = "CHRISTMAS_TREE_MONUMENT_TOPPERS_CATEGORY_NAME",
            BuildingPartList = {
                "TOPPER_SNOWFLAKE_PART", "TOPPER_SPIKE_PART", "TOPPER_STAR_PART"
            }
		},
        {
            Name = "CHRISTMAS_TREE_MONUMENT_STAR_ORNAMENTS_CATEGORY_NAME",
            BuildingPartList = {
                "STAR_ORNAMENT_BURGUNDY_PART", "STAR_ORNAMENT_GOLD_PART", "STAR_ORNAMENT_SILVER_PART"
            }
		},
        {
            Name = "CHRISTMAS_TREE_MONUMENT_SPHERE_ORNAMENTS_CATEGORY_NAME",
            BuildingPartList = {
                "SPHERE_ORNAMENT_BLUE_PART", "SPHERE_ORNAMENT_BURGUNDY_PART", "SPHERE_ORNAMENT_CYAN_PART",
                "SPHERE_ORNAMENT_GOLD_PART", "SPHERE_ORNAMENT_GREEN_PART", "SPHERE_ORNAMENT_GREY_PART",
                "SPHERE_ORNAMENT_ORANGE_PART", "SPHERE_ORNAMENT_PINK_PART", "SPHERE_ORNAMENT_PURPLE_PART",
                "SPHERE_ORNAMENT_RED_PART", "SPHERE_ORNAMENT_SILVER_PART", "SPHERE_ORNAMENT_YELLOW_PART"
            }
		}
    }
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_TREE_MONUMENT_POLE_PART",
    Name = "CHRISTMAS_TREE_MONUMENT_POLE_PART_NAME",
	Description = "CHRISTMAS_TREE_MONUMENT_POLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_TREE_MONUMENT_POLE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsMonumentCore = true,
    IsMoveBuildingInsteadOfPart = true,
    IsVisibleWhenBuilt = false,
    IsShowInUi = false
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_TREE_GREEN_PART",
    Name = "CHRISTMAS_TREE_GREEN_PART_NAME",
	--Description = "CHRISTMAS_TREE_GREEN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_TREE_GREEN_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 8.5 , { 0, 0 } , 36 ),
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
	Id = "CHRISTMAS_TREE_WHITE_PART",
    Name = "CHRISTMAS_TREE_WHITE_PART_NAME",
	--Description = "CHRISTMAS_TREE_WHITE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_TREE_WHITE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 8.5 , { 0, 0 } , 36 ),
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
	Id = "TOPPER_SNOWFLAKE_PART",
    Name = "TOPPER_SNOWFLAKE_PART_NAME",
	--Description = "TOPPER_SNOWFLAKE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_TOPPER_SNOWFLAKE_PART"
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
	Id = "TOPPER_SPIKE_PART",
    Name = "TOPPER_SPIKE_PART_NAME",
	--Description = "TOPPER_SPIKE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_TOPPER_SPIKE_PART"
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
	Id = "TOPPER_STAR_PART",
    Name = "TOPPER_STAR_PART_NAME",
	--Description = "TOPPER_STAR_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_TOPPER_STAR_PART"
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
	Id = "SPHERE_ORNAMENT_BLUE_PART",
    Name = "SPHERE_ORNAMENT_BLUE_PART_NAME",
	--Description = "SPHERE_ORNAMENT_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_BLUE_PART"
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
	Id = "SPHERE_ORNAMENT_BURGUNDY_PART",
    Name = "SPHERE_ORNAMENT_BURGUNDY_PART_NAME",
	--Description = "SPHERE_ORNAMENT_BURGUNDY_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_BURGUNDY_PART"
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
	Id = "SPHERE_ORNAMENT_CYAN_PART",
    Name = "SPHERE_ORNAMENT_CYAN_PART_NAME",
	--Description = "SPHERE_ORNAMENT_CYAN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_CYAN_PART"
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
	Id = "SPHERE_ORNAMENT_GOLD_PART",
    Name = "SPHERE_ORNAMENT_GOLD_PART_NAME",
	--Description = "SPHERE_ORNAMENT_GOLD_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_GOLD_PART"
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
	Id = "SPHERE_ORNAMENT_GREEN_PART",
    Name = "SPHERE_ORNAMENT_GREEN_PART_NAME",
	--Description = "SPHERE_ORNAMENT_GREEN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_GREEN_PART"
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
	Id = "SPHERE_ORNAMENT_GREY_PART",
    Name = "SPHERE_ORNAMENT_GREY_PART_NAME",
	--Description = "SPHERE_ORNAMENT_GREY_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_GREY_PART"
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
	Id = "SPHERE_ORNAMENT_ORANGE_PART",
    Name = "SPHERE_ORNAMENT_ORANGE_PART_NAME",
	--Description = "SPHERE_ORNAMENT_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_ORANGE_PART"
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
	Id = "SPHERE_ORNAMENT_PINK_PART",
    Name = "SPHERE_ORNAMENT_PINK_PART_NAME",
	--Description = "SPHERE_ORNAMENT_PINK_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_PINK_PART"
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
	Id = "SPHERE_ORNAMENT_PURPLE_PART",
    Name = "SPHERE_ORNAMENT_PURPLE_PART_NAME",
	--Description = "SPHERE_ORNAMENT_PURPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_PURPLE_PART"
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
	Id = "SPHERE_ORNAMENT_RED_PART",
    Name = "SPHERE_ORNAMENT_RED_PART_NAME",
	--Description = "SPHERE_ORNAMENT_RED_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_RED_PART"
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
	Id = "SPHERE_ORNAMENT_SILVER_PART",
    Name = "SPHERE_ORNAMENT_SILVER_PART_NAME",
	--Description = "SPHERE_ORNAMENT_SILVER_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_SILVER_PART"
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
	Id = "SPHERE_ORNAMENT_YELLOW_PART",
    Name = "SPHERE_ORNAMENT_YELLOW_PART_NAME",
	--Description = "SPHERE_ORNAMENT_YELLOW_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SPHERE_ORNAMENT_YELLOW_PART"
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
	Id = "STAR_ORNAMENT_BURGUNDY_PART",
    Name = "STAR_ORNAMENT_BURGUNDY_PART_NAME",
	--Description = "STAR_ORNAMENT_BURGUNDY_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_STAR_ORNAMENT_BURGUNDY_PART"
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
	Id = "STAR_ORNAMENT_GOLD_PART",
    Name = "STAR_ORNAMENT_GOLD_PART_NAME",
	--Description = "STAR_ORNAMENT_GOLD_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_STAR_ORNAMENT_GOLD_PART"
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
	Id = "STAR_ORNAMENT_SILVER_PART",
    Name = "STAR_ORNAMENT_SILVER_PART_NAME",
	--Description = "STAR_ORNAMENT_SILVER_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_STAR_ORNAMENT_SILVER_PART"
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