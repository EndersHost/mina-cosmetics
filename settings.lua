dofile("data/scripts/lib/mod_settings.lua") -- see this file for documentation on some of the features.
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

local mod_id = "Mina-Cosmetics" -- This should match the name of your mod's folder.

function round(num)
    return math.floor(num + 0.5)
end

function get_setting_part_id(part_type)
    return  _G[ part_type ][ ModSettingGetNextValue( mod_id .. "." .. part_type ) ].id
end

------------------------------------------------------------------------------------------------
--                         						 MOD_SETTING_                                           --
------------------------------------------------------------------------------------------------

function mod_setting_slider( mod_id, gui, in_main_menu, im_id, setting )
	local value = ModSettingGetNextValue( mod_setting_get_id(mod_id,setting) )
	if type(value) ~= "number" then value = setting.value_default or 0.0 end
	
	if setting.value_min == nil or setting.value_max == nil or setting.value_default == nil then
		GuiText( setting.ui_name .. " - not all required values are defined in setting definition" )
		return
	end
	
	if value == 0 then 
		GuiColorSetForNextWidget(gui, 0.5255, 0.5255, 0.5255, 1)
	end
	
	local value_new = round( GuiSlider( gui, im_id, mod_setting_group_x_offset, 0, setting.ui_name, value, setting.value_min, setting.value_max, setting.value_default, setting.value_display_multiplier or 1, " ", 64 ) )
	
	if value ~= value_new then
		ModSettingSetNextValue( mod_setting_get_id(mod_id,setting), value_new, false )
		mod_setting_handle_change_callback( mod_id, gui, in_main_menu, setting, value, value_new )
	end
end

function mod_setting_bool( mod_id, gui, in_main_menu, im_id, setting )
	local value = ModSettingGetNextValue( mod_setting_get_id(mod_id,setting) )
	if type(value) ~= "boolean" then value = setting.value_default or false end
	
	local text = setting.ui_name .. ":    " 

	local clicked,right_clicked = GuiButton( gui, im_id, mod_setting_group_x_offset, 0, text )
	
	if (value == true) then
		GuiImage( gui, im_id, mod_setting_group_x_offset, -10, "mods/Mina-Cosmetics/files/ui_gfx/ui_switch_on.png", 1, 1, 0 )
	else
		GuiImage( gui, im_id, mod_setting_group_x_offset, -10, "mods/Mina-Cosmetics/files/ui_gfx/ui_switch_off.png", 1, 1, 0 )
	end
	
	if clicked then
		ModSettingSetNextValue( mod_setting_get_id(mod_id,setting), not value, false )
		mod_setting_handle_change_callback( mod_id, gui, in_main_menu, setting, value, not value )
	end
	if right_clicked then
		local new_value = setting.value_default or false
		ModSettingSetNextValue( mod_setting_get_id(mod_id,setting), new_value, false )
		mod_setting_handle_change_callback( mod_id, gui, in_main_menu, setting, value, new_value )
	end
	
	mod_setting_tooltip( mod_id, gui, in_main_menu, setting )
end


function mod_setting_disabled_spacing( mod_id, gui, in_main_menu, im_id, setting )
	GuiColorSetForNextWidget(gui, 0.5255, 0.5255, 0.5255, 1)
	GuiText(gui, mod_setting_group_x_offset, 0, setting.ui_name)
end

------------------------------------------------------------------------------------------------
--                         						 MOD_UI_IMAGE                                           --
------------------------------------------------------------------------------------------------

function mod_ui_image( mod_id, gui, in_main_menu, im_id, setting )
	GuiImage( gui, im_id, setting.x_offset, setting.y_offset, setting.image_filename, 1, setting.scale, 0 )
end

function mod_ui_icon( mod_id, gui, in_main_menu, im_id, setting )
	local ui_folder = setting.ui_folder
	local ui_part = get_setting_part_id( ui_folder )
	
	local	ui_icon = "mods/Mina-Cosmetics/files/ui_gfx/" .. ui_folder .. "/" .. ui_part .. ".png"
	GuiImage( gui, im_id, setting.x_offset, setting.y_offset, ui_icon, 1, setting.scale, 0 )
end

function mod_ui_icon2( mod_id, gui, in_main_menu, im_id, setting )
	local ui_folder = setting.ui_folder
	local ui_subfolder = get_setting_part_id( setting.ui_subfolder )
	local ui_part = get_setting_part_id( ui_folder )
	
	local	ui_icon = "mods/Mina-Cosmetics/files/ui_gfx/" .. ui_folder .. "/" .. ui_subfolder .. "/" .. ui_part .. ".png"
	GuiImage( gui, im_id, setting.x_offset, setting.y_offset, ui_icon, 1, setting.scale, 0 )
