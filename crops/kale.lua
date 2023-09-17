local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:kale",{
	description = "Kale Seed",
	harvest_description = "Kale",
	inventory_image = "simple_farming_kale_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 3,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:kale", {
	description = S("Kale"),
	inventory_image = "simple_farming_kale.png",
	on_use = minetest.item_eat(1),
})

minetest.register_decoration({
	name = "simple_farming:kale_3",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4842,
		octaves = 3,
		persist = 0.9
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:kale_3",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:kale_", 3, "simple_farming:seed_kale"})
