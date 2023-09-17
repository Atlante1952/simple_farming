local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:sisal",{
	description = "Sisal Seed",
	harvest_description = "Sisal",
	inventory_image = "simple_farming_sisal_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

minetest.register_craftitem("simple_farming:sisal", {
	description = S("Sisal"),
	inventory_image = "simple_farming_sisal.png",
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "simple_farming:sisal_3",
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4797,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:sisal_3",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:sisal_", 3, "simple_farming:seed_sisal"})
