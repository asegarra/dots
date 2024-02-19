-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font('JetBrainsMono NF Medium')
config.font_size = 10.0
--config.freetype_load_flags = 'DEFAULT'
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.color_scheme = 'Catppuccin Frappe'
--config.color_scheme = 'Tokyo Night Storm'
return config
