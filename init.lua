dofile("data/scripts/lib/utilities.lua")
helmet_type = {
	[0] = { id = "empty", 										ui_name = "Empty",},
	[1] = { id = "hood_alchemist", 						ui_name = "Hood Alchemist",},
	[2] = { id = "hood_enlightened",	 				ui_name = "Hood Enlightened",},
	[3] = { id = "hood_alchemist_alt", 				ui_name = "Hood Alchemist_alt",},
	[4] = { id = "hood_enlightened_alt",			ui_name = "Hood Enlightened_alt",},
	[5] = { id = "hood_highalchemist", 				ui_name = "Hood Highalchemist",},
	[6] = { id = "hood_highenlightened", 			ui_name = "Hood Highenlightened",},
	[7] = { id = "scavenger", 								ui_name = "Scavenger",},
	[8] = { id = "scavenger_poison", 					ui_name = "Scavenger Poison",},
	[9] = { id = "scavenger_leader", 					ui_name = "Scavenger Leader",},
	[10] = { id = "scavenger_alchemist", 			ui_name = "Scavenger Alchemist",},
	[11] = { id = "scavenger_alchemist_alt", 	ui_name = "Scavenger Alchemist_alt",},
	[12] = { id = "armor", 										ui_name = "Armor",},
	[13] = { id = "monk", 										ui_name = "Monk",},
	[14] = { id = "sentry", 									ui_name = "Sentry",},
	[15] = { id = "necrobot", 								ui_name = "Necrobot",},
	[16] = { id = "coward", 									ui_name = "Coward",},
	[17] = { id = "fungus", 									ui_name = "Fungus",},
	[18] = { id = "skull", 										ui_name = "Skull",},
	[19] = { id = "skull_fire", 							ui_name = "Skull Fire",},
	[20] = { id = "elk", 											ui_name = "Elk",},
	[21] = { id = "rat", 											ui_name = "Rat",},
	[22] = { id = "eye", 											ui_name = "Eye",},
	[23] = { id = "bloom", 										ui_name = "Bloom",},
	[24] = { id = "maggot", 									ui_name = "Maggot",},
	[25] = { id = "shaman", 									ui_name = "Shaman",},
	[26] = { id = "headless", 								ui_name = "Headless",},
	[27] = { id = "wizard_barfer", 						ui_name = "Wizard Barfer",},
	[28] = { id = "wizard_dark", 							ui_name = "Wizard Dark",},
	[29] = { id = "wizard_hearty", 						ui_name = "Wizard Hearty",},
	[30] = { id = "wizard_master", 						ui_name = "Wizard Master",},
	[31] = { id = "wizard_neutral", 					ui_name = "Wizard Neutral",},
	[32] = { id = "wizard_poly", 							ui_name = "Wizard Poly",},
	[33] = { id = "wizard_returner", 					ui_name = "Wizard Returner",},
	[34] = { id = "wizard_swapper", 					ui_name = "Wizard Swapper",},
	[35] = { id = "wizard_tele", 							ui_name = "Wizard Tele",},
	[36] = { id = "wizard_twitchy", 					ui_name = "Wizard Twitchy",},
	[37] = { id = "wizard_wither", 						ui_name = "Wizard Wither",},
	[38] = { id = "wizard_weaken", 						ui_name = "Wizard Weaken",},
}

hair_type = {
	[0] = { id = "bald", 						ui_name = "Bald",},
	[1] = { id = "short", 					ui_name = "Short",},
	[2] = { id = "afro", 						ui_name = "Afro",},
	[3] = { id = "afro_up", 				ui_name = "Afro_up",},
	[4] = { id = "bigbun", 					ui_name = "Bigbun",},
	[5] = { id = "bigbun_tied", 		ui_name = "Bigbun Tied",},
	[6] = { id = "braid", 					ui_name = "Braid",},
	[7] = { id = "braid_side", 			ui_name = "Braid Side",},
	[8] = { id = "down", 						ui_name = "Down",},
	[9] = { id = "down_bun", 				ui_name = "Down Bun",},
	[10] = { id = "highbuns", 			ui_name = "Highbuns",},
	[11] = { id = "highbuns_bangs", ui_name = "Highbuns Bangs",},
	[12] = { id = "lowbuns", 				ui_name = "Lowbuns",},
	[13] = { id = "lowbuns_loose", 	ui_name = "Lowbuns Loose",},
	[14] = { id = "side", 					ui_name = "Side",},
	[15] = { id = "side_long", 			ui_name = "Side Long",},
	[16] = { id = "tied", 					ui_name = "Tied",},
	[17] = { id = "tied_thin", 			ui_name = "Tied Thin",},
	[18] = { id = "up", 						ui_name = "Up",},
	[19] = { id = "up_front", 			ui_name = "Up Front",},
}

