--Taken from space-age base-data-updates.lua. Using vulcanus as a template.
data.raw.planet["cubium"].platform_surface_render_parameters = util.table.deepcopy(data.raw.planet["nauvis"].platform_surface_render_parameters)
-- Need to have surface render parameters, otherwise we access a nil value when we try to define a backdrop
data.raw.planet["cubium"].platform_surface_render_parameters.platform_backdrop =
{
  emission_scales_with_shadow = false,
  radius = 772,
  rotation_seconds = data.raw.planet["nauvis"].platform_surface_render_parameters.platform_backdrop.rotation_seconds * 2 / 4.66,
  light_radius = data.raw.planet["nauvis"].platform_surface_render_parameters.platform_backdrop.light_radius * 1.5,
  cloudiness = 0.5,
  surface_vertical_offset = 0.12,
  cloud_vertical_offset = 0.05,
  specular_intensity = 0,
  atmosphere_color = {0.080, 0.119, 0.143, 0.1},
  cloud_flow_intensity = 0.8,
  cloud_panning_rate = -0.025,
  planet_axis = {3.0, 13.0},
  planet_axis_deviation_amplitude = {10.0, 10.0},
  planet_axis_deviation_seconds = {890.5*2/4.66, 753.7*2/4.66},
  position = {-680, 601},
  parallax_strength = {0.95, 0.95},
  light_direction = {-0.42, 0.23, 0.67},
  light_intensity_contrast = 0.3,
  planet_surface =
  {
    filename = "__cubium__/graphics/space/cubium.png",
    width = 2048,
    height = 1024
  },
  planet_normal = nil,
  planet_emission =
  {
    filename = "__cubium__/graphics/space/cubium.png",
    width = 2048,
    height = 1024
  },
  global_cloud =
  {
    filename = "__cubium__/graphics/space/cubium-cloud.png",
    width = 2048,
    height = 1024
  },
  global_cloud_normal =
  {
    filename = "__space-age__/graphics/space/vulcanus-cloud-normal.png",
    width = 2048,
    height = 1024
  },
  global_cloud_flow =
  {
    filename = "__space-age__/graphics/space/vulcanus-cloud-flow.png",
    width = 2048,
    height = 1024
  }
}