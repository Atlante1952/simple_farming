local path = minetest.get_modpath("simple_farming")


simple_farming = {
	minlight = 7,
	maxlight = default.LIGHT_MAX,
}
simple_farming.plant_infos = {}




	dofile(path .. "/crops/carrot.lua")
	dofile(path .. "/crops/onion.lua")
	dofile(path .. "/crops/strawberry.lua")
	dofile(path .. "/crops/tomato.lua")
	dofile(path .. "/crops/chilie.lua")
	dofile(path .. "/crops/rice.lua")
	dofile(path .. "/crops/potato.lua")
	dofile(path .. "/crops/eggplants.lua")
	dofile(path .. "/crops/corn.lua")
	dofile(path .. "/crops/ginger.lua")
	dofile(path .. "/crops/mint.lua")
	dofile(path .. "/crops/agave.lua")
	dofile(path .. "/crops/kale.lua")
	dofile(path .. "/crops/yucca.lua")
	dofile(path .. "/crops/aloe.lua")
	dofile(path .. "/crops/millet.lua")
	dofile(path .. "/crops/sisal.lua")


	
    dofile(path .. "/hunger_ng.lua")
    dofile(path .. "/crafting.lua")
    dofile(path .. "/nodes.lua")
    dofile(path .. "/bonemeal.lua")
    dofile(path .. "/awards.lua")



