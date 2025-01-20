return {
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

  { "ellisonleao/gruvbox.nvim" },

  { "nxstynate/oneDarkPro.nvim" },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  {
    "navarasu/onedark.nvim",
    style = "darker",
  },

  -- Configure LazyVim -- Elige el color

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka-night",
    },
  },
}
