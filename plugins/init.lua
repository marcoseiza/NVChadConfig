local P = {

  {
    "nvim-telescope/telescope.nvim",
    opts = function ()
      local custom_opts = require("custom.plugins.configs.telescope")
      local opts = require ("plugins.configs.telescope")
      return vim.tbl_deep_extend("force", opts, custom_opts)
    end
  },

}

return P
