 

script.on_init(function()
    local cubium_start = settings.startup["check-this-if-cubium-start"].value 
    local aquilo_start = settings.startup["check-this-if-aquilo-start"].value 
    if(script.active_mods["aps-planet"]) then
        if(settings.startup["aps-planet"].value == "cubium" or settings.startup["aps-planet"].value == "aps-planet-cubium") then
            cubium_start = true
        end
    end

    if not remote.interfaces["freeplay"] then return end
    if (not cubium_start and not aquilo_start) then return end

    if(cubium_start) then
        remote.call("freeplay", "set_ship_items", 
        {
            ["iron-plate"] = 200,
            ["copper-plate"] = 200,
        })
        remote.call("freeplay", "set_created_items", {
            ["foundry"] = 5,
            ["medium-electric-pole"] = 20,
            ["transport-belt"] = 100,
            ["inserter"] = 100,
            ["energized-microcube"] = 10,
            ["carbon"] = 100,
            ["calcite"] = 100,
            ["recycler"] = 2,
            ["assembling-machine-2"] = 1,
            ["solar-panel"] = 10,
            ["accumulator"] = 2,
        })
        remote.call("freeplay", "set_debris_items", {
            ["iron-plate"] = 50,
            ["copper-plate"] = 50,
        })
    end

    if(aquilo_start) then
        remote.call("freeplay", "set_ship_items", 
        {
            ["iron-plate"] = 200,
            ["copper-plate"] = 200,
        })
        remote.call("freeplay", "set_created_items", {
            ["medium-electric-pole"] = 50,
            ["transport-belt"] = 400,
            ["heat-pipe"] = 100,
            ["inserter"] = 100,
            ["energized-microcube"] = 50,
            ["recycler"] = 2,
            ["assembling-machine-2"] = 5,
            ["concrete"] = 1000,
            ["heating-tower"] = 1,
            ["boiler"] = 4,
            ["steam-turbine"] = 1,
            ["pipe"] = 10,
            ["solar-panel"] = 10,
            ["solid-fuel"] = 100,
            ["offshore-pump"] = 1,
            ["red-pumpjack"] = 1,
            ["chemical-plant"] = 1,
            ["accumulator"] = 1,
            ["iron-ore"] = 100,
            ["copper-ore"] = 100,
        })
        remote.call("freeplay", "set_debris_items", {
            ["iron-plate"] = 50,
            ["copper-plate"] = 50,
        })
    end


end)


script.on_event(defines.events.on_console_chat,function(event)
    local player_index = event.player_index 
    local message = event.message

    if(message == "DOWNGRADECUBES") then
        local player = game.get_player(player_index)
        local inventory = player.get_inventory(defines.inventory.character_main) 
        if(inventory == nil or inventory.valid == false) then
            return
        end
        local contents = inventory.get_contents() 
        local energized_sum = 0
        local dormant_sum = 0

        for index, item in pairs(contents) do
            if(item.name == "energized-microcube" and item.quality ~= "normal") then
                energized_sum = energized_sum + item.count
                inventory.remove(
                    {
                        name = "energized-microcube",
                        count = item.count,
                        quality = item.quality
                    }
                )
            end

            if(item.name == "dormant-microcube" and item.quality ~= "normal") then
                dormant_sum = dormant_sum + item.count
                inventory.remove(
                    {
                        name = "dormant-microcube",
                        count = item.count,
                        quality = item.quality
                    }
                )
            end
        end

        if energized_sum > 0 then 
            inventory.insert({name = "energized-microcube", count = energized_sum })
        end

        if dormant_sum > 0 then
            inventory.insert({name = "dormant-microcube", count = dormant_sum })
        end

    end

end)

script.on_event(defines.events.on_player_joined_game, function(event)
    local aquilo_start = settings.startup["check-this-if-aquilo-start"].value 

    if not aquilo_start then return end -- No soup for you if you don't start on Frozeta

    local player = game.players[event.player_index]
    player.force.technologies["planet-discovery-cubium"].research_recursive()
end)
