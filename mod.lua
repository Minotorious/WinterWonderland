--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                   WINTER WONDERLAND                  | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local winterWonderland = foundation.createMod();

winterWonderland:log("Winter Wonderland Mod Loading")

--[[---------------------------- GENERAL MATERIALS ----------------------------]]--

--[[
winterWonderland:registerAssetId("models/WinterWonderland.fbx/Materials/Material.Transparent", "MATERIAL_TRANSPARENT")

winterWonderland:override({
    Id = "MATERIAL_TRANSPARENT",
    HasAlphaTest = true
})
]]--

--[[------------------------------ MAIN MONUMENT ------------------------------]]--

winterWonderland:register({
	DataType = "BUILDING",
	Id = "WINTER_WONDERLAND_MONUMENT",
	Name = "WINTER_WONDERLAND_MONUMENT_NAME",
	--Description = "WINTER_WONDERLAND_MONUMENT_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    BuildingPartSetList = {
        {
            Name = "WINTER_WONDERLAND_MONUMENT_SNOWFLAKE_EMITTER_CATEGORY_NAME",
            BuildingPartList = {
                "SNOWFLAKE_EMITTER_PART"
            }
		},
        {
            Name = "WINTER_WONDERLAND_MONUMENT_GIFTS_CATEGORY_NAME",
            BuildingPartList = {
                "CHRISTMAS_GIFTS_PART", "CHRISTMAS_GIFT1_PART", "CHRISTMAS_GIFT2_PART"
            }
		},
        {
            Name = "WINTER_WONDERLAND_MONUMENT_SLEIGH_CATEGORY_NAME",
            BuildingPartList = {
                "CHRISTMAS_SLEIGH_PART", "ELK_PART", "FIREPLACE_PART"
            }
		}
    }
})

--[[------------------------------- MAIN EVENT --------------------------------]]--

winterWonderland:override({
    Id = "DEFAULT_BALANCING",
    EventList = {
        Action = "APPEND",
        "WINTER_WONDERLAND_EVENT",
    },
})

winterWonderland:register({
    DataType = "EVENT",
	Id = "WINTER_WONDERLAND_EVENT",
	--Title = "WINTER_WONDERLAND_EVENT_TITLE",
	--Description = "WINTER_WONDERLAND_EVENT_DESC",
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
			DataType = "ACTION_SHOW_NARRATIVE_PANEL",
            NarrativePanelData = {
                DataType = "DATA_NARRATIVE_PANEL",
                Title = "WINTER_WONDERLAND_EVENT_PANEL_TITLE",
                Description = "WINTER_WONDERLAND_EVENT_PANEL_DESC",
                PanelVisual = "SNOWFLAKE_BLUE_TEXTURE"
            },
            ChoiceList = {
                {
                    DataType = "EVENT_CHOICE",
                    ShortName = "WINTER_WONDERLAND_EVENT_PANEL_ACCEPT",
                    EventActionList = {
                        {
                            DataType = "EVENT_ACTION_IGNORE"
                        },
                    },
                    OnClickCallbackList = nil
                }
            },
            OnClickCallback = nil
		}
	}
})

--[[-------------------------------- DO FILES ---------------------------------]]--

winterWonderland:dofile("scripts/alteredTextures.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")
winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/christmasSleigh.lua")
winterWonderland:dofile("scripts/christmasGifts.lua")
winterWonderland:dofile("scripts/fireplace.lua")