end

------------------------------------------------------------------------------------------------
--                         					     SETTINGS                                             --
------------------------------------------------------------------------------------------------

mod_settings_version = 1 -- This is a magic global that can be used to migrate settings to new mod versions. call mod_settings_get_version() before mod_settings_update() to get the old value. 
mod_settings = 
{
	{
		category_id = "functional",
		ui_name = "",
		foldable = false,
		_folded = true,
		settings = {
			{
				id = "randomized",
				ui_name = "Randomized",
				value_default = false,
        ui_fn = mod_setting_bool,
				scope = MOD_SETTING_SCOPE_RUNTIME,
			},
      {
        not_setting = true,
        ui_fn = mod_setting_vertical_spacing,
      },
			{
				image_filename = "mods/Mina-Cosmetics/files/ui_gfx/player_box.png",
				x_offset = 0,
				y_offset = 0,
				scale = 1,
				ui_fn = mod_ui_image,
			},
			{
				ui_folder = "cape_color",
				x_offset = 2,
				y_offset = -39,
				scale = 2,
				ui_fn = mod_ui_icon,
			},
			{
				ui_folder = "skin_type",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
				ui_fn = mod_ui_icon,
			},
			{
				ui_folder = "outfit_type",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
				ui_fn = mod_ui_icon,
			},
			{
				ui_folder = "helmet_type",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
        ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
          if ModSettingGetNextValue( mod_id .. ".helmet_type" ) > 0 then
            mod_ui_icon(mod_id, gui, in_main_menu, im_id, setting)
          end
        end,
			},
			{
				ui_folder = "hair_type",
				ui_subfolder  = "hair_color",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
        ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
          if ModSettingGetNextValue( mod_id .. ".helmet_type" ) == 0 then
            mod_ui_icon2(mod_id, gui, in_main_menu, im_id, setting)
          end
        end,
			},
			{
				ui_folder = "amulet_type",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
				ui_fn = mod_ui_icon,
			},
			{
				ui_folder = "hat_type",
				x_offset = 2,
				y_offset = -38,
				scale = 2,
				ui_fn = mod_ui_icon,
			},
		},	
	},		
	{
		category_id = "head",
		ui_name = "Head",
		settings = {
      {
        id = "helmet_type",
        ui_name = "Helmet Type",
        value_default = 0,
        value_min = 0,
        value_max = 38,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
      {
        id = "hair_type",
        ui_name = "Hair Type",
        value_default = 0,
        value_min = 0,
        value_max = 19,
        ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
          if ModSettingGetNextValue( mod_id .. ".helmet_type" ) == 0 then
            mod_setting_slider(mod_id, gui, in_main_menu, im_id, setting)
					else
            mod_setting_disabled_spacing(mod_id, gui, in_main_menu, im_id, setting)
          end
        end,
        scope = MOD_SETTING_SCOPE_RUNTIME
      },
      {
        id = "hair_color",
        ui_name = "Hair Color",
        value_default = 1,
        value_min = 1,
        value_max = 6,
        ui_fn = function(mod_id, gui, in_main_menu, im_id, setting)
					if ModSettingGetNextValue( mod_id .. ".hair_type" ) == 0 then
            mod_setting_disabled_spacing(mod_id, gui, in_main_menu, im_id, setting)
          elseif ModSettingGetNextValue( mod_id .. ".helmet_type" ) == 0 then
            mod_setting_slider(mod_id, gui, in_main_menu, im_id, setting)
					else
            mod_setting_disabled_spacing(mod_id, gui, in_main_menu, im_id, setting)
          end
        end,
        scope = MOD_SETTING_SCOPE_RUNTIME
      },
		},
	},		
	{
		category_id = "body",
		ui_name = "Body",
		settings = {
      {
        id = "skin_type",
        ui_name = "Skin Type",
        value_default = 1,
        value_min = 1,
        value_max = 20,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
      {
        id = "outfit_type",
        ui_name = "Outfit Type",
        value_default = 0,
        value_min = 0,
        value_max = 37,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
		},
	},		
	{
		category_id = "accessories",
		ui_name = "Accessories",
		settings = {
      {
        id = "hat_type",
        ui_name = "Hat Type",
        value_default = 0,
        value_min = 0,
        value_max = 11,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
      {
        id = "amulet_type",
        ui_name = "Amulet Type",
        value_default = 0,
        value_min = 0,
        value_max = 16,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
      {
        id = "cape_color",
        ui_name = "Cape Color",
        value_default = 0,
        value_min = 0,
        value_max = 14,
        ui_fn = mod_setting_slider,
        scope = MOD_SETTING_SCOPE_RUNTIME,
      },
		},
	},
}



function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id )
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end
