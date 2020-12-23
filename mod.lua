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
	Description = "WINTER_WONDERLAND_MONUMENT_DESC",
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



--[[-------------------------------- DO FILES ---------------------------------]]--

winterWonderland:dofile("scripts/alteredTextures.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")
winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/christmasSleigh.lua")
winterWonderland:dofile("scripts/christmasGifts.lua")
winterWonderland:dofile("scripts/fireplace.lua")