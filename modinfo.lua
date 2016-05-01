name = "Dark Teleporter v1.1"
description = "A super cool teleporter."
author = "cr4shmaster"
version = "1.1.1"
forumthread = ""
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
api_version = 6
icon_atlas = "modicon.xml"
icon = "modicon.tex"

local crsDamage = {
 {description = "0", data = 0},
 {description = "10", data = 10},
 {description = "20", data = 20},
 {description = "30", data = 30},
 {description = "40", data = 40},
 {description = "50", data = 50},
 {description = "60", data = 60},
 {description = "70", data = 70},
}
local crsRange = {
 {description = "10", data = 10},
 {description = "15", data = 15},
 {description = "20", data = 20},
 {description = "25", data = 25},
 {description = "30", data = 30},
 {description = "50", data = 50},
 {description = "75", data = 75},
 {description = "100", data = 100},
}
local crsDarkmotes = {
 {description = "50", data = 50},
 {description = "60", data = 60},
 {description = "70", data = 70},
 {description = "80", data = 80},
 {description = "90", data = 90},
 {description = "100", data = 100},
 {description = "125", data = 125},
 {description = "150", data = 150},
 {description = "200", data = 200},
 {description = "250", data = 250},
 {description = "300", data = 300},
 {description = "350", data = 350},
 {description = "400", data = 400},
 {description = "450", data = 450},
 {description = "500", data = 500},
}
local crsDuration = {
 {description = "5", data = 5},
 {description = "10", data = 10},
 {description = "20", data = 20},
 {description = "30", data = 30},
 {description = "40", data = 40},
 {description = "50", data = 50},
 {description = "60", data = 60},
 {description = "120", data = 120},
 {description = "180", data = 180},
 {description = "240", data = 240},
 {description = "300", data = 300},
}
local crsRadius = {
 {description = "0.5", data = .5},
 {description = "1", data = 1},
 {description = "1.5", data = 1.5},
 {description = "2", data = 2},
}

configuration_options = {
 {
  name = "crsDarkTeleDmgPenaltyOnUse",
  label = "Max Damage On Use",
  options = crsDamage,
  default = 30,
 },
 {
  name = "crsDarkTeleRecipeDarkMotes",
  label = "DM Recipe",
  options = crsDarkmotes,
  default = 150,
 },
 {
  name = "crsDarkTeleUseDisabledDuration",
  label = "On Use Disable For",
  options = crsDuration,
  default = 20,
 },
 {
  name = "crsDarkTeleRange",
  label = "Teleport Range",
  options = crsRange,
  default = 20,
 },
 {
  name = "crsDarkTeleRadius",
  label = "Activation Radius",
  options = crsRadius,
  default = .5,
 },
 {
  name = "crsDarkTeleporterTest",
  label = "Installed",
  options = {
   {description = "Yes", data = 1},
  },
  default = 1,
 },
}
