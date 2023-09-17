local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:eggplants",{
	description = "Eggplant Seed",
	harvest_description = "Eggplant",
	inventory_image = "simple_farming_eggplants_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

-- needed
minetest.register_craftitem("simple_farming:eggplants", {
	description = S("Eggplants"),
	inventory_image = "simple_farming_eggplants.png",
	on_use = minetest.item_eat(2),
})

minetest.register_decoration({
	name = "simple_farming:eggplants_4",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 3145,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:eggplants_4",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:eggplants_", 4, "simple_farming:seed_eggplants"})
