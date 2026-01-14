return {
  "willothy/moveline.nvim",
  build = "make",
  keys = {
    {
      "<M-k>",
      function()
        require("moveline").up()
      end,
      desc = "Move line up",
    },
    {
      "<M-j>",
      function()
        require("moveline").down()
      end,
      desc = "Move line down",
    },
    {
      "<M-k>",
      function()
        require("moveline").block_up()
      end,
      mode = { "v" },
      desc = "Move block up",
    },
    {
      "<M-j>",
      function()
        require("moveline").block_down()
      end,
      mode = { "v" },
      desc = "Move block down",
    },
  },
}
