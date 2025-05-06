local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")

local seconds = 60
local minutes = 60*seconds

data:extend(
{
    {
        type = "item",
        name = "energized-microcube",
        icon = "__cubium__/graphics/icons/matter-cube.png",
        order = "ab[energizedmicrocube]",
        subgroup = "cubic",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10,
        default_import_location = "cubium",
        weight = 10*kg,
        spoil_ticks = 30 * minute,
        spoil_result = "dormant-microcube",
        fuel_category = "cubic",
        fuel_value = "20MJ",
        burnt_result = "dormant-microcube",
        fuel_acceleration_multiplier = 1.5,
        fuel_top_speed_multiplier = 4.5,
        auto_recycle = false,
    },
    {
        type = "item",
        name = "dormant-microcube",
        icon = "__cubium__/graphics/icons/matter-cube-dormant.png",
        order = "b[dormantmicrocube]",
        subgroup = "cubic",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10,
        default_import_location = "cubium",
        weight = 10*kg,
        spoil_ticks = 60 * minute,
        spoil_result = "energized-microcube",
        auto_recycle = false,
    },
    {
        type = "item",
        name = "inverted-microcube",
        icon = "__cubium__/graphics/icons/matter-cube-yellow.png",
        order = "c[invertedmicrocube]",
        subgroup = "cubic",
        color_hint = { text = "T" },
        auto_recycle = false,
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10,
        default_import_location = "cubium",
        weight = 10*kg,
    },
    {
        type = "item",
        name = "inverted-dormant-microcube",
        icon = "__cubium__/graphics/icons/matter-cube-yellow-dormant.png",
        order = "d[invertdormantmicrocube]",
        subgroup = "cubic",
        color_hint = { text = "T" },
        auto_recycle = false,
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10,
        default_import_location = "cubium",
        weight = 10*kg,
    },
    {
        type = "item",
        name = "ultradense-substrate",
        icon = "__cubium__/graphics/icons/ultradense-substrate.png",
        order = "f[ultradensesubstrate]",
        subgroup = "cubic",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 5,
        default_import_location = "cubium",
        weight = 20*kg,
    },
    {
        type = "item",
        name = "energized-shards",
        icon = "__cubium__/graphics/icons/broken-cube.png",
        order = "g[energizedshards]",
        subgroup = "cubic",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10*10,
        default_import_location = "cubium",
        weight = 10/100*kg,
        auto_recycle = false,
    },
    {
        type = "item",
        name = "inverted-shards",
        icon = "__cubium__/graphics/icons/broken-cube-yellow.png",
        order = "h[invertedshards]",
        subgroup = "cubic",
        color_hint = { text = "T" },
  
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 10*10,
        default_import_location = "cubium",
        weight = 10/100*kg,
        auto_recycle = false,
    },
    {
        type = "item",
        name = "cube-jelly",
        icon = "__cubium__/graphics/icons/cube-jelly.png",
        subgroup = "cubic",
        order = "i[cubic-jelly]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "chemical",
        fuel_value = "0.1MJ",
        fuel_acceleration_multiplier = 0.5,
        fuel_top_speed_multiplier = 0.4,
        stack_size = 100,
        default_import_location = "cubium",
        spoil_ticks = 3 * minute,
        spoil_result = "destabilized-cube-matter",
        weight = 0.1 * kg,
    },
    {
        type = "item",
        name = "inverted-cube-jelly",
        icon = "__cubium__/graphics/icons/cube-jelly-yellow.png",
        subgroup = "cubic",
        order = "j[cubic-jelly]",
        fuel_acceleration_multiplier = 0.5,
        fuel_top_speed_multiplier = 0.4,
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "chemical",
        fuel_value = "0.1MJ",

        stack_size = 100,
        default_import_location = "cubium",
        spoil_ticks = 3 * minute,
        spoil_to_trigger_result =
        {
          items_per_trigger = 5, -- per 5 items the trigger is run
          trigger =
          {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  },
                  {
                    type = "damage",
                    damage = {amount = 400, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "small-scorchmark-tintable",
                    check_buildability = true
                  },
                  {
                    type = "invoke-tile-trigger",
                    repeat_count = 1
                  },
                  {
                    type = "destroy-decoratives",
                    from_render_layer = "decorative",
                    to_render_layer = "object",
                    include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                    include_decals = false,
                    invoke_decorative_trigger = true,
                    decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                    radius = 1.5 -- large radius for demostrative purposes
                  }
                }
            }
          }
        },
        weight = 0.1 * kg,
    },
    {
        type = "item",
        name = "destabilized-cube-matter",
        icon = "__cubium__/graphics/icons/destabilized-cube-matter.png",
        subgroup = "cubic",
        order = "y[destabilizedcubematter]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 100,
        default_import_location = "cubium",
        spoil_ticks = 5 * minute,
        spoil_result = "dream",
        weight = 0.1 * kg,
        fuel_category = "chemical",
        fuel_value = "1J",
        fuel_acceleration_multiplier = 1,
        fuel_top_speed_multiplier = 1,
    },
    {
        type = "item",
        name = "dream",
        icon = "__cubium__/graphics/icons/dream.png",
        subgroup = "cubic",
        order = "z[dream]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 100,
        default_import_location = "cubium",
        weight = 0.1 * kg,
        fuel_category = "chemical",
        fuel_value = "1J",
        fuel_acceleration_multiplier = 2,
        fuel_top_speed_multiplier = 3,
    },
    {
      type = "item",
      name = "dream-fuel",
      icon = "__cubium__/graphics/icons/dream-fuel.png",
      fuel_category = "chemical",
      fuel_value = "12MJ",
      fuel_acceleration_multiplier = 1.5,
      fuel_top_speed_multiplier = 4.5,
      subgroup = "cubic",
      order = "w[chemistry]-a[dream-fuel]",
      inventory_move_sound = item_sounds.solid_fuel_inventory_move,
      pick_sound = item_sounds.solid_fuel_inventory_pickup,
      drop_sound = item_sounds.solid_fuel_inventory_move,
      stack_size = 50,
      weight = 1 * kg,
      random_tint_color = item_tints.yellowing_coal,
      default_import_location = "cubium",
    },
    {
      type = "item",
      name = "cube-smasher",
      icon = "__cubium__/graphics/entity/quantum-stabilizer/quantum-stabilizer-icon.png",
      icon_size = 64,
      subgroup = "cubic",
      order = "aa[cube-smasher]",
      inventory_move_sound = item_sounds.fluid_inventory_move,
      pick_sound = item_sounds.fluid_inventory_pickup,
      drop_sound = item_sounds.fluid_inventory_move,
      place_result = "cube-smasher",
      stack_size = 10,
      default_import_location = "cubium",
      weight = 200 * kg
    },
})