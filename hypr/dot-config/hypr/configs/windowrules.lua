hl.window_rule({
	name = "termfilechooser",
	match = {
		class = "^(termfilechooser|Xdg-desktop-portal-gtk)$",
	},
	float = true,
	size = { "(monitor_w*0.6)", "(monitor_h*0.7)" },
	center = true,
	stay_focused = true,
})

hl.window_rule({
	name = "wallpaper_picker",
	match = {
		class = "^wallpaper_picker$",
	},
	float = true,
	size = { "(monitor_w*0.2)", "(monitor_h*0.3)" },
	center = true,
	stay_focused = true,
	pin = true,
})

hl.window_rule({
	name = "steam",
	match = {
		class = "^steam$",
		title = "negative:^$", -- exclude menubar dropdowns
	},
	float = true,
	center = true,
	size = { "(monitor_w*0.3)", "(monitor_h*0.5)" },
	workspace = "special:s silent",
})

hl.window_rule({
	name = "steam_main_window",
	match = {
		class = "^steam$",
		title = "^Steam$",
	},
	size = { "(monitor_w*0.4)", "(monitor_h*0.6)" },
})

hl.window_rule({
	name = "pypr_calc",
	match = {
		class = "^kitty-calc$",
	},
	rounding = 0,
})
