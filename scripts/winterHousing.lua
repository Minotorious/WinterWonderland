--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                    WINTER HOUSING                    | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density1Part", "IGLOO_LEVEL_1_DENSITY_1_PREFAB")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density2Part", "IGLOO_LEVEL_1_DENSITY_2_PREFAB")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/mudHutLevel2Density1Part", "MUD_HUT_LEVEL_2_DENSITY_1_PREFAB")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/mudHutLevel2Density2Part", "MUD_HUT_LEVEL_2_DENSITY_2_PREFAB")

winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.StonebrickWhite", "MATERIAL_STONEBRICK_WHITE")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.Mud", "MATERIAL_MUD")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.SnowWhite", "MATERIAL_SNOW_WHITE")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.Black", "MATERIAL_BLACK")
winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Materials/Material.Transparent", "MATERIAL_TRANSPARENT")

winterWonderland:overrideAsset({
    Id = "MATERIAL_STONEBRICK_WHITE",
    BackFaceVisible = true
})

winterWonderland:overrideAsset({
    Id = "MATERIAL_MUD",
    BackFaceVisible = true
})

winterWonderland:overrideAsset({
    Id = "MATERIAL_SNOW_WHITE",
    BackFaceVisible = true
})

winterWonderland:overrideAsset({
    Id = "MATERIAL_BLACK",
    BackFaceVisible = true
})

winterWonderland:overrideAsset({
    Id = "MATERIAL_TRANSPARENT",
    HasAlphaTest = true
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/winterHousing/winterHousing.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:registerAsset({
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
	}
})

winterWonderland:registerAsset({
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
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "MUD_HUT_LEVEL_2_DENSITY_1_PART",
	Name = "MUD_HUT_LEVEL_2_DENSITY_1_PART_NAME",
	Description = "MUD_HUT_LEVEL_2_DENSITY_1_PART_DESC",
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
		CoreObjectPrefab = "MUD_HUT_LEVEL_2_DENSITY_1_PREFAB"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "MUD_HUT_LEVEL_2_DENSITY_2_PART",
	Name = "MUD_HUT_LEVEL_2_DENSITY_2_PART_NAME",
	Description = "MUD_HUT_LEVEL_2_DENSITY_2_PART_DESC",
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
		CoreObjectPrefab = "MUD_HUT_LEVEL_2_DENSITY_2_PREFAB"
	}
})

winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density1Part", { DataType = "COMP_GROUNDED" })
winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density2Part", { DataType = "COMP_GROUNDED" })
winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/mudHutLevel2Density1Part", { DataType = "COMP_GROUNDED" })
winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/mudHutLevel2Density2Part", { DataType = "COMP_GROUNDED" })

--[[---------------------------- HOUSING ESSENTIALS ---------------------------]]--

winterWonderland:registerAssetId("models/winterHousing/winterHousing.fbx/Prefab/housePart", "HOUSE_CUBE_PREFAB")

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "IGLOO_LEVEL_1_DENSITY_1_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "IGLOO_LEVEL_1_DENSITY_1_PART" }
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "MUD_HUT_LEVEL_2_DENSITY_1_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "MUD_HUT_LEVEL_2_DENSITY_1_PART" }
        }
	}
})

winterWonderland:overrideAsset({
    Id = "BUILDING_PART_HOUSING_SERF_DENSITY_1",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "IGLOO_LEVEL_1_DENSITY_1_CUBE_PART"
        }
	}
})

winterWonderland:overrideAsset({
    Id = "BUILDING_PART_HOUSING_CITIZEN_DENSITY_1",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "MUD_HUT_LEVEL_2_DENSITY_1_CUBE_PART"
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "IGLOO_LEVEL_1_DENSITY_2_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "IGLOO_LEVEL_1_DENSITY_2_PART" }
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "MUD_HUT_LEVEL_2_DENSITY_2_CUBE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "HOUSE_CUBE_PREFAB" },
        MandatoryBuildingPartList = {
            { BuildingPart = "MUD_HUT_LEVEL_2_DENSITY_2_PART" }
        }
	}
})

winterWonderland:overrideAsset({
    Id = "BUILDING_PART_HOUSING_SERF_DENSITY_2",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "IGLOO_LEVEL_1_DENSITY_2_CUBE_PART"
        }
	}
})

winterWonderland:overrideAsset({
    Id = "BUILDING_PART_HOUSING_CITIZEN_DENSITY_2",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_RANDOM_PART",
		RandomPartList = {
            "MUD_HUT_LEVEL_2_DENSITY_2_CUBE_PART"
        }
	}
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--

winterWonderland:overrideAsset({
    Id = "PARTICLE_SYSTEM_HOUSING_SMOKE",
    StartColor = {0.1, 0.1, 0.1, 0.25}
})

winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density1Part/SmokeEmitterL1D1", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/winterHousing/winterHousing.fbx/Prefab/iglooLevel1Density2Part/SmokeEmitterL1D2", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true,
	IsEmitting = true
})