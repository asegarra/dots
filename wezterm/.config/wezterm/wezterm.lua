-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font { family = 'Hasklug Nerd Font', weight = 'Medium' }
config.font_size = 10.0
config.freetype_load_flags = 'DEFAULT'
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'
config.color_scheme = 'Catppuccin Frappe'

-- config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.integrated_title_button_style = "Gnome"
-- config.integrated_title_buttons = { "Close" }
config.window_frame = {
  font = wezterm.font { family = 'Noto Sans', weight = 'Bold' },
  font_size = 10.0,
}

return config
