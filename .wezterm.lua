local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font '等距更纱黑体 SC'
config.font_size = 10.0
config.color_scheme = 'Ciapre'
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_opacity = 0.85
config.default_prog = { 'pwsh.exe' }

return config
