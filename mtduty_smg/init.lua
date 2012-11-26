-- Call of Duty Mod by LandMine!

--AMMO (Bullet properties)

MP5K_AMMO_DAMAGE=2
MP5K_AMMO_GRAVITY=9
MP5K_AMMO_VELOCITY=20

MAC11_AMMO_DAMAGE=3
MAC11_AMMO_GRAVITY=7
MAC11_AMMO_VELOCITY=20

SPECTRE_AMMO_DAMAGE=3
SPECTRE_AMMO_GRAVITY=5
SPECTRE_AMMO_VELOCITY=22

SKORPION_AMMO_DAMAGE=5
SKORPION_AMMO_GRAVITY=5
SKORPION_AMMO_VELOCITY=25

AK74U_AMMO_DAMAGE=4
AK74U_AMMO_GRAVITY=5
AK74U_AMMO_VELOCITY=25

MPL_AMMO_DAMAGE=2
MPL_AMMO_GRAVITY=9
MPL_AMMO_VELOCITY=20

UZI_AMMO_DAMAGE=3
UZI_AMMO_GRAVITY=7
UZI_AMMO_VELOCITY=20

PM63_AMMO_DAMAGE=3
PM63_AMMO_GRAVITY=5
PM63_AMMO_VELOCITY=22

KIPARIS_AMMO_DAMAGE=5
KIPARIS_AMMO_GRAVITY=5
KIPARIS_AMMO_VELOCITY=25

----MP5K AMMO----
mtduty_shoot_mp5k_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:mp5k_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:mp5k_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:mp5k_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*MP5K_AMMO_VELOCITY, y=dir.y*MP5K_AMMO_VELOCITY, z=dir.z*MP5K_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-MP5K_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF MP5K AMMO---

----MAC11 AMMO----
mtduty_shoot_mac11_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:mac11_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:mac11_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:mac11_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*MAC11_AMMO_VELOCITY, y=dir.y*MAC11_AMMO_VELOCITY, z=dir.z*MAC11_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-MAC11_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF MAC11 AMMO---

----SPECTRE AMMO----
mtduty_shoot_spectre_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:spectre_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:spectre_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:spectre_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*SPECTRE_AMMO_VELOCITY, y=dir.y*SPECTRE_AMMO_VELOCITY, z=dir.z*SPECTRE_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-SPECTRE_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF SPECTRE AMMO---

----SKORPION AMMO----
mtduty_shoot_skorpion_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:skorpion_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:skorpion_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:skorpion_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*SKORPION_AMMO_VELOCITY, y=dir.y*SKORPION_AMMO_VELOCITY, z=dir.z*SKORPION_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-SKORPION_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF SKORPION AMMO---

----AK74U AMMO----
mtduty_shoot_ak74u_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:ak74u_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:ak74u_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:ak74u_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*AK74U_AMMO_VELOCITY, y=dir.y*AK74U_AMMO_VELOCITY, z=dir.z*AK74U_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-AK74U_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF AK74U AMMO---

----MPL AMMO----
mtduty_shoot_mpl_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:mpl_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:mpl_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:mpl_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*MPL_AMMO_VELOCITY, y=dir.y*MPL_AMMO_VELOCITY, z=dir.z*MPL_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-MPL_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF MPL AMMO---

----UZI AMMO----
mtduty_shoot_uzi_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:uzi_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:uzi_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:uzi_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*UZI_AMMO_VELOCITY, y=dir.y*UZI_AMMO_VELOCITY, z=dir.z*UZI_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-UZI_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF UZI AMMO---

----PM63 AMMO----
mtduty_shoot_pm63_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:pm63_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:pm63_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:pm63_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*PM63_AMMO_VELOCITY, y=dir.y*PM63_AMMO_VELOCITY, z=dir.z*PM63_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-PM63_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF PM63 AMMO---

----KIPARIS AMMO----
mtduty_shoot_kiparis_ammo=function (item, player, pointed_thing)
	-- Check if bullets in Inventory and remove one of them
	if player:get_inventory():contains_item("main", "mtduty_smg:kiparis_ammo") then
		player:get_inventory():remove_item("main", "mtduty_smg:kiparis_ammo")

			-- Shoot bullet
			local playerpos=player:getpos()
			local obj=minetest.env:add_entity({x=playerpos.x,y=playerpos.y+1.5,z=playerpos.z}, "mtduty_smg:kiparis_ammo_entity")
			local dir=player:get_look_dir()
			obj:setvelocity({x=dir.x*KIPARIS_AMMO_VELOCITY, y=dir.y*KIPARIS_AMMO_VELOCITY, z=dir.z*KIPARIS_AMMO_VELOCITY})
			obj:setacceleration({x=dir.x*-3, y=-KIPARIS_AMMO_GRAVITY, z=dir.z*-3})
			 -- Bullet shot, leave loop that checks for bullets in inventory
	end
	return
end

----END OF KIPARIS AMMO---

-------------------------------------------
-------------------------------------------

----SMGS
minetest.register_craftitem("mtduty_smg:mp5k", {
	image = "mp5k.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_mp5k_ammo,
	description = "Mp5k SMG"
})
minetest.register_craftitem("mtduty_smg:mac11", {
	image = "mac11.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_mac11_ammo,
	description = "Mac11 SMG"
})

minetest.register_craftitem("mtduty_smg:spectre", {
	image = "spectre.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_spectre_ammo,
	description = "Spectre SMG"
})
	
minetest.register_craftitem("mtduty_smg:skorpion", {
	image = "skorpion.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_skorpion_ammo,
	description = "Skorpion SMG"
})

