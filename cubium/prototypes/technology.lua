require("util")

data:extend({
    --BASICS
    {
        type = "technology",
        name = "planet-discovery-cubium",
        icons = util.technology_icon_constant_planet("__cubium__/graphics/technology/ultradense-technology.png"),
        icon_size = 256,
        essential = true,
        effects = 
        {
            {
                type = "unlock-space-location",
                space_location = "cubium",
                use_icon_overlay_constant = true
            },
            
            {
                type = "unlock-recipe",
                recipe = "ultradense-substrate",
            },
            {
                type = "unlock-recipe",
                recipe = "energized-microcube"
            },
            {
              type = "unlock-recipe",
              recipe = "cube-jelly-basic"
            },
            {
              type = "unlock-recipe",
              recipe = "cube-jelly"
            },
          
        },
        prerequisites = {"space-platform-thruster"},
        unit =
        {
          count = 1000,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
          },
          time = 60
        }
    },
    {
      type = "technology",
      name = "cube-jelly",
      icon = "__cubium__/graphics/technology/ultradense-technology.png",
      icon_size = 256,
      essential = true,
      effects = 
      {

          {
              type = "unlock-recipe",
              recipe = "destabilized-cube-matter-recycling"
          },
          {
              type = "unlock-recipe",
              recipe = "cube-jelly-to-steam"
          },
          {
              type = "unlock-recipe",
              recipe = "cube-jelly-to-solid-fuel"
          },

          {
            type = "unlock-recipe",
            recipe = "matter-amplification"
          },
          {
            type = "unlock-recipe",
            recipe = "cubic-latent-recovery"
          },
          {
            type = "unlock-recipe",
            recipe = "cube-smasher"
          },
          {
            type = "unlock-recipe",
            recipe = "cube-smasher-cubic"
          },

      },
      prerequisites = {"planet-discovery-cubium"},
      research_trigger =
      {
        type = "craft-item",
        item = "cube-jelly",
        count = 3
      }
    },
    {
      type = "technology",
      name = "cube-mastery-1",
      icon = "__cubium__/graphics/technology/ultradense-technology.png",
      icon_size = 256,
      essential = true,
      effects = 
      {

          {
            type = "unlock-recipe",
            recipe = "carbonic-scaffolding"
          },
          {
            type = "unlock-recipe",
            recipe = "metallic-aggravation"
          },
          {
            type = "unlock-recipe",
            recipe = "cube-jelly-ore-basic"
          },
          {
            type = "unlock-recipe",
            recipe = "liquid-dream"
          },
          {
            type = "unlock-recipe",
            recipe = "inverted-shards"
          },
          {
            type = "unlock-recipe",
            recipe = "inverted-cube"
          },
          {
            type = "unlock-recipe",
            recipe = "recharge-inverted-cube"
          },
          {
            type = "unlock-recipe",
            recipe = "cubic-recovery"
          },
      },
      prerequisites = {"cube-jelly"},
      research_trigger =
      {
        type = "craft-item",
        item = "cube-jelly",
        count = 30
      }
    },
    {
      type = "technology",
      name = "cube-mastery-2",
      icon = "__cubium__/graphics/technology/ultradense-technology-yellow.png",
      icon_size = 256,
      essential = true,
      effects = 
      {
          {
            type = "unlock-recipe",
            recipe = "cube-jelly-ore-advanced-iron"
          },
          {
            type = "unlock-recipe",
            recipe = "cube-jelly-ore-advanced-copper"
          },

          {
            type = "unlock-recipe",
            recipe = "cube-jelly-plastic"
          },



          {
            type = "unlock-recipe",
            recipe = "sulfuric-acid-inversion"
          },

          {
            type = "unlock-recipe",
            recipe = "petrol-gas-by-inversion"
          },
          {
            type = "unlock-recipe",
            recipe = "engine-unit-by-inversion"
          },
          {
            type = "unlock-recipe",
            recipe = "light-oil-by-inversion"
          },
          {
            type = "unlock-recipe",
            recipe = "ice-dreams",
          },



      },
      prerequisites = {"cube-mastery-1"},
      research_trigger =
      {
        type = "craft-item",
        item = "inverted-microcube",
        count = 1
      }
     
    },
    {
      type = "technology",
      name = "cube-mastery-3",
      icon = "__cubium__/graphics/technology/ultradense-technology.png",
      icon_size = 256,
      essential = true,
      effects = 
      {
        {
          type = "unlock-recipe",
          recipe = "dream-small-power-pole"
        },
        {
          type = "unlock-recipe",
          recipe = "dream-concentrate"
        },
        {
          type = "unlock-recipe",
          recipe = "emotional-tar"
        },
        
        {
          type = "unlock-recipe",
          recipe = "emotional-cracking"
        },
        {
          type = "unlock-recipe",
          recipe = "anger-cracking"
        },
        {
          type = "unlock-recipe",
          recipe = "anger-reconstitution"
        },
        {
          type = "unlock-recipe",
          recipe = "fear-inversion"
        },
        {
          type = "unlock-recipe",
          recipe = "courage-fear-steam"
        },
        {
          type = "unlock-recipe",
          recipe = "inversion-awakening"
        },
        {
          type = "unlock-recipe",
          recipe = "electric-engine-unit-by-inversion"
        },
        {
          type = "unlock-recipe",
          recipe = "dream-concrete"
        },
        {
          type = "unlock-recipe",
          recipe = "refined-dream-concrete"
        },
        {
          type = "unlock-recipe",
          recipe = "dream-processing-unit"
        },
        {
          type = "unlock-recipe",
          recipe = "dream-advanced-circuit"
        },

      },
      prerequisites = {"cube-mastery-2"},
      research_trigger =
      {
        type = "craft-fluid",
        fluid = "liquid-dream",
        count = 100
      }
     
    },
    {
      type = "technology",
      name = "cube-mastery-4",
      icon = "__cubium__/graphics/technology/ultradense-technology.png",
      icon_size = 256,
      essential = true,
      effects = 
      {
        {
          type = "unlock-recipe",
          recipe = "inverted-cube-jelly-recycling"
        },
        {
          type = "unlock-recipe",
          recipe = "jelly-inversion"
        },
        {
          type = "unlock-recipe",
          recipe = "rocket-fuel-dreams",
        },
        {
          type = "unlock-recipe",
          recipe = "dream-fuel",
        },{
          type = "unlock-recipe",
          recipe = "biter-egg-refresh",
        },
        {
          type = "unlock-recipe",
          recipe = "biter-egg-breeding",
        },
        {
          type = "unlock-recipe",
          recipe = "angry-rockets",
        },
        {
          type = "unlock-recipe",
          recipe = "space-cube-recovery",
        },             
      },
      prerequisites = {"cube-mastery-3"},
      research_trigger =
      {
        type = "craft-fluid",
        fluid = "dream-concentrate",
        count = 10
      }
     
    }



    


}
)
--[[


--]]