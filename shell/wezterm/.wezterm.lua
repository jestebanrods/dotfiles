local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("update-right-status", function(window)
	window:set_right_status(window:active_workspace())
end)

local config = {
	colors = {
		cursor_bg = '#bcbcbc',
		cursor_border = '#bcbcbc',
	},
	keys = {
		{
			key = 'n',
			mods = 'SHIFT|CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
	},
	default_prog = { "tmux", "new-session", "-A", "-s", "Main" },
	enable_tab_bar = false,
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "DemiBold" }),
	font_size = 10.0,
	line_height = 1.0,
	use_fancy_tab_bar = false,
	use_resize_increments = true,
	window_background_opacity = 0.9,
	window_padding = { left = 5, right = 2, top = 5, bottom = 2 },
}

return config
