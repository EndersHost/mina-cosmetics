dofile("data/scripts/lib/utilities.lua")
dofile_once( "mods/Mina-Cosmetics/files/scripts/player_parts_list.lua" )
dofile_once( "mods/Mina-Cosmetics/files/scripts/cape_colors_list.lua" )


function OnPlayerSpawned(entity_id)
	local key = "Mina-Cosmetics_MOD_TRYING_TO_MODIFY_PLAYER_DATA_ONLY_ONCE"
	local is_initialized = GlobalsGetValue( key ) 
	if( is_initialized == "yes" ) then
		return
	end
	GlobalsSetValue( key, "yes" )
	
	local x,y = EntityGetTransform( entity_id )
	SetRandomSeed( x, y )
	
	local mod_id = "Mina-Cosmetics" -- This should match the name of your mod's folder.
	
	function get_setting_part_id(part_list, part_name)
    return  part_list[ ModSettingGet( mod_id .. "." .. part_name ) ].id
	end
	
	function set_settings_random(part_type, min, max)
		local part_number = Random( min, max )
		if part_number < 0 then
			part_number = 0
		end
    return  part_type[part_number].id
	end
	
	
	
	-- SETTINGS
	local randomized = ModSettingGet( mod_id .. ".randomized" ) -- true/false
	
	local helmet_type_id = get_setting_part_id( helmet_type,"helmet_type" ) -- part name
	local hair_type_id = get_setting_part_id( hair_type,"hair_type" )
	local hair_color_id = get_setting_part_id( hair_color,"hair_color" )
	local skin_type_id = get_setting_part_id( skin_type,"skin_type" )
	local outfit_type_id = get_setting_part_id( outfit_type,"outfit_type" )
	local hat_type_id = get_setting_part_id( hat_type,"hat_type" )
	local amulet_type_id = get_setting_part_id( amulet_type,"amulet_type" )
	local cape_color_id = get_setting_part_id( cape_color,"cape_color" )
	
	
	
	-- RNG
	if ( randomized == true ) then
		helmet_type_id = 	set_settings_random( helmet_type, -20, 38 )
		hair_type_id = 		set_settings_random( hair_type, 0, 19 )
		hair_color_id = 	set_settings_random( hair_color, 1, 6 )
		skin_type_id = 		set_settings_random( skin_type, 1, 20 )
		outfit_type_id = 	set_settings_random( outfit_type, 0, 37 )
		hat_type_id = 		set_settings_random( hat_type, -11, 11 )
		amulet_type_id = 	set_settings_random( amulet_type, -16, 16 )
		cape_color_id = 	set_settings_random( cape_color, -14, 14 )
	end
	
	EntityAddTag(entity_id, skin_type_id )
	
	
	
	-- FIND CHILD INVENTORY, CAPE
	local player_child_entities = EntityGetAllChildren( entity_id )
	if ( player_child_entities ~= nil ) then
		for i,child_entity in ipairs( player_child_entities ) do
			local child_entity_name = EntityGetName( child_entity )
		
			if ( child_entity_name == "cape" ) then
				cape = child_entity
			end
			if ( child_entity_name == "arm_r" ) then
				arm_r = child_entity
			end
		end
	end
	
	-- CAPE
	if ( cape_color_id == "empty" ) then
		EntitySetComponentsWithTagEnabled( cape, "player_cape", false )
	else
		local cloth_colors = cloth_color[cape_color_id]
		EntitySetComponentsWithTagEnabled( cape, "player_cape", true )
		edit_component( cape, "VerletPhysicsComponent", function(comp,vars) 
			vars.cloth_color = cloth_colors.cloth_color
			vars.cloth_color_edge = cloth_colors.cloth_color_edge
		end)
	end
	
	
	-- BODY
	local mainlayer_sprite_component = EntityGetFirstComponent( entity_id, "SpriteComponent", "player_mainlayer" )
	local body_sprite_file = "mods/Mina-Cosmetics/files/outfit_gfx/" .. skin_type_id ..  "/" .. outfit_type_id .. ".xml"
	ComponentSetValue( mainlayer_sprite_component, "image_file", body_sprite_file )
	
	
	-- ARM
	local player_arm_sprite_component = EntityGetFirstComponent( arm_r, "SpriteComponent" )
	local player_arm_sprite_file = "mods/Mina-Cosmetics/files/arm_gfx/" .. skin_type_id ..  "/" .. outfit_type_id .. ".xml"
	ComponentSetValue( player_arm_sprite_component, "image_file", player_arm_sprite_file )
	
	
	-- HEAD
	local headlayer_sprite_component = EntityGetFirstComponent( entity_id, "SpriteComponent", "player_headlayer" )
	local hairlayer_sprite_component = EntityGetFirstComponent( entity_id, "SpriteComponent", "player_hairlayer" )
	
	-- HELMET
	if ( helmet_type_id ~= "empty" ) then
		local empty_sprite_file = "mods/Mina-Cosmetics/files/empty.xml" 
		ComponentSetValue( headlayer_sprite_component, "image_file", empty_sprite_file )
		local head_sprite_file = "mods/Mina-Cosmetics/files/helmet_gfx/" .. helmet_type_id .. ".xml"
		ComponentSetValue( hairlayer_sprite_component, "image_file", head_sprite_file )
	-- HEAD HAIR
	elseif ( hair_type_id ~= "bald" ) then
		local head_sprite_file = "mods/Mina-Cosmetics/files/head_gfx/" .. skin_type_id .. "/" .. hair_color_id .. ".xml"
		ComponentSetValue( headlayer_sprite_component, "image_file", head_sprite_file )
		local hair_sprite_file = "mods/Mina-Cosmetics/files/hair_gfx/" .. hair_color_id .. "/" .. hair_type_id .. ".xml"
		ComponentSetValue( hairlayer_sprite_component, "image_file", hair_sprite_file )
	else
		local head_sprite_file = "mods/Mina-Cosmetics/files/head_gfx/" .. skin_type_id .. "/bald.xml"
		ComponentSetValue( headlayer_sprite_component, "image_file", head_sprite_file )
	end
	
	-- HAT
	if ( hat_type_id ~= "empty" ) then
		local hat_sprite_component = EntityGetFirstComponent( entity_id, "SpriteComponent", "player_hatlayer" )
		local hat_sprite_file = "mods/Mina-Cosmetics/files/hat_gfx/" .. hat_type_id ..  ".xml"
		ComponentSetValue( hat_sprite_component, "image_file", hat_sprite_file )
	end
	-- AMULET
	if ( amulet_type_id ~= "empty" ) then
		local amulet_sprite_component = EntityGetFirstComponent( entity_id, "SpriteComponent", "player_amuletlayer" )
		local amulet_sprite_file = "mods/Mina-Cosmetics/files/amulet_gfx/" .. amulet_type_id ..  ".xml"
		ComponentSetValue( amulet_sprite_component, "image_file", amulet_sprite_file )
	end
	
	-- RAGDOLL
	local damage_sprite_component = EntityGetFirstComponent( entity_id, "DamageModelComponent" )
	local ragdoll_sprite_file = "mods/Mina-Cosmetics/files/ragdolls_gfx/" .. skin_type_id ..  "/filenames.txt"
	ComponentSetValue( damage_sprite_component, "ragdoll_filenames_file", ragdoll_sprite_file )
	
end


-- this code runs when all mods' filesystems are registered
