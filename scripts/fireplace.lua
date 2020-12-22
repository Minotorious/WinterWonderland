--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      FIRE PLACE                      | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

winterWonderland:registerAssetId("models/fireplace.fbx/Prefab/fire_place_Part", "PREFAB_FIREPLACE_PART")

winterWonderland:registerAssetId("models/smoke.png", "SMOKE_TEXTURE")
winterWonderland:registerAssetId("models/sparkle.png", "SPARKLE_TEXTURE")

winterWonderland:register({
	DataType = "MATERIAL",
	Id = "SMOKE_MATERIAL",
	AlbedoTexture = "SMOKE_TEXTURE"
})

winterWonderland:register({
	DataType = "MATERIAL",
	Id = "SPARKLE_MATERIAL",
	AlbedoTexture = "SPARKLE_TEXTURE"
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "FIREPLACE",
	Name = "FIREPLACE_NAME",
	Description = "FIREPLACE_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "FIREPLACE_PART"
})

winterWonderland:register({
	DataType = "BUILDING_PART",
	Id = "FIREPLACE_PART",
	Description = "FIREPLACE_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_FIREPLACE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
			Polygon = polygon.createCircle( 0.5 , { 0, 0 } , 36 ),
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

-- Register particle system smoke
winterWonderland:registerPrefabComponent("models/fireplace.fbx/Prefab/fire_place_Part/smokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_BLACKSMITH_FIRE_SMOKE",
	IsPlaying = true,
	IsEmitting = true
})

-- Register particle system fire
winterWonderland:registerPrefabComponent("models/fireplace.fbx/Prefab/fire_place_Part/fireEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_BLACKSMITH_FIRE",
	IsPlaying = true,
	IsEmitting = true
})

-- Register particle system fire sparkles
winterWonderland:registerPrefabComponent("models/fireplace.fbx/Prefab/fire_place_Part/firesparklesEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "FIRESPARKLES_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

-- register fire sparkles effect
winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "FIRESPARKLES_PARTICLE_SYSTEM",
	Material = "SPARKLE_MATERIAL",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 2,
	Looping = true,
	Delay = { 0, 1 },
	LifeTime = 2.5,
	StartSpeed = { 0.004, 0.007 },
	StartSize = { 0.8, 1 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 1 },
	GravityModifier = -0.2,
	RateOverTime = 6,
	RateOverTimeRandom = 8,
	AlignWithVelocity = true,
	Shape = {
		DataType = "PARTICLE_EMITTER_SHAPE_CONE",
		Angle = 2.2,
		Radius = 0.15
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CONSTANT_RANDOM",
		ValueA = { 0.5, -0.1, 0.5 },
		ValueB = { -0.5, -0.1, -0.5 }
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {
			{ T = 0, Color = { 0.6, 0.6, 0, 1} },
			{ T = 0.1, Color = { 0.6, 0.4, 0, 1} },
			{ T = 0.5, Color = { 0.6, 0.4, 0.4, 1 } },
			{ T = 1, Color = { 0.1, 0.1, 0.1, 1 } }
		},		
		AlphaList = {
			{ T = 0.1, Alpha = 100 },
			{ T = 0.3, Alpha = 100 },
			{ T = 0.5, Alpha = 50 },
			{ T = 0.7, Alpha = 25 },
			{ T = 1, Alpha = 0 }
		},
	},
	SizeOverLifetime = {
			{ T = 0, Value = 0.080 },
			{ T = 0.5, Value = 0.060 },
			{ T = 1, Value = 0.030 }
	},
	RotationOverLifetime = { -50, 50 }
})