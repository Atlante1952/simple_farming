local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:potato",{
	description = "Potato Seed",
	harvest_description = "Potato",
	inventory_image = "simple_farming_potato_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:potato", {
	description = S("Potato"),
	inventory_image = "simple_farming_potato.png",
	on_use = minetest.item_eat(2),
})

minetest.register_decoration({
	name = "simple_farming:potato_4",
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 2008,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"rainforest", "coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:potato_4",
	param2 = 3,
})


minetest.register_craftitem("simple_farming:chips", {
	description = "Chips",
	on_use = minetest.item_eat(1),
	inventory_image = "chips.png",
})

minetest.register_craft({
	type = "cooking",
	output = "simple_farming:chips 3",
	recipe = "simple_farming:potato",
})

table.insert(simple_farming.plant_infos, {"simple_farming:potato_", 4, "simple_farming:seed_potato"})
