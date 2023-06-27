---@type NvPluginSpec[]
local P = {

  -- LSP (Language Server Protocal)
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
     ensure_installed = (function ()
      local custom_binary_list = require("custom.configs.lspconfig").concatted_binary_list
      return vim.tbl_deep_extend("force", custom_binary_list, {"lua-language-server"})
     end)()
    }
  },

  -- Custom Plugins
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  -- Defualt Plugin config
  {
    "nvim-telescope/telescope.nvim",
    opts = function ()
      local custom_opts = require "custom.configs.telescope"
      local opts = require "plugins.configs.telescope"
      return vim.tbl_deep_extend("force", opts, custom_opts)
    end
  },

  {
    "folke/which-key.nvim",
    config = function (_, opts)
      dofile(vim.g.base46_cache .. "whichkey")
      local wk = require "which-key"
      wk.setup(opts)
      wk.register(require "custom.configs.whichkey")
    end
  }

}

return P
