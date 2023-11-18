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
      "pylizer"
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