minetest.register_craftitem("mtduty_smg:ak74u", {
	image = "ak74u.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_ak74u_ammo,
	description = "Ak74u SMG"
})

minetest.register_craftitem("mtduty_smg:mpl", {
	image = "mpl.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_mpl_ammo,
	description = "Mpl SMG"
})

minetest.register_craftitem("mtduty_smg:uzi", {
	image = "uzi.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_uzi_ammo,
	description = "Uzi SMG"
})
	
minetest.register_craftitem("mtduty_smg:pm63", {
	image = "pm63.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_pm63_ammo,
	description = "Pm63 SMG"
})

minetest.register_craftitem("mtduty_smg:kiparis", {
	image = "kiparis.png",
	on_place_on_ground = minetest.craftitem_place_item,
	on_use = mtduty_shoot_kiparis_ammo,
	description = "Kiparis SMG"
})
	
----End Of SMGS

-------------------------------------------
-------------------------------------------

----Ammo Register
minetest.register_craftitem("mtduty_smg:mp5k_ammo", {
	image = "mp5k_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Mp5k Ammo"
})

minetest.register_craftitem("mtduty_smg:mac11_ammo", {
	image = "mac11_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Mac11 Ammo"
})

minetest.register_craftitem("mtduty_smg:spectre_ammo", {
	image = "spectre_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Spectre Ammo"
})

minetest.register_craftitem("mtduty_smg:skorpion_ammo", {
	image = "skorpion_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Skorpion Ammo"
})

minetest.register_craftitem("mtduty_smg:ak74u_ammo", {
	image = "ak74u_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Ak74u Ammo"
})

minetest.register_craftitem("mtduty_smg:mpl_ammo", {
	image = "mpl_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Mpl Ammo"
})

minetest.register_craftitem("mtduty_smg:uzi_ammo", {
	image = "uzi_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Uzi Ammo"
})

minetest.register_craftitem("mtduty_smg:pm63_ammo", {
	image = "pm63_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Pm63 Ammo"
})

minetest.register_craftitem("mtduty_smg:kiparis_ammo", {
	image = "kiparis_ammo.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Kiparis Ammo"
})

----End of Ammo Register

-------------------------------------------
-------------------------------------------

minetest.register_craftitem("mtduty_smg:ironstick", {
	image = "mtduty_ironstick.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Iron Stick"
})
minetest.register_craftitem("mtduty_smg:usedbullet1", {
	image = "mtduty_usedbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Useless Bullet"
})
minetest.register_craftitem("mtduty_smg:rawbullet1", {
	image = "mtduty_rawbullet1.png",
	on_place_on_ground = minetest.craftitem_place_item,
	description = "Raw Bullet"
})
minetest.register_craft({
	type = "cooking",
	output = "mtduty_smg:mp5k_ammo",
	recipe = "mtduty_smg:rawbullet1",
})
--cookresult_itemstring = 'mtduty_smg:mp5k_ammo 1',

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
		if obj:get_entity_name() ~= "mtduty_smg:mp5k_ammo_entity" then
			obj:set_hp(obj:get_hp()-MP5K_AMMO_DAMAGE)
			
				else if obj:get_entity_name() ~= "mtduty_smg:mac11_ammo_entity" then
			obj:set_hp(obj:get_hp()-MAC11_AMMO_DAMAGE)
			
					else if obj:get_entity_name() ~= "mtduty_smg:spectre_ammo_entity" then
				obj:set_hp(obj:get_hp()-SPECTRE_AMMO_DAMAGE)
			
						else if obj:get_entity_name() ~= "mtduty_smg:skorpion_ammo_entity" then
					obj:set_hp(obj:get_hp()-SKORPION_AMMO_DAMAGE)
			
							else if obj:get_entity_name() ~= "mtduty_smg:ak74u_ammo_entity" then
						obj:set_hp(obj:get_hp()-AK74U_AMMO_DAMAGE)
						
										else if obj:get_entity_name() ~= "mtduty_smg:mpl_ammo_entity" then
									obj:set_hp(obj:get_hp()-MPL_AMMO_DAMAGE)
			
											else if obj:get_entity_name() ~= "mtduty_smg:uzi_ammo_entity" then
											obj:set_hp(obj:get_hp()-UZI_AMMO_DAMAGE)
			
												else if obj:get_entity_name() ~= "mtduty_smg:pm63_ammo_entity" then
												obj:set_hp(obj:get_hp()-PM63_AMMO_DAMAGE)
			
														else if obj:get_entity_name() ~= "mtduty_smg:kiparis_ammo_entity" then
														obj:set_hp(obj:get_hp()-KIPARIS_AMMO_DAMAGE)
			
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
				end
			end
		end
	end
	

-------------------------------------------
-------------------------------------------

	-- Become item when hitting a node
	if self.lastpos.x~=nil then --If there is no lastpos for some reason
		if node.name ~= "air" then
			minetest.env:add_item(self.lastpos, 'mtduty_smg:usedbullet1 1')
			self.object:remove()
		end
	end
	self.lastpos={x=pos.x, y=pos.y, z=pos.z} -- Set lastpos-->Item will be added at last pos outside the node
end

-------------------------------------------
-------------------------------------------

minetest.register_entity("mtduty_smg:mp5k_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:mac11_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:spectre_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:skorpion_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:ak74u_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:mpl_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:uzi_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:pm63_ammo_entity", MTDUTY_BULLET_ENTITY)
minetest.register_entity("mtduty_smg:kiparis_ammo_entity", MTDUTY_BULLET_ENTITY)

-------------------------------------------
-------------------------------------------

--CRAFTS


print ("[mtduty_smg] Loaded!")
