table.insert(data.raw.item.foundation.place_as_tile.tile_condition, "cubium-lava-hot")
table.insert(data.raw.item.foundation.place_as_tile.tile_condition, "cubium-lava")


table.insert(data.raw["technology"]["rocket-fuel-productivity"].effects,
{       
  type = "change-recipe-productivity",
  recipe = "rocket-fuel-dreams",
  change = 0.1
}
)

table.insert(data.raw["technology"]["plastic-bar-productivity"].effects,
{       
  type = "change-recipe-productivity",
  recipe = "cube-jelly-plastic",
  change = 0.1
}
)

table.insert(data.raw["technology"]["processing-unit-productivity"].effects,
{       
  type = "change-recipe-productivity",
  recipe = "dream-processing-unit",
  change = 0.1
}
)

table.insert(data.raw["reactor"]["heating-tower"]["energy_source"]["fuel_categories"],"cubic")
data.raw["reactor"]["heating-tower"]["energy_source"].burnt_inventory_size = 3

if(mods["castra"]) then
    table.insert(data.raw["technology"]["engine-productivity"].effects,
    {       
      type = "change-recipe-productivity",
      recipe = "engine-unit-by-inversion",
      change = 0.1
    }
    )
  
    table.insert(data.raw["technology"]["engine-productivity"].effects,
    {       
      type = "change-recipe-productivity",
      recipe = "electric-engine-unit-by-inversion",
      change = 0.1
    }
    )

    table.insert(data.raw["technology"]["explosive-ammo-productivity"].effects,
    {       
      type = "change-recipe-productivity",
      recipe = "angry-rockets",
      change = 0.1
    }
    )
  
end

--Override feature of space-age recipe "carbon" so it also unlocks with cube jelly. 
--We supply sulfuric acid and coal on Cubium, for the purpose of making carbon.
--Unlocking it here means we don't have to lock this planet behind Vulcanus
--local carbon_alt_unlocks = {"cube-jelly"}
--data.raw.recipe.carbon.alternative_unlock_methods =carbon_alt_unlocks 

