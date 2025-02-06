local cubium_surface_created = false
local begin_play = true
local cubium_surface = nil --LuaSurface

script.on_nth_tick(45, --closest we get to begin play
  function(NthTickEventData)
    if(begin_play == true) then
        local surface = game.get_surface("cubium")
        begin_play = false
        if(surface ~= nil) then 
            cubium_surface_created = true
            cubium_surface = surface
        end
    end
    
  end
)

