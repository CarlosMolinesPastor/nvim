-- lua/plugins/ai/ollama.lua
--
-- Configuración para ollama.nvim
-- URL: https://github.com/nomnivore/ollama.nvim

return {
  "nomnivore/ollama.nvim",
  -- Dependencias necesarias
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- Comandos que expone el plugin para carga diferida (lazy-loading)
  cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
  -- Atajos de teclado
  keys = {
    {
      "<leader>ao",
      ":<c-u>lua require('ollama').prompt()<cr>",
      desc = "Prompt a Ollama",
      mode = { "n", "v" },
    },
    {
      "<leader>aG",
      ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
      desc = "Ollama: Generar Código",
      mode = { "n", "v" },
    },
  },
  -- Opciones de configuración del plugin
  opts = {
    -- Modelo por defecto a utilizar
    model = "qwen2.5-coder:1.b",
    -- URL del servidor de Ollama
    url = "http://127.0.0.1:11434",
    -- Configuración para servir modelos de Ollama directamente desde Neovim
    serve = {
      on_start = false, -- No iniciar el servidor automáticamente
      command = "ollama",
      args = { "serve" },
      stop_command = "pkill",
      stop_args = { "-SIGTERM", "ollama" },
    },
    -- Prompts personalizados
    prompts = {
      Generate_Code = {
        prompt = "Generate code for the following request: $input",
        input_label = "> ",
        model = "qwen2.5-coder:1.5b",
        action = "display", -- 'display', 'replace', 'append', 'insert'
      },
    },
  },
}