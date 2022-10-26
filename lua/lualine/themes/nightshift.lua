-- stylua: ignore start

local colors = {
  white = "#dddddd",
  grey  = "#888888",
  black = "#000000",

  -- slightly darkened accent colors
  green  = "#88cccc",
  blue   = "#88bbee",
  yellow = "#ffeedd",
  red    = "#ee9999",

  dark_blue = "#232a4d",
  mid_blue  = "#232a4d",
}

return {
  --
  -- | A | B | C ------------- X | Y | Z
  --

  inactive = {
    c = { fg = colors.grey, bg = colors.dark_blue },
    a = { fg = colors.white, bg = colors.red, gui = 'bold' },
    b = { fg = colors.white, bg = colors.mid_blue },
  },

  -- grey
  normal = {
    c = { fg = colors.grey, bg = colors.dark_blue },
    a = { fg = colors.black, bg = colors.grey, gui = 'bold' },
    b = { fg = colors.white, bg = colors.mid_blue },
  },

  -- green
  insert = {
    a = { fg = colors.black, bg = colors.green, gui = 'bold' },
    b = { fg = colors.white, bg = colors.mid_blue },
  },

  -- blue
  visual = {
    a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.grey, bg = colors.mid_blue },
  },

  -- orange
  replace = {
    a = { fg = colors.black, bg = colors.red, gui = 'bold' },
    b = { fg = colors.grey, bg = colors.mid_blue },
  },
}
