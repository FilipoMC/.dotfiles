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
