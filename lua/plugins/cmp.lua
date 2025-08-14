return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji", -- Emojis
    "nomnivore/ollama.nvim", -- Soporte para Ollama
    "tzachar/cmp-ai", -- Fuente de autocompletado para LLMs
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    -- Orden de fuentes de autocompletado (Ollama primero)
    opts.sources = {
      {
        name = "ai", -- Fuente de Ollama
        option = {
          model = "qwen2.5:0.5b",
          server = "http://127.0.0.1:11434",
          max_lines = 10, -- Límite de contexto
          trigger_characters = { ":", ">", "#", "//" }, -- Caracteres activadores
        },
      },
      { name = "nvim_lsp" }, -- Completado del LSP
      { name = "emoji" }, -- Emojis
      { name = "buffer" }, -- Palabras del archivo actual
    }
  end,
}