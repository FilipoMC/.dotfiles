require("git"):setup({
	order = 1500,
})

require("directory-sorting").setup()

require("yafg"):setup({
	editor = "nvim",
	file_arg_format = "+{row} {file}",
})
