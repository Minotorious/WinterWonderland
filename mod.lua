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

winterWonderland:registerAssetId("models/WinterWonderland.fbx/Materials/Material.Transparent", "MATERIAL_TRANSPARENT")

winterWonderland:override({
    Id = "MATERIAL_TRANSPARENT",
    HasAlphaTest = true
})

--[[-------------------------------- DO FILES ---------------------------------]]--

winterWonderland:dofile("scripts/alteredTextures.lua")
winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/snowflakePosts.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")
winterWonderland:dofile("scripts/christmasSleigh.lua")
winterWonderland:dofile("scripts/christmasGifts.lua")
winterWonderland:dofile("scripts/fireplace.lua")
