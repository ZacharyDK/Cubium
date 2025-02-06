table.insert(data.raw.item.foundation.place_as_tile.tile_condition, "cubium-lava-hot")
table.insert(data.raw.item.foundation.place_as_tile.tile_condition, "cubium-lava")


--Override feature of space-age recipe "carbon" so it also unlocks with cube jelly. 
--We supply sulfuric acid and coal on Cubium, for the purpose of making carbon.
--Unlocking it here means we don't have to lock this planet behind Vulcanus
local carbon_alt_unlocks = {"cube-jelly"}
data.raw.recipe.carbon.alternative_unlock_methods =carbon_alt_unlocks 
