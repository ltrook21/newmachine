---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'yoru',
  theme_toggle = {'bearded-arc', "one_light"},
  transparency = true,
  cmp = {
    icons = true,
  },
  statusline = {
    theme = "default",
    separator_style = "default",
  },
  -- tabufline = {},
  nvdash = {
    load_on_startup = true,
    header = {
      " WELCOME, ROOK "
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  }
}
M.plugins = 'custom.plugins'
return M
