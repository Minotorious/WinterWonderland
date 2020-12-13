--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |           SNOWFALL GLOBAL PARTICLE SYSTEM            | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowfallEmitterLargePart", "PREFAB_SNOWFALL_EMITTER_LARGE_PART")
winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowfallEmitterMediumPart", "PREFAB_SNOWFALL_EMITTER_MEDIUM_PART")
winterWonderland:registerAssetId("models/WinterWonderland.fbx/Prefab/SnowfallEmitterSmallPart", "PREFAB_SNOWFALL_EMITTER_SMALL_PART")

winterWonderland:registerAssetId("models/snowParticle.png", "SNOWFALL_PARTICLE_TEXTURE")

winterWonderland:register({
    DataType = "MATERIAL",
    Id = "MATERIAL_SNOWFALL_PARTICLE",
    AlbedoTexture = "SNOWFALL_PARTICLE_TEXTURE",
    HasTransparency = true,
    IsLighted = false,
	HasShadow = false
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "SNOWFALL_EMITTER_LARGE",
	Name = "SNOWFALL_EMITTER_LARGE_NAME",
	Description = "SNOWFALL_EMITTER_LARGE_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFALL_EMITTER_LARGE_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFALL_EMITTER_LARGE_PART",
	Description = "SNOWFALL_EMITTER_LARGE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFALL_EMITTER_LARGE_PART"
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
	Id = "SNOWFALL_EMITTER_MEDIUM",
	Name = "SNOWFALL_EMITTER_MEDIUM_NAME",
	Description = "SNOWFALL_EMITTER_MEDIUM_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFALL_EMITTER_MEDIUM_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFALL_EMITTER_MEDIUM_PART",
	Description = "SNOWFALL_EMITTER_MEDIUM_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFALL_EMITTER_MEDIUM_PART"
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
	Id = "SNOWFALL_EMITTER_SMALL",
	Name = "SNOWFALL_EMITTER_SMALL_NAME",
	Description = "SNOWFALL_EMITTER_SMALL_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "SNOWFALL_EMITTER_SMALL_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "SNOWFALL_EMITTER_SMALL_PART",
	Description = "SNOWFALL_EMITTER_SMALL_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SNOWFALL_EMITTER_SMALL_PART"
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowfallEmitterLargePart/SnowfallEmitterLarge", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFALL_PARTICLE_SYSTEM_LARGE",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFALL_PARTICLE_SYSTEM_LARGE",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFALL_PARTICLE",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 1,
	Looping = true,
	Delay = { 0, 0 },
	LifeTime = 10,
	StartSpeed = { 0, 0 },
	StartSize = { 1, 1 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = 0,
	RateOverTime = 6000,
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
			{ T = 0.25, Value = 0.5 },
			{ T = 0.5, Value = 1 },
			{ T = 0.75, Value = 0.5 },
			{ T = 1, Value = 0 }
	},
	RotationOverLifetime = { -90, 90 }
})

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowfallEmitterMediumPart/SnowfallEmitterMedium", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFALL_PARTICLE_SYSTEM_MEDIUM",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFALL_PARTICLE_SYSTEM_MEDIUM",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFALL_PARTICLE",
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
	RateOverTime = 4000,
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

winterWonderland:registerPrefabComponent("models/WinterWonderland.fbx/Prefab/SnowfallEmitterSmallPart/SnowfallEmitterSmall", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "SNOWFALL_PARTICLE_SYSTEM_SMALL",
	IsPlaying = true,
	IsEmitting = true
})

winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SNOWFALL_PARTICLE_SYSTEM_SMALL",
	Visual= {
		DataType = "PARTICLE_DEFAULT_VISUAL"
	},
	Material = "MATERIAL_SNOWFALL_PARTICLE",
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