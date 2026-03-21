return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          settings = {
            java = {
              workspace = {
                directory = os.getenv("HOME") .. "/.cache/jdtls/workspace-karlinux",
              },
              configuration = {
                updateBuildConfiguration = "interactive",
              },
              -- DESHABILITAR la detección de rutas de fuentes que causa el error
              sources = {
                organizeImports = {
                  starThreshold = 9999,
                  staticStarThreshold = 9999,
                },
                -- No intentar cargar fuentes automáticamente
                downloadSources = false,
              },
              -- Deshabilitar referencias que pueden causar el error
              references = {
                includeDecompiledSources = false,
              },
              -- No buscar implementaciones automáticamente
              implementations = {
                codeLens = {
                  enabled = false,
                },
              },
            },
          },
        },
      },
    },
  },
}
