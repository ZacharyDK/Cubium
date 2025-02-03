data:extend(
{

  {
    type = "autoplace-control",
    name = "cubium_stone",
    localised_name = {"", "[entity=stone] ", {"entity-name.stone"}},
    richness = true,
    order = "b-c",
    category = "resource"
  },
  {
    type = "autoplace-control",
    name = "sulfuric_acid_geyser",
    localised_name = {"", "[entity=sulfuric-acid-geyser] ", {"entity-name.sulfuric-acid-geyser"}},
    richness = true,
    order = "b-c",
    category = "resource"
  },
 
  {
    type = "autoplace-control",
    name = "cubium_volcanism",
    order = "c-z-a",
    category = "terrain",
    can_be_disabled = false
  },
 
}
)

--data.raw["autoplace-control"]["enemy-base"].can_be_disabled = false
