--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   SNOWMAN MONUMENT                   | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanMonumentPolePart", "PREFAB_SNOWMAN_MONUMENT_POLE_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanExamplePart", "PREFAB_SNOWMAN_EXAMPLE_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBlackPart", "PREFAB_BUTTON_BLACK_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBluePart", "PREFAB_BUTTON_BLUE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBrownPart", "PREFAB_BUTTON_BROWN_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonCyanPart", "PREFAB_BUTTON_CYAN_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonGreenPart", "PREFAB_BUTTON_GREEN_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonGreyPart", "PREFAB_BUTTON_GREY_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonOrangePart", "PREFAB_BUTTON_ORANGE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonPurplePart", "PREFAB_BUTTON_PURPLE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonRedPart", "PREFAB_BUTTON_RED_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonBluePart", "PREFAB_HAT_RIBBON_BLUE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonGreenPart", "PREFAB_HAT_RIBBON_GREEN_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonGreyPart", "PREFAB_HAT_RIBBON_GREY_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonPurplePart", "PREFAB_HAT_RIBBON_PURPLE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonRedPart", "PREFAB_HAT_RIBBON_RED_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonYellowPart", "PREFAB_HAT_RIBBON_YELLOW_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseBluePart", "PREFAB_SNOW_BASE_BLUE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseOrangePart", "PREFAB_SNOW_BASE_ORANGE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseWhitePart", "PREFAB_SNOW_BASE_WHITE_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseBluePart", "PREFAB_SNOWMAN_BASE_BLUE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseOrangePart", "PREFAB_SNOWMAN_BASE_ORANGE_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseWhitePart", "PREFAB_SNOWMAN_BASE_WHITE_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft1Part", "PREFAB_BRANCH_LEFT_1_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft2Part", "PREFAB_BRANCH_LEFT_2_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft3Part", "PREFAB_BRANCH_LEFT_3_PART")

winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight1Part", "PREFAB_BRANCH_RIGHT_1_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight2Part", "PREFAB_BRANCH_RIGHT_2_PART")
winterWonderland:registerAssetId("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight3Part", "PREFAB_BRANCH_RIGHT_3_PART")

winterWonderland:registerAssetId("models/snowmanMonument/pipeSmoke.png", "PIPE_SMOKE_TEXTURE")

winterWonderland:registerAsset({
    DataType = "MATERIAL",
    Id = "MATERIAL_PIPE_SMOKE_PARTICLE",
    AlbedoTexture = "PIPE_SMOKE_TEXTURE",
	HasShadow = false
})

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--

