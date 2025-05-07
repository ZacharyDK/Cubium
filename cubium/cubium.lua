local utils = require("__any-planet-start__.utils")


data.raw.recipe["medium-electric-pole"].enabled = true
data.raw.recipe["ultradense-substrate"].enabled = true
data.raw.recipe["energized-microcube"].enabled = true
data.raw.recipe["cube-jelly-basic"].enabled = true
data.raw.recipe["cube-jelly"].enabled = true
data.raw.recipe["carbon"].enabled = true
data.raw.recipe["ice-melting"].enabled = true
data.raw.recipe["molten-iron"].enabled = true
data.raw.recipe["molten-copper"].enabled = true
data.raw.recipe["casting-iron"].enabled = true
data.raw.recipe["casting-copper"].enabled = true
data.raw.recipe["casting-steel"].enabled = true
data.raw.recipe["heating-tower"].enabled = true
data.raw.recipe["heat-exchanger"].enabled = true
data.raw.recipe["heat-pipe"].enabled = true
data.raw.recipe["steam-turbine"].enabled = true

--data.raw.recipe["pumpjack"].enabled = true

local logistic_science = {"automation-science-pack", "logistic-science-pack"}
local automation_science = {"automation-science-pack"}

data.raw.recipe["cube-jelly"].results = 
{

    {type = "item", name = "cube-jelly",                amount = 4, percent_spoiled = 0},
    {type = "item", name = "dormant-microcube",            amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},

}

utils.set_packs("fluid-handling", automation_science, 10, 30)
utils.set_packs("coal-liquefaction", logistic_science, 100, 30)
utils.set_packs("oil-gathering", automation_science, 100, 30)
utils.set_packs("oil-processing", automation_science, 100, 30)
utils.set_packs("advanced-oil-processing", logistic_science, 100, 30)
utils.set_packs("sulfur-processing", logistic_science, 100, 30)

data.raw["boiler"]["boiler"]["energy_source"].burnt_inventory_size = 2
table.insert(data.raw["boiler"]["boiler"]["energy_source"]["fuel_categories"],"cubic")

data.raw["furnace"]["stone-furnace"]["energy_source"].burnt_inventory_size = 2
table.insert(data.raw["furnace"]["stone-furnace"]["energy_source"]["fuel_categories"],"cubic")


data.raw["furnace"]["steel-furnace"]["energy_source"].burnt_inventory_size = 2
table.insert(data.raw["furnace"]["steel-furnace"]["energy_source"]["fuel_categories"],"cubic")

data.raw.recipe["cube-smasher"].ingredients =
{
  {type ="item", name ="electric-furnace", amount = 1},
  {type ="item", name ="advanced-circuit", amount = 5},
  {type ="item", name ="copper-plate", amount = 20},
  {type ="item", name ="steel-plate", amount = 10},
  {type ="item", name ="fast-inserter", amount = 2},
}

data.raw.recipe["cube-smasher-cubic"].ingredients =
{
  {type ="item", name ="electric-furnace", amount = 1},
  {type ="item", name ="advanced-circuit", amount = 5},
  {type ="item", name ="copper-plate", amount = 20},
  {type ="item", name ="steel-plate", amount = 10},
  {type ="item", name ="fast-inserter", amount = 2},
}