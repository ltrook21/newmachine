local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
      "rust-analyzer",
      "gopls",
      "yaml-configuration-server",
      "dockerfile-configuration-server",
      "docker-compose-language-server",
      "pylizer",
      "jsonls",
      },
    },
    {
      "rust-lang/rust.vim",
      ft = "rust",
      init = function ()
        vim.g.rustfmt_autosave = 1
      end
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
    },
    {
      require'lspconfig'.marksman.setup{}
    },
  },
  {
    "ellisonleao/glow.nvim", config = true, cmd = "Glow"
  },
  {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = vim.log.levels.ERROR,
      auto_session_root_dir = '~/.config/nvim/session',
      auto_session_allowed_dirs = '~/.config/nvim/session',
      auto_session_enable_last_session = true,
      auto_session_enabled = true,
      auto_session_create_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_session_name = 'Session.vim', -- Set the session file name (optional)

      -- The following are already the default values, no need to provide them if these are already the settings you want.
      session_lens = {
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    }
  end
  },
  {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {
      enabled = true,
      execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
      events = {"InsertLeave", "TextChanged"},
      conditions = {
        exists = true,
        filetype_is_not = {},
        modifiable = true
      },
      write_all_buffers = false,
      on_off_commands = true,
      clean_command_line_interval = 0,
      debounce_delay = 135
    }
  end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
       -- high level
        "python",
       -- low level
        "c",
        "zig",
        "rust",
        "go"
      },
      },
  },
}
return plugins
