local S = minetest.get_translator("simple_farming")
-- add to registered_plants
farming.register_plant("simple_farming:corn",{
	description = "corn Seed",
	harvest_description = "corn",
	inventory_image = "simple_farming_corn_seed.png",
	minlight = simple_farming.minlight,
	maxlight = simple_farming.maxlight,
	steps = 8,
	groups = { flammable = 2, grassland = 1 },
	fertility = {"grassland"},
})

minetest.register_craftitem("simple_farming:corn", {
	description = S("corn"),
	inventory_image = "simple_farming_corn.png",
	on_use = minetest.item_eat(2),
})


minetest.register_decoration({
	name = "simple_farming:corn_8",
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
	decoration = "simple_farming:corn_8",
	param2 = 3,
})

table.insert(simple_farming.plant_infos, {"simple_farming:corn_", 8, "simple_farming:seed_corn"})


minetest.override_item('simple_farming:corn_6', {
    visual_scale = 2.0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.5, -0.25, 0.25, 0.6, 0.25 }
    }
})

minetest.override_item('simple_farming:corn_7', {
    visual_scale = 2.0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.5, -0.25, 0.25, 0.6, 0.25 }
    }
})

minetest.override_item('simple_farming:corn_8', {
    visual_scale = 2.0,
    selection_box = {
        type = 'fixed',
        fixed = { -0.25, -0.5, -0.25, 0.25, 0.6, 0.25 }
    }
})

minetest.register_craftitem("simple_farming:corn", {
	description = S("Corn"),
	inventory_image = "simple_farming_corn.png",
	on_use = minetest.item_eat(2),
})



minetest.register_craftitem("simple_farming:popcorn", {
	description = "Popcorn",
	on_use = minetest.item_eat(1),
	inventory_image = "simple_farming_pop_corn.png",
})

minetest.register_craft({
	type = "cooking",
	output = "simple_farming:popcorn 2",
	recipe = "simple_farming:corn",
})

table.insert(simple_farming.plant_infos, {"simple_farming:corn_", 8, "simple_farming:corn"})
