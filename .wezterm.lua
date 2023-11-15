local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font_with_fallback {
    '等距更纱黑体 SC',
    'JetBrains Mono',
    'Consolas',
}

config.font_size = 10.5
config.color_scheme = 'BlueDolphin'
-- config.use_fancy_tab_bar = true
-- 眼不见为净，只开一个shell时隐藏tab bar
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.6
-- 将tab bar放到标题栏，但是wezterm的tab bar太丑了
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.max_fps = 120
-- config.default_cursor_style = 'SteadyUnderline'
-- 标题栏亚克力效果
config.win32_system_backdrop = "Acrylic"
config.default_prog = { 'pwsh.exe' }

return config
