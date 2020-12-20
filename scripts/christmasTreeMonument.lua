--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |               CHRISTMAS TREE MONUMENT                | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/ChristmasTreePart", "PREFAB_CHRISTMAS_TREE_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGoldPart", "PREFAB_SPHERE_ORNAMENT_GOLD_PART")
winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentRedPart", "PREFAB_SPHERE_ORNAMENT_RED_PART")

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Materials/Material.Branches", "MATERIAL_BRANCHES")

winterWonderland:override({
    Id = "MATERIAL_BRANCHES",
    HasAlphaTest = true,
    BackFaceVisible = true
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/christmasTreeMonument/christmasTreeMonument.fbx", {	DataType = "BUILDING_ASSET_PROCESSOR" })

winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentGoldPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/christmasTreeMonument/christmasTreeMonument.fbx/Prefab/SphereOrnamentRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "CHRISTMAS_TREE_MONUMENT",
	Name = "CHRISTMAS_TREE_MONUMENT_NAME",
	Description = "CHRISTMAS_TREE_MONUMENT_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    BuildingPartSetList = {
        {
            Name = "CHRISTMAS_TREE_MONUMENT_TREES_CATEGORY_NAME",
            BuildingPartList = {
                "CHRISTMAS_TREE_PART"
            }
		},
        {
            Name = "CHRISTMAS_TREE_MONUMENT_SPHERE_ORNAMENTS_CATEGORY_NAME",
            BuildingPartList = {
                "SPHERE_ORNAMENT_GOLD_PART", "SPHERE_ORNAMENT_RED_PART"
            }
		},
    }
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_TREE_PART",
    Name = "CHRISTMAS_TREE_PART_NAME",
	--Description = "CHRISTMAS_TREE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_TREE_PART"
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
--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--