--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |           SNOWFLAKE GLOBAL PARTICLE SYSTEM           | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart", "PREFAB_SNOWFLAKE_EMITTER_PART")

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:registerAsset({
	DataType = "BUILDING_PART",
	Id = "SNOWFLAKE_EMITTER_PART",
    Name = "SNOWFLAKE_EMITTER_PART_NAME",
	Description = "SNOWFLAKE_EMITTER_PART_DESC",
    Category = BUILDING_PART_TYPE.EMITTER,
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFLAKE_EMITTER_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 0.25 , { 0, 0 } , 36 ),
			Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
			}
        }
	}
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterLowBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_LOW_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterLowWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_LOW_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_LOW_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "LOW",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 500,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_LOW_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "LOW",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 500,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterMediumBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterMediumWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "MEDIUM",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 500,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "MEDIUM",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 500,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterHighBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_HIGH_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterHighWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_HIGH_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_HIGH_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "HIGH",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 1000,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_HIGH_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "HIGH",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 1000,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterFullBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_FULL_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterPart/SnowflakeEmitterFullWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_FULL_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_FULL_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "FULL",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 1000,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerAsset({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_FULL_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_PARTICLE_SNOWFLAKE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	MinimumQuality = "FULL",
    Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 1000,
	Shape = {
        DataType = "PARTICLE_EMITTER_SHAPE_CONE",
        Angle = 90,
        Radius = 750
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 3, -3, 3 },
		ValueB = { -3, -3, -3 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {},
		AlphaList = {},
	},
	SizeOverLifetime = {
        { T = 0, Value = 0 },
        { T = 0.25, Value = 0.75 },
        { T = 0.5, Value = 1.5 },
        { T = 0.75, Value = 0.75 },
        { T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})