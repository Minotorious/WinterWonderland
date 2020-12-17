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

winterWonderland:overrideTexture("StrawRoof.tif", "models/whiteStrawRoof.png", "REPLACE")
winterWonderland:overrideTexture("StrawRoofBranches.tif", "models/whiteStrawRoofBranches.png", "REPLACE")
winterWonderland:overrideTexture("RoofBlue.tif", "models/whiteRoofBlue.png", "REPLACE")
winterWonderland:overrideTexture("roofgreen.tif", "models/whiteroofgreen.png", "REPLACE")
winterWonderland:overrideTexture("roofgreen2.tif", "models/whiteroofgreen2.png", "REPLACE")
winterWonderland:overrideTexture("RoofRed.tif", "models/whiteRoofRed.png", "REPLACE")
winterWonderland:overrideTexture("RoofRed_Corner.tif", "models/whiteRoofRed_Corner.png", "REPLACE")
winterWonderland:overrideTexture("RoofRedWine.tif", "models/whiteRoofRedWine.png", "REPLACE")
winterWonderland:overrideTexture("RoofRedWine2.tif", "models/whiteRoofRedWine2.png", "REPLACE")
winterWonderland:overrideTexture("RoofTextureRed.tif", "models/whiteRoofTextureRed.png", "REPLACE")
winterWonderland:overrideTexture("RoofWoodTiles_01.tif", "models/whiteRoofWoodTiles_01.png", "REPLACE")
winterWonderland:overrideTexture("RoofWoodTilesBrown.tif", "models/whiteRoofWoodTilesBrown.png", "REPLACE")
winterWonderland:overrideTexture("RoofWoodTilesCarbon.tif", "models/whiteRoofWoodTilesCarbon.png", "REPLACE")
winterWonderland:overrideTexture("roofyellow.tif", "models/whiteroofyellow.png", "REPLACE")
winterWonderland:overrideTexture("WoodenRooftop.tif", "models/whiteWoodenRooftop.png", "REPLACE")
winterWonderland:overrideTexture("WoodenRoofTop3.tif", "models/whiteWoodenRoofTop3.png", "REPLACE")
winterWonderland:overrideTexture("WoodRooftop.tif", "models/whiteWoodRooftop.png", "REPLACE")
winterWonderland:overrideTexture("WoodRooftop_Yellow.tif", "models/whiteWoodRooftop_Yellow.png", "REPLACE")
winterWonderland:overrideTexture("WoodRooftop2.tif", "models/whiteWoodRooftop2.png", "REPLACE")
winterWonderland:overrideTexture("WoodRooftop2_Orange.tif", "models/whiteWoodRooftop2_Orange.png", "REPLACE")
winterWonderland:overrideTexture("Orangewoodtile.tif", "models/whiteOrangewoodtile.png", "REPLACE")
winterWonderland:overrideTexture("NewRoofGreen.tif", "models/whiteNewRoofGreen.png", "REPLACE")
winterWonderland:overrideTexture("monasteryRoofTilesPurple.tif", "models/whitemonasteryRoofTilesPurple.png", "REPLACE")
winterWonderland:overrideTexture("MonasteryRoofTilesBlue.tif", "models/whiteMonasteryRoofTilesBlue.png", "REPLACE")
winterWonderland:overrideTexture("MonasteryRoofTiles.tif", "models/whiteMonasteryRoofTiles.png", "REPLACE")
winterWonderland:overrideTexture("ClayTile_golden.tif", "models/whiteClayTile_golden.png", "REPLACE")
winterWonderland:overrideTexture("ChurchRoofGrey2.tif", "models/whiteChurchRoofGrey2.png", "REPLACE")
winterWonderland:overrideTexture("ChurchRoofGrey.tif", "models/whiteChurchRoofGrey.png", "REPLACE")
winterWonderland:overrideTexture("ChurchRoofBrown.tif", "models/whiteChurchRoofBrown.png", "REPLACE")
winterWonderland:overrideTexture("CharcolRoof.tif", "models/whiteCharcolRoof.png", "REPLACE")
winterWonderland:overrideTexture("CeramicRoofTiles.tif", "models/whiteCeramicRoofTiles.png", "REPLACE")
winterWonderland:overrideTexture("BuildingRoofTopBlue.tif", "models/whiteBuildingRoofTopBlue.png", "REPLACE")
winterWonderland:overrideTexture("Branch_rooftop.tif", "models/whiteBranch_rooftop.png", "REPLACE")

--[[-------------------------------- DO FILES ---------------------------------]]--

winterWonderland:dofile("scripts/snowflakesGlobal.lua")
winterWonderland:dofile("scripts/snowfallGlobal.lua")
winterWonderland:dofile("scripts/christmasTreeMonument.lua")
winterWonderland:dofile("scripts/snowmanMonument.lua")
winterWonderland:dofile("scripts/christmasSleigh.lua")