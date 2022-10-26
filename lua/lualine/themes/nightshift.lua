-- stylua: ignore start
local colors = {
  -- blue        = hsl("#5FAFD7"),
  -- teal        = hsl("#72AEB3"),
  -- green       = hsl("#00875F"),
  -- darkgreen   = hsl("#5FAF5F"),
  -- blueviolet  = hsl("#483D53"),
  -- purple      = hsl("#A274D1"),
  -- magenta     = hsl("#D75FAF"),
  -- pink        = hsl("#2E2323"),
  -- lightorange = hsl("#413932"),
  -- darkorange  = hsl("#AF5F00"),
  -- bg          = hsl("#2B2B2B"),
  -- grey        = hsl("#808080"),
  -- lightgrey   = hsl("#787878"),
  -- silver      = hsl("#3A3A3A"),
  -- git_bg      = hsl("#303030"),
  -- git_fg      = hsl("#EBEAE2"),

  blue        = "#5FAFD7",
  teal        = "#72AEB3",
  green       = "#00875F",
  darkgreen   = "#5FAF5F",
  blueviolet  = "#483D53",
  purple      = "#A274D1",
  magenta     = "#D75FAF",
  pink        = "#2E2323",
  lightorange = "#413932",
  darkorange  = "#AF5F00",
  bg          = "#2B2B2B",
  grey        = "#808080",
  lightgrey   = "#787878",
  silver      = "#3A3A3A",
  git_bg      = "#303030",
  git_fg      = "#EBEAE2",


  --color01 = "#ced2e9", -- hsl("#ced2e9")
  --color02 = "#bfbfdf", -- hsl("#bfbfdf")
  --color03 = "#b9bfdf", -- hsl("#b9bfdf")
  --color04 = "#9696ca", -- hsl("#9696ca")
  --color05 = "#8791c9", -- hsl("#8791c9")
  --color06 = "#5d6cb6", -- hsl("#5d6cb6")
  --color07 = "#5664b3", -- hsl("#5664b3")
  --color08 = "#46549b", -- hsl("#46549b")
  --color10 = "#364178", -- hsl("#364178")
  --color09 = "#46468b", -- hsl("#46468b")
  --color11 = "#232a4d", -- hsl("#232a4d")

  ---- accent colors
  --accent_red    = "#ffaaaa", -- hsl("#ffaaaa")
  --accent_blue   = "#99ccff", -- hsl("#99ccff")
  --accent_green  = "#99dddd", -- hsl("#99dddd")
  --accent_yellow = "#ffeedd", -- hsl("#ffeedd")

  ---- taken from folke/tokyonight
  --red    = "#af5f87", --  hsl("#af5f87")
  --blue   = "#00afff", --  hsl("#00afff")
  --yellow = "#e0af68", --  hsl("#e0af68")
  --orange = "#ff9e64", --  hsl("#ff9e64")
  --green  = "#5fd75f", --  hsl("#5fd75f")
}

--local nightshift = {}
--
--nightshift.inactive = {
--  a = { fg = colors.lightgrey, bg = colors.silver },
--  b = { fg = colors.lightgrey, bg = colors.silver },
--  c = { fg = colors.lightgrey, bg = colors.silver },
--  x = { fg = colors.lightgrey, bg = colors.silver },
--  y = { fg = colors.lightgrey, bg = colors.silver },
--  z = { fg = colors.lightgrey, bg = colors.silver },
--}
--nightshift.normal = {
--  a = { fg = colors.teal,   bg = colors.silver },
--  b = { fg = colors.git_fg, bg = colors.git_bg }, -- only for GIT
--  c = { fg = colors.teal,   bg = colors.silver },
--  x = { fg = colors.grey,   bg = colors.silver },
--  y = { fg = colors.bg,     bg = colors.blue },
--  z = { fg = colors.bg,     bg = colors.teal },
--}
--nightshift.insert = {
--  a = { fg = colors.darkgreen, bg = colors.silver },
--  c = { fg = colors.darkgreen, bg = colors.silver },
--  x = { fg = colors.grey,      bg = colors.silver },
--  y = { fg = colors.bg,        bg = colors.green },
--  z = { fg = colors.bg,        bg = colors.darkgreen },
--}
--nightshift.visual = {
--  a = { fg = colors.bg,   bg = colors.purple },
--  c = { fg = colors.grey, bg = colors.blueviolet },
--  x = { fg = colors.grey, bg = colors.silver },
--  y = { fg = colors.grey, bg = colors.blueviolet },
--  z = { fg = colors.bg,   bg = colors.purple },
--}
--nightshift.replace = {
--  a = { fg = colors.bg,   bg = colors.magenta },
--  c = { fg = colors.grey, bg = colors.pink },
--  x = { fg = colors.grey, bg = colors.silver },
--  y = { fg = colors.grey, bg = colors.pink },
--  z = { fg = colors.bg,   bg = colors.magenta },
--}
--nightshift.command = {
--  a = { bg = colors.darkorange, fg = colors.bg },
--  c = { fg = colors.grey,       bg = colors.lightorange },
--  x = { fg = colors.grey,       bg = colors.silver },
--  y = { fg = colors.grey,       bg = colors.lightorange },
--  z = { fg = colors.bg,         bg = colors.darkorange },
--}
--
---- stylua: ignore end
--
--if vim.g.nightshift_lualine_bold == nil then
--  vim.g.nightshift_lualine_bold = true
--end
--
--if vim.g.nightshift_lualine_bold then
--  for _, mode in pairs(nightshift) do
--    mode.a.gui = "bold"
--  end
--end
--
--return nightshift


local colors = {
  color2 = '#161821', -- hsl('#161821')
  color4 = '#6b7089', -- hsl('#6b7089')

  --
  color3 = '#b4be82', -- hsl('#b4be82')
  color5 = '#2e313f', -- hsl('#2e313f')

  color10 = '#0f1117', -- hsl('#0f1117')
  color12 = '#818596', -- hsl('#818596')

  color8 = '#e2a478', -- hsl('#e2a478')

  color9 = '#3e445e', -- hsl('#3e445e')

  color11 = '#17171b', -- hsl('#17171b')

  color15 = '#84a0c6', -- hsl('#84a0c6')
}

return {
  inactive = {
    c = { fg = colors.color9, bg = colors.color10 },
    a = { fg = colors.color9, bg = colors.color10, gui = 'bold' },
    b = { fg = colors.color9, bg = colors.color10 },
  },
  normal = {
    c = { fg = colors.color9, bg = colors.color10 },
    a = { fg = colors.color11, bg = colors.color12, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  insert = {
    a = { fg = colors.color2, bg = colors.color15, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  visual = {
    a = { fg = colors.color2, bg = colors.color3, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color8, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
}
