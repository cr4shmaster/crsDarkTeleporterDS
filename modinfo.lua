-- Use the Dark Teleporter to create shortcuts or secret entrances. When stepped on, 
--  it teleports your character to the closest other Dark Teleporter. It does not 
--  get activated if a Hammer is equipped. It is deactivated for a few seconds after being used.

-- Workshop Page: http://steamcommunity.com/sharedfiles/filedetails/?id=523786293
-- Author: cr4shmaster: http://steamcommunity.com/id/cr4shmaster

name = "Dark Teleporter v1.1"
description = "A super cool teleporter."
author = "cr4shmaster"
version = "1.1.8"
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
        name = "cfgRecipeTab",
        label = "Recipe Tab",
        options = {
            {description = "Tools", data = 1},
            {description = "Survival", data = 2},
            {description = "Farm", data = 3},
            {description = "Science", data = 4},
            {description = "Structures", data = 5},
            {description = "Refine", data = 6},
            {description = "Magic", data = 7},
            {description = "Ancient", data = 8},
        },
        default = 1,
    },
    {
        name = "cfgRecipeTech",
        label = "Recipe Tech",
        options = {
            {description = "None", data = 1},
            {description = "Science Machine", data = 2},
            {description = "Alchemy Engine", data = 3},
            {description = "Prestihatitator", data = 4},
            {description = "Shadow Manip.", data = 5},
            {description = "Broken APS", data = 6},
            {description = "Repaired APS", data = 7},
            {description = "Obs. Workbench", data = 8},
        },
        default = 5,
    },
    {
        name = "cfgDTHeathCost",
        label = "Max Damage On Use",
        options = crsDamage,
        default = 30,
    },
    {
        name = "cfgDTMotes",
        label = "DM Recipe",
        options = crsDarkmotes,
        default = 150,
    },
    {
        name = "cfgDTCooldown",
        label = "On Use Disable For",
        options = crsDuration,
        default = 20,
    },
    {
        name = "cfgDTRange",
        label = "Teleport Range",
        options = crsRange,
        default = 20,
    },
    {
        name = "cfgDTRadius",
        label = "Activation Radius",
        options = crsRadius,
        default = .5,
    },
    {
        name = "cfgTestCheck",
        label = "Installed",
        options = {
            {description = "Yes", data = true},
        },
        default = true,
    },
}