winterWonderland:registerAssetProcessor("models/snowmanMonument/snowmanMonument.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonBluePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonGreenPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonGreyPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonPurplePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/HatRibbonYellowPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBlackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBluePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonBrownPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonCyanPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonGreenPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonGreyPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonOrangePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonPurplePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/ButtonRedPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft1Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "LEFT" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft2Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "LEFT" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchLeft3Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "LEFT" })

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight1Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "RIGHT" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight2Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "RIGHT" })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/BranchRight3Part", { DataType = "COMP_BUILDING_PART", BuildingPartType = "RIGHT" })

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseBluePart/AttachMajor", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "MAJOR" }, AllowedAngles = {-180, 180} })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseOrangePart/AttachMajor.002", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "MAJOR" }, AllowedAngles = {-180, 180} })
winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowBaseWhitePart/AttachMajor.003", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "MAJOR" }, AllowedAngles = {-180, 180} })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:registerAsset({
	DataType = "BUILDING",
	Id = "SNOWMAN_MONUMENT",
	Name = "SNOWMAN_MONUMENT_NAME",
	Description = "SNOWMAN_MONUMENT_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWMAN_MONUMENT_POLE_PART",
    BuildingPartSetList = {
        {
            Name = "SNOWMAN_MONUMENT_EXAMPLE_CATEGORY_NAME",
            BuildingPartList = {
                "SNOWMAN_EXAMPLE_PART"
            }
		},
		{
            Name = "SNOWMAN_MONUMENT_SNOW_BASES_CATEGORY_NAME",
            BuildingPartList = {
                "SNOW_BASE_BLUE_PART", "SNOW_BASE_ORANGE_PART", "SNOW_BASE_WHITE_PART"
            }
		},
        {
            Name = "SNOWMAN_MONUMENT_SNOWMAN_BASE_PARTS_CATEGORY_NAME",
            BuildingPartList = {
                "SNOWMAN_BASE_BLUE_PART", "SNOWMAN_BASE_ORANGE_PART", "SNOWMAN_BASE_WHITE_PART"
            }
		},
        {
            Name = "SNOWMAN_MONUMENT_HATS_CATEGORY_NAME",
            BuildingPartList = {
                "HAT_RIBBON_BLUE_PART", "HAT_RIBBON_GREEN_PART", "HAT_RIBBON_GREY_PART",
                "HAT_RIBBON_PURPLE_PART", "HAT_RIBBON_RED_PART", "HAT_RIBBON_YELLOW_PART"
            }
		},
        {
            Name = "SNOWMAN_MONUMENT_BUTTONS_CATEGORY_NAME",
            BuildingPartList = {
                "BUTTON_BLACK_PART", "BUTTON_BLUE_PART", "BUTTON_BROWN_PART",
                "BUTTON_CYAN_PART", "BUTTON_GREEN_PART", "BUTTON_GREY_PART",
                "BUTTON_ORANGE_PART", "BUTTON_PURPLE_PART", "BUTTON_RED_PART"
            }
		},
        {
            Name = "SNOWMAN_MONUMENT_BRANCHES_LEFT_CATEGORY_NAME",
            BuildingPartList = {
                "BRANCH_LEFT_1_PART", "BRANCH_LEFT_2_PART", "BRANCH_LEFT_3_PART"
            }
		},
        {
            Name = "SNOWMAN_MONUMENT_BRANCHES_RIGHT_CATEGORY_NAME",
            BuildingPartList = {
                "BRANCH_RIGHT_1_PART", "BRANCH_RIGHT_2_PART", "BRANCH_RIGHT_3_PART"
            }
		},
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_MONUMENT_POLE_PART",
    Name = "SNOWMAN_MONUMENT_POLE_PART_NAME",
	Description = "SNOWMAN_MONUMENT_POLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_MONUMENT_POLE_PART"
	},
    IsMonumentCore = true,
    IsMoveBuildingInsteadOfPart = true,
    IsVisibleWhenBuilt = false,
    IsShowInUi = false
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_EXAMPLE_PART",
    Name = "SNOWMAN_EXAMPLE_PART_NAME",
	Description = "SNOWMAN_EXAMPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_EXAMPLE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 1.5 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_BLUE_PART",
    Name = "SNOW_BASE_BLUE_PART_NAME",
	--Description = "SNOW_BASE_BLUE_PART_DESC",
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
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_ORANGE_PART",
    Name = "SNOW_BASE_ORANGE_PART_NAME",
	--Description = "SNOW_BASE_ORANGE_PART_DESC",
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
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOW_BASE_WHITE_PART",
    Name = "SNOW_BASE_WHITE_PART_NAME",
	--Description = "SNOW_BASE_WHITE_PART_DESC",
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
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_BLUE_PART",
    Name = "SNOWMAN_BASE_BLUE_PART_NAME",
	--Description = "SNOWMAN_BASE_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_BLUE_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_ORANGE_PART",
    Name = "SNOWMAN_BASE_ORANGE_PART_NAME",
	--Description = "SNOWMAN_BASE_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_ORANGE_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWMAN_BASE_WHITE_PART",
    Name = "SNOWMAN_BASE_WHITE_PART_NAME",
	--Description = "SNOWMAN_BASE_WHITE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWMAN_BASE_WHITE_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_BLUE_PART",
    Name = "HAT_RIBBON_BLUE_PART_NAME",
	--Description = "HAT_RIBBON_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_BLUE_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_GREEN_PART",
    Name = "HAT_RIBBON_GREEN_PART_NAME",
	--Description = "HAT_RIBBON_GREEN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_GREEN_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_GREY_PART",
    Name = "HAT_RIBBON_GREY_PART_NAME",
	--Description = "HAT_RIBBON_GREY_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_GREY_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_PURPLE_PART",
	Name = "HAT_RIBBON_PURPLE_PART_NAME",
	--Description = "HAT_RIBBON_PURPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_PURPLE_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_RED_PART",
	Name = "HAT_RIBBON_RED_PART_NAME",
	--Description = "HAT_RIBBON_RED_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_RED_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "HAT_RIBBON_YELLOW_PART",
	Name = "HAT_RIBBON_YELLOW_PART_NAME",
	--Description = "HAT_RIBBON_YELLOW_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_HAT_RIBBON_YELLOW_PART"
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_BLACK_PART",
	Name = "BUTTON_BLACK_PART_NAME",
	--Description = "BUTTON_BLACK_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_BLACK_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_BLUE_PART",
	Name = "BUTTON_BLUE_PART_NAME",
	--Description = "BUTTON_BLUE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_BLUE_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_BROWN_PART",
	Name = "BUTTON_BROWN_PART_NAME",
	--Description = "BUTTON_BROWN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_BROWN_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_CYAN_PART",
	Name = "BUTTON_CYAN_PART_NAME",
	--Description = "BUTTON_CYAN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_CYAN_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_GREEN_PART",
	Name = "BUTTON_GREEN_PART_NAME",
	--Description = "BUTTON_GREEN_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_GREEN_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_GREY_PART",
	Name = "BUTTON_GREY_PART_NAME",
	--Description = "BUTTON_GREY_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_GREY_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_ORANGE_PART",
	Name = "BUTTON_ORANGE_PART_NAME",
	--Description = "BUTTON_ORANGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_ORANGE_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_PURPLE_PART",
	Name = "BUTTON_PURPLE_PART_NAME",
	--Description = "BUTTON_PURPLE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_PURPLE_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BUTTON_RED_PART",
	Name = "BUTTON_RED_PART_NAME",
	--Description = "BUTTON_RED_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTTON_RED_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            GroupHeight = 0.0,
            CameraPosition = { 0, 0, -1.1 },
            OrientationOffset = -15.0,
            CameraPitchOffset = 0.0
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_LEFT_1_PART",
	Name = "BRANCH_LEFT_1_PART_NAME",
	--Description = "BRANCH_LEFT_1_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_LEFT_1_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_LEFT_2_PART",
	Name = "BRANCH_LEFT_2_PART_NAME",
	--Description = "BRANCH_LEFT_2_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_LEFT_2_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_LEFT_3_PART",
	Name = "BRANCH_LEFT_3_PART_NAME",
	--Description = "BRANCH_LEFT_3_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_LEFT_3_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_RIGHT_1_PART",
	Name = "BRANCH_RIGHT_1_PART_NAME",
	--Description = "BRANCH_RIGHT_1_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_RIGHT_1_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_RIGHT_2_PART",
	Name = "BRANCH_RIGHT_2_PART_NAME",
	--Description = "BRANCH_RIGHT_2_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_RIGHT_2_PART",
        MiniatureConfig = {
            ClipUnderGround = false
        }
	}
})

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "BRANCH_RIGHT_3_PART",
	Name = "BRANCH_RIGHT_3_PART_NAME",
	--Description = "BRANCH_RIGHT_3_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BRANCH_RIGHT_3_PART",
        MiniatureConfig = {
            ClipUnderGround = false,
            --GroupHeight = 0.0,
            CameraPosition = { 0, 0, -3.5 },
            OrientationOffset = -15.0,
            --CameraPitchOffset = 0.0
        }
	}
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanExamplePart/ExamplePipeSmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWMAN_PIPE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseBluePart/PipeSmokeEmitter.001", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWMAN_PIPE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseOrangePart/PipeSmokeEmitter.002", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWMAN_PIPE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/snowmanMonument/snowmanMonument.fbx/Prefab/SnowmanBaseWhitePart/PipeSmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWMAN_PIPE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWMAN_PIPE_PARTICLE_SYSTEM",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PIPE_SMOKE_PARTICLE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "LOW",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 3,
	StartSpeed = { 0, 0 },
	StartSize = { 0.2, 0.2 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 1.5,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 0.04
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 0.01, 0.05, 0.01 },
		ValueB = { -0.01, 0.05, -0.01 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.1 },
        { T = 0.5, Value = 0.2 },
        { T = 0.75, Value = 0.1 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { 0, 0 }
})