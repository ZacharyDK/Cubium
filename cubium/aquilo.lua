local utils = require("__any-planet-start__.utils")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

function make_rotated_animation_variations_from_sheet(variation_count, sheet) --makes remnants work with more than 1 variation
    local result = {}
  
    local function set_y_offset(variation, i)
      local frame_count = variation.frame_count or 1
      local line_length = variation.line_length or frame_count
      if (line_length < 1) then
        line_length = frame_count
      end
  
      local height_in_frames = math.floor((frame_count * variation.direction_count + line_length - 1) / line_length)
      -- if (height_in_frames ~= 1) then
      --   log("maybe broken sheet: h=" .. height_in_frames .. ", vc=" .. variation_count .. ", " .. variation.filename)
      -- end
      variation.y = variation.height * (i - 1) * height_in_frames
    end
  
    for i = 1,variation_count do
      local variation = util.table.deepcopy(sheet)
  
      if variation.layers then
        for _, layer in pairs(variation.layers) do
          set_y_offset(layer, i)
        end
      else
        set_y_offset(variation, i)
      end
  
      table.insert(result, variation)
    end
   return result
end

data.raw.recipe["medium-electric-pole"].enabled = true
data.raw.recipe["ultradense-substrate"].enabled = true
data.raw.recipe["energized-microcube"].enabled = true
data.raw.recipe["cube-jelly-basic"].enabled = true
data.raw.recipe["cube-jelly"].enabled = true
data.raw.recipe["carbon"].enabled = true
data.raw.recipe["ice-melting"].enabled = true
data.raw.recipe["steel-plate"].enabled = true
data.raw.recipe["destabilized-cube-matter-recycling"].enabled = true
--data.raw.recipe["molten-iron"].enabled = true
--data.raw.recipe["molten-copper"].enabled = true
--data.raw.recipe["casting-iron"].enabled = true
--data.raw.recipe["casting-steel"].enabled = true
--data.raw.recipe["casting-copper"].enabled = true
data.raw.recipe["heating-tower"].enabled = true
data.raw.recipe["heat-exchanger"].enabled = true
data.raw.recipe["heat-pipe"].enabled = true
data.raw.recipe["steam-turbine"].enabled = true

data.raw.recipe["ammoniacal-solution-separation"].enabled = true
data.raw.recipe["solid-fuel-from-ammonia"].enabled = true
data.raw.recipe["ammonia-rocket-fuel"].enabled = true
data.raw.recipe["ice-platform"].enabled = true
data.raw.recipe["rocket-turret"].enabled = true
data.raw.recipe["coal-synthesis"].enabled = true
data.raw.recipe["basic-oil-processing"].enabled = true
data.raw.recipe["oil-refinery"].enabled = true
data.raw.recipe["concrete"].enabled = true
data.raw.recipe["chemical-plant"].enabled = true
data.raw.recipe["pipe"].enabled = true



