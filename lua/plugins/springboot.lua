return {
  -- Plugin para funcionalidades específicas de Spring Boot (repositorio correcto)
  {
    "elmcgill/springboot-nvim", -- ← Este es el repositorio correcto
    dependencies = {
      "neovim/nvim-lspconfig", -- Requerido
      "mfussenegger/nvim-jdtls", -- Requerido para Java LSP
      "nvim-lua/plenary.nvim", -- Utilidad
    },
    config = function()
      local springboot = require("springboot-nvim")

      -- Configurar los keymaps
      vim.keymap.set("n", "<leader>sr", springboot.boot_run, { desc = "Spring Boot Run Project" })
      vim.keymap.set("n", "<leader>sc", springboot.generate_class, { desc = "Java Create Class" })
      vim.keymap.set("n", "<leader>si", springboot.generate_interface, { desc = "Java Create Interface" })
      vim.keymap.set("n", "<leader>se", springboot.generate_enum, { desc = "Java Create Enum" })

      -- Configuración del plugin
      springboot.setup({})
    end,
  },

  -- Configuración mejorada para jdtls (opcional pero recomendada)
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          signatureHelp = { enabled = true },
          contentProvider = { preferred = "fernflower" },
          completion = {
            favoriteStaticMembers = {
              "org.hamcrest.MatcherAssert.assertThat",
              "org.hamcrest.Matchers.*",
              "org.junit.jupiter.api.Assertions.*",
              "org.mockito.Mockito.*",
              "org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*",
              "org.springframework.test.web.servlet.result.MockMvcResultMatchers.*",
            },
          },
          sources = {
            organizeImports = {
              starThreshold = 9999,
              staticStarThreshold = 9999,
            },
          },
        },
      },
    },
  },
}
