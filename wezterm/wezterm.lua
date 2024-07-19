local wezterm = require("wezterm")

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

config.font = wezterm.font_with_fallback({
	"Maple Mono",
	"Maple Mono NF",
	"JetBrainsMono Nerd Font",
	-- 'Source Han Serif SC',
	"LGWX WenKai",
	"Source Han Sans SC",
	"Microsoft YaHei",
	"Noto Color Emoji",
})

config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font_with_fallback({
			{ family = "Maple Mono", weight = "ExtraBold" },
			{ family = "Maple Mono NF", weight = "ExtraBold" },
			{ family = "JetBrainsMono Nerd Font", weight = "ExtraBold" },
			{ family = "LGWX WenKai", weight = "Bold" },
			{ family = "Source Han Sans SC", weight = "Bold" },
			-- { family = "Source Han Serif SC",     weight = "Bold" },
			{ family = "Microsoft YaHei", weight = "Bold" },
		}),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font_with_fallback({
			{ family = "Maple Mono", style = "Italic", weight = "ExtraBold" },
			{ family = "Maple Mono NF", style = "Italic", weight = "ExtraBold" },
			{ family = "JetBrainsMono Nerd Font", style = "Italic", weight = "ExtraBold" },
			{ family = "LGWX WenKai", style = "Italic", weight = "Bold" },
			{ family = "Source Han Sans SC", style = "Italic", weight = "Bold" },
			-- { family = "Source Han Serif SC",     style = "Italic", weight = "Bold" },
			{ family = "Microsoft YaHei", style = "Italic", weight = "Bold" },
		}),
	},
}

-- config.harfbuzz_features = { "zero" }

config.font_size = 18

config.hide_tab_bar_if_only_one_tab = true

return config
