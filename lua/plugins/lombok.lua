return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      -- Esta configuración se MERGE con la del extra de Java, no la reemplaza
      settings = {
        java = {
          -- Habilitar Lombok explícitamente
          lombok = {
            enabled = true,
          },
          -- Configuración para que jdtls entienda mejor el proyecto
          configuration = {
            updateBuildConfiguration = "interactive",
          },
          -- Para que reconozca las clases generadas por Lombok
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
