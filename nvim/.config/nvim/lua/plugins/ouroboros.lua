return {
  "jakemason/ouroboros.nvim",
  keys = {
    {
      "<leader>h",
      function()
        require("ouroboros").switch()
      end,
      desc = "Swich between header and impl",
    },
  },
}
