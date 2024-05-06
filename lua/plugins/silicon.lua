return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("silicon").setup({
      -- Configuration here, or leave empty to use defaults
      font = "JetBrainsMono Nerd Font=34; VictorMono NF=34",
    })
  end,
}
