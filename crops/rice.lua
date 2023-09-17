local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:rice",{
	description = "Rice Seed",
	harvest_description = "Rice",
	inventory_image = "simple_farming_rice_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})


minetest.register_craftitem("simple_farming:rice", {
	description = S("Rice"),
	inventory_image = "simple_farming_rice.png",
	stack_max = 300,
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "simple_farming:rice_8",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 7859,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland", "rainforest"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:rice_8",
	param2 = 3,
})

minetest.register_craftitem("simple_farming:onigiri", {
	description = "Onigiri",
	on_use = minetest.item_eat(1),
	inventory_image = "onigiri.png",
})

minetest.register_craft({
	type = "cooking",
	output = "simple_farming:onigiri",
	recipe = "simple_farming:rice",
})

table.insert(simple_farming.plant_infos, {"simple_farming:rice_", 8, "simple_farming:seed_rice"})
