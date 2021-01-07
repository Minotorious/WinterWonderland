--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                    WINTER HOUSING                    | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.StonebrickBlueIce", "MATERIAL_STONEBRICK_BLUE_ICE")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.CrystalBlue", "MATERIAL_CRYSTAL_BLUE")

winterWonderland:override({
    Id = "MATERIAL_STONEBRICK_BLUE_ICE",
    --HasTransparency = true,
    IsLighted = false,
	--HasShadow = false
})

winterWonderland:override({
    Id = "MATERIAL_CRYSTAL_BLUE",
    --HasTransparency = true,
    IsLighted = false,
	--HasShadow = false
})

winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/RampartPathPart", "TEST_PREFAB")

winterWonderland:register({
	DataType = "BUILDING",
    Id = "TEST",
    Name = "TEST_NAME",
	Description = "TEST_DESC",
    BuildingType = "DECORATION",
	AssetCoreBuildingPart = "TEST_PART",
    
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "TEST_PART",
	Name = "TEST_PART_NAME",
	Description = "TEST_PART_DESC",
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
		CoreObjectPrefab = "TEST_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})
