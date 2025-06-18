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
data.raw.recipe["ice-dreams"].enabled = true
data.raw.recipe["heat-pipe"].enabled = true
data.raw.recipe["steam-turbine"].enabled = true
data.raw.recipe["dream-small-power-pole"].enabled = true
data.raw.recipe["iron-stick"].enabled = true

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

data.raw.recipe["cube-smasher-recycling"].results =
{
  {type ="item", name ="electric-furnace", amount = 1, probability = 0.25},
  {type ="item", name ="advanced-circuit", amount = 1,probability = 0.25},
  {type ="item", name ="copper-plate", amount = 5},
  {type ="item", name ="steel-plate", amount = 2},
  {type ="item", name ="fast-inserter", amount = 1, probability = 0.5},
}

data.raw.technology["cube-mastery-5"].research_trigger = 
{
  type = "craft-item",
  item = "inverted-microcube",
  count = 10
}

data.raw.recipe["dream-foundry"].surface_conditions = 
{
    {
        property = "pressure",
        min = 0,
        max = 4000
    }
}

data.raw.recipe["dream-foundry"].ingredients = 
{
  {type = "item", name = "energized-microcube", amount = 10},
  {type = "item", name = "inverted-microcube", amount = 10},
  {type = "item", name = "cube-jelly", amount = 10},
  {type = "item", name = "tungsten-plate", amount = 30},
  {type = "item", name = "electronic-circuit", amount = 30},
  {type = "item", name = "steel-plate", amount = 50},
  {type = "item", name = "concrete", amount = 40},
  {type ="fluid", name ="dream-concentrate", amount = 3000},
  {type ="fluid", name ="liquid-hope", amount = 1500},
}

utils.set_prerequisites("recycling",{"cube-mastery-4"})
utils.set_packs("recycling", {"automation-science-pack", "logistic-science-pack", "chemical-science-pack","utility-science-pack"}, 100, 30)

utils.set_prerequisites("turbo-transport-belt-dream",{"cube-mastery-4","express-transport-belt-dream"})
data.raw.recipe["recycler"].surface_conditions = 
{
    {
        property = "pressure",
        min = 100,
        max = 1500,
    }
}

data.raw.recipe["dream-foundry"].ingredients = 
{
  {type = "item", name = "energized-microcube", amount = 10},
  {type = "item", name = "inverted-microcube", amount = 10},
  {type = "item", name = "cube-jelly", amount = 10},
  {type = "item", name = "tungsten-plate", amount = 30},
  {type = "item", name = "electronic-circuit", amount = 30},
  {type = "item", name = "steel-plate", amount = 50},
  {type = "item", name = "concrete", amount = 40},
  {type ="fluid", name ="dream-concentrate", amount = 3000},
  {type ="fluid", name ="liquid-hope", amount = 3000},
}

data.raw.recipe["dream-foundry"].category = "chemistry-or-cryogenics"

data.raw.recipe["turbo-transport-belt-dream"].ingredients = 
{
  {type = "item", name = "iron-gear-wheel", amount = 20},
  {type = "item", name = "express-transport-belt", amount = 1},
  {type = "fluid", name = "dream-concentrate", amount = 80},
  {type = "fluid", name = "liquid-hope", amount = 80},
  {type = "item", name = "inverted-microcube", amount = 2},
  {type = "item", name = "low-density-structure", amount = 10},
}

data.raw.recipe["turbo-splitter-dream"].ingredients = 
{
  {type = "item", name = "express-splitter", amount = 1},
  {type = "item", name = "iron-gear-wheel", amount = 20},
  {type = "item", name = "processing-unit", amount = 10},
  {type = "fluid", name = "dream-concentrate", amount = 160},
  {type = "fluid", name = "liquid-hope", amount = 160},
  {type = "item", name = "inverted-microcube", amount = 3},
  {type = "item", name = "low-density-structure", amount = 30},
}

data.raw.recipe["turbo-underground-belt-dream"].ingredients = 
{
  {type = "item", name = "iron-gear-wheel", amount = 120},
  {type = "item", name = "express-underground-belt", amount = 2},
  {type = "fluid", name = "dream-concentrate", amount = 80},
  {type = "fluid", name = "liquid-hope", amount = 80},
  {type = "item", name = "inverted-microcube", amount = 3},
  {type = "item", name = "low-density-structure", amount = 80},
}


data.raw.recipe["turbo-transport-belt-dream"].category = "chemistry-or-cryogenics"
data.raw.recipe["turbo-splitter-dream"].category = "chemistry-or-cryogenics"
data.raw.recipe["turbo-underground-belt-dream"].category = "chemistry-or-cryogenics"

