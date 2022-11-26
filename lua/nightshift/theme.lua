-- Nightshift - github.com/roobert/nightshift.vim
-- Inspired by tokyonight - github.com/folke/tokyonight.nvim
--
-- Run :Lushify to see the rendered colors
--
-- To print a color:
-- :lua print(string.format("#%6x", vim.api.nvim_get_hl_by_name('Number', {}).foreground))
--
-- Use treesitter-playground and :TSPlaygroundToggle to see the highlight groups applied
-- to the token under the corsor

-- FIXME:
-- diff view
-- markdown
-- hop
-- trouble

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  local bg    = hsl("#1c2240")
  local black = hsl("#111111")
  local white = hsl("#eeeeee")

  -- accent colors for info/warn/error, etc.
  local accent_red       = hsl("#ffb3ba")
  local accent_orange    = hsl("#ffdfba")
  local accent_yellow    = hsl("#ffffba")
  local accent_green     = hsl("#baffc9")
  local accent_turquoise = hsl("#99dddd")
  local accent_blue      = hsl("#bae1ff")
  local accent_purple    = hsl("#afafff")

  -- primary accent color - function names, etc.
  local accent_primary = accent_purple
  local search_highlight = accent_orange

  local hint  = accent_blue
  local info  = accent_green
  local warn  = accent_orange
  local error = accent_red

  -- NOTE: aiming for something like this with relative colors:
  -- local c01 = hsl("#232a4d") -- c01 is the main colour for highlighted/selected stuff
  -- local c02 = hsl("#364178") -- menu sbar/thumb
  -- local c03 = hsl("#3e4b8a") -- include/function, etc.
  -- local c04 = hsl("#46549b") -- comment/keyword

  -- local c05 = hsl("#5664b3") -- 1 - just line number
  -- local c06 = hsl("#6b75bb") -- 2 - field/special
  -- local c07 = hsl("#8185c2") -- 2 - operator/shebang
  -- local c08 = hsl("#9696ca") -- 3 - normal text

  -- local c09 = hsl("#b9bfdf") -- unused
  -- local c10 = hsl("#bfbfdf") -- variable/field/identifier
  -- local c11 = hsl("#d8dbee") -- URIs

  -- FIXME:
  -- adjust all this stuff with .rotate() .(de)saturate() and (ligh|dark)en()

  -- local color_main = hsl("#232a4d") -- c01 is the main colour for highlighted/selected stuff
  local color_main = hsl("#0000ff").rotate(-10).desaturate(75).darken(55)

  local c01 = color_main
  local c02 = c01.lighten(10)
  local c03 = c02.lighten(10)
  local c04 = c03.lighten(10)

  local color_secondary = color_main.lighten(30)

  local c05 = color_secondary
  local c06 = c05.lighten(20)
  local c07 = c06.lighten(10)
  local c08 = c07.lighten(10)

  local color_thirdary = color_secondary.lighten(30)

  local c09 = color_thirdary
  local c10 = c09.lighten(45)
  local c11 = c10.lighten(10)

  local accent_primary = color_main.rotate(10).lighten(75).saturate(90)

  return {
    -- main syntax
    Include { fg = c02 }, -- preprocessor #include
    Comment { fg = c03 }, -- any comment
    Normal { fg = c08, bg = bg }, -- normal text
    String { fg = white }, -- a string constant: "this is a string"

    -- def, etc.
    Keyword { fg = c04 }, --  any other keyword
    sym "@keyword.function" { fg = c03 },
    sym "@field" { fg = c06 },
    sym "@variable" { fg = c10 },
    sym "@constant.builtin" { fg = white },

    -- if, etc.
    Conditional { fg = c03 }, -- if, then, else, endif, switch, etc.
    Statement { fg = c03 }, -- (preferred) any statement
    TSField { fg = c10 }, -- For fields.

    -- specials
    Special { fg = c06 }, -- (preferred) any special symbol
    Operator { fg = c07 }, -- "sizeof", "+", "*", etc.
    Identifier { fg = c10 }, -- (preferred) any variable name

    -- this has to be Normal because there's no way to distinguish it from normal variables
    TSParameter { fg = c08 }, -- For parameters of a function.
    Type { fg = accent_blue }, -- (preferred) int, long, char, etc.

    -- left margin
    LineNr { fg = c05 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = c07 }, -- Like LineNr when 'color11' or 'relativenumber' is set for the cursor line.
    SignColumn { bg = bg }, -- column where |signs| are displayed

    -- window decorations
    IndentBlanklineChar { fg = c03 },
    EndOfBuffer { fg = c04 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    VertSplit { fg = c08 }, -- the column separating vertically split windows, also used by lsp popup outline

    -- menus (inc. completion menu)
    Pmenu { fg = c11, bg = bg }, -- Popup menu: normal item.
    PmenuSel { fg = c11, bg = bg }, -- Popup menu: selected item.
    PmenuSbar { bg = c02 }, -- Popup menu: scrollbar.
    PmenuThumb { bg = c02 }, -- Popup menu: Thumb of the scrollbar.

    -- used by shebang lines
    PreProc { fg = c07 }, -- (preferred) generic Preprocessor
    TSURI { fg = c11 }, -- Any URI like a link or email.

    -- cursor line / visual selection backgrounds
    --Cursor { fg = String.fg, bg = red }, -- character under the cursor - unused?
    lCursor {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM {}, -- like Cursor, but used when in IME mode |CursorIM|

    -- configuration for various background items / highlighted/selected stuff
    CursorLine { bg = c01 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { bg = c01 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn { bg = c01 }, -- used for the columns set with 'colorcolumn'
    Visual { bg = c01.lighten(4) }, -- Visual mode selection
    StatusLine { bg = c01 },

    -- functions, methods, etc.
    Function { fg = accent_primary }, -- function name (also: methods for classes)
    TSMethod { fg = accent_primary }, -- For method calls and definitions.
    TSFunction { fg = accent_primary }, -- For function (calls and definitions).
    TSPunctBracket { fg = accent_primary }, -- For brackets and parens.
    TSFuncBuiltin { fg = accent_primary }, -- For builtin functions: `table.insert` in Lua.

    -- constants, numbers, etc.
    Constant { fg = accent_blue }, -- (preferred) any constant
    Character { fg = accent_blue }, --  a character constant: 'c', '\n'
    Number { fg = accent_blue }, -- a number constant: 234, 0xff
    Boolean { fg = accent_blue }, -- a boolean constant: TRUE, false
    Float { fg = accent_blue }, -- a floating point constant: 2.3e10

    -- search/match
    CurSearch { fg = search_highlight.darken(50) },
    IncSearch { fg = search_highlight.darken(50) }, -- 'incsearch' highlighting; also used for the text replaced      with  ":s///c"
    Search { fg = search_highlight.darken(15) },
    Substitute { fg = search_highlight.darken(15) }, -- |:substitute| replacement text  highlighting
    MatchParen { fg = accent_green }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

    -- TODO, FIXME, etc.
    WarningMsg { fg = black, bg = warn }, -- warning messages
    Error { fg = black, bg = error }, -- (preferred) any erroneous construct
    Todo { fg = black, bg = hint }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    DiagnosticInfo { fg = info },
    DiagnosticHint { fg = hint },
    DiagnosticWarning { fg = warn.darken(15) },
    DiagnosticWarn { fg = warn.darken(15) },
    DiagnosticError { fg = error },

    -- diagnostics
    LspDiagnosticsDefaultInformation { fg = info, bg = c01 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint { fg = hint, bg = c01 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning { fg = warn, bg = c01 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsVirtualTextError { fg = error, bg = c01 }, -- Used for "Error" diagnostic virtual text

    -- diff stuff
    DiffAdd { fg = accent_green.darken(15) }, -- diff mode: Added line |diff.txt|
    DiffChange { fg = accent_blue.darken(15) }, -- diff mode: Changed line |diff.txt|
    DiffDelete { fg = accent_red.darken(15) } -- diff mode: Deleted line |diff.txt|
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
