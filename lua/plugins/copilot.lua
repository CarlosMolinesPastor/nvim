-- lua/plugins/ai/copilot.lua
--
-- Configuración para copilot.lua
-- URL: https://github.com/zbirenbaum/copilot.lua

return {
  "zbirenbaum/copilot.lua",
  -- Carga diferida por comando y evento de inserción de texto
  cmd = "Copilot",
  event = "InsertEnter",
  -- Opciones de configuración
  opts = {
    panel = {
      enabled = true,
      auto_refresh = true,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<CR>",
        refresh = "gr",
        open = "<M-CR>",
      },
      layout = {
        position = "bottom", -- "bottom", "right"
        ratio = 0.4,
      },
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<M-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<M-e>",
      },
    },
    filetypes = {
      yaml = false,
      markdown = false,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ["."] = false,
    },
    copilot_node_command = "node", -- Comando para ejecutar Node.js
    server_opts_override = {},
  },
}