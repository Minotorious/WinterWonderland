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

winterWonderland:register({
	DataType = "MATERIAL",
	Id = "SMOKE_MATERIAL",
	AlbedoTexture = "SMOKE_TEXTURE"
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
	ParticleSystem = "SMOKE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})
--[[
-- Register particle system fire
winterWonderland:registerPrefabComponent("models/fireplace.fbx/Prefab/fire_place_Part/fireEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "FIRE_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})

-- Register particle system fire sparkles
winterWonderland:registerPrefabComponent("models/fireplace.fbx/Prefab/fire_place_Part/firesparklesEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "FIRESPARKLES_PARTICLE_SYSTEM",
	IsPlaying = true,
	IsEmitting = true
})]]--

-- register smoke effect
winterWonderland:register({
	DataType = "PARTICLE_SYSTEM",
	Id = "SMOKE_PARTICLE_SYSTEM",
	Material = "SMOKE_MATERIAL",
	BillboardBehavior = "FACE_CAMERA",
	Duration = 4,
	Looping = true,
	Delay = { 0, 0},
	LifeTime = 6,
	StartSpeed = { 0.2, 0.33 },
	StartSize = { 3, 4 },
	StartRotation = { 0, 0 },
	StartColor = { 1, 1, 1, 0.07 },
	GravityModifier = 0,
	RateOverTime = 12,
	BurstList = {},
	Shape = {
		DataType = "PARTICLE_EMITTER_SHAPE_CONE",
		Angle = 2.46,
		Radius = 0.0001,
	},
	LinearVelocity = {
		DataType = "PARTICLE_FLOAT3_VALUE_CURVE_RANDOM",
		XA = { 
			{ T = 0, Value = 0.05 },
			{ T = 0.7, Value = 0.01 },
			{ T = 1, Value = 0.05 }
		},
		XB = {
			{ T = 0, Value = 0.03 }, 
			{ T = 0.7, Value = 0.2 }, 
			{ T = 1, Value = 0.03 }
		}
	},
	ColorOverLifeTime = {
		DataType = "GRADIENT",
		ColorList = {
			{ T = 0, Color = { 0.6, 0.6, 0, 1 } },
			{ T = 0.1, Color = { 0.6, 0.4, 0, 1 } },
			{ T = 0.2, Color = { 0.6, 0.6, 0.6, 1 } },
			{ T = 1, Color = { 0.1, 0.1, 0.1, 1 } }
		},
		AlphaList = {
			{ T = 0, Alpha = 0 },
			{ T = 0.1, Alpha = 100 },
			{ T = 0.2, Alpha = 100 },
			{ T = 1, Alpha = 0 }
		}
	},
	SizeOverLifetime = {
		{ T = 0, Value = 0.1 },
		{ T = 0.7, Value = 0.25 },
		{ T = 1, Value = 0.3 }
	},
	RotationOverLifetime = { -45, 45 },
})