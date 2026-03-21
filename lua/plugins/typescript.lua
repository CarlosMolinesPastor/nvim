return {
  {
    "jose-elias-alvarez/typescript.nvim",
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
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", 
            { buffer = true, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", 
            { buffer = true, desc = "Rename File" })
        end,
      })
    end,
  },
}
