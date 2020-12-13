--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |           SNOWFLAKE GLOBAL PARTICLE SYSTEM           | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterLargePart", "PREFAB_SNOWFLAKE_EMITTER_LARGE_PART")
winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterMediumPart", "PREFAB_SNOWFLAKE_EMITTER_MEDIUM_PART")
winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterSmallPart", "PREFAB_SNOWFLAKE_EMITTER_SMALL_PART")

winterWonderland:registerAssetId("models/snowflakeBlue.png", "SNOWFLAKE_BLUE_TEXTURE")
winterWonderland:registerAssetId("models/snowflakeWhite.png", "SNOWFLAKE_WHITE_TEXTURE")

winterWonderland:register({
    DataType = "MATERIAL",
    Id = "MATERIAL_SNOWFLAKE_PARTICLE_BLUE",
    AlbedoTexture = "SNOWFLAKE_BLUE_TEXTURE",
    HasTransparency = true,
    IsLighted = false,
	HasShadow = false
})

winterWonderland:register({
    DataType = "MATERIAL",
    Id = "MATERIAL_SNOWFLAKE_PARTICLE_WHITE",
    AlbedoTexture = "SNOWFLAKE_WHITE_TEXTURE",
    HasTransparency = true,
    IsLighted = false,
	HasShadow = false
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWFLAKE_EMITTER_LARGE",
	Name = "SNOWFLAKE_EMITTER_LARGE_NAME",
	Description = "SNOWFLAKE_EMITTER_LARGE_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFLAKE_EMITTER_LARGE_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFLAKE_EMITTER_LARGE_PART",
	Description = "SNOWFLAKE_EMITTER_LARGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFLAKE_EMITTER_LARGE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWFLAKE_EMITTER_MEDIUM",
	Name = "SNOWFLAKE_EMITTER_MEDIUM_NAME",
	Description = "SNOWFLAKE_EMITTER_MEDIUM_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFLAKE_EMITTER_MEDIUM_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFLAKE_EMITTER_MEDIUM_PART",
	Description = "SNOWFLAKE_EMITTER_MEDIUM_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFLAKE_EMITTER_MEDIUM_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWFLAKE_EMITTER_SMALL",
	Name = "SNOWFLAKE_EMITTER_SMALL_NAME",
	Description = "SNOWFLAKE_EMITTER_SMALL_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFLAKE_EMITTER_SMALL_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFLAKE_EMITTER_SMALL_PART",
	Description = "SNOWFLAKE_EMITTER_SMALL_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFLAKE_EMITTER_SMALL_PART"
	},
	BuildingZone = {
		ZoneEntryList = {}
	},
	ConstructionVisual = nil,
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterLargePart/SnowflakeEmitterLargeBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_LARGE_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_LARGE_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 3000,
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterLargePart/SnowflakeEmitterLargeWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_LARGE_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_LARGE_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 3000,
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterMediumPart/SnowflakeEmitterMediumBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 2000,
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterMediumPart/SnowflakeEmitterMediumWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_MEDIUM_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1.5, 1.5 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 2000,
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterSmallPart/SnowflakeEmitterSmallBlue", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_SMALL_BLUE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_SMALL_BLUE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_BLUE",
	BillboardBehavior = "FACE_CAMERA",
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowflakeEmitterSmallPart/SnowflakeEmitterSmallWhite", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFLAKE_PARTICLE_SYSTEM_SMALL_WHITE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFLAKE_PARTICLE_SYSTEM_SMALL_WHITE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFLAKE_PARTICLE_WHITE",
	BillboardBehavior = "FACE_CAMERA",
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