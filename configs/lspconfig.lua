local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require "lspconfig/util"

local lspconfig = require "lspconfig"

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://mason-registry.dev/registry/list
local server_list = {
  {
    name = "jsonls",
    binary_list = {"json-lsp"},
    setup = {}
  },
  {
    name = "vimls",
    binary_list = {"vim-language-server"},
    setup = {}
  },
  {
    name = "html",
    binary_list = {"html-lsp"},
    setup = {}
  },
  {
    name = "cssls",
    binary_list = {"css-lsp"},
    setup = {}
  },
  {
    name = "rust_analyzer",
    binary_list = {"rust-analyzer"},
    setup = {
      filetypes = {"rust"},
      root_dir = util.root_pattern("Cargo.toml"),
      settings = {
        ["rust_analyzer"] = {
          cargo = {
            allFeatures = true,
          }
        }
      }
    }
  },
  {
    name = "tsserver",
    binary_list = {"typescript-language-server"},
    setup = {}
  },
}

for _, lsp in ipairs(server_list) do
  lspconfig[lsp.name].setup(
    vim.tbl_deep_extend(
      "force",
      {
        on_attach = on_attach,
        capabilities = capabilities,
      },
      lsp.setup
    )
  )
end

local binary_list = {}

for _, server in ipairs(server_list) do
  for _, binary in ipairs(server.binary_list) do
    table.insert(binary_list, binary)
  end
end

return {
  server_list = server_list,
  concatted_binary_list = binary_list
}
