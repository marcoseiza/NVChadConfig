---@type MappingsTable
local M = {}

M.disable = {
  n = {
    -- ["<leader>n"] = { "" },
    -- ["<leader>h"] = { "" },
    -- ["<leader>v"] = { "" }
  }
}

M.general = {
  n = {
    ["<leader>Nc"] = { "<cmd> edit /Users/marcos/.config/nvim/lua/custom/chadrc.lua<CR>" , "Open nvchad config" },
    ["<leader>Nv"] = { "<cmd> edit /Users/marcos/.config/nvim/lua/custom/init.lua<CR>" , "Open nvim config" },
    ["<leader>Np"] = { "<cmd> edit /Users/marcos/.config/nvim/lua/custom/plugins/init.lua<CR>" , "Open plugins" },
    ["<leader>Nm"] = { "<cmd> edit /Users/marcos/.config/nvim/lua/custom/mappings.lua<CR>" , "Open mappings" },
    ["<leader>v"] = { "<cmd> vsp<CR>", "Vertical split" },
    ["<leader>h"] = { "<cmd> sp<CR>", "Horizontal split" },
    ["<leader>wx"] = { "<C-w>q", "Close Window"},
    ["<leader>s"] = { "<cmd> w<CR>", "Save" },
    ["<leader>q"] = { "<cmd> q<CR>", "Quit" },
    ["<leader>Q"] = { "<cmd> qa<CR>", "Quit all" }
  }
}

M.lspconfig = {
  n = {
    ["q"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
  }
}

return M
