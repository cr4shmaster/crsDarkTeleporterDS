PrefabFiles = {
 "darkteleporter",
}

Assets = {
 Asset("ATLAS", "images/inventoryimages/darkteleporter.xml"),
 Asset("IMAGE", "images/inventoryimages/darkteleporter.tex"),
 Asset("ATLAS", "minimap/darkteleporter.xml"),
 Asset("IMAGE", "minimap/darkteleporter.tex"),
}

AddMinimapAtlas("minimap/darkteleporter.xml")

STRINGS = GLOBAL.STRINGS
RECIPETABS = GLOBAL.RECIPETABS
Recipe = GLOBAL.Recipe
Ingredient = GLOBAL.Ingredient
TECH = GLOBAL.TECH
Vector3 = GLOBAL.Vector3

local crsSwEnabled = GLOBAL.IsDLCEnabled(GLOBAL.CAPY_DLC)

-- add strings
STRINGS.NAMES.DARKTELEPORTER = "Dark Teleporter"
STRINGS.RECIPE_DESC.DARKTELEPORTER = "Teleports you close by."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DARKTELEPORTER = "Teleportations is awesome!"

-- add recipe
local crsDarkTeleRecipeDarkMotes = Ingredient("darkmote", GetModConfigData("crsDarkTeleRecipeDarkMotes"))
crsDarkTeleRecipeDarkMotes.atlas = "images/inventoryimages/darkmote.xml"
if crsSwEnabled then
 local darkteleporter = Recipe("darkteleporter", {
  crsDarkTeleRecipeDarkMotes,
 }, RECIPETABS.ANCIENT, TECH.SCIENCE_ONE, GLOBAL.RECIPE_GAME_TYPE.COMMON, "darkteleporter_placer")
 darkteleporter.atlas = "images/inventoryimages/darkteleporter.xml"
else
 local darkteleporter = Recipe("darkteleporter", {
  crsDarkTeleRecipeDarkMotes,
 }, RECIPETABS.ANCIENT, TECH.SCIENCE_ONE, "darkteleporter_placer")
 darkteleporter.atlas = "images/inventoryimages/darkteleporter.xml"
end