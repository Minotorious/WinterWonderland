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
winterWonderland:registerAssetId("models/sleigh.fbx/Prefab/elkPart", "PREFAB_ELK_PART")

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "CHRISTMAS_SLEIGH_PART",
	Name = "CHRISTMAS_SLEIGH_PART_NAME",
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
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "ELK_PART",
	Name = "ELK_PART_NAME",
	Description = "ELK_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_ELK_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 1.0 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	}
})