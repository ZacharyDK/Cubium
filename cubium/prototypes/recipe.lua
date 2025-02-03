local seconds = 60
local minutes = 60*seconds
require ("util") --shift = util.by_pixel(0.5, -9),

data:extend(
{
    {
        type ="recipe",
        name ="ultradense-substrate",
        category ="crafting-with-fluid-or-metallurgy",
        icon ="__cubium__/graphics/icons/ultradense-substrate.png",
        enabled = false,
        ingredients =
        {
  
          {type ="fluid", name ="ultradense-lava", amount = 500},
          {type ="item", name ="stone", amount = 6},
        },
  
        energy_required = 9,
        results =
        {
          {type ="item", name ="ultradense-substrate", amount = 4}
        },
        allow_productivity = true,
        allow_quality = true,
        auto_recycle = false,
        main_product ="ultradense-substrate",
    },
    {
        type ="recipe",
        name ="energized-microcube",
        category ="crafting",
        icon ="__cubium__/graphics/icons/matter-cube.png",
        enabled = false,
        ingredients =
        {
  
          {type ="item", name ="ultradense-substrate", amount = 50},
        },
  
        energy_required = 3,
        results =
        {
          {type ="item", name ="energized-microcube", amount = 1}
        },
        allow_productivity = true,
        allow_quality = true,
        main_product ="energized-microcube",
    },
    {
        type = "recipe",
        name = "destabilized-cube-matter-recycling",
        icons = 
        {
          {
            icon = "__quality__/graphics/icons/recycling.png"
          },
          {
            icon = "__cubium__/graphics/icons/destabilized-cube-matter.png",
            scale = 0.4
          },
          {
            icon = "__quality__/graphics/icons/recycling-top.png"
          }
        },
        category = "recycling-or-hand-crafting",
        subgroup = "fulgora-processes", --TODO add my own subprocess.
        order = "zz[trash]-b[destabilized-recycling]",
        enabled = false,
        auto_recycle = false,
        energy_required = 1,
        ingredients = {{type = "item", name = "destabilized-cube-matter", amount = 2}},
        results =
        {
          {type = "item", name = "carbon",                amount = 1, probability = 0.2, show_details_in_recipe_tooltip = false},
          {type = "item", name = "sulfur",                amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
          {type = "item", name = "ice",                   amount = 1, probability = 0.3, show_details_in_recipe_tooltip = false},
          {type = "item", name = "iron-ore",              amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
          {type = "item", name = "copper-ore",            amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},


        }
    },
    {
        type = "recipe",
        name = "cube-jelly-to-steam",
        icons = 
        {
          {
            icon = "__cubium__/graphics/icons/cube-jelly.png",
            scale = 1
          },
          {
            icon ="__base__/graphics/icons/fluid/steam.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
        },
        category = "chemistry",
        order = "z[cubejelly]",
        enabled = false,
        auto_recycle = false,
        energy_required = 1,
        ingredients = {{type = "item", name = "cube-jelly", amount = 4}},
        results =
        {
          {type = "fluid", name = "steam",                amount = 1, temperature = 500},
        }
    },
    {
        type = "recipe",
        name = "cube-jelly-to-solid-fuel",
        icons = 
        {
          {
            icon = "__cubium__/graphics/icons/cube-jelly.png",
            scale = 1
          },
          {
            icon = "__base__/graphics/icons/solid-fuel.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
        },
        category = "chemistry",
        order = "z[cubejellysolidfuel]",
        enabled = false,
        auto_recycle = false,
        energy_required = 4,
        ingredients = {{type = "item", name = "cube-jelly", amount = 50}},
        results =
        {
          {type = "item", name = "solid-fuel",                amount = 1},
        },
        crafting_machine_tint =
        {
          primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
          secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
          tertiary = {r = 109/256, g = 117/256, b =210/256, a = 1.000}, --rgb(109, 117, 210)
          quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
        }
    },
    {
        type = "recipe",
        name = "cube-jelly-basic",
        icon = "__cubium__/graphics/icons/cube-jelly-basic.png",
        category = "recycling-or-hand-crafting",

        enabled = false,
        auto_recycle = false,
        energy_required = 1,
        ingredients = {{type = "item", name = "energized-microcube", amount = 1}},
        results =
        {
          {type = "item", name = "cube-jelly",                amount = 1,  percent_spoiled = 0, show_details_in_recipe_tooltip = false},
          {type = "item", name = "dormant-microcube",                amount = 1,  percent_spoiled = 0, ignored_by_productivity = 9999, show_details_in_recipe_tooltip = false},
        }
    },
    {
        type = "recipe",
        name = "cube-jelly",
        icon = "__cubium__/graphics/icons/cube-jelly.png",
        category = "advanced-crafting",

        enabled = false,
        auto_recycle = false,
        energy_required = 1,
        ingredients = {{type = "item", name = "energized-microcube", amount = 1}},
        results =
        {
          {type = "item", name = "cube-jelly",                amount = 1, percent_spoiled = 0},
          {type = "item", name = "energized-microcube", probability = 0.6,               amount = 1,ignored_by_productivity = 9999},
          {type = "item", name = "dormant-microcube", probability = 0.4,               amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},
        }
    },
    {
        type = "recipe",
        name = "matter-amplification",
        icons = 
        {
            {
              icon = "__cubium__/graphics/icons/cube-jelly.png",
              scale = 1
            },
            {
              icon = "__cubium__/graphics/icons/cube-jelly.png",
              scale = 0.6,
              shift = util.by_pixel(64, 64),
            }
        },
        category = "advanced-crafting",

        enabled = false,
        auto_recycle = false,
        energy_required = 4,
        ingredients = 
        {
            {type = "item", name = "energized-microcube", amount = 1},
            {type = "item", name = "cube-jelly", amount = 10},
        },
        results =
        {
          {type = "item", name = "cube-jelly",                amount = 15,  percent_spoiled = 0, ignored_by_productivity = 10, ignored_by_stats = 10},
          {type = "item", name = "energized-microcube", probability = 0.7,               amount = 1,ignored_by_productivity = 9999},
          {type = "item", name = "dormant-microcube", probability = 0.3,               amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},
        }
    },
    {
        type = "recipe",
        name = "carbonic-scaffolding",
        icons = 
        {
            {
              icon = "__cubium__/graphics/icons/cube-jelly.png",
              scale = 1
            },
            {
              icon = "__space-age__/graphics/icons/carbon.png",
              scale = 0.6,
              shift = util.by_pixel(64, 64),
            }
        },
        category = "advanced-crafting",

        enabled = false,
        auto_recycle = false,
        energy_required = 20,
        ingredients = 
        {
            {type = "item", name = "energized-microcube", amount = 1},
            {type = "item", name = "cube-jelly", amount = 20},
            {type = "item", name = "carbon", amount = 30},
        },
        results =
        {
          {type = "item", name = "cube-jelly",                amount = 70,  percent_spoiled = 0, ignored_by_productivity = 20, ignored_by_stats = 20},
          {type = "item", name = "energized-microcube", probability = 0.75,               amount = 1,ignored_by_productivity = 9999},
          {type = "item", name = "dormant-microcube", probability = 0.25,               amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},
        }
    },
    {
        type = "recipe",
        name = "metallic-aggravation",
        icons = 
        {
            {
              icon = "__cubium__/graphics/icons/matter-cube.png",
              scale = 1
            },
            {
              icon = "__cubium__/graphics/icons/matter-cube-dormant.png",
              scale = 0.6,
              shift = util.by_pixel(64, 64),
            }
          },
        category = "advanced-crafting",

        enabled = false,
        auto_recycle = false,
        energy_required = 10,
        allow_productivity = false,
        ingredients = 
        {
            {type = "item", name = "dormant-microcube", amount = 1},
            {type = "item", name = "iron-plate", amount = 2},
            {type = "item", name = "copper-plate", amount = 2},
        },
        results =
        {
          {type = "item", name = "energized-microcube",amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
        }
    },
    {
      type = "recipe",
      name = "cube-jelly-plastic",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/plastic-bar.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-dormant.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 50,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "energized-microcube", amount = 1},
          {type = "item", name = "cube-jelly", amount = 100},
          {type = "item", name = "carbon", amount = 50},
      },
      results =
      {
        {type = "item", name = "dormant-microcube",amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
        {type = "item", name = "plastic-bar", amount = 75}
      }
    },

    {
      type = "recipe",
      name = "cube-jelly-ore-basic",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/cube-jelly.png",
            scale = 1
          },
          {
            icon = "__base__/graphics/icons/iron-ore.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 5,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "cube-jelly", amount = 10},
      },
      results =
      {
        {type = "item", name = "iron-ore", amount = 4, probability = 0.60},
        {type = "item", name = "copper-ore", amount = 4,probability = 0.40},
      }
    },

    {
      type = "recipe",
      name = "cube-jelly-ore-advanced-iron",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/cube-jelly.png",
            scale = 1
          },
          {
            icon = "__base__/graphics/icons/iron-plate.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 17,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "cube-jelly", amount = 50},
          {type = "item", name = "energized-microcube", amount = 1},
      },
      results =
      {
        {type = "item", name = "iron-ore", amount = 28},
        {type = "item", name = "dormant-microcube",amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
      }
    },
    {
      type = "recipe",
      name = "cube-jelly-ore-advanced-copper",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/cube-jelly.png",
            scale = 1
          },
          {
            icon = "__base__/graphics/icons/copper-plate.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 16,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "cube-jelly", amount = 50},
          {type = "item", name = "energized-microcube", amount = 1},
      },
      results =
      {
        {type = "item", name = "copper-ore", amount = 28},
        {type = "item", name = "dormant-microcube",amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
      }
    },


    --Cubic recipes. TODO, add building that can do cubic recipes. for now they will be under advanced processing
    {
        type = "recipe",
        name = "cubic-recovery",
        icons = 
        {
            {
              icon = "__cubium__/graphics/icons/matter-cube.png",
              scale = 1
            },
            {
              icon = "__cubium__/graphics/icons/broken-cube.png",
              scale = 0.6,
              shift = util.by_pixel(64, 64),
            }
        },
        category = "advanced-crafting",

        enabled = false,
        auto_recycle = true,
        energy_required = 15,
        allow_productivity = false,
        ingredients = 
        {
            {type = "item", name = "energized-shards", amount = 100},
        },
        results =
        {
          {type = "item", name = "energized-microcube", amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
        }
    },
    {
      type = "recipe",
      name = "inverted-shards",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/broken-cube-yellow.png",
            scale = 1
          },
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 45,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "energized-microcube", amount = 2},
      },
      results =
      {
        {type = "item", name = "energized-shards", amount_min = 100, amount_max = 200},
        {type = "item", name = "inverted-shards", probability = 0.2, amount_min = 15, amount_max = 23},
      }
    },
    {
      type = "recipe",
      name = "inverted-cube",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 1
          },
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = true,
      energy_required = 15,
      allow_productivity = false,
      ingredients = 
      {
          {type = "item", name = "inverted-shards", amount = 100},
      },
      results =
      {
        {type = "item", name = "inverted-microcube", amount = 1,ignored_by_productivity = 9999},
      }
    },
    {
      type = "recipe",
      name = "cubic-latent-recovery",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/matter-cube.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 120,
      allow_productivity = false,
      ingredients = 
      {
          {type = "item", name = "dormant-microcube", amount = 50},
      },
      results =
      {
        {type = "item", name = "dormant-microcube", amount = 49,ignored_by_productivity = 9999, percent_spoiled = 0},
        {type = "item", name = "energized-microcube", amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
      }
    },
    --Cube inversion recipes start here.
    {
      type = "recipe",
      name = "sulfuric-acid-inversion",
      icons = 
      {
          {
            icon = "__space-age__/graphics/icons/calcite.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "chemistry-or-cryogenics",

      enabled = false,
      auto_recycle = false,
      energy_required = 15,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "stone", amount = 5},
          {type = "fluid", name = "sulfuric-acid", amount = 1000},
          {type = "fluid", name = "water", amount = 400},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
        {type = "item", name = "calcite", amount = 5},
      },
      crafting_machine_tint =
      {
        primary = {r = 0.965, g = 0.482, b = 0.338, a = 1.000}, -- #f67a56ff
        secondary = {r = 0.831, g = 0.560, b = 0.222, a = 1.000}, -- #d38e38ff
        tertiary = {r = 0.728, g = 0.818, b = 0.443, a = 1.000}, -- #b9d070ff
        quaternary = {r = 0.939, g = 0.763, b = 0.191, a = 1.000}, -- #efc230ff
      },
    },
    {
      type = "recipe",
      name = "recharge-inverted-cube",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 1
          },
          {
            icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "chemistry-or-cryogenics",

      enabled = false,
      auto_recycle = false,
      energy_required = 15,
      allow_productivity = false,
      ingredients = 
      {
          {type = "item", name = "inverted-dormant-microcube", amount = 1},
          {type = "item", name = "energized-microcube", amount = 1},
          {type = "item", name = "calcite", amount = 1},
          {type = "fluid", name = "sulfuric-acid", amount = 100},
          {type = "fluid", name = "water", amount = 100},
      },
      results =
      {
        {type = "item", name = "inverted-microcube", amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
        {type = "item", name = "dormant-microcube", amount = 1,ignored_by_productivity = 9999, percent_spoiled = 0},
      },
      crafting_machine_tint =
      {
        primary = {r = 0.965, g = 0.482, b = 0.338, a = 1.000}, -- #f67a56ff
        secondary = {r = 0.831, g = 0.560, b = 0.222, a = 1.000}, -- #d38e38ff
        tertiary = {r = 0.728, g = 0.818, b = 0.443, a = 1.000}, -- #b9d070ff
        quaternary = {r = 0.939, g = 0.763, b = 0.191, a = 1.000}, -- #efc230ff
      },
    },

    {
      type = "recipe",
      name = "petrol-gas-by-inversion",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "chemistry-or-cryogenics",

      enabled = false,
      auto_recycle = false,
      energy_required = 17,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "carbon", amount = 15},
          {type = "item", name = "sulfur", amount = 20},
          {type = "item", name = "ice", amount = 15},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "fluid", name = "petroleum-gas", amount = 300},
      },
      crafting_machine_tint =
      {
        primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
        secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
        tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
        quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
      }
    },
    {
      type = "recipe",
      name = "engine-unit-by-inversion",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/engine-unit.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 30,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "steam-engine", amount = 20},
          {type = "item", name = "steel-plate", amount = 20},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "engine-unit", amount = 60},
      }
    },
    {
      type = "recipe",
      name = "light-oil-by-inversion",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/fluid/light-oil.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "chemistry-or-cryogenics",

      enabled = false,
      auto_recycle = false,
      energy_required = 45,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "ice", amount = 150},
          {type = "fluid", name = "petroleum-gas", amount = 4500},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "fluid", name = "light-oil", amount = 3000},
      },
      crafting_machine_tint =
      {
        primary = {r = 0.764, g = 0.596, b = 0.780, a = 1.000}, -- #c298c6ff
        secondary = {r = 0.762, g = 0.551, b = 0.844, a = 1.000}, -- #c28cd7ff
        tertiary = {r = 0.895, g = 0.773, b = 0.596, a = 1.000}, -- #e4c597ff
        quaternary = {r = 1.000, g = 0.734, b = 0.290, a = 1.000}, -- #ffbb49ff
      }
    },

    --Emotional refining, dream recipes
    {
      type ="recipe",
      name ="dream-small-power-pole",
      category ="crafting",
      icon ="__base__/graphics/icons/small-electric-pole.png",
      enabled = false,
      ingredients =
      {

        {type ="item", name ="dream", amount = 10},
      },

      energy_required = 3,
      results =
      {
        {type ="item", name ="small-electric-pole", amount = 1}
      },
      allow_productivity = true,
      allow_quality = true,
      allow_decomposition = false,
      auto_recycle = false,
      main_product ="small-electric-pole",
    },
    {
      type ="recipe",
      name ="liquid-dream",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/liquid-dream.png",
      enabled = false,
      ingredients =
      {

        {type ="item", name ="dream", amount = 10},
        {type = "fluid", name = "water", amount = 100},
      },

      energy_required = 3,
      results =
      {
        {type ="fluid", name ="liquid-dream", amount = 100}
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="dream-concentrate",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/dream-concentrate.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-dream", amount = 100},
      },

      energy_required = 17,
      results =
      {
        {type ="fluid", name ="dream-concentrate", amount = 35}
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="emotional-tar",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/emotional-tar.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "dream-concentrate", amount = 35},
        {type = "fluid", name = "light-oil", amount = 35},
      },

      energy_required = 3,
      results =
      {
        {type ="fluid", name ="emotional-tar", amount = 70}
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="emotional-cracking", --I'll consider forcing the cube here.
      category ="oil-processing",
      icon ="__cubium__/graphics/icons/fluid/emotional-tar.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "emotional-tar", amount = 100},
        {type = "fluid", name = "water", amount = 35},
      },

      energy_required = 5,
      results =
      {
        {type ="fluid", name ="liquid-hope", amount = 55},
        {type ="fluid", name ="liquid-anger", amount = 35},
        {type ="fluid", name ="liquid-disgust", amount = 35},
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="anger-cracking",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/liquid-hate.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-dream", amount = 50},
        {type = "fluid", name = "liquid-anger", amount = 100},
      },

      energy_required = 5,
      results =
      {
        {type ="fluid", name ="liquid-hate", amount = 73},
        {type ="fluid", name ="liquid-fear", amount = 73},
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="anger-reconstitution",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/liquid-hate.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-disgust", amount = 700},
        {type = "fluid", name = "liquid-hate", amount = 1000},
        {type = "item", name = "energized-microcube", amount = 1},
      },

      energy_required = 35,
      results =
      {
        {type ="fluid", name ="liquid-anger", amount = 1700},
        {type = "item", name = "dormant-microcube", amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0}
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="fear-inversion",
      category ="chemistry-or-cryogenics",
      icon ="__cubium__/graphics/icons/fluid/liquid-courage.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-fear", amount = 1000},
        {type = "item", name = "inverted-microcube", amount = 1},
      },

      energy_required = 35,
      results =
      {
        {type ="fluid", name ="liquid-courage", amount = 1000},
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999}
      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="courage-fear-steam",
      category ="chemistry-or-cryogenics",
      icon ="__base__/graphics/icons/fluid/steam.png",
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-fear", amount = 1000},
        {type = "fluid", name = "liquid-courage", amount = 1000},
      },

      energy_required = 10,
      results =
      {
        {type ="fluid", name ="steam", amount = 2000, temperature = 500},

      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    {
      type ="recipe",
      name ="inversion-awakening",
      category ="chemistry-or-cryogenics",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 1
          },
          {
            icon ="__base__/graphics/icons/fluid/steam.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      enabled = false,
      ingredients =
      {

        {type = "fluid", name = "liquid-fear", amount = 100},
        {type = "fluid", name = "liquid-courage", amount = 100},
        {type = "item", name = "inverted-dormant-microcube", amount = 1},
      },

      energy_required = 3,
      results =
      {
        {type ="fluid", name ="steam", amount = 50, temperature = 500},
        {type = "item", name = "inverted-microcube", amount = 1,ignored_by_productivity = 9999}

      },
      allow_productivity = true,
      allow_quality = false,
      allow_decomposition = false,
      auto_recycle = false,
    },
    --Rocket silo recipes. LDS, Concrete, blue circuits, electric-engine-unit.
    {
      type = "recipe",
      name = "electric-engine-unit-by-inversion",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/electric-engine-unit.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 40,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "engine-unit", amount = 100},
          {type = "fluid", name = "liquid-dream", amount = 500},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "engine-unit", amount = 100},
      }
    },
    {
      type = "recipe",
      name = "dream-concrete",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/concrete.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/dream.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 30,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "stone-brick", amount = 100},
          {type = "item", name = "iron-plate", amount = 20},
          {type = "fluid", name = "liquid-dream", amount = 400},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "concrete", amount = 400},
      }
    },
    {
      type = "recipe",
      name = "refined-dream-concrete",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/refined-concrete.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/dream.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 40,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "concrete", amount = 400},
          {type = "item", name = "steel-plate", amount = 20},
          {type = "fluid", name = "liquid-dream", amount = 400},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "refined-concrete", amount = 250},
      }
    },
    {
      type = "recipe",
      name = "dream-processing-unit",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/processing-unit.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/dream.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "electronics",

      enabled = false,
      auto_recycle = false,
      energy_required = 60,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "advanced-circuit", amount = 100},
          {type = "item", name = "electronic-circuit", amount = 20},
          {type = "item", name = "calcite", amount = 10},
          {type = "item", name = "ice", amount = 50},
          {type = "fluid", name = "dream-concentrate", amount = 1000},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "processing-unit", amount = 100},
      }
    },
    {
      type = "recipe",
      name = "dream-advanced-circuit",
      icons = 
      {
          {
            icon = "__base__/graphics/icons/advanced-circuit.png",
            scale = 1
          },
          {
            icon = "__cubium__/graphics/icons/dream.png",
            scale = 0.6,
            shift = util.by_pixel(64, 64),
          }
      },
      category = "electronics",

      enabled = false,
      auto_recycle = false,
      energy_required = 50,
      allow_productivity = true,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "cube-jelly", amount = 70},
          {type = "item", name = "steel-plate", amount = 10},
          {type = "item", name = "copper-plate", amount = 10},
          {type = "fluid", name = "dream-concentrate", amount = 500},
      },
      results =
      {
        {type = "item", name = "inverted-dormant-microcube", amount = 1,ignored_by_productivity = 9999},
        {type = "item", name = "advanced-circuit", amount = 50},
      }
    },
    --inverted Cube jelly
    {
      type = "recipe",
      name = "inverted-cube-jelly-recycling",
      icons = 
      {
        {
          icon = "__quality__/graphics/icons/recycling.png"
        },
        {
          icon = "__cubium__/graphics/icons/cube-jelly-yellow.png",
          scale = 0.4
        },
        {
          icon = "__quality__/graphics/icons/recycling-top.png"
        }
      },
      category = "recycling-or-hand-crafting",
      subgroup = "fulgora-processes", --TODO add my own subprocess.
      order = "zz[trash]-b[inverted-jelly-recycling]",
      enabled = false,
      auto_recycle = false,
      energy_required = 0.75,
      ingredients = {{type = "item", name = "inverted-cube-jelly", amount = 1}},
      results =
      {
        {type = "item", name = "stone",                amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = "item", name = "sulfur",                amount = 1, probability = 0.30, show_details_in_recipe_tooltip = false},
        {type = "item", name = "jelly",                   amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
        {type = "item", name = "solid-fuel",              amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
        {type = "item", name = "coal",              amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
        {type = "item", name = "calcite",              amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
        {type = "item", name = "dream",              amount = 3, probability = 0.18, show_details_in_recipe_tooltip = false},
        {type = "item", name = "destabilized-cube-matter",            amount = 3, probability = 0.10, show_details_in_recipe_tooltip = false},


      }
    },
    {
      type = "recipe",
      name = "jelly-inversion",
      icons = 
      {
          {
            icon = "__cubium__/graphics/icons/cube-jelly-yellow.png",
            scale = 1
          },
      },
      category = "advanced-crafting",

      enabled = false,
      auto_recycle = false,
      energy_required = 4,
      ingredients = 
      {
          {type = "item", name = "inverted-microcube", amount = 1},
          {type = "item", name = "cube-jelly", amount = 10},
      },
      results =
      {
        {type = "item", name = "cube-jelly",                amount = 10,  percent_spoiled = 0},

        {type = "item", name = "inverted-dormant-microcube",            amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},
      }
    },
    --Anger refining

})