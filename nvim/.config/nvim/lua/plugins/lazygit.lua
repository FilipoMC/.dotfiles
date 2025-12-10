return {
  "kdheepak/lazygit.nvim",
  event = "VeryLazy",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>fl", "<cmd>LazyGit<cr>", desc = "LazyGit" },
  },
}