hair_color = {
	[1] = { id = "light", 	ui_name = "Light",},
	[2] = { id = "dark", 		ui_name = "Dark",},
	[3] = { id = "red", 		ui_name = "Red",},
	[4] = { id = "gold", 		ui_name = "Gold",},
	[5] = { id = "spirit", 	ui_name = "Spirit",},
	[6] = { id = "ghost", 	ui_name = "Ghost",},
}

skin_type = {
	[1] = { id = "pale", 					ui_name = "Pale",},
	[2] = { id = "light", 				ui_name = "Light",},
	[3] = { id = "tan", 					ui_name = "Tan",},
	[4] = { id = "dark", 					ui_name = "Dark",},
	[5] = { id = "hell", 					ui_name = "Hell",},
	[6] = { id = "highalchemist",	ui_name = "Highalchemist",},
	[7] = { id = "alchemist", 		ui_name = "Alchemist",},
	[8] = { id = "toxic", 				ui_name = "Toxic",},
	[9] = { id = "assasin", 			ui_name = "Assasin",},
	[10] = { id = "monk", 				ui_name = "Monk",},
	[11] = { id = "robot", 				ui_name = "Robot",},
	[12] = { id = "machine", 			ui_name = "Machine",},
	[13] = { id = "hamis", 				ui_name = "Hamis",},
	[14] = { id = "creep", 				ui_name = "Creep",},
	[15] = { id = "skeleton", 		ui_name = "Skeleton",},
	[16] = { id = "necromancer", 	ui_name = "Necromancer",},
	[17] = { id = "spirit", 			ui_name = "Spirit",},
	[18] = { id = "ghost", 				ui_name = "Ghost",},
	[19] = { id = "stone", 				ui_name = "Stone",},
	[20] = { id = "gold", 				ui_name = "Gold",},
}

outfit_type = {
	[0] = { id = "naked", 								ui_name = "Naked",},
	[1] = { id = "alchemist", 						ui_name = "Alchemist",},
	[2] = { id = "alchemist_short", 			ui_name = "alchemist Short",},
	[3] = { id = "alchemist_high", 				ui_name = "Alchemist High",},
	[4] = { id = "peasant", 							ui_name = "Peasant",},
	[5] = { id = "peasant_belt", 					ui_name = "Peasant Belt",},
	[6] = { id = "peasant_tshirt", 				ui_name = "Peasant Tshirt",},
	[7] = { id = "peasant_femboy", 				ui_name = "Peasant Femboy",},
	[8] = { id = "miner", 								ui_name = "Miner",},
	[9] = { id = "miner_weak", 						ui_name = "Miner Weak",},
	[10] = { id = "dress", 								ui_name = "Dress",},
	[11] = { id = "dress_belt", 					ui_name = "Dress Belt",},
	[12] = { id = "dress_skirt", 					ui_name = "Dress Skirt",},
	[13] = { id = "gown", 								ui_name = "Gown",},
	[14] = { id = "gown_thin", 						ui_name = "Gown Thin",},
	[15] = { id = "gown_skirt", 					ui_name = "Gown Skirt",},
	[16] = { id = "monk", 								ui_name = "Monk",},
	[17] = { id = "armor", 								ui_name = "Armor",},
	[18] = { id = "armor_dress", 					ui_name = "Srmor Dress",},
	[19] = { id = "necromancer", 					ui_name = "Necromancer",},
	[20] = { id = "necromancer_armor", 		ui_name = "Necromancer Armor",},
	[21] = { id = "scavenger", 						ui_name = "Scavenger",},
	[22] = { id = "scavenger_shield", 		ui_name = "Scavenger Shield",},
	[23] = { id = "scavenger_support", 		ui_name = "Scavenger Support",},
	[24] = { id = "scavenger_coward", 		ui_name = "Scavenger Coward",},
	[25] = { id = "scavenger_alchemist", 	ui_name = "Scavenger Alchemist",},
	[26] = { id = "wizard_barfer", 				ui_name = "Wizard Barfer",},
	[27] = { id = "wizard_dark", 					ui_name = "Wizard Dark",},
	[28] = { id = "wizard_hearty", 				ui_name = "Wizard Hearty",},
	[29] = { id = "wizard_master", 				ui_name = "Wizard Master",},
	[30] = { id = "wizard_neutral", 			ui_name = "Wizard Neutral",},
	[31] = { id = "wizard_poly", 					ui_name = "Wizard Poly",},
	[32] = { id = "wizard_returner", 			ui_name = "Wizard Returner",},
	[33] = { id = "wizard_swapper", 			ui_name = "Wizard Swapper",},
	[34] = { id = "wizard_tele", 					ui_name = "Wizard Tele",},
	[35] = { id = "wizard_twitchy", 			ui_name = "Wizard Twitchy",},
	[36] = { id = "wizard_wither", 				ui_name = "Wizard Wither",},
	[37] = { id = "wizard_weaken", 				ui_name = "Wizard Weaken",},
}

