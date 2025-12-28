if not mods["canal-excavator"] then return end

data:extend({{
  type = "mod-data",
  name = "canex-cubium-config",
  data_type = "canex-surface-config",
  data = {
    surfaceName = "cubium",
    localisation = {"space-location-name.cubium"},
    oreStartingAmount = 40,
    mining_time = 2,
    tint = {r = 43, g = 77, b = 128},
    mineResult = "stone"
  }
}})