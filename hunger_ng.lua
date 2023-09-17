
if minetest.get_modpath("hunger_ng") then
local add = hunger_ng.add_hunger_data



local ubi = hunger_ng.interoperability.settings.hunger_bar.force_builtin_image



-- Edible stuff from farming Redo


add('simple_farming:carrot',      { satiates = 1 })
add('simple_farming:millet',      { satiates = 0.5 })
add('simple_farming:spiceleaf',      { satiates = 0.5 })
add('simple_farming:kale',      { satiates = 1 })
add('simple_farming:bokchoy',      { satiates = 0.5 })
add('simple_farming:adzuki',      { satiates = 1 })
add('simple_farming:adzuki_bun',      { satiates = 1.5 })
add('simple_farming:sisal',      { satiates = 0.5 })
add('simple_farming:jute',      { satiates = 1 })
add('simple_farming:yucca',      { satiates = 0.5 })
add('simple_farming:aloe',      { satiates = 0.5 })
add('simple_farming:sugar',      { satiates = 3})
add('simple_farming:mint',      { satiates = 0.5, heals = 0.5})
add('simple_farming:candy_cane',      { satiates = 2})
add('simple_farming:cotton_candy',      { satiates = 2})
add('simple_farming:agave',      { satiates = 1.5})
add('simple_farming:cucumber',      { satiates = 0.5})
add('simple_farming:cassava',      { satiates = 0.5, heals = -0.5})
add('simple_farming:marshmallow',      { satiates = 1})
add('simple_farming:ginger',      { satiates = 0.5 })
add('simple_farming:gingerdough',      { satiates = 1 })
add('simple_farming:gingerbread',      { satiates = 2 })
add('simple_farming:gingerbread_man',      { satiates = 1 })
add('simple_farming:beetroot',      { satiates = 1 })
add('simple_farming:beetroot_juice',      { satiates = 1 })
add('simple_farming:onion',      { satiates = 0.5 })
add('simple_farming:strawberry',      { satiates = 1.5 })
add('simple_farming:tomatoes',      { satiates = 1.5 })     
add('simple_farming:tomato_juice',      { satiates = 1 })
add('simple_farming:chilie',      { satiates = 1 })     
add('simple_farming:chilie_powder',      { satiates = -1, heals = -2})
add('simple_farming:pepper',      { satiates = 1.5 })
add('simple_farming:rice',      { satiates = 0.5 })     
add('simple_farming:onigiri',      { satiates = 1.5 })
add('simple_farming:cabbage',      { satiates = 1 })
add('simple_farming:potatoes',      { satiates = 1.5 })   
add('simple_farming:chips',      { satiates = 0.5 })
add('simple_farming:aspargus',      { satiates = 0.5 })
add('simple_farming:eggplants',      { satiates = 0.5 })
add('simple_farming:spinach',      { satiates = 0.5 })
add('simple_farming:corn',      { satiates = 0.5 })   
add('simple_farming:pop_corn',      { satiates = 1 })
add('simple_farming:medecinal_plant',      { satiates = -0.5, heals = 3 })

   add('simple_farming:strawberry_cake',      { satiates = 5, heals = 4 })

end
