script.on_init(function()
    local cubium_start = settings.startup["check-this-if-cubium-start"].value or settings.startup["aps-planet"].value == "cubium"


    if not remote.interfaces["freeplay"] then return end
    if not cubium_start then return end
    remote.call("freeplay", "set_created_items", {})
    remote.call("freeplay", "set_ship_items", {
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
        ["iron-plate"] = 400,
        ["copper-plate"] = 400,
    })

    if(cubium_start) then
        local val = 1 
    end

end)