hat_type = {
	[0] = { id = "empty", 					ui_name = "Empty",},
	[1] = { id = "crown", 					ui_name = "Crown",},
	[2] = { id = "crown_iron", 			ui_name = "Crown Iron",},
	[3] = { id = "crown_gem", 			ui_name = "Crown Gem",},
	[4] = { id = "miner", 					ui_name = "Miner",},
	[5] = { id = "cowboy", 					ui_name = "Cowboy",},
	[6] = { id = "wizard", 					ui_name = "Wizard",},
	[7] = { id = "flower", 					ui_name = "Flower",},
	[8] = { id = "horns", 					ui_name = "Horns",},
	[9] = { id = "antlers_spirit", 	ui_name = "Antlers spirit",},
	[10] = { id = "santa", 					ui_name = "Santa",},
	[11] = { id = "sosig", 					ui_name = "Sosig",},
}

amulet_type = {
	[0] = { id = "empty", 						ui_name = "Empty",},
	[1] = { id = "amulet", 						ui_name = "Amulet",},
	[2] = { id = "amulet_gold", 			ui_name = "Amulet_gold",},
	[3] = { id = "amulet_gold_gem", 	ui_name = "Amulet_gold_gem",},
	[4] = { id = "amulet_iron", 			ui_name = "Amulet_iron",},
	[5] = { id = "amulet_iron_gem", 	ui_name = "Amulet_iron_gem",},
	[6] = { id = "back", 							ui_name = "Back",},
	[7] = { id = "back_shield", 			ui_name = "Back_shield",},
	[8] = { id = "back_rocket", 			ui_name = "Back_rocket",},
	[9] = { id = "back_rocket_alt", 	ui_name = "Back_rocket_alt",},
	[10] = { id = "shotgun", 					ui_name = "Shotgun",},
	[11] = { id = "bottle", 					ui_name = "Bottle",},
	[12] = { id = "bottle_green", 		ui_name = "Green Bottle",},
	[13] = { id = "dagger", 					ui_name = "Dagger",},
	[14] = { id = "lantern", 					ui_name = "Lantern",},
	[15] = { id = "crystal", 					ui_name = "Crystal",},
	[16] = { id = "key", 							ui_name = "Key",},
}

cape_color = {
	[0] = { id = "empty", 				ui_name = "Empty",},
	[1] = { id = "alchemist", 		ui_name = "Alchemist",},
	[2] = { id = "hamis", 				ui_name = "Hamis",},
	[3] = { id = "ghost", 				ui_name = "Ghost",},
	[4] = { id = "monk", 					ui_name = "Monk",},
	[5] = { id = "spirit", 				ui_name = "Spirit",},
	[6] = { id = "copper", 				ui_name = "Copper",},
	[7] = { id = "plastic", 			ui_name = "Plastic",},
	[8] = { id = "antler", 				ui_name = "Antler",},
	[9] = { id = "gold", 					ui_name = "Gold",},
	[10] = { id = "peasant", 			ui_name = "Peasant",},
	[11] = { id = "necromancer", 	ui_name = "Necromancer",},
	[12] = { id = "iron", 				ui_name = "Iron",},
	[13] = { id = "old", 					ui_name = "Old",},
	[14] = { id = "silk", 				ui_name = "Silk",},
}

cloth_color = {
	["alchemist"] =	 	{ cloth_color = 0xff76547f, cloth_color_edge = 0xff9a6f9b,},
	["hamis"] = 		{ cloth_color = 0xff4C2A3B, cloth_color_edge = 0xff6F3152,},
	["ghost"] = 		{ cloth_color = 0xff191518, cloth_color_edge = 0xff33212C,},
	["monk"] = 			{ cloth_color = 0xff573E3E, cloth_color_edge = 0xff876060,},
	["spirit"] = 		{ cloth_color = 0xffAC7833, cloth_color_edge = 0xffE8A66B,},
	["copper"] = 		{ cloth_color = 0xff5E6524, cloth_color_edge = 0xff9BA53E,},
	["plastic"] = 		{ cloth_color = 0xff45858E, cloth_color_edge = 0xff64A9B3,},
	["antler"] = 		{ cloth_color = 0xff7FCDE5, cloth_color_edge = 0xff9CF0F0,},
	["gold"] = 			{ cloth_color = 0xff137EB0, cloth_color_edge = 0xff7EE2FA,},
	["peasant"] = 		{ cloth_color = 0xff4D668C, cloth_color_edge = 0xff527DBD,},
	["necromancer"] = 	{ cloth_color = 0xff352E62, cloth_color_edge = 0xff4E479B,},
	["iron"] = 			{ cloth_color = 0xff3F3F3F, cloth_color_edge = 0xff504E55,},
	["old"] = 			{ cloth_color = 0xff7D7C73, cloth_color_edge = 0xffACAA9B,},
	["silk"] = 			{ cloth_color = 0xffE8E7DD, cloth_color_edge = 0xffFDFCF2,},
}


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
