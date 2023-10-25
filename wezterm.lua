-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.front_end = "OpenGL"
config.font = wezterm.font("Berkeley Mono")
config.font_size = 14.0
config.window_padding = {
	left = 0,
	right = 0,
	top = 3,
	bottom = 0,
}

local palette = {
	base = "#191724",
	overlay = "#26233a",
	muted = "#6e6a86",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_high = "#524f67",
}

local active_tab = {
	bg_color = palette.overlay,
	fg_color = palette.text,
}

local inactive_tab = {
	bg_color = palette.base,
	fg_color = palette.muted,
}

config.colors = {
	foreground = palette.text,
	background = palette.base,
	cursor_bg = palette.highlight_high,
	cursor_border = palette.highlight_high,
	cursor_fg = palette.text,
	selection_bg = "#2a283e",
	selection_fg = palette.text,

	ansi = {
		palette.overlay,
		palette.love,
		palette.pine,
		palette.gold,
		palette.foam,
		palette.iris,
		palette.rose,
		palette.text,
	},

	brights = {
		palette.muted,
		palette.love,
		palette.pine,
		palette.gold,
		palette.foam,
		palette.iris,
		palette.rose,
		palette.text,
	},

	tab_bar = {
		background = palette.base,
		active_tab = active_tab,
		inactive_tab = inactive_tab,
		inactive_tab_hover = active_tab,
		new_tab = inactive_tab,
		new_tab_hover = active_tab,
		inactive_tab_edge = palette.muted, -- (Fancy tab bar only)
	},
}
config.window_frame = {
	active_titlebar_bg = palette.base,
	inactive_titlebar_bg = palette.base,
}

return config