--Add red pumpjack. (burner pumpjack)
data:extend(
    {
        {
            type = "corpse",
            name = "red-pumpjack-remnants",
            icon = "__cubium__/graphics/icons/red-pumpjack.png",
            flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
            hidden_in_factoriopedia = true,
            subgroup = "extraction-machine-remnants",
            order = "a-d-a",
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            tile_width = 3,
            tile_height = 3,
            selectable_in_game = false,
            time_before_removed = 60 * 60 * 15, -- 15 minutes
            expires = false,
            final_render_layer = "remnants",
            remove_on_tile_placement = false,
            animation = make_rotated_animation_variations_from_sheet(2,
            {
              filename = "__cubium__/graphics/entity/red-pumpjack/remnants/red-pumpjack-remnants.png",
              line_length = 1,
              width = 274,
              height = 284,
              direction_count = 1,
              shift = util.by_pixel(0, 3.5),
              scale = 0.5
            })
        },
        {
            type = "mining-drill",
            name = "red-pumpjack",
            heating_energy = "0kW",
            icon = "__cubium__/graphics/icons/red-pumpjack.png",
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 0.5, result = "red-pumpjack"},
            resource_categories = {"basic-fluid"},
            max_health = 200,
            corpse = "red-pumpjack-remnants",
            dying_explosion = "pumpjack-explosion",
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            damaged_trigger_effect = hit_effects.entity(),
            drawing_box_vertical_extension = 1,
            energy_source =
            {
                type = "burner",
                fuel_categories = {"chemical"},
                effectivity = 1,
                fuel_inventory_size = 2,
                emissions_per_minute = { pollution = 12 },
                light_flicker = {color = {0,0,0}},
                smoke =
                {
                  {
                    name = "smoke",
                    deviation = {0.1, 0.1},
                    frequency = 3
                  }
                }
            },
            output_fluid_box =
            {
              volume = 1000,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {
                  direction = defines.direction.north,
                  positions = {{1, -1}, {1, -1}, {-1, 1}, {-1, 1}},
                  flow_direction = "output"
                }
              }
            },
            energy_usage = "90kW",
            mining_speed = 0.5,
            resource_searching_radius = 0.49,
            vector_to_place_result = {0, 0},
            module_slots = 0,
            radius_visualisation_picture =
            {
              filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
              width = 12,
              height = 12
            },
            monitor_visualization_tint = {78, 173, 255},
            base_render_layer = "lower-object-above-shadow",
            base_picture =
            {
              sheets =
              {
                {
                  filename = "__cubium__/graphics/entity/red-pumpjack/red-pumpjack-base.png",
                  priority = "extra-high",
                  width = 261,
                  height = 273,
                  shift = util.by_pixel(-2.25, -4.75),
                  scale = 0.5
                },
                {
                  filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
                  width = 220,
                  height = 220,
                  scale = 0.5,
                  draw_as_shadow = true,
                  shift = util.by_pixel(6, 0.5)
                }
              }
            },
            graphics_set =
            {
              animation =
              {
                north =
                {
                  layers =
                  {
                    {
                      priority = "high",
                      filename = "__cubium__/graphics/entity/red-pumpjack/red-pumpjack-horsehead.png",
                      animation_speed = 0.5,
                      scale = 0.5,
                      line_length = 8,
                      width = 206,
                      height = 202,
                      frame_count = 40,
                      shift = util.by_pixel(-4, -24)
                    },
                    {
                      priority = "high",
                      filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
                      animation_speed = 0.5,
                      draw_as_shadow = true,
                      line_length = 8,
                      width = 309,
                      height = 82,
                      frame_count = 40,
                      scale = 0.5,
                      shift = util.by_pixel(17.75, 14.5)
                    }
                  }
                }
              }
            },
            open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
            close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
            working_sound =
            {
              sound = {filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6},
              max_sounds_per_prototype = 3,
              fade_in_ticks = 4,
              fade_out_ticks = 10
            },
            fast_replaceable_group = "pumpjack",
        
            circuit_connector = circuit_connector_definitions["pumpjack"],
            circuit_wire_max_distance = default_circuit_wire_max_distance
        },
        {
            type = "item",
            name = "red-pumpjack",
            icon = "__cubium__/graphics/icons/red-pumpjack.png",
            subgroup = "extraction-machine",
            order = "b[fluids]-c[red-pumpjack]",
            inventory_move_sound = item_sounds.pumpjack_inventory_move,
            pick_sound = item_sounds.pumpjack_inventory_pickup,
            drop_sound = item_sounds.pumpjack_inventory_move,
            place_result = "red-pumpjack",
            stack_size = 20
        },
        {
            type = "recipe",
            name = "red-pumpjack",
            energy_required = 5,
            ingredients =
            {
              {type = "item", name = "copper-plate", amount = 3},
              {type = "item", name = "iron-plate", amount = 2},
              {type = "item", name = "iron-gear-wheel", amount = 10},
              {type = "item", name = "electronic-circuit", amount = 5},
              {type = "item", name = "pipe", amount = 10}
            },
            results = {{type="item", name="red-pumpjack", amount=1}},
            main_product = "red-pumpjack",
            enabled = true
        },
    }
)
--Cryogenic plant
data.raw.recipe["cryogenic-plant"].ingredients = 
{
    {type = "item", name = "refined-concrete", amount = 40},
    {type = "item", name = "energized-microcube", amount = 5},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "lithium-plate", amount = 20},
}

data.raw.recipe["cryogenic-plant-recycling"].results = 
{
    {type ="item", name ="energized-microcube", amount = 5,ignored_by_productivity = 9999 },
    {type = "item", name = "refined-concrete", amount = 10},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "lithium-plate", amount = 5},
}
--Buff cube jelly - we need stone source. Also gives +1 jelly from normal
data.raw.recipe["cube-jelly-basic"].results = 
{
    {type = "item", name = "cube-jelly",                amount = 3,  percent_spoiled = 0, show_details_in_recipe_tooltip = false},
    {type = "item", name = "stone",                amount = 10,  percent_spoiled = 0, show_details_in_recipe_tooltip = false},
    {type = "item", name = "dormant-microcube",                amount = 1,  percent_spoiled = 0, ignored_by_productivity = 9999, show_details_in_recipe_tooltip = false},
}

data.raw.recipe["cube-jelly"].results = 
{

    {type = "item", name = "cube-jelly",                amount = 4, percent_spoiled = 0},
    {type = "item", name = "dormant-microcube",            amount = 1,ignored_by_productivity = 9999,  percent_spoiled = 0},

}

--Quantum processor changes
data.raw.recipe["quantum-processor"].ingredients = 
{
    
    {type = "item", name = "stone-brick", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "lithium-plate", amount = 20},
    {type = "fluid", name = "fluoroketone-cold", amount = 10, ignored_by_stats = 5},
    
}

--Electromagnetic plant changes. TODO make unique recolor
data.raw.recipe["electromagnetic-plant"].surface_conditions = 
{
    {
        property = "pressure",
        min = 100,
        max = 600
    }
}

