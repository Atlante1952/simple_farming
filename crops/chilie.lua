local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:chilie",{
	description = "Chilie Seed",
	harvest_description = "Chilie",
	inventory_image = "simple_farming_chilie_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 5,
	groups = { flammable = 2, desert = 1 },
	fertility = {"desert"},
})

minetest.register_craftitem("simple_farming:chilie", {
	description = S("Chilie"),
	inventory_image = "simple_farming_chilie.png",
	on_use = minetest.item_eat(-1),
})


minetest.register_decoration({
	name = "simple_farming:chilie_5",
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3398,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"desert"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:chilie_5",
	param2 = 3,
})

minetest.register_craftitem("simple_farming:chilie_powder", {
	description = "Chilie Powder",
	on_use = minetest.item_eat(-1),
	inventory_image = "chilie_powder.png",
})

minetest.register_craft({
	output = "simple_farming:chilie_powder",
	recipe = {
		{"simple_farming:chilie"},
	}
})

table.insert(simple_farming.plant_infos, {"simple_farming:chilie_", 5, "simple_farming:seed_chilie"})
