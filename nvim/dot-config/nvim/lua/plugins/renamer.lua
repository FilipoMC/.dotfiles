return {
  "filipdutescu/renamer.nvim",
  event = "VeryLazy",
  config = function()
    require("renamer").setup()
  end,
}
