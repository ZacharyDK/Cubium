local function table_contains(table, value, key)
	-- log("table_contains:")
	-- log("**table")
	-- log(serpent.block(table))
	-- log("**value")
	-- log(serpent.block(value))
	-- log("**key")
	-- log(serpent.block(key))
	for i, localVal in ipairs(table) do
			if(key ~= nil and localVal[key] == value or localVal == value) then
					return true
			end
	end
	return false
end

local science_packs = {}
for __, lab_input in pairs(data.raw['lab']['lab'].inputs) do --just parse the default lab, other labs are causing problems....
	if(not table_contains(science_packs, lab_input)) then
			table.insert(science_packs, lab_input)
	end
end

--log("science_pack:")
--log(serpent.block(science_packs))

--TODO create an api to easily create cubic science recipes.
--It would be add 10 microcubes, 15 dream fuel, for more science + dormant cubes.
--Procedurally generate the icon with the cube in the background
--Correctly reference already defined localization.
--It would be nice to do cubic dark science recipes....



for k,v in pairs(science_packs) do

	local calculate_name = v .. "-cubic"
	local recipe_query = data.raw["recipe"][calculate_name]

	if (recipe_query ~= nil) then
		local insert_science = {
			type = "change-recipe-productivity",
			recipe = calculate_name,
			change = 0.03
		}
		table.insert(data.raw['technology']["cubic-science-pack-productivity-infinite"].effects, insert_science)

	end

	--[[
	for _, recipe in pairs(data.raw['recipe']) do --Not exactly efficient, but should work. Could check for science pack name .. -cubic instead
		if(recipe.results and table_contains(recipe.results, v, "name") and recipe.subgroup == "cubic") then
			
			local insert_science = {
			type = "change-recipe-productivity",
			recipe = recipe.name,
			change = 0.03
			}
			table.insert(data.raw['technology']["cubic-science-pack-productivity-infinite"].effects, insert_science)
		end
	end
	--]]
end