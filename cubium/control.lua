script.on_init(function()
    local cubium_start = settings.startup["check-this-if-cubium-start"].value 
    if(script.active_mods["aps-planet"]) then
        if(settings.startup["aps-planet"].value == "cubium") then
            cubium_start = true
        end
    end

    if not remote.interfaces["freeplay"] then return end
    if not cubium_start then return end
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
    })
    remote.call("freeplay", "set_debris_items", {
        ["iron-plate"] = 50,
        ["copper-plate"] = 50,
    })

    if(cubium_start) then
        local val = 1 
    end

end)