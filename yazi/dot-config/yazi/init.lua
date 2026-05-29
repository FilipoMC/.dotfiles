require("gvfs"):setup({
	save_path = os.getenv("HOME") .. "/.local/state/yazi/gvfs.private",
	save_path_automounts = os.getenv("HOME") .. "/.local/state/yazi/gvfs_automounts.private",
})

require("yafg"):setup({
	editor = "nvim",
	file_arg_format = "+{row} {file}",
})
