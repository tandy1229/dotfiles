local wezterm = require 'wezterm'

--- @class config
local config = wezterm.config_builder and wezterm.config_builder() or {}

-- config.color_scheme = 'Tokyo Night Moon'
local function scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    -- Dark theme
    return "Tokyo Night Moon"
  else
    -- Light theme
    return "Dracula"
  end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

config.font = wezterm.font_with_fallback {
  'JetBrainsMono Nerd Font',
  'Microsoft YaHei',
  'PingFang',
  'Noto Color Emoji',
}

-- config.font_rules =
-- {
--   { intensity = 'Bold', italic = false, font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'ExtraBold' }) },
--   {
--     intensity = 'Bold',
--     italic = true,
--     font = wezterm.font('JetBrainsMono Nerd Font',
--       { style = 'Italic', weight = 'ExtraBold' })
--   },
-- }

config.harfbuzz_features = { 'zero' }

config.font_size = 18

config.hide_tab_bar_if_only_one_tab = true

return config
