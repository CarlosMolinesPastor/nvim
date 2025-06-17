return {
  "CRAG666/code_runner.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("code_runner").setup({
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      },
    })

    -- Mapea F5 para ejecutar el archivo actual
    vim.keymap.set("n", "<F5>", ":RunCode<CR>", { noremap = true, silent = true, desc = "Run code with CodeRunner" })
  end,
}
