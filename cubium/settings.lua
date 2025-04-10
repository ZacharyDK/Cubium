if (mods["any-planet-start"]) then
    APS.add_choice("cubium")
end

data:extend({
    {
        type = "bool-setting",
        name = "check-this-if-cubium-start",
        setting_type = "startup",
        default_value = false,
        --hidden = true, --
    },
})