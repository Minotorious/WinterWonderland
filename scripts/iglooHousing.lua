--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                     IGLOO HOUSING                    | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/iglooHousing.fbx/Prefab/iglooLevel1Density1Part", "IGLOO_LEVEL_1_DENSITY_1_PREFAB")
winterWonderland:registerAssetId("models/iglooHousing.fbx/Prefab/iglooLevel1Density2Part", "IGLOO_LEVEL_1_DENSITY_2_PREFAB")

winterWonderland:registerAssetId("models/iglooHousing.fbx/Materials/Material.StonebrickWhite", "MATERIAL_STONEBRICK_WHITE")
winterWonderland:registerAssetId("models/iglooHousing.fbx/Materials/Material.SnowWhite", "MATERIAL_SNOW_WHITE")
winterWonderland:registerAssetId("models/iglooHousing.fbx/Materials/Material.Black", "MATERIAL_BLACK")

winterWonderland:override({
    Id = "MATERIAL_STONEBRICK_WHITE",
    BackFaceVisible = true
})

winterWonderland:override({
    Id = "MATERIAL_SNOW_WHITE",
    BackFaceVisible = true
})

winterWonderland:override({
    Id = "MATERIAL_BLACK",
    BackFaceVisible = true
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/iglooHousing.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "IGLOO_LEVEL_1_DENSITY_1_PART",
	Name = "IGLOO_LEVEL_1_DENSITY_1_PART_NAME",
	Description = "IGLOO_LEVEL_1_DENSITY_1_PART_DESC",
	Category = "CORE",
	BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createCircle(3 , { 0, 0 } , 36 ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true } }
            }
        },
    ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "IGLOO_LEVEL_1_DENSITY_1_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "IGLOO_LEVEL_1_DENSITY_2_PART",
	Name = "IGLOO_LEVEL_1_DENSITY_2_PART_NAME",
	Description = "IGLOO_LEVEL_1_DENSITY_2_PART_DESC",
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
		CoreObjectPrefab = "IGLOO_LEVEL_1_DENSITY_2_PREFAB"
	},
    ConstructionVisual = nil,
	Cost = {
        RessourcesNeeded = {}
    },
    IsVisibleWhenBuilt = true
})

winterWonderland:registerPrefabComponent("models/iglooHousing.fbx/Prefab/iglooLevel1Density1Part", { DataType = "COMP_GROUNDED" })
winterWonderland:registerPrefabComponent("models/iglooHousing.fbx/Prefab/iglooLevel1Density2Part", { DataType = "COMP_GROUNDED" })

--[[---------------------------- HOUSING ESSENTIALS ---------------------------]]--

winterWonderland:registerAssetId("models/iglooHousing.fbx/Prefab/housePart", "HOUSE_CUBE_PREFAB")

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "LEVEL_1_DENSITY_1_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "IGLOO_LEVEL_1_DENSITY_1_PART" }
        }
	}
})

winterWonderland:override({
    Id = "BUILDING_PART_HOUSING_SERF_DENSITY_1",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "LEVEL_1_DENSITY_1_CUBE_PART"
        }
	}
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "LEVEL_1_DENSITY_2_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "IGLOO_LEVEL_1_DENSITY_2_PART" }
        }
	}
})

winterWonderland:override({
    Id = "BUILDING_PART_HOUSING_SERF_DENSITY_2",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "LEVEL_1_DENSITY_2_CUBE_PART"
        }
	}
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--

winterWonderland:override({
    Id = "PARTICLE_SYSTEM_HOUSING_SMOKE",
    StartColor = {0.1, 0.1, 0.1, 0.25}
})

winterWonderland:registerPrefabComponent("models/iglooHousing.fbx/Prefab/iglooLevel1Density1Part/SmokeEmitterL1D1", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/iglooHousing.fbx/Prefab/iglooLevel1Density2Part/SmokeEmitterL1D2", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true,
	IsEmitting = true
})