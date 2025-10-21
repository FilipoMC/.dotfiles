return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    keys[#keys + 1] = { "<C-k>", mode = { "i" }, false }
    -- add a keymap
    keys[#keys + 1] = {
      "<C-a>",
      mode = { "i" },
      function()
        vim.lsp.buf.signature_help()
      end,
    }
  end,
}
