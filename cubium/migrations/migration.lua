for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
  


    recipes["solid-fuel-massage"].enabled = technologies["cube-mastery-4"].researched
    recipes["ammonia-intoxication"].enabled = technologies["cube-mastery-2"].researched
    recipes["rocket-turret"].enabled = technologies["rocket-turret"].researched
    recipes["hope-spoilage"].enabled = technologies["cube-mastery-3"].researched
    recipes["dream-electromagnetic-plant"].enabled = technologies["cube-mastery-5"].researched
    recipes["solid-fuel-from-hope-and-dream"].enabled = technologies["cube-mastery-4"].researched
    recipes["angry-ammunition"].enabled = technologies["cube-mastery-4"].researched

  end