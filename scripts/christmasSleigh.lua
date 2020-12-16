--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   CHRISTMAS SLEIGH                   | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/sleigh.fbx/Prefab/christmas_sleighPart", "PREFAB_CHRISTMAS_SLEIGH_PART")

--[[winterWonderland:registerAssetId("models/ChristmasTreeMonument.fbx/Materials/Material.Branches", "MATERIAL_BRANCHES")

winterWonderland:override({
    Id = "MATERIAL_BRANCHES",
    HasAlphaTest = true
})]]--

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "CHRISTMAS_SLEIGH",
	Name = "CHRISTMAS_SLEIGH_NAME",
	Description = "CHRISTMAS_SLEIGH_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_SLEIGH_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_SLEIGH_PART",
	Description = "CHRISTMAS_SLEIGH_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_SLEIGH_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 2.5 , { 0, 0 } , 36 ),
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