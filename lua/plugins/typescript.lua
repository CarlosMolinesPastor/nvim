return {
  {
    "jose-elias-alvarez/typescript.nvim",
    lazy = true, -- Make sure it's lazy
    init = function()
      -- Don't do anything heavy in init
    end,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("typescript").setup({
        server = {
          capabilities = vim.lsp.protocol.make_client_capabilities(),
        },
      })

      -- Keymaps para TypeScript
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
        callback = function()
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = true, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { buffer = true, desc = "Rename File" })
        end,
      })
    end,
  },
}
