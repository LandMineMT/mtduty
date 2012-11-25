-- Call of Duty Mod by LandMine!
-- Based on Jeijas throwing mod, check it out here: http://c55.me/minetest/forum/viewtopic.php?id=687

--Some b/s (Bullet properties)
BULLET1_DAMAGE=3
BULLET1_GRAVITY=9
BULLET1_VELOCITY=20

mtduty_shoot_bullet1=function (item, player, pointed_thing)
	-- Check if arrows in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:bullet1") then
		player:get_inventory():remove_item("main", "mtduty:bullet1")

			-- Shoot Arrow
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:bullet1_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*BULLET1_VELOCITY, y=dir.y*BULLET1_VELOCITY, z=dir.z*BULLET1_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-BULLET1_GRAVITY, z=dir.z*-3})
			 -- Arrow shot, leave loop that checks for arrows in inventory
	end
	return
end

--end of b/s

----Pistols
minetest.register_craftitem("mtduty:asp", {
	image = "asp.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_bullet1,
	description = "Asp Pistol"
})
minetest.register_craftitem("mtduty:cz75", {
	image = "cz75.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_bullet1,
	description = "Cz75 Pistol"
})

minetest.register_craftitem("mtduty:m1911", {
	image = "m1911.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_bullet1,
	description = "M1911 Pistol"
})
	
minetest.register_craftitem("mtduty:makarov", {
	image = "makarov.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_bullet1,
	description = "Makarov Pistol"
})

minetest.register_craftitem("mtduty:python", {
	image = "python.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_bullet1,
	description = "Python Pistol"
})
	
----End Of Pistols

minetest.register_craftitem("mtduty:bullet1", {
	image = "mtduty_bullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Gun Bullets"
})
minetest.register_craftitem("mtduty:ironstick", {
	image = "mtduty_ironstick.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Iron Stick"
})
minetest.register_craftitem("mtduty:usedbullet1", {
	image = "mtduty_usedbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Useless Bullet"
})
minetest.register_craftitem("mtduty:rawbullet1", {
	image = "mtduty_rawbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Raw Bullet"
})
minetest.register_craft({
	type = "cooking",
	output = "mtduty:bullet1",
	recipe = "mtduty:rawbullet1",
})
--cookresult_itemstring = 'mtduty:bullet1 1',
-- The Arrow Entity

GUNMOD_BULLET1_ENTITY={
	physical = false,
	timer=0,
	textures = {"mtduty_bullet1_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}


-- Arrow_entity.on_step()--> called when arrow is moving
GUNMOD_BULLET1_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

	-- When arrow is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
			obj:set_hp(obj:get_hp()-BULLET1_DAMAGE)
			if obj:get_entity_name() ~= "mtduty:bullet1_entity" then
				if obj:get_hp()<=0 then 
					obj:remove()
				end
				self.object:remove() 
			end
		end
	end

	-- Become item when hitting a node
	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'mtduty:usedbullet1 1')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} -- Set lastpos-->Item will be added at last pos outside the node
end

minetest.register_entity("mtduty:bullet1_entity", GUNMOD_BULLET1_ENTITY)





--CRAFTS


minetest.register_craft({
	output = 'mtduty:woodgun 1',
	recipe = {
		{'default:steel_ingot', 'default:wood', 'default:wood'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:stick'},
		{'', '', 'default:stick'},
	}
})
minetest.register_craft({
	output = 'mtduty:irongun 1',
	recipe = {
		{'default:steel_ingot', 'default:wood', 'default:wood'},
		{'default:steel_ingot', 'default:steel_ingot', 'mtduty:ironstick'},
		{'', '', 'mtduty:ironstick'},
	}
})

minetest.register_craft({
	output = 'mtduty:bullet1 3',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'mtduty:ironstick 2',
	recipe = {
		{'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'mtduty:rawbullet1 1',
	recipe = {
		{'mtduty:usedbullet1', 'mtduty:usedbullet1'},
	}
})
print ("[Gunmod_mod] Loaded!")
