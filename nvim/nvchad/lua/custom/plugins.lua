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
  }
}
return plugins
