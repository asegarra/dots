-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font('FiraCode Nerd Font')
config.font_size = 10.0
--config.freetype_load_flags = 'DEFAULT'
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'

config.color_scheme = 'Gruvbox Material (Gogh)'
--config.color_scheme = 'Tokyo Night Storm'
return config
