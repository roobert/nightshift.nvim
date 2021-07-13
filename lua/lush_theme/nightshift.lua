-- RELATIVITY

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
-- pallette for this:
-- purples/blues/slate grey as base colour
--
-- neon red
-- neon yellow
-- muted colours?

--  bg_dark = hsl("#1f2335")),
--  bg = hsl("#24283b")),
--  bg_highlight = hsl("#292e42")),
--  terminal_black = hsl("#414868")),
--  fg = hsl("#c0caf5")),
--  fg_dark = hsl("#a9b1d6"),
--  fg_gutter = hsl("#3b4261"),
--  dark3 = hsl("#545c7e"),
--  comment = hsl("#565f89"),
--  dark5 = hsl("#737aa2"),
--
--  blue = hsl("#7aa2f7"),
--  blue0 = hsl("#3d59a1"),
--
--  cyan = hsl("#7dcfff"),
--  blue1 = hsl("#2ac3de"),
--  blue2 = hsl("#0db9d7"),
--  blue5 = hsl("#89ddff"),
--  blue6 = hsl("#B4F9F8"),
--  blue7 = hsl("#394b70"),
--  purple = hsl("#9d7cd8"),
--  magenta = hsl("#bb9af7"),
--  orange = hsl("#ff9e64"),
--  yellow = hsl("#e0af68"),

