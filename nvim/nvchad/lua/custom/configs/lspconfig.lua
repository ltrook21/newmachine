local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"


lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
})

lspconfig.marksman.setup({
  cmd = { "marksman", "server" },
  filetypes = { "markdown", "markdown.mdx" },
  root_dir = util.root_pattern(".git", ".marksman.toml"),
  single_file_support = true,
})


lspconfig.pylyzer.setup({
  cmd = { "pylyzer", "--server" },
  filetypes = {"python"},
  settings = {
    python = {
      checkOnType = false,
      diagnostics = true,
      inlayHints = true,
      smartCompletion = true,
    }
  },
  single_file_support = true,
})

-- cmd to install LSP: npm i -g vscode-langservers-extracted 
lspconfig.jsonls.setup({
  cmd = { "vscode-json-language-server", "--stdio" },
  filetypes = {"json", "jsonc"},
  init_options = {provideFormatter = true},
  root_dir = util.find_git_ancestor,
  single_file_support = true,
})

-- cmd to install LSP: yarn global add yaml-language-server 
lspconfig.yamlls.setup({
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = {"yaml", "yaml.docker-compose"},
  root_dir = util.find_git_ancestor,
  settings = {
    redhat = {
      telemetry = {
        enabled = false
      }
    }
  },
  single_file_support = true
})
