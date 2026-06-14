return {
  "andweeb/presence.nvim",
  cmd = "Presence",
  config = function()
    require("presence").setup({
      main_image = "file",
    })
  end,
}
