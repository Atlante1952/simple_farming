local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:mint",{
	description = "Mint Seed",
	harvest_description = "Mint",
	inventory_image = "simple_farming_mint_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 4,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:mint", {
	description = S("Mint"),
	inventory_image = "simple_farming_mint.png",
	on_use = minetest.item_eat(1),
})
minetest.register_decoration({
	name = "simple_farming:mint_4",
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 6058,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"grassland"},
	y_max = 31000,
	y_min = 1,
	decoration = "simple_farming:mint_4",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:mint_", 4, "simple_farming:seed_mint"})
