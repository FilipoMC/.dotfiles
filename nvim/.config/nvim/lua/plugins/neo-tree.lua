return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function(file_path)
          -- Automatically close the NeoTree window when a file is opened
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
  },
}
