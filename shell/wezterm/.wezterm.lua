local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("update-right-status", function(window)
	window:set_right_status(window:active_workspace())
end)

-- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():toggle_fullscreen()
-- end)

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
	-- default_prog = { "tmux", "new-session", "-A", "-s", "Main" },
	enable_tab_bar = false,
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "DemiBold" }),
	font_size = 14.0,
	line_height = 1.0,
	use_fancy_tab_bar = false,
	use_resize_increments = true,
	window_background_opacity = 1.0,
	window_padding = { left = 8, right = 5, top = 8, bottom = 8 },
}

return config
