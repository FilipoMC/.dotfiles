return {
  "m4xshen/hardtime.nvim",
  lazy = false,
  dependencies = { "MunifTanjim/nui.nvim" },
  keys = {
    { "<leader>co", "<cmd>Hardtime toggle<cr>", desc = "Toggle hardtime" },
  },
  opts = {
    disable_mouse = false,
    -- restriction_mode = "hint",
    enabled = true,
  },
}
