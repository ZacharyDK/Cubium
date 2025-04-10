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
data.raw.recipe["casting-steel"].enabled = true
data.raw.recipe["heating-tower"].enabled = true
data.raw.recipe["heat-exchanger"].enabled = true
data.raw.recipe["heat-pipe"].enabled = true
data.raw.recipe["steam-turbine"].enabled = true

--data.raw.recipe["pumpjack"].enabled = true

local logistic_science = {"automation-science-pack", "logistic-science-pack"}
local automation_science = {"automation-science-pack"}

utils.set_packs("fluid-handling", automation_science, 10, 30)
utils.set_packs("coal-liquefaction", logistic_science, 100, 30)
utils.set_packs("oil-gathering", automation_science, 100, 30)
utils.set_packs("advanced-oil-processing", logistic_science, 100, 30)
utils.set_packs("sulfur-processing", logistic_science, 100, 30)