local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:carrot",{
	description = "Carrot Seed",
	harvest_description = "Carrot",
	inventory_image = "simple_farming_carrot_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:carrot", {
	description = S("Carrot"),
	inventory_image = "simple_farming_carrot.png",
	on_use = minetest.item_eat(2),
})


minetest.register_decoration({
	name = "simple_farming:carrot_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3805,
		octaves = 3,
		persist = 1.1
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:carrot_8",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:carrot_", 8, "simple_farming:seed_carrot"})
