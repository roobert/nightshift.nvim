-- stylua: ignore start

local colors = {
  color2 = '#161821', -- hsl('#161821')
  color4 = '#6b7089', -- hsl('#6b7089')

  color3 = '#b4be82', -- hsl('#b4be82')
  color5 = '#2e313f', -- hsl('#2e313f')

  color10 = '#0f1117', -- hsl('#0f1117')
  color12 = '#818596', -- hsl('#818596')

  color8 = '#e2a478', -- hsl('#e2a478')

  color9 = '#3e445e', -- hsl('#3e445e')

  color11 = '#17171b', -- hsl('#17171b')

  color15 = '#84a0c6', -- hsl('#84a0c6')

  -- FIXME
  -- darken these?
  green = "#99dddd",
  blue = "#99ccff",
  yellow = "#ffeedd",
  red = "#ffaaaa",
}

return {
  inactive = {
    c = { fg = colors.color9, bg = colors.color10 },
    a = { fg = colors.color9, bg = colors.red, gui = 'bold' },
    b = { fg = colors.color9, bg = colors.color10 },
  },

  -- grey
  normal = {
    c = { fg = colors.color9, bg = colors.color10 },
    a = { fg = colors.color11, bg = colors.color12, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },

  -- green
  insert = {
    a = { fg = colors.color2, bg = colors.green, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },

  -- blue
  visual = {
    a = { fg = colors.color2, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },

  -- orange
  replace = {
    a = { fg = colors.color2, bg = colors.red, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color5 },
  },
}
