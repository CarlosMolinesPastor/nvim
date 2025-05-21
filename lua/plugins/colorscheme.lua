return {
  -- Instalacion de solarized osaka theme
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = false,
      }
    end,
  },
  -- Instalacion de github theme
  { "projekt0n/github-nvim-theme" },
  --Instalacion de nightfly theme
  { "bluz71/vim-nightfly-guicolors" },
  -- Instalacion de mejor theme
  { "sainnhe/sonokai" },
  --Instalacion de tokyonight theme
  { "folke/tokyonight.nvim" },
  -- Instalacion de dracula tokyonighteme
  { "Mofiqul/dracula.nvim" },
  -- Instalacion de gruvbox theme
  { "ellisonleao/gruvbox.nvim" },
  -- Instalacion de moonfly theme
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  -- Instalacion de onedark theme
  {
    "navarasu/onedark.nvim",
    style = "darker",
  },

  -- Configure LazyVim -- Elige el color

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
