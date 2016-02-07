name = "Dark Teleporter TEST"
description = "A super cool teleporter."
author = "cr4shmaster"
version = "1.1.0"
forumthread = ""
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
api_version = 6
icon_atlas = "modicon.xml"
icon = "modicon.tex"

--[[ 
Notes:
 - none
--]]

local crsDamage = {
 {description = "20", data = 20},
 {description = "30", data = 30},
 {description = "40", data = 40},
 {description = "50", data = 50},
 {description = "60", data = 60},
 {description = "70", data = 70},
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

configuration_options = {
 {
  name = "crsDarkTeleDmgPenaltyOnUse",
  label = "Max Damage Taken On Use",
  options = crsDamage,
  default = 30,
 },
 {
  name = "crsDarkTeleRecipeDarkMotes",
  label = "MP DM Recipe",
  options = crsDarkmotes,
  default = 150,
 },
 {
  name = "crsDarkTeleUseDisabledDuration",
  label = "Disable Used Duration",
  options = crsDuration,
  default = 20,
 },
}
