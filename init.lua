minetest.register_node("morerainbows:cooked_nyancat", {
	description = "Cooked Nyan Cat",
	tiles = {"morerainbows_nc_side.png", "morerainbows_nc_side.png", "morerainbows_nc_side.png",
		"morerainbows_nc_side.png", "morerainbows_nc_back.png", "morerainbows_nc_front.png"},
	paramtype2 = "facedir",
	groups = {cracky = 2, not_in_creative_inventory = 1},
	is_ground_content = false,
	legacy_facedir_simple = true,
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_defaults()
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
	recipe = "default:nyancat",
	cooktime = 9
})

minetest.register_craft({
	type = "shapeless",
	output = "morerainbows:rainbow_brick",
	recipe = {"default:nyancat_rainbow", "default:brick"}
})

walls.register("morerainbows:nyancat_rainbow_wall", "Nyan Cat Rainbow Wall", "default_nc_rb.png",
		"default:nyancat_rainbow", default.node_sound_defaults())

if minetest.get_modpath("csh") then
	csh.from_node("default:nyancat_rainbow")
	csh.from_node("morerainbows:rainbow_brick")
end

if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("stairs", "nyancat_rainbow", "default:nyancat_rainbow", {
		description = "Nyan Cat Rainbow",
		tiles = {"default_nc_rb.png^[transformR90", "default_nc_rb.png^[transformR90", "default_nc_rb.png", "default_nc_rb.png"},
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
	stairs.register_stair_and_slab("nyancat_rainbow", "default:nyancat_rainbow", {cracky = 2},
			{"default_nc_rb.png^[transformR90", "default_nc_rb.png^[transformR90", "default_nc_rb.png", "default_nc_rb.png"},
			"Nyan Cat Rainbow Stairs", "Nyan Cat Rainbow Slab", default.node_sound_defaults())
	stairs.register_stair_and_slab("rainbow_brick", "morerainbows:rainbow_brick", {cracky = 3}, {"morerainbows_rainbow_brick.png"},
			"Rainbow Brick Stairs", "Rainbow Brick Slab", default.node_sound_stone_defaults())
end

if minetest.get_modpath("viaduct") then
	viaduct.register_wood_bridge("default:nyancat_rainbow", {})
	minetest.override_item("viaduct:nyancat_rainbow_bridge", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_w", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_s", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_sw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_e", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_ew", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_es", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_esw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_n", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_nw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_ns", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_nsw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_ne", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_new", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_nes", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_nesw", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
			},
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_un", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.0625, 0.5},
				{0, -0.5, -0.5, 0.5, -0.4375, 0.5}
			}
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_ue", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.0625, 0.5},
				{0, -0.5, -0.5, 0.5, -0.4375, 0.5}
			}
		}
	})
	minetest.override_item("viaduct:nyancat_rainbow_bridge_us", {
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.0625, 0.5},
				{0, -0.5, -0.5, 0.5, -0.4375, 0.5}
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
