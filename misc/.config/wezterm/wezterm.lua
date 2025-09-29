local wezterm = require("wezterm")

-- custom functions to adjust window bg opacity --
wezterm.on("decrease_bg_opacity", function(window, _)
	local overrides = window:get_config_overrides() or {}
	local background_opacity = window:effective_config().window_background_opacity
	overrides.window_background_opacity = background_opacity - 0.1
	window:set_config_overrides(overrides)
end)

wezterm.on("increase_bg_opacity", function(window, _)
	local overrides = window:get_config_overrides() or {}
	local background_opacity = window:effective_config().window_background_opacity
	overrides.window_background_opacity = background_opacity + 0.1
	window:set_config_overrides(overrides)
end)

local config = {}

-- sane defaults --
config.disable_default_key_bindings = true
config.color_scheme = "3024 Night"
config.enable_tab_bar = false
config.font = wezterm.font_with_fallback({ "Iosevka Nerd Font Mono", "TX02 Nerd Font", "TX-02" })
config.font_size = 11
config.line_height = 1
config.window_background_opacity = 0.6
config.window_padding = {
	left = 20,
	right = 20,
	top = 10,
	bottom = 1,
}
-- some additional key bindings --
config.keys = {
	{
		key = "c",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "F1",
		mods = "CTRL|SHIFT",
		action = wezterm.action.EmitEvent("decrease_bg_opacity"),
	},
	{
		key = "F2",
		mods = "CTRL|SHIFT",
		action = wezterm.action.EmitEvent("increase_bg_opacity"),
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "R",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ReloadConfiguration and wezterm.action.ResetFontSize,
	},
}

return config
