return {
  {
    "dense-analysis/ale",
    init = function()
      vim.g.ale_completion_enabled = 1
      vim.opt.omnifunc = "ale#completion#OmniFunc"

      vim.g.ale_linters = {
        typescript = { "eslint", "tsserver" },
        typescriptreact = { "eslint", "tsserver" },
        lua = { "lua-language-server" },
      }
      vim.g.ale_fixers = {
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        lua = { "stylua" },
      }

      vim.g.ale_fix_on_save = 1
      vim.g.le_warn_about_trailing_whitespace = 0
      vim.g.ale_linters_explicit = 1
      vim.g.ale_use_neovim_diagnostics = 1
      vim.g.ale_set_balloons = 1
      vim.g.ale_floating_preview = 1
      vim.g.ale_hover_cursor = 0
      vim.g.ale_echo_cursor = 0

      local map = vim.keymap.set
      map("n", "gd", "<cmd>ALEGoToDefinition<CR>", { silent = true })
      map("n", "gr", "<cmd>ALEFindReferences<CR>", { silent = true })
      map("n", "[d", "<cmd>ALEPreviousWrap<CR>", { silent = true })
      map("n", "]d", "<cmd>ALENextWrap<CR>", { silent = true })
      map({ "n", "v" }, "<leader>ar", "<cmd>ALERename<CR>", { silent = true })
      map({ "n", "v" }, "<leader>ac", ":ALECodeAction<CR>", { silent = true, nowait = true })
      map("n", "K", "<cmd>ALEHover<CR>", { silent = true })
      map("i", "<C-space>", "<Plug>(ale_complete)", { silent = true })
      map("n", "<leader>aq", "<cmd>ALEPopulateQuickfix<CR>", { silent = true })
    end,
  },
}
