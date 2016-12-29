minetest.register_node("morerainbows:cooked_nyancat", {
	description = "Cooked Nyan Cat",
	drawtype = "normal",
	tiles = {
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_back.png",
		"morerainbows_nc_front.png"
	},
	paramtype2 = "facedir",
	groups = {not_in_creative_inventory = 1},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
	on_punch = function(pos, node, puncher)
		puncher:set_hp(puncher:get_hp() + 2)
		minetest.swap_node(pos, {name = "morerainbows:cooked_nyancat_eat1", param2 = node.param2})
	end
})

minetest.register_node("morerainbows:cooked_nyancat_eat1", {
	description = "Cooked Nyan Cat",
	drawtype = "mesh",
	mesh = "stairs_stair.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
			{-0.5, 0, 0, 0.5, 0.5, 0.5}
		}
	},
	tiles = {
		{name = "morerainbows_nc_side.png^[lowpart:50:morerainbows_nc_intop.png", backface_culling = true},
		{name = "morerainbows_nc_side.png", backface_culling = true},
		{name = "morerainbows_nc_side.png", backface_culling = true},
		{name = "morerainbows_nc_side.png", backface_culling = true},
		{name = "morerainbows_nc_back.png", backface_culling = true},
		{name = "morerainbows_nc_inside.png^[lowpart:50:morerainbows_nc_front.png", backface_culling = true}
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {not_in_creative_inventory = 1},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
	on_punch = function(pos, node, puncher)
		puncher:set_hp(puncher:get_hp() + 2)
		minetest.swap_node(pos, {name = "morerainbows:cooked_nyancat_eat2", param2 = node.param2})
	end
})

minetest.register_node("morerainbows:cooked_nyancat_eat2", {
	description = "Cooked Nyan Cat",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, -0.5, 0.5, 0, 0.5}}
	},
	tiles = {
		"morerainbows_nc_intop.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_back.png",
		"morerainbows_nc_front.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {not_in_creative_inventory = 1},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
	on_punch = function(pos, node, puncher)
		puncher:set_hp(puncher:get_hp() + 2)
		minetest.swap_node(pos, {name = "morerainbows:cooked_nyancat_eat3", param2 = node.param2})
	end
})

minetest.register_node("morerainbows:cooked_nyancat_eat3", {
	description = "Cooked Nyan Cat",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0, 0.5, 0, 0.5}}
	},
	tiles = {
		"morerainbows_nc_intop.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_side.png",
		"morerainbows_nc_back.png",
		"morerainbows_nc_inside.png"
	},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {not_in_creative_inventory = 1},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
	on_punch = function(pos, node, puncher)
		puncher:set_hp(puncher:get_hp() + 2)
		minetest.remove_node(pos)
	end
})

minetest.register_node("morerainbows:rainbow_brick", {
	description = "Rainbow Brick",
	drawtype = "normal",
	tiles = {"morerainbows_rainbow_brick.png"},
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_craft({
	type = "cooking",
	output = "morerainbows:cooked_nyancat",
	recipe = "nyancat:nyancat",
	cooktime = 9
})

minetest.register_craft({
	type = "shapeless",
	output = "morerainbows:rainbow_brick",
	recipe = {"nyancat:nyancat_rainbow", "default:brick"}
})

walls.register("morerainbows:nyancat_rainbow_wall", "Nyan Cat Rainbow Wall", "nyancat_rainbow.png",
		"nyancat:nyancat_rainbow", default.node_sound_defaults())

if minetest.get_modpath("csh") then
	csh.from_node("nyancat:nyancat_rainbow")
	csh.from_node("morerainbows:rainbow_brick")
end

if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("stairs", "nyancat_rainbow", "nyancat:nyancat_rainbow", {
		description = "Nyan Cat Rainbow",
		tiles = {"nyancat_rainbow.png^[transformR90", "nyancat_rainbow.png^[transformR90", "nyancat_rainbow.png"},
		groups = {cracky = 2},
		sounds = default.node_sound_defaults()
	})

	stairsplus:register_all("stairs", "rainbow_brick", "morerainbows:rainbow_brick", {
		description = "Rainbow Brick",
		tiles = {"morerainbows_rainbow_brick.png"},
		groups = {cracky = 3},
		sounds = default.node_sound_stone_defaults()
	})
else
	stairs.register_stair_and_slab("nyancat_rainbow", "nyancat:nyancat_rainbow", {cracky = 2},
			{"nyancat_rainbow.png^[transformR90", "nyancat_rainbow.png^[transformR90", "nyancat_rainbow.png"},
			"Nyan Cat Rainbow Stairs", "Nyan Cat Rainbow Slab", default.node_sound_defaults())
	stairs.register_stair_and_slab("rainbow_brick", "morerainbows:rainbow_brick", {cracky = 3}, {"morerainbows_rainbow_brick.png"},
			"Rainbow Brick Stairs", "Rainbow Brick Slab", default.node_sound_stone_defaults())
end

if minetest.get_modpath("viaduct") then
	viaduct.register_wood_bridge("nyancat:nyancat_rainbow", {})
	for _,v in ipairs({"","_w","_s","_sw","_e","_ew","_es","_esw","_n","_nw","_ns","_nsw","_ne","_new","_nes","_nesw"}) do
		minetest.override_item("viaduct:nyancat_rainbow_bridge"..v, {
			collision_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
				},
			}
		})
	end
	minetest.override_item("viaduct:nyancat_rainbow_bridge_un", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0},
				{-0.5, 0, 0, 0.5, 0.0625, 0.5}
			}
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_ue", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, -0.4375, 0.5},
				{0, 0, -0.5, 0.5, 0.0625, 0.5}
			}
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_us", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.0625, 0},
				{-0.5, -0.5, 0, 0.5, -0.4375, 0.5}
			}
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_uw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.0625, 0.5},
				{0, -0.5, -0.5, 0.5, -0.4375, 0.5}
			}
		}
	})
end
