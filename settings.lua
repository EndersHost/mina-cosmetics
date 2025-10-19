dofile("data/scripts/lib/mod_settings.lua") -- see this file for documentation on some of the features.
dofile_once( "mods/Mina-Cosmetics/files/scripts/player_parts_list.lua" )

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
