-- lua/plugins/ai/gemini.lua
--
-- Configuración para gemini-cli.nvim
-- URL: https://github.com/marcinjahn/gemini-cli.nvim

return {
  "marcinjahn/gemini-cli.nvim",
  -- Carga el plugin cuando se ejecute el comando :Gemini
  cmd = "Gemini",
  -- Atajos de teclado
  keys = {
    { "<leader>ag", "<cmd>Gemini toggle<cr>", desc = "Alternar Gemini CLI" },
    { "<leader>ah", "<cmd>Gemini ask<cr>", desc = "Preguntar a Gemini", mode = { "n", "v" } },
    { "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Añadir archivo a Gemini" },
  },
  -- Dependencias necesarias
  dependencies = {
    "folke/snacks.nvim", -- Requerido para la interfaz de usuario
  },
  -- Opciones de configuración del plugin
  opts = {
    -- Comando para ejecutar el CLI de Gemini. Asegúrate de que 'gemini' esté en tu PATH.
    gemini_cmd = "gemini",
    -- Recarga automáticamente los archivos que han sido modificados
    auto_reload = true,
  },
  -- Función de configuración que se ejecuta al cargar el plugin
  config = function(_, opts)
    require("gemini_cli").setup(opts)
  end,
}