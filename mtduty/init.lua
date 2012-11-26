-- Call of Duty Mod by LandMine!

--AMMO (Bullet properties)

ASP_AMMO_DAMAGE=2
ASP_AMMO_GRAVITY=9
ASP_AMMO_VELOCITY=20

M1911_AMMO_DAMAGE=3
M1911_AMMO_GRAVITY=7
M1911_AMMO_VELOCITY=20

MAKAROV_AMMO_DAMAGE=3
MAKAROV_AMMO_GRAVITY=5
MAKAROV_AMMO_VELOCITY=22

PYTHON_AMMO_DAMAGE=5
PYTHON_AMMO_GRAVITY=5
PYTHON_AMMO_VELOCITY=25

CZ75_AMMO_DAMAGE=4
CZ75_AMMO_GRAVITY=5
CZ75_AMMO_VELOCITY=25

----ASP AMMO----
mtduty_shoot_asp_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:asp_ammo") then
		player:get_inventory():remove_item("main", "mtduty:asp_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:asp_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*ASP_AMMO_VELOCITY, y=dir.y*ASP_AMMO_VELOCITY, z=dir.z*ASP_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-ASP_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF ASP AMMO---

----CZ75 AMMO----
mtduty_shoot_cz75_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:cz75_ammo") then
		player:get_inventory():remove_item("main", "mtduty:cz75_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:cz75_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*CZ75_AMMO_VELOCITY, y=dir.y*CZ75_AMMO_VELOCITY, z=dir.z*CZ75_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-CZ75_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF CZ75 AMMO---

----M1911 AMMO----
mtduty_shoot_m1911_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:m1911_ammo") then
		player:get_inventory():remove_item("main", "mtduty:m1911_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:m1911_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*M1911_AMMO_VELOCITY, y=dir.y*M1911_AMMO_VELOCITY, z=dir.z*M1911_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-M1911_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF M1911 AMMO---

----MAKAROV AMMO----
mtduty_shoot_makarov_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:makarov_ammo") then
		player:get_inventory():remove_item("main", "mtduty:makarov_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:makarov_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*MAKAROV_AMMO_VELOCITY, y=dir.y*MAKAROV_AMMO_VELOCITY, z=dir.z*MAKAROV_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-MAKAROV_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF MAKAROV AMMO---

----PYTHON AMMO----
mtduty_shoot_python_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty:python_ammo") then
		player:get_inventory():remove_item("main", "mtduty:python_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty:python_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*PYTHON_AMMO_VELOCITY, y=dir.y*PYTHON_AMMO_VELOCITY, z=dir.z*PYTHON_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-PYTHON_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF PYTHON AMMO---

-------------------------------------------
-------------------------------------------

----Pistols
minetest.register_craftitem("mtduty:asp", {
	image = "asp.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_asp_ammo,
	description = "Asp Pistol"
})
minetest.register_craftitem("mtduty:cz75", {
	image = "cz75.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_cz75_ammo,
	description = "Cz75 Pistol"
})

minetest.register_craftitem("mtduty:m1911", {
	image = "m1911.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_m1911_ammo,
	description = "M1911 Pistol"
})
	
minetest.register_craftitem("mtduty:makarov", {
	image = "makarov.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_makarov_ammo,
	description = "Makarov Pistol"
})

minetest.register_craftitem("mtduty:python", {
	image = "python.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_python_ammo,
	description = "Python Pistol"
})
	
----End Of Pistols

-------------------------------------------
-------------------------------------------

----Ammo Register
minetest.register_craftitem("mtduty:asp_ammo", {
	image = "asp_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Asp Ammo"
})

minetest.register_craftitem("mtduty:cz75_ammo", {
	image = "cz75_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Cz75 Ammo"
})

minetest.register_craftitem("mtduty:m1911_ammo", {
	image = "m1911_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "M1911 Ammo"
})

minetest.register_craftitem("mtduty:makarov_ammo", {
	image = "makarov_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Makarov Ammo"
})

minetest.register_craftitem("mtduty:python_ammo", {
	image = "python_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Python Ammo"
})

----End of Ammo Register

-------------------------------------------
-------------------------------------------

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
	output = "mtduty:asp_ammo",
	recipe = "mtduty:rawbullet1",
})
--cookresult_itemstring = 'mtduty:asp_ammo 1',

-------------------------------------------
-------------------------------------------

-- The Bullet Entity

MTDUTY_BULLET_ENTITY={
	physical = false,
	timer=0,
	textures = {"mtduty_bullet1_back.png"},
	lastpos={},
	collisionbox = {0,0,0,0,0,0},
}

-------------------------------------------
-------------------------------------------

-- Arrow_entity.on_step()--> called when bullet is moving
MTDUTY_BULLET_ENTITY.on_step = function(self, dtime)
	self.timer=self.timer+dtime
	local pos = self.object:getpos()
	local node = minetest.env:get_node(pos)

-------------------------------------------
-------------------------------------------

	-- When bullet is away from player (after 0.2 seconds): Cause damage to mobs and players
	if self.timer>0.2 then
		local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2)
		for k, obj in pairs(objs) do
		if obj:get_entity_name() ~= "mtduty:asp_ammo_entity" then
			obj:set_hp(obj:get_hp()-ASP_AMMO_DAMAGE)
			
				else if obj:get_entity_name() ~= "mtduty:m1911_ammo_entity" then
			obj:set_hp(obj:get_hp()-M1911_AMMO_DAMAGE)
			
					else if obj:get_entity_name() ~= "mtduty:makarov_ammo_entity" then
				obj:set_hp(obj:get_hp()-MAKAROV_AMMO_DAMAGE)
			
						else if obj:get_entity_name() ~= "mtduty:python_ammo_entity" then
					obj:set_hp(obj:get_hp()-PYTHON_AMMO_DAMAGE)
			
							else if obj:get_entity_name() ~= "mtduty:cz75_ammo_entity" then
						obj:set_hp(obj:get_hp()-CZ75_AMMO_DAMAGE)
			
				if obj:get_hp()<=0 then 
					obj:remove()
				end
				self.object:remove()
							end
						end
					end
				end
			end
		end
	end
	

-------------------------------------------
-------------------------------------------

	-- Become item when hitting a node
	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'mtduty:usedbullet1 1')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} -- Set lastpos-->Item will be added at last pos outside the node
end

-------------------------------------------
-------------------------------------------

minetest.register_entity("mtduty:asp_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty:m1911_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty:makarov_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty:python_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty:cz75_ammo_entity", MTDUTY_BULLET_ENTITY)


-------------------------------------------
-------------------------------------------

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
	output = 'mtduty:asp_ammo 3',
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
print ("[mtduty_mod] Loaded!")