--  green = hsl("#9ece6a"),
--  green1 = hsl("#73daca"),
--  green2 = hsl("#41a6b5"),
--  teal = hsl("#1abc9c"),

    local white = hsl("#eeeeee")
    local black = hsl("#111111")


    local orange = hsl("#ff9e64")
    local yellow = hsl("#e0af68")

    -- muted greys
    local muted0 = hsl("#585858")
    local muted1 = hsl("#767676")
    local muted2 = hsl("#949494")
    local muted3 = hsl("#b2b2b2")
    local muted4 = hsl("#d0d0d0")
    local muted5 = hsl("#eeeeee")
    local muted6 = hsl("#ffffff")

    -- purples
    local accent0_0 = hsl("#5f5f87")
    local accent0_1 = hsl("#5f5faf")
    local accent0_2 = hsl("#bfbfee")
    local accent0_3 = hsl("#dfe2fb")


    local accent1_0 = hsl("#8700d7")
    local accent1_1 = hsl("#875fd7")
    local accent1_2 = hsl("#8787d7")
    local accent1_3 = hsl("#87afd7")
    local accent1_4 = hsl("#87d7d7")
    local accent1_5 = hsl("#87ffd7")

    local accent2_0 = hsl("#8700ff")
    local accent2_1 = hsl("#875fff")
    local accent2_2 = hsl("#8787ff")
    local accent2_3 = hsl("#87afff")
    local accent2_4 = hsl("#87d7ff")
    local accent2_5 = hsl("#87ffff")

    local accent3_0 = hsl("#1f2335")
    local accent3_1 = hsl("#24283b")
    local accent3_2 = hsl("#292e42")
    local accent3_3 = hsl("#3b4261")
    local accent3_4 = hsl("#414868")
    local accent3_5 = hsl("#545c7e")
    local accent3_6 = hsl("#565f89")
    local accent3_7 = hsl("#737aa2")
    local accent3_8 = hsl("#a9b1d6")
    local accent3_9 = hsl("#c0caf5")

    local accent4_0 = hsl("#000030")
    local accent4_1 = hsl("#1d2340")
    local accent4_2 = hsl("#242c52")
    --local accent4_3 = hsl("")
    --local accent4_4 = hsl("")
    --local accent4_5 = hsl("")
    --local accent4_6 = hsl("")
    --local accent4_7 = hsl("")
    --local accent4_8 = hsl("")
    --local accent4_9 = hsl("")

    -- blues
    local accent5_0  = hsl("#5f87af")
    local accent5_1  = hsl("#5f87d7")
    local accent5_2  = hsl("#7aa2f7")
    local accent5_3  = hsl("#3d59a1")
    local accent5_4  = hsl("#2e3c80")

    local diff_change = hsl("#00afff")
    local diff_add    = hsl("#5fd75f")
    local diff_remove = hsl("#af5f87")

    local hint = accent5_2.lighten(10)
    local info = hsl("#5fd75f")
    local warn = yellow
    local error = hsl("#af5f87")

    local fg = accent4_1.lighten(15)
    local bg = accent4_1

    -- TODO
    -- fix easy align and tidy up this file..
    -- reverse order of os.path.join colouoring
    -- colour of import, etc.
    -- list the primary colour path from a.b.c.d
    -- list accent colours
    -- list red, blue, yellow, green colours
    -- TODO etc.
    -- lsp menu colours
    -- bg colour in side gutter for warnings
    -- galaxy bar colours

    return {
        -- You can uncomment these and leave them empty to disable any
        -- styling for that group (meaning they mostly get styled as Normal)
        -- or leave them commented to apply vims default colouring or linking.

        DiffAdd      { fg = diff_add }, -- diff mode: Added line |diff.txt|
        DiffChange   { fg = diff_change }, -- diff mode: Changed line |diff.txt|
        DiffDelete   { fg = diff_remove }, -- diff mode: Deleted line |diff.txt|

        -- search
        -- FIXME change this to same as Int
        MatchParen   { fg = orange }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        IncSearch    { fg = black, bg = orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        Substitute   { fg = black, bg = yellow }, -- |:substitute| replacement text highlighting

        -- main syntax
        Comment  { fg = fg.lighten(5) }, -- any comment

        String   { fg = fg.lighten(80) }, -- a string constant: "this is a string"
        Include     { fg = String.fg.darken(60) }, --  preprocessor #include

        Normal   { fg = accent0_1.lighten(35), bg = bg }, -- normal text

        -- def, etc.
        Keyword  { fg = Normal.fg.darken(40) }, --  any other keyword
        -- if, etc.
        Conditional { fg = Keyword.fg }, --  if, then, else, endif, switch, etc.
        Statement  { fg = Keyword.fg }, -- (preferred) any statement

        TSField { fg = Normal.fg.lighten(40) }, -- For fields.

        Function { fg = accent1_4 }, -- function name (also: methods for classes)
        TSMethod { fg = Function.fg }, -- For method calls and definitions.
        TSFunction { fg = Function.fg }, -- For function (calls and definitions).
        TSPunctBracket { fg = Function.fg }, -- For brackets and parens.
        TSFuncBuiltin {fg = Function.fg}, -- For builtin functions: `table.insert` in Lua.

        Special     { fg = Include.fg.lighten(30) }, -- (preferred) any special symbol
        Operator    { fg = Include.fg.lighten(70) }, -- "sizeof", "+", "*", etc.

        Identifier { fg = Function.fg.saturation(5).lighten(20) }, -- (preferred) any variable name

        -- this has to be Normal because there's no way to distinguish it from normal variables
        TSParameter { fg = Normal.fg }, -- For parameters of a function.
        --TSVariable { fg = Identifier.fg }, -- Any variable name that does not have another highlight.
        Type       { fg = accent1_4.hue(200).saturation(90) }, -- (preferred) int, long, char, etc.

        -- left margin
        SignColumn   { bg = Normal.bg }, -- column where |signs| are displayed
        LineNr       { fg = String.fg.darken(40) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg = LineNr.fg.lighten(30) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

        -- window decorations
        VertSplit   { fg = bg.darken(100) }, -- the column separating vertically split windows
        EndOfBuffer { fg = Comment.fg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        ColorColumn  { bg = String.fg.darken(30) }, -- used for the columns set with 'colorcolumn'
        IndentBlanklineChar { fg = String.fg.darken(60) },

        -- menus (inc. completion menu)
        Pmenu       { fg = VertSplit.fg.lighten(60), bg = Normal.bg.darken(30) }, -- Popup menu: normal item.
        PmenuSel    { fg = String.fg.darken(10), bg = Pmenu.bg }, -- Popup menu: selected item.
        PmenuSbar   { bg = bg.lighten(15) }, -- Popup menu: scrollbar.
        PmenuThumb  { bg = bg.lighten(30) }, -- Popup menu: Thumb of the scrollbar.

        -- cursor
        Cursor       { fg = String.fg, bg = hsl("#ff0000") }, -- character under the cursor
        lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorLine   { bg = bg.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorColumn { bg = CursoLine.bg }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        Visual       { bg = CursorLine.bg.lighten(4) }, -- Visual mode selection

        Error          { fg = white, bg = error }, -- (preferred) any erroneous construct
        Todo           { fg = white, bg = hint }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        LspDiagnosticsDefaultWarning { fg = warn, bg = CursorLine.bg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation { fg = info, bg = CursorLine.bg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsVirtualTextError { fg = error, bg = CursorLine.bg }, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsDefaultHint { fg = hint, bg = CursorLine.bg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        -- extra syntax (unused)

        -- NOTE: these are not vsnip/lsp ref wins..
        --NormalFloat  { fg = Pmenu.fg, bg = Pmenu.bg }, -- Normal text in floating windows.
        --NormalNC     { fg = Pmenu.fg, bg = Pmenu.bg }, -- normal text in non-current windows

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.
        -- Constant {}, -- (preferred) any constant
        -- Character {}, --  a character constant: 'c', '\n'
        -- Number {}, --   a number constant: 234, 0xff
        -- Boolean {}, --  a boolean constant: TRUE, false
        -- Float {}, --    a floating point constant: 2.3e10


        -- Repeat {fg = String.fg}, --   for, do, while, etc.
        -- Label {fg = String.fg}, --    case, default, etc.
        -- Exception {fg = String.fg}, --  try, catch, throw
        -- PreProc {}, -- (preferred) generic Preprocessor
        -- Define {}, --   preprocessor #define
        -- Macro {}, --    same as Define
        -- PreCondit {}, --  preprocessor #if, #else, #endif, etc.
        -- StorageClass {}, -- static, register, volatile, etc.
        -- Structure {}, --  struct, union, enum, etc.
        -- Typedef {}, --  A typedef
        -- SpecialChar {}, --  special character in a constant
        -- Tag {}, --    you can use CTRL-] on this
        -- Delimiter {}, --  character that needs attention
        -- SpecialComment {}, -- special things inside a comment
        -- Debug {} --    debugging statements

        --Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        --Directory { }, -- directory names (and other special names in listings)
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
        -- WarningMsg   { }, -- warning messages
        -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu     { }, -- current match in 'wildmenu' completion


        -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
        -- Bold       { gui = "bold" },
        -- Italic     { gui = "italic" },
        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        --LspReferenceText { fg = Pmenu.fg, bg = Pmenu.bg }, -- used for highlighting "text" references
        -- LspReferenceRead {}, -- used for highlighting "read" references
        -- LspReferenceWrite {}, -- used for highlighting "write" references
        -- LspDiagnosticsDefaultError { LspDiagnosticsVirtualTextError.fg }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsVirtualTextWarning {}, -- Used for "Warning" diagnostic virtual text
        -- LspDiagnosticsVirtualTextInformation {}, -- Used for "Information" diagnostic virtual text
        -- LspDiagnosticsVirtualTextHint {}, -- Used for "Hint" diagnostic virtual text
        -- LspDiagnosticsUnderlineError {}, -- Used to underline "Error" diagnostics
        -- LspDiagnosticsUnderlineWarning {}, -- Used to underline "Warning" diagnostics
        -- LspDiagnosticsUnderlineInformation {}, -- Used to underline "Information" diagnostics
        -- LspDiagnosticsUnderlineHint {}, -- Used to underline "Hint" diagnostics
        -- LspDiagnosticsFloatingError {}, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning {}, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation {}, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint {}, -- Used to color "Hint" diagnostic messages in diagnostics float
        -- LspDiagnosticsSignError {}, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning {}, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation {}, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint {}, -- Used for "Hint" signs in sign column

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.
        -- TSAnnotation {}, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute {}, -- (unstable) TODO: docs
        -- TSBoolean {}, -- For booleans.
        -- TSCharacter {}, -- For characters.
        -- TSComment {Comment}, -- For comment blocks.
        -- TSConstructor {}, -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
        -- TSConditional {}, -- For keywords related to conditionnals.
        -- TSConstant {}, -- For constants
        -- TSConstBuiltin {}, -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro {}, -- For constants that are defined by macros: `NULL` in C.
        -- TSError {}, -- For syntax/parser errors.
        -- TSException {}, -- For exception related keywords.


        -- TSFloat {}, -- For floats.
        -- TSFuncMacro {}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude {fg = String.fg.lighten(100)}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSKeyword {}, -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction {}, -- For keywords used to define a fuction.
        -- TSLabel {}, -- For labels: `label:` in C and `:label:` in Lua.
        -- TSNamespace {}, -- For identifiers referring to modules and namespaces.
        -- TSNone {}, -- TODO: docs
        -- TSNumber {}, -- For all numbers
        -- TSOperator {}, -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameterReference {}, -- For references to parameters of a function.
        -- TSProperty {}, -- Same as `TSField`.
        -- TSPunctDelimiter {}, -- For delimiters ie: `.`
        -- TSPunctSpecial {}, -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat {}, -- For keywords related to loops.
        -- TSString {fg = String.fg}, -- For strings.
        -- TSStringRegex {}, -- For regexes.
        -- TSStringEscape {}, -- For escape characters within a string.
        -- TSSymbol {}, -- For identifiers referring to symbols or atoms.
        -- TSType {}, -- For types.
        -- TSTypeBuiltin {}, -- For builtin types.
        -- TSVariableBuiltin {}, -- Variable names that are defined by the languages, like `this` or `self`.
        -- TSTag {}, -- Tags like html tag names.
        -- TSTagDelimiter {}, -- Tag delimiter like `<` `>` `/`
        -- TSText {}, -- For strings considered text in a markup language.
        -- TSEmphasis {}, -- For text to be represented with emphasis.
        -- TSUnderline {}, -- For text to be represented with an underline.
        -- TSStrike {}, -- For strikethrough text.
        -- TSTitle {}, -- Text that is part of a title.
        -- TSLiteral {}, -- Literal text.
        TSURI {fg = String.fg} -- Any URI like a link or email.
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
