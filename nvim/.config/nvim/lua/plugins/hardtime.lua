return {
  "m4xshen/hardtime.nvim",
  lazy = false,
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disabled_keys = {
      ["Up"] = false,
      ["Left"] = false,
      ["Right"] = false,
      ["Down"] = false,
    },
    disable_mouse = false,
    restriction_mode = "hint",
    enabled = false,
  },
}
