local wezterm = require("wezterm")

wezterm.on("update-right-status", function(window)
	window:set_right_status(window:active_workspace())
end)

local config = {
	-- color_scheme = "nordfox",
	default_prog = { "tmux", "new-session", "-A", "-s", "Main" },
	-- disable_default_key_bindings = true,
	enable_tab_bar = false,
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "DemiBold" }),
	font_size = 10.0,
	line_height = 1.0,
	use_fancy_tab_bar = false,
	use_resize_increments = true,
	window_background_opacity = 1.0,
	window_padding = { left = 1, right = 1, top = 1, bottom = 1 },
}

return config
