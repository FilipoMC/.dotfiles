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
	name = "launch_steam_in_special",
	match = {
		class = "^steam$",
		title = "negative:^$",
	},
	float = true,
	center = true,
	size = { "(monitor_w*0.4)", "(monitor_h*0.6)" },
	workspace = "special:s silent",
})
