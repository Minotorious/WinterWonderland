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

winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/snowfallGlobal.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")