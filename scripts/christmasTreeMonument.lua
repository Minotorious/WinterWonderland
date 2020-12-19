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

winterWonderland:registerAssetId("models/christmasTreeMonument/christmasTreeMonument.fbx/Materials/Material.Branches", "MATERIAL_BRANCHES")

winterWonderland:override({
    Id = "MATERIAL_BRANCHES",
    HasAlphaTest = true,
    BackFaceVisible = true
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "CHRISTMAS_TREE",
	Name = "CHRISTMAS_TREE_NAME",
	Description = "CHRISTMAS_TREE_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_TREE_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_TREE_PART",
	Description = "CHRISTMAS_TREE_PART_DESC",
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

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--