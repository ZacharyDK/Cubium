require("__cubium__.prototypes.entity")
--require("__cubium__.prototypes.factoriopedia-simulations")
require("__cubium__.prototypes.fluid")
require("__cubium__.prototypes.item")
--require("__cubium__.prototypes.particles")
--require("__cubium__.prototypes.particle-animations")

require("__cubium__.prototypes.recipe-categories")
require("__cubium__.prototypes.recipe")
--require("__cubium__.prototypes.entity.remnants")
require("__cubium__.prototypes.technology")

--require("__cubium__.prototypes.entity.resources")
require("__cubium__.prototypes.autoplace-controls")
require("__cubium__.prototypes.planet.cubium-expressions")
require("__cubium__.prototypes.planet.tiles-cubium")
require("__cubium__.prototypes.planet.planet-map-gen")
require("__cubium__.prototypes.planet.planet")
require("__cubium__.prototypes.recipe-categories")
require("__cubium__.prototypes.fuel-category")
--require("__cubium__.prototypes.explosions")


require("__cubium__.prototypes.item-groups")
require("__cubium__.prototypes.ambient-sounds")
--require("__cubium__.prototypes.achievements")
if (mods["any-planet-start"]) then
    APS.add_planet{name = "cubium", filename = "__cubium__/cubium.lua", technology = "planet-discovery-cubium"}
    APS.add_planet{name = "aquilo", filename = "__cubium__/aquilo.lua", technology = "planet-discovery-aquilo"}
end
require("__cubium__.compatibility.canal-excavator")