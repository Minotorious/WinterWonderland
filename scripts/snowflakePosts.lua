--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   SNOWFLAKE POSTS                    | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowflakePostPart", "PREFAB_SNOWFLAKE_POST_PART")
winterWonderland:registerAssetId("models/snowflake.fbx/Prefab/SnowflakePart", "PREFAB_SNOWFLAKE_PART")

winterWonderland:registerAssetId("models/snowflake.fbx/Materials/Material.Snowflake", "MATERIAL_SNOWFLAKE")

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWFLAKE_POST",
	Name = "SNOWFLAKE_POST_NAME",
	Description = "SNOWFLAKE_POST_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFLAKE_POST_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFLAKE_POST_PART",
	Description = "SNOWFLAKE_POST_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFLAKE_POST_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 0.25 , { 0, 0 } , 36 ),
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakePostPart/SnowflakePostEmitterBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_POST_PARTICLE_SYSTEM_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakePostPart/SnowflakePostEmitterWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_POST_PARTICLE_SYSTEM_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_POST_PARTICLE_SYSTEM_BLUE",
	Visual= {
		--DataType = "PARTICLE_DEFAULT_VISUAL"
        DataType = "PARTICLE_OBJECT_VISUAL",
        Prefab = "PREFAB_SNOWFLAKE_PART"
	},
	--Material = "MATERIAL_SNOWFLAKE_PARTICLE_BLUE",
	Material = "MATERIAL_SNOWFLAKE",
	--BillboardBehavior = "FACE_CAMERA",
	BillboardBehavior = "FACE_CAMERA_Y_ALIGN",
	MinimumQuality = "LOW",
    Duration = 10,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 0.5, 0.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 0.1,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 0.01
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 0, 0, 0 },
		ValueB = { 0, 0, 0 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.1, Value = 0.25 },
        { T = 0.2, Value = 0.5 },
        { T = 0.3, Value = 0.25 },
        { T = 0.4, Value = 0 }
	},
	RotationOverLifetime = { 0, 0 }
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_POST_PARTICLE_SYSTEM_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "LOW",
    Duration = 10,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1, 1 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 0.1,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 0.001,
        Radius = 0.001
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 0, 0, 0 },
		ValueB = { 0, 0, 0 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0.5, Value = 0 },
        { T = 0.6, Value = 0.5 },
        { T = 0.7, Value = 1 },
        { T = 0.8, Value = 0.5 },
        { T = 0.9, Value = 0 }
	},
	RotationOverLifetime = { 0, 0 }
})