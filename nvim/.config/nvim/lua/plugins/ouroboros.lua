return {
  "jakemason/ouroboros.nvim",
  keys = {
    {
      "<leader>h",
      function()
        require("ouroboros").switch()
      end,
      desc = "Switch between header and impl",
    },
  },
}
