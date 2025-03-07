---@type ChadrcConfig
local M = {}

M.ui = { theme = 'vscode_dark' }
M.plugins = "custom.plugins"

vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>rs", "<cmd>SupermavenToggle<CR>", {desc = "Toggle Supermaven"})
vim.keymap.set("n", "<leader>wt", ":wa | :!tsc<CR><CR>", {desc = "TypeScript: Compile Current Project"})

return M
