minetest.log("action", "[Minetest Tweaks] Loading …")


-- Custom crafting recipes

minetest.register_craft({
  output = 'default:gravel 1',
  recipe = {{'default:cobble'}},
})

minetest.register_craft({
  output = 'default:sand 1',
  recipe = {{'default:gravel'}},
})

minetest.register_craft({
  output = 'default:dirt 1',
  recipe = {{'default:sand'}},
})

minetest.register_craft({
  output = 'default:desert_sand 1',
  recipe = {{'default:dirt'}},
})

minetest.register_craft({
  output = 'default:sand 1',
  recipe = {{'default:desert_sand'}},
})

minetest.register_craft({
  type = "shapeless",
  output = "default:clay 4",
  recipe = {"default:dirt", "default:dirt", "default:sand", "default:sand", "bucket:bucket_water"},
  replacements = {
     {"bucket:bucket_water", "bucket:bucket_empty"}
  }
})

minetest.register_craft({
  type = "shapeless",
  output = "darkage:chalk 1",
  recipe = {"darkage:chalk_powder", "darkage:chalk_powder"}
})

minetest.register_craft({
  type = "shapeless",
  output = "homedecor:oil_extract",
  recipe = {"flowers:sunflower", "flowers:sunflower"}
})

colors_from_plants = {
   ["dye:yellow"] = {"flowers:sunflower"},
   ["dye:orange"] = {"farming:pumpkin_slice"},
   ["dye:blue"]   = {"farming:blueberry"},
   ["dye:red"]    = {"farming:tomato"}
}

for color,ingredients in pairs(colors_from_plants) do
   minetest.register_craft({
      type = "shapeless",
      output = color,
      recipe = ingredients
   })
end

minetest.register_craft({
  output = "mobs:leather",
  recipe = {{'basic_materials:plastic_sheet',
             'basic_materials:plastic_sheet',
             'basic_materials:plastic_sheet'},
             {'wool:white', 'wool:white', 'wool:white'}}
})


-- End

minetest.log("action", "[Minetest Tweaks] Loaded!")
