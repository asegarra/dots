-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font { family = 'Hasklug Nerd Font', weight = 'Medium' }
config.font_size = 10.0
config.freetype_load_flags = 'DEFAULT'
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = 'Catppuccin Frappe'
config.window_frame = {
  font = wezterm.font { family = 'Cantarell', weight = 'Bold' },
  font_size = 10.0,
}

return config
