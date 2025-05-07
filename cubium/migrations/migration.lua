for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
  


    recipes["solid-fuel-massage"].enabled = technologies["cube-mastery-4"].researched
    recipes["ammonia-intoxication"].enabled = technologies["cube-mastery-2"].researched

  end