--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                    CHRISTMAS GIFTS                   | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/gifts1.fbx/Prefab/christmas_giftsPart", "PREFAB_CHRISTMAS_GIFTS_PART")
winterWonderland:registerAssetId("models/gifts1.fbx/Prefab/christmas_gift1Part", "PREFAB_CHRISTMAS_GIFT1_PART")
winterWonderland:registerAssetId("models/gifts1.fbx/Prefab/christmas_gift2Part", "PREFAB_CHRISTMAS_GIFT2_PART")


--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "CHRISTMAS_GIFTS",
	Name = "CHRISTMAS_GIFTS_NAME",
	Description = "CHRISTMAS_GIFTS_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_GIFTS_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_GIFTS_PART",
	Description = "CHRISTMAS_GIFTS_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_GIFTS_PART"
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
	DataType = "BUILDING",
	Id = "CHRISTMAS_GIFT1",
	Name = "CHRISTMAS_GIFT1_NAME",
	Description = "CHRISTMAS_GIFT1_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_GIFT1_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_GIFT1_PART",
	Description = "CHRISTMAS_GIFT1_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_GIFT1_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 0.7 , { 0, 0 } , 36 ),
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
	DataType = "BUILDING",
	Id = "CHRISTMAS_GIFT2",
	Name = "CHRISTMAS_GIFT2_NAME",
	Description = "CHRISTMAS_GIFT2_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "CHRISTMAS_GIFT2_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_GIFT2_PART",
	Description = "CHRISTMAS_GIFT2_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CHRISTMAS_GIFT2_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 0.6 , { 0, 0 } , 36 ),
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