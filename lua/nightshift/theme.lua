-- Nightshift - github.com/roobert/nightshift.vim
-- Inspired by tokyonight - github.com/folke/tokyonight.nvim
--
-- Run :Lushify to see the rendered colors
--
-- To print a color:
-- :lua string.format("#%6x", vim.api.nvim_get_hl_by_name('Number', {}).foreground)
--
-- Use treesitter-playground and :TSPlaygroundToggle to see the highlight groups applied
-- to the token under the corsor

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
  -- main colours
  local black = hsl("#111111")
  local bg    = hsl("#1d2340")

  -- FIXME - diff view
  -- FIXME - adjust this color gradient
  local color01 = hsl("#ced2e9")
  local color02 = hsl("#bfbfdf")
  local color03 = hsl("#b9bfdf")
  local color04 = hsl("#9696ca")
  local color05 = hsl("#8791c9")
  local color06 = hsl("#5d6cb6")
  local color07 = hsl("#5664b3")
  local color08 = hsl("#46549b")
  local color09 = hsl("#46468b")
  local color10 = hsl("#364178")
  local color11 = hsl("#232a4d")

  -- accent colors
  local accent_red    = hsl("#ffaaaa")
  local accent_blue   = hsl("#99ccff")
  local accent_green  = hsl("#99dddd")
  local accent_yellow = hsl("#ffeedd")

  -- taken from folke/tokyonight
  local red    = hsl("#af5f87")
  local blue   = hsl("#00afff")
  local yellow = hsl("#e0af68")
  local orange = hsl("#ff9e64")
  local green  = hsl("#5fd75f")

  -- Highlighting for:
  -- FIXME:
  -- some fixme text
  --
  -- WARNING:
  -- some warning text
  --
  -- NOTE:
  -- some note text
  --
  -- TODO:
  -- some todo text

  local hint  = accent_blue
  local info  = accent_green
  local warn  = accent_yellow
  local error = accent_red

  return {
    -- main syntax
    String { fg = color01 }, -- a string constant: "this is a string"
    Normal { fg = color04, bg = bg }, -- normal text
    Comment { fg = color08 }, -- any comment
    Include { fg = color10 }, -- preprocessor #include

    -- def, etc.
    Keyword { fg = color09 }, --  any other keyword

    -- if, etc.
    TSField { fg = color02 }, -- For fields.
    Conditional { fg = color09 }, -- if, then, else, endif, switch, etc.
    Statement { fg = color09 }, -- (preferred) any statement

    -- specials
    Identifier { fg = color02 }, -- (preferred) any variable name
    Operator { fg = color03 }, -- "sizeof", "+", "*", etc.
    Special { fg = color06 }, -- (preferred) any special symbol

    -- this has to be Normal because there's no way to distinguish it from normal variables
    TSParameter { fg = color04 }, -- For parameters of a function.
    Type { fg = accent_blue }, -- (preferred) int, long, char, etc.

    -- left margin
    SignColumn { bg = bg }, -- column where |signs| are displayed
    LineNr { fg = color07 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = color05 }, -- Like LineNr when 'color11' or 'relativenumber' is set for the cursor line.

    -- window decorations
    EndOfBuffer { fg = color08 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    IndentBlanklineChar { fg = color10 },
    VertSplit { fg = color04 }, -- the column separating vertically split windows, also used by lsp popup outline

    -- menus (inc. completion menu)
    Pmenu { fg = color01, bg = bg }, -- Popup menu: normal item.
    PmenuSel { fg = color01, bg = bg }, -- Popup menu: selected item.
    PmenuSbar { bg = color10 }, -- Popup menu: scrollbar.
    PmenuThumb { bg = color08 }, -- Popup menu: Thumb of the scrollbar.

    -- cursor line / visual selection backgrounds
    --Cursor { fg = String.fg, bg = red }, -- character under the cursor - unused?
    lCursor {}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM {}, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine { bg = color11 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { bg = color11 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    ColorColumn { bg = color11 }, -- used for the columns set with 'colorcolumn'
    Visual { bg = color11.lighten(4) }, -- Visual mode selection
    StatusLine { bg = CursorLine.bg },

    -- functions, methods, etc.
    Function { fg = accent_green }, -- function name (also: methods for classes)
    TSMethod { fg = accent_green }, -- For method calls and definitions.
    TSFunction { fg = accent_green }, -- For function (calls and definitions).
    TSPunctBracket { fg = accent_green }, -- For brackets and parens.
    TSFuncBuiltin { fg = accent_green }, -- For builtin functions: `table.insert` in Lua.

    -- constants, numbers, etc.
    Constant { fg = accent_red }, -- (preferred) any constant
    Character { fg = accent_red }, --  a character constant: 'c', '\n'
    Number { fg = accent_red }, --   a number constant: 234, 0xff
    Boolean { fg = accent_red }, --  a boolean constant: TRUE, false
    Float { fg = accent_red }, --    a floating point constant: 2.3e10

    -- search/match
    MatchParen { fg = orange }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    IncSearch { fg = black, bg = accent_yellow }, -- 'incsearch' highlighting; also used for the text replaced      with  ":s///c"
    CurSearch { fg = black, bg = accent_yellow },
    Search { fg = black, bg = yellow },
    Substitute { fg = black, bg = yellow }, -- |:substitute| replacement                                                 text  highlighting

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
    LspDiagnosticsDefaultInformation { fg = info, bg = color11 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint { fg = hint, bg = color11 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning { fg = warn, bg = color11 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsVirtualTextError { fg = error, bg = color11 }, -- Used for "Error" diagnostic virtual text

    -- diff stuff
    DiffAdd { fg = green }, -- diff mode: Added line |diff.txt|
    DiffChange { fg = blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete { fg = red }, -- diff mode: Deleted line |diff.txt|

    TSURI { fg = color01 }, -- Any URI like a link or email.

    -- used by shebang lines
    PreProc { fg = color05 }, -- (preferred) generic Preprocessor

    -- extra syntax (unused)
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Exception      { }, --  try, catch, throw
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { } --    debugging statements

    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Directory    { }, -- directory names (and other special names in listings)
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- ErrorMsg     { }, -- error messages on the command line
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'

    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },
    -- ("Ignore", below, may be invisible...)
    -- Ignore     { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    -- LspReferenceText                     { fg = Pmenu.fg, bg = Pmenu.bg }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references
    -- LspDiagnosticsDefaultError           { LspDiagnosticsVirtualTextError.fg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text
    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics
    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float
    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.
    -- TSAnnotation   { }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute    { }, -- (unstable) TODO: docs
    -- TSBoolean      { }, -- For booleans.
    -- TSCharacter    { }, -- For characters.
    -- TSComment      { Comment}, -- For comment blocks.
    -- TSConstructor  { }, -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional  { }, -- For keywords related to conditionnals.
    -- TSConstant     { }, -- For constants
    -- TSConstBuiltin { }, -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro   { }, -- For constants that are defined by macros: `NULL` in C.
    -- TSError        { }, -- For syntax/parser errors.
    -- TSException    { }, -- For exception related keywords.
    -- TSVariable     { }, -- Any variable name that does not have another highlight.

    -- TSFloat              { }, -- For floats.
    -- TSFuncMacro          { }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { fg = String.fg.lighten(100)}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { }, -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { }, -- For keywords used to define a fuction.
    -- TSLabel              { }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSNamespace          { }, -- For identifiers referring to modules and namespaces.
    -- TSNone               { }, -- TODO: docs
    -- TSNumber             { }, -- For all numbers
    -- TSOperator           { }, -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameterReference { }, -- For references to parameters of a function.
    -- TSProperty           { }, -- Same as `TSField`.
    -- TSPunctDelimiter     { }, -- For delimiters ie: `.`
    -- TSPunctSpecial       { }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { }, -- For keywords related to loops.
    -- TSString             { fg = String.fg}, -- For strings.
    -- TSStringRegex        { }, -- For regexes.
    -- TSStringEscape       { }, -- For escape characters within a string.
    -- TSSymbol             { }, -- For identifiers referring to symbols or atoms.
    -- TSType               { }, -- For types.
    -- TSTypeBuiltin        { }, -- For builtin types.
    -- TSVariableBuiltin    { }, -- Variable names that are defined by the languages, like `this` or `self`.
    -- TSTag                { }, -- Tags like html tag names.
    -- TSTagDelimiter       { }, -- Tag delimiter like `<` `>` `/`
    -- TSText               { }, -- For strings considered text in a markup language.
    -- TSEmphasis           { }, -- For text to be represented with emphasis.
    -- TSUnderline          { }, -- For text to be represented with an underline.
    -- TSStrike             { }, -- For strikethrough text.
    -- TSTitle              { }, -- Text that is part of a title.
    -- TSLiteral            { }, -- Literal text.
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