data.raw.recipe["electromagnetic-plant"].ingredients = 
{
    {type = "item", name = "energized-microcube", amount = 5},
    {type = "item", name = "lithium-plate", amount = 150},
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "processing-unit", amount = 50},
    {type = "item", name = "refined-concrete", amount = 50}
}

data.raw.recipe["electromagnetic-plant-recycling"].results = 
{
    {type ="item", name ="energized-microcube", amount = 5,ignored_by_productivity = 9999 },
    {type = "item", name = "refined-concrete", amount = 12},
    {type = "item", name = "processing-unit", amount = 12},
    {type = "item", name = "lithium-plate", amount = 40},
    {type = "item", name = "steel-plate", amount = 12},

}

--Buff destabilized cube matter recycling. Need a carbon source. Now have chance to get 5 carbon back.
data.raw.recipe["destabilized-cube-matter-recycling"].results = 
{
    {type = "item", name = "carbon",                amount = 10, probability = 0.4, show_details_in_recipe_tooltip = false},
    {type = "item", name = "sulfur",                amount = 1, probability = 0.05, show_details_in_recipe_tooltip = false},
    {type = "item", name = "ice",                   amount = 5, probability = 0.1, show_details_in_recipe_tooltip = false},
    {type = "item", name = "iron-ore",              amount = 2, probability = 0.25, show_details_in_recipe_tooltip = false},
    {type = "item", name = "copper-ore",            amount = 1, probability = 0.20, show_details_in_recipe_tooltip = false},


}
--[[
data.raw.recipe["inverted-dormant-microcube-recycling"].results = 
{
  {type = "item", name = "inverted-dormant-microcube", amount = 1}
}


data.raw.recipe["inverted-microcube-recycling"].results = 
{
  {type = "item", name = "inverted-microcube", amount = 1}
}

data.raw.recipe["dormant-microcube-recycling"].results = 
{
  {type = "item", name = "inverted-microcube", amount = 1}
}

data.raw.recipe["energized-microcube-recycling"].enabled = false
data.raw.recipe["inverted-shards-recycling"].enabled = false
data.raw.recipe["energized-shards-recycling"].enabled = false
--]]

--Cube smashing. Outputs no longer random. We can't afford to lose the cube!

data.raw.recipe["dormant-cube-smashing"].results =
{
    {type = "item", name = "energized-shards", amount = 100},
}

data.raw.recipe["inverted-shards"].results = 
{
  {type = "item", name = "energized-shards", amount = 190},
  {type = "item", name = "inverted-shards", amount = 10},
}

--Aquilo only - burn a dormant inverted cube to make it back to dormant cube!
--This ensures players can't softlock themselves by making all their cubes inverted.
data.raw.item["inverted-dormant-microcube"].fuel_value = "50MJ"
data.raw.item["inverted-dormant-microcube"].fuel_category = "cubic"
data.raw.item["inverted-dormant-microcube"].burnt_result = "dormant-microcube"
data.raw.item["inverted-dormant-microcube"].fuel_acceleration_multiplier  = 1
data.raw.item["inverted-dormant-microcube"].fuel_top_speed_multiplier = 1



--data.raw.recipe["pumpjack"].enabled = true

local logistic_science = {"automation-science-pack", "logistic-science-pack"}
local automation_science = {"automation-science-pack"}
local cryogenic_science_basic = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack"}
local cryogenic_science_utility = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack","utility-science-pack"}
local cryogenic_science_production = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack","production-science-pack"}
local cryogenic_science_military = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack","military-science-pack"}
local cryogenic_science_p_u = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack","production-science-pack","utility-science-pack"}
local cryogenic_science_p_u_m = {"automation-science-pack","logistic-science-pack","chemical-science-pack","cryogenic-science-pack","production-science-pack","utility-science-pack","military-science-pack"}

utils.set_packs("fluid-handling", automation_science, 10, 30)
utils.set_packs("coal-liquefaction", logistic_science, 100, 30)
utils.set_packs("oil-gathering", automation_science, 100, 30)
utils.set_packs("oil-processing", automation_science, 100, 30)
utils.set_packs("advanced-oil-processing", logistic_science, 100, 30)
utils.set_packs("sulfur-processing", logistic_science, 100, 30)
utils.set_packs("railgun", cryogenic_science_p_u_m, 2000, 30)
utils.set_packs("rocket-turret", cryogenic_science_p_u_m, 2000, 30)
utils.set_packs("quantum-processor", cryogenic_science_basic, 500, 30)
utils.set_packs("fusion-reactor", cryogenic_science_p_u, 2000, 30)
utils.set_packs("fusion-reactor-equipment", cryogenic_science_p_u, 1000, 30)
utils.set_packs("electromagnetic-plant", cryogenic_science_p_u, 500, 30)
utils.set_prerequisites("electromagnetic-plant",{"cryogenic-plant"})

--Tentitave list of all items to add burnt_inventory to. Car,tank,+1 on heating tower, boiler, red-pumpjack, burner inserter. Furnace, steel furnace. TODO search for chemistry energy source