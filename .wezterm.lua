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

config.font_size = 10
config.color_scheme = 'GruvboxLight'
-- config.color_scheme = 'GruvboxDark'
config.use_fancy_tab_bar = false
-- 眼不见为净，只开一个shell时隐藏tab bar
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_opacity = 0.5
-- 将tab bar放到标题栏，但是wezterm的tab bar太丑了
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.max_fps = 120
-- config.default_cursor_style = 'SteadyUnderline'
-- 标题栏亚克力效果
-- config.win32_system_backdrop = "Acrylic"
config.force_reverse_video_cursor = true
config.default_prog = { 'pwsh.exe' }

return config
