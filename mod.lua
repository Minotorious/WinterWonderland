--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   WINTER WONDERLAND                  | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = foundation.createMod();

if foundation.isModLoaded("f0cf2d1c-f179-44f6-88a9-33aefc6e2819") then -- Ice Castle ID
    return
end

--[[------------------------------ ENUMERATIONS -------------------------------]]--

winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "EXAMPLE")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "SNOW_BASE")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "SNOWMAN_BASE")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "BUTTON")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "HAT")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "BRANCH_LEFT")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "BRANCH_RIGHT")

winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "CHRISTMAS_TREE")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "TOPPER")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "STAR_ORNAMENT")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "SPHERE_ORNAMENT")

winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "RAMPART")
winterWonderland:registerEnumValue("BUILDING_PART_TYPE", "EMITTER")

--[[-------------------------------- DO FILES ---------------------------------]]--

winterWonderland:dofile("scripts/alteredTextures.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")
winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/christmasSleigh.lua")
winterWonderland:dofile("scripts/christmasGifts.lua")
winterWonderland:dofile("scripts/fireplace.lua")
winterWonderland:dofile("scripts/fireworks.lua")
winterWonderland:dofile("scripts/winterHousing.lua")
winterWonderland:dofile("scripts/iceCastle.lua")

--[[------------------------------ MAIN BUILDING ------------------------------]]--

winterWonderland:registerAsset({
    DataType = "BUILDING",
    Id = "WINTER_WONDERLAND",
    Name = "WINTER_WONDERLAND_NAME",
    Description = "WINTER_WONDERLAND_DESC",
    BuildingType = BUILDING_TYPE.MODS,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "CHRISTMAS_GIFTS_PART", "CHRISTMAS_GIFT1_PART", "CHRISTMAS_GIFT2_PART",
        "CHRISTMAS_SLEIGH_PART", "ELK_PART", "FIREPLACE_PART"
    },
    SubAssetBuildingList = {
        "WINTER_WONDERLAND_EMITTER",
        "WINTER_WONDERLAND_SNOWMAN",
        "WINTER_WONDERLAND_CHRISTMAS_TREE",
        "WINTER_WONDERLAND_ICE_CASTLE",
    },
    IsManuallyUnlocked = true,
    IsDestructible = true,
    IsEditable = true,
    IsClearTrees = true
})

--[[------------------------------ SUB BUILDINGS ------------------------------]]--

local function registerSubBuilding(subBuildingInfo)
    winterWonderland:registerAsset({
        DataType = "BUILDING",
        Id = "WINTER_WONDERLAND_" .. subBuildingInfo[1],
        Name = "WINTER_WONDERLAND_" .. subBuildingInfo[1] .. "_NAME",
        Description = "WINTER_WONDERLAND_" .. subBuildingInfo[1] .. "_DESC",
        BuildingType = BUILDING_TYPE.MODS,
        AssetCoreBuildingPart = subBuildingInfo[2],
        AssetBuildingPartList = subBuildingInfo[3],
        SubAssetBuildingList = {},
        IsManuallyUnlocked = false,
        IsDestructible = true,
        IsEditable = false,
        IsClearTrees = true
    })
end

