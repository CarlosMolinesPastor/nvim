local function extend_or_override(config, custom, ...)
  if type(custom) == "function" then
    config = custom(config, ...) or config
  elseif custom then
    config = vim.tbl_deep_extend("force", config, custom)
  end
  return config
end

return {
  {
    "mfussenegger/nvim-jdtls",
    lazy = false,
    opts = function(_, opts)
      opts = opts or {}
      local jdtls_path = vim.fn.exepath("jdtls")
      if not jdtls_path or jdtls_path == "" then
        jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls/bin/jdtls"
      end

      local cmd = { jdtls_path }
      local mason_share = vim.fn.stdpath("data") .. "/mason/share/jdtls"
      local lombok_jar = mason_share .. "/lombok.jar"
      if vim.fn.filereadable(lombok_jar) == 1 then
        table.insert(cmd, string.format("--jvm-arg=-javaagent:%s", lombok_jar))
      end

      opts.cmd = cmd
      opts.root_dir = opts.root_dir or function(path)
        return vim.fs.root(path, { ".git", "mvnw", "pom.xml", "build.gradle" })
      end
      opts.project_name = opts.project_name or function(root_dir)
        return root_dir and vim.fs.basename(root_dir)
      end
      opts.jdtls_config_dir = opts.jdtls_config_dir or function(project_name)
        return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/config"
      end
      opts.jdtls_workspace_dir = opts.jdtls_workspace_dir or function(project_name)
        return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"
      end
      opts.full_cmd = opts.full_cmd or function(o)
        local fname = vim.api.nvim_buf_get_name(0)
        local root_dir = o.root_dir(fname)
        local project_name = o.project_name(root_dir)
        local c = vim.deepcopy(o.cmd)
        if project_name then
          vim.list_extend(c, {
            "-configuration",
            o.jdtls_config_dir(project_name),
            "-data",
            o.jdtls_workspace_dir(project_name),
          })
        end
        return c
      end
      opts.settings = opts.settings or {
        java = {
          lombok = {
            enabled = true,
          },
          configuration = {
            updateBuildConfiguration = "interactive",
          },
          sources = {
            organizeImports = {
              starThreshold = 9999,
              staticStarThreshold = 9999,
            },
          },
          project = {
            lombokSupport = {
              enabled = true,
            },
          },
        },
      }

      return opts
    end,
    config = function(_, opts)
      local function attach_jdtls()
        local fname = vim.api.nvim_buf_get_name(0)
        if fname == "" or vim.bo.filetype ~= "java" then
          return
        end
        local config = extend_or_override({
          cmd = opts.full_cmd(opts),
          root_dir = opts.root_dir(fname),
          init_options = {
            bundles = {},
          },
          settings = opts.settings,
        }, opts.jdtls)
        require("jdtls").start_or_attach(config)
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "java" },
        callback = attach_jdtls,
      })
      attach_jdtls()
    end,
  },
}