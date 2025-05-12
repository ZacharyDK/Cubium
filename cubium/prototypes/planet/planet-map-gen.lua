local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

planet_map_gen.cubium = function()
  return
  {
    property_expression_names =
    {
      elevation = "cubium_elevation",
      temperature = "cubium_temperature",
      moisture = "cubium_moisture",
      aux = "cubium_aux",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",

      ["entity:stone:probability"] = "cubium_stone_probability",
      ["entity:stone:richness"] = "cubium_stone_richness",
      ["entity:sulfuric-acid-geyser:probability"] = "cubium_sulfuric_acid_geyser_probability",
      ["entity:sulfuric-acid-geyser:richness"] = "cubium_sulfuric_acid_geyser_richness",
      ["entity:coal:probability"] = "cubium_coal_probability",
      ["entity:coal:richness"] = "cubium_coal_richness",
    },
    cliff_settings =
    {
      name = "cliff-cubium",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70,
    },

    autoplace_controls =
    {
      ["sulfuric_acid_geyser"] = {},
      ["cubium_stone"] = {},
      ["cubium_coal"] = {},
      ["cubium_volcanism"] = {},


    },
    autoplace_settings = 
    {
      ["tile"] = --TODO, make lowland tile prototype....
      {
        settings =
        {
          --nauvis tiles
          --["volcanic-soil-dark"] = {},
          --["volcanic-soil-light"] = {},
          --["volcanic-ash-soil"] = {},
          --end of nauvis tiles
          ["cubium-volcanic-ash-flats"] = {},
          ["cubium-volcanic-ash-light"] = {},
          ["cubium-volcanic-ash-dark"] = {},
          ["cubium-volcanic-cracks"] = {},
          ["cubium-volcanic-cracks-warm"] = {},
          ["cubium-folds"] = {},
          ["cubium-volcanic-folds-flat"] = {},
          ["cubium-lava"] = {},
          ["cubium-lava-hot"] = {},
          ["cubium-folds-warm"] = {},
          ["cubium-volcanic-pumice-stones"] = {},
          ["cubium-volcanic-cracks-hot"] = {},
          ["cubium-volcanic-jagged-ground"] = {},
          ["cubium-volcanic-smooth-stone"] = {},
          ["cubium-smooth-stone-warm"] = {},
          ["cubium-ash-cracks"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          -- nauvis decoratives
          --["v-brown-carpet-grass"] = {},
          --["v-green-hairy-grass"] = {},
          --["v-brown-hairy-grass"] = {},
          --["v-red-pita"] = {},
          -- end of nauvis
          --["cubium-rock-decal-large"] = {}, --TODO define these decoratives
          --["cubium-crack-decal-large"] = {},
          --["cubium-crack-decal-huge-warm"] = {},
          --["cubium-dune-decal"] = {},
          --["cubium-sand-decal"] = {},
          --["cubium-lava-fire"] = {},
          ["sulfur-stain"] = {},
          ["sulfur-stain-small"] = {},
          ["sulfuric-acid-puddle"] = {},
          ["sulfuric-acid-puddle-small"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
          ["pumice-relief-decal"] = {},
          ["small-volcanic-rock"] = {},
          ["medium-volcanic-rock"] = {},
          ["tiny-volcanic-rock"] = {},
          ["tiny-rock-cluster"] = {},
          ["small-sulfur-rock"] = {},
          ["tiny-sulfur-rock"] = {},
          ["sulfur-rock-cluster"] = {},
          ["waves-decal"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
          ["stone"] = {},
          ["coal"] = {},
          ["sulfuric-acid-geyser"] = {},
          --["huge-volcanic-rock"] = {}, --todo define my own
          --["big-volcanic-rock"] = {},
          ["crater-cliff"] = {},
          ["vulcanus-chimney"] = {}, --Might have to make my own, but I'll leave it for now.
          ["vulcanus-chimney-faded"] = {},
          ["vulcanus-chimney-cold"] = {},
          ["vulcanus-chimney-short"] = {},
          ["vulcanus-chimney-truncated"] = {},
          ["ashland-lichen-tree"] = {},
          ["ashland-lichen-tree-flaming"] = {},
        }
      }
    }
  }
end

return planet_map_gen