local subBuildingInfoList = {
    { "EMITTER", "BUILDING_PART_MONUMENT_POLE", { "SNOWFLAKE_EMITTER_PART", "FIREWORKS_EMITTER_PART" } },
    { "SNOWMAN", "SNOWMAN_MONUMENT_POLE_PART", {
        "SNOWMAN_EXAMPLE_PART",

        "SNOW_BASE_BLUE_PART", "SNOW_BASE_ORANGE_PART", "SNOW_BASE_WHITE_PART",

        "SNOWMAN_BASE_BLUE_PART", "SNOWMAN_BASE_ORANGE_PART", "SNOWMAN_BASE_WHITE_PART",

        "HAT_RIBBON_BLUE_PART", "HAT_RIBBON_GREEN_PART", "HAT_RIBBON_GREY_PART",
        "HAT_RIBBON_PURPLE_PART", "HAT_RIBBON_RED_PART", "HAT_RIBBON_YELLOW_PART",

        "BUTTON_BLACK_PART", "BUTTON_BLUE_PART", "BUTTON_BROWN_PART",
        "BUTTON_CYAN_PART", "BUTTON_GREEN_PART", "BUTTON_GREY_PART",
        "BUTTON_ORANGE_PART", "BUTTON_PURPLE_PART", "BUTTON_RED_PART",

        "BRANCH_LEFT_1_PART", "BRANCH_LEFT_2_PART", "BRANCH_LEFT_3_PART",

        "BRANCH_RIGHT_1_PART", "BRANCH_RIGHT_2_PART", "BRANCH_RIGHT_3_PART"
    } },
    { "CHRISTMAS_TREE", "CHRISTMAS_TREE_MONUMENT_POLE_PART", {
        "CHRISTMAS_TREE_GREEN_PART", "CHRISTMAS_TREE_WHITE_PART",

        "TOPPER_SNOWFLAKE_PART", "TOPPER_SPIKE_PART", "TOPPER_STAR_PART",

        "STAR_ORNAMENT_BURGUNDY_PART", "STAR_ORNAMENT_GOLD_PART", "STAR_ORNAMENT_SILVER_PART",

        "SPHERE_ORNAMENT_BLUE_PART", "SPHERE_ORNAMENT_BURGUNDY_PART", "SPHERE_ORNAMENT_CYAN_PART",
        "SPHERE_ORNAMENT_GOLD_PART", "SPHERE_ORNAMENT_GREEN_PART", "SPHERE_ORNAMENT_GREY_PART",
        "SPHERE_ORNAMENT_ORANGE_PART", "SPHERE_ORNAMENT_PINK_PART", "SPHERE_ORNAMENT_PURPLE_PART",
        "SPHERE_ORNAMENT_RED_PART", "SPHERE_ORNAMENT_SILVER_PART", "SPHERE_ORNAMENT_YELLOW_PART"
    } },
    { "ICE_CASTLE", "BUILDING_PART_MONUMENT_POLE", {
        "RAMPART_TOWER_SQUARE_MEDIUM_SCALABLE_PART",

        "RAMPART_PATH_STRAIGHT_SCALABLE_PART", "RAMPART_PATH_STRAIGHT_HALF_SCALABLE_PART", "RAMPART_PATH_CORNER_45_SHARP_SCALABLE_PART",
        "RAMPART_PATH_CORNER_60_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_90_SHARP_HALF_SCALABLE_PART",
        "RAMPART_PATH_CORNER_120_SHARP_SCALABLE_PART", "RAMPART_PATH_CORNER_135_SHARP_SCALABLE_PART", "RAMPART_PATH_CROSS_JUNCTION_SHARP_SCALABLE_PART",
        "RAMPART_PATH_T_JUNCTION_SHARP_SCALABLE_PART",

        "CRENELLATION_SPIKES_PART", "WALL_SPIKES_PART"
    } }
}

for i, subBuildingInfo in ipairs(subBuildingInfoList) do
    registerSubBuilding(subBuildingInfo)
end

--[[------------------------------- MAIN EVENT --------------------------------]]--

winterWonderland:overrideAsset({
    Id = "DEFAULT_BALANCING",
    EventList = {
        Action = "APPEND",
        "WINTER_WONDERLAND_EVENT",
    }
})

winterWonderland:registerAsset({
    DataType = "ASSET_NARRATIVE_PANEL",
    Id = "WINTER_WONDERLAND_EVENT_PANEL",
    Title = "WINTER_WONDERLAND_EVENT_PANEL_TITLE",
    Description = "WINTER_WONDERLAND_EVENT_PANEL_DESC",
    ButtonText = "Test",
    PanelVisual = "PARTICLE_SNOWFLAKE_BLUE_TEXTURE",
    ChoiceList = {
        {
            --DataType = "EVENT_CHOICE",
            ShortName = "WINTER_WONDERLAND_EVENT_PANEL_ACCEPT",
            EventActionList = {
                {
                    DataType = "GAME_ACTION_UNLOCK_BUILDING_LIST",
                    BuildingProgressData = {
                        AssetBuildingList = {
                            "WINTER_WONDERLAND"
                        }
                    }
                }
            },
            OnClickCallbackList = nil
        }
    }
})

winterWonderland:registerAsset({
    DataType = "EVENT",
	Id = "WINTER_WONDERLAND_EVENT",
	Title = "WINTER_WONDERLAND_EVENT_TITLE",
	Description = "WINTER_WONDERLAND_EVENT_DESC",
    IsInMainPool = false,
    IsRecurrent = false,
    DaysBetweenOccurences = nil,
    DaysToFirst = 0,
	Delay = 0,
	ConditionList = {
		{
			DataType = "GAME_CONDITION_BUILDING_BUILT",
			ResBuilding = "BUILDING_VILLAGE_CENTER"
		}
	},
	ActionList = {
		{
			DataType = "GAME_ACTION_SHOW_NARRATIVE_PANEL",
            AssetNarrativePanel = "WINTER_WONDERLAND_EVENT_PANEL"
            --OnClickCallback = nil
		}
	}
})