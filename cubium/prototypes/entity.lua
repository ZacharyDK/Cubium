require ("util")
require ("__base__.prototypes.entity.pipecovers")
require ("circuit-connector-sprites")
require ("__base__.prototypes.entity.assemblerpipes")

local simulations = require("__base__.prototypes.factoriopedia-simulations")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

function make_4way_animation_from_spritesheet(animation)
    local function make_animation_layer(idx, anim)
      local frame_count = anim.frame_count or 1
      local start_frame = frame_count * idx
      local x = 0
      local y = 0
      if anim.line_length then
        y = anim.height * math.floor(start_frame / (anim.line_length or 1))
        if anim.line_length > frame_count then
          error("single line must not contain animations for multiple directions when line_lenght is specified: " .. anim.filename)
        end
      else
        x = idx * anim.width
        
      end
      return
      {
        filename = anim.filename,
        priority = anim.priority or "high",
        flags = anim.flags,
        x = x,
        y = y,
        width = anim.width,
        height = anim.height,
        frame_count = anim.frame_count,
        line_length = anim.line_length,
        repeat_count = anim.repeat_count,
        shift = anim.shift,
        draw_as_shadow = anim.draw_as_shadow,
        draw_as_glow = anim.draw_as_glow,
        draw_as_light = anim.draw_as_light,
        apply_runtime_tint = anim.apply_runtime_tint,
        tint_as_overlay = anim.tint_as_overlay or false,
        animation_speed = anim.animation_speed,
        scale = anim.scale or 1,
        tint = anim.tint,
        blend_mode = anim.blend_mode,
        load_in_minimal_mode = anim.load_in_minimal_mode,
        premul_alpha = anim.premul_alpha,
        generate_sdf = anim.generate_sdf
      }
    end
  
    local function make_animation(idx)
      if animation.layers then
        local tab = { layers = {} }
        for k,v in ipairs(animation.layers) do
          table.insert(tab.layers, make_animation_layer(idx, v))
        end
        return tab
      else
        return make_animation_layer(idx, animation)
      end
    end
  
    return
    {
      north = make_animation(0),
      east = make_animation(1),
      south = make_animation(2),
      west = make_animation(3)
    }
end


data:extend(
{
    {
        type = "assembling-machine",
        name = "cube-smasher",
        icon = "__cubium__/graphics/entity/quantum-stabilizer/quantum-stabilizer-icon.png",
        icon_size = 64,
        flags = {"placeable-neutral","placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "cube-smasher"},
        --fast_replaceable_group = "chemical-plant",
        max_health = 600,
        corpse = "big-scorchmark",
        dying_explosion = "medium-explosion", 
        icon_draw_specification = {shift = {0, -0.3}},
        --circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        --circuit_connector = circuit_connector_definitions["chemical-plant"],
        collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
        selection_box = {{-3.0, -3.0}, {3.2, 2.9}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.0,
        module_slots = 5,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        

        graphics_set =
        {
            animation = 
            {
                layers = 
                {
                    {
                        filename = "__cubium__/graphics/entity/quantum-stabilizer/qs-anim-1.png",
                        --shift = util.by_pixel(-9, -40),
                        width = 410,
                        height = 410,
                        frame_count = 64,
                        line_length = 8,
                        scale = 0.5,
                        run_mode = "forward-then-backward",
                    },
                    {
                        filename = "__cubium__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-emission-1.png",
                        --shift = util.by_pixel(-9, -40),
                        width = 410,
                        height = 410,
                        frame_count = 64,
                        line_length = 8,
                        scale = 0.5,
                        run_mode = "forward-then-backward",
                        --draw_as_light = true,
                        blend_mode = "additive",
                    },
                    {
                        filename = "__cubium__/graphics/entity/quantum-stabilizer/qs-shadow.png",
                        --shift = util.by_pixel(8, 39),
                        width = 900,
                        height = 420,
                        frame_count = 1,
                        line_length = 1,
                        draw_as_shadow = true,
                        repeat_count = 126,
                        scale = 0.5,
                    }
                },
            },
            idle_animation  =
            {
                layers =
                {
                    {
                        filename = "__cubium__/graphics/entity/quantum-stabilizer/qs-anim-1.png",
                        --shift = util.by_pixel(-9, -40),
                        width = 410,
                        height = 410,
                        frame_count = 1,
                        line_length = 1,
                        scale = 0.5,
                        repeat_count = 126,--64,
                    },
                    {
                        filename = "__cubium__/graphics/entity/quantum-stabilizer/qs-shadow.png",
                        --shift = util.by_pixel(8, 39),
                        width = 900,
                        height = 420,
                        frame_count = 1,
                        line_length = 1,
                        draw_as_shadow = true,
                        scale = 0.5,
                        repeat_count = 126, --64,
                    }
                },
            },
        },
        impact_category = "metal-large",
        open_sound = { filename = "__base__/sound/open-close/lab-open.ogg", volume = 0.6 },
        close_sound = { filename = "__base__/sound/open-close/lab-close.ogg", volume = 0.6 },
        working_sound =
        {
          sound = { filename = "__base__/sound/lab.ogg", volume = 0.7, modifiers = { volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8) } },
          audible_distance_modifier = 0.7,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        crafting_speed = 1.3,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 4 }
        },
        energy_usage = "400kW",
        crafting_categories = {"cubic"}, --cubic

    },
})