-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

local dap = require("dap")

map("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

map("n", "<S-m>", function()
  vim.diagnostic.open_float()
end)

-- Build & debug
map("n", "<F6>", function()
  vim.cmd("wa")
  require("config.dap").build_and_debug()
end, { noremap = true, silent = true })

-- Standard debugger controls
map("n", "<F5>", dap.continue, { noremap = true, silent = true })
map("n", "<F10>", dap.step_over, { noremap = true, silent = true })
map("n", "<F11>", dap.step_into, { noremap = true, silent = true })
map("n", "<F12>", dap.step_out, { noremap = true, silent = true })

-- map("i", "<C-h>", "<Left>")
-- map("i", "<C-j>", "<Down>")
-- map("i", "<C-k>", "<Up>")
-- map("i", "<C-l>", "<Right>")
