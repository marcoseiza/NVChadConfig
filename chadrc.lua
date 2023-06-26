---@type ChadrcConfig
local M = {}

M.ui = {
  transparency = true,
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Open File Explorer", "Spc e  ", "NvimTreeFocus" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
      { "  Configuration", "Spc n c", "edit /Users/marcos/.config/nvim/lua/custom/chadrc.lua" }
    },

  }
}

M.plugins = "custom.plugins"

return M
