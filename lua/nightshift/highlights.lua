local black = "#111111"
local white = "#eeeeee"

local color0 = "#121527"
local color1 = "#171B31"
local color2 = "#232A4D"
local color3 = "#313C6D"
local color4 = "#3E4D89"
local color5 = "#4D60A8"
local color6 = "#687BBA"
local color7 = "#8495C7"
local color8 = "#A4B1D6"
local color9 = "#C3CDE4"
local color10 = "#DFE5F1"

-- normal accent colors
-- local accent0 = "#D66A6A"
-- local accent1 = "#D6956A"
-- local accent2 = "#D6CC6A"
-- local accent3 = "#6AD682"
-- local accent4 = "#6AB7D6"
-- local accent5 = "#D66A7E"
-- local accent6 = "#B36AD6"

-- pastel accent colors
local accent0 = "#D97C8F"
local accent1 = "#D9AE7E"
local accent2 = "#D9D87E"
local accent3 = "#A5D9A7"
local accent4 = "#8BB9C8"
local accent5 = "#C9A1D3"
local accent6 = "#B8A1D9"

-- convenience mappings..
local red = accent0
local orange = accent1
local yellow = accent2
local green = accent3
local blue = accent4
local pink = accent5
local purple = accent6

local bg = color0
local fg = color9

-- Exmaple mappings table entry:
-- { "<highlight>", "<fg>", "<bg>", "<style>" }
-- or for multiple styles:
-- { "<highlight>", "<fg>", "<bg>", {"italic", "bold", "underline" } }
return {
	{ "Normal", fg },
	{ "NotifyBackground", nil, bg },
	{ "NonText", fg },

	-- Comments and Documentation
	{ "EndOfBuffer", color2 },
	{ "Comment", color2, nil, "italic" },
	{ "DocComment", color3, nil, "italic" },

	-- Preprocessor & Include
	{ "PreProc", color3 },
	{ "Include", color3 },

	-- Statements and Keywords
	{ "Statement", color3 },
	{ "Conditional", color3 },
	{ "Repeat", color3 },
	{ "Keyword", color3 },
	{ "Exception", color3 },
	{ "Directory", color3 },

	-- Identifiers
	{ "Variable", color8 },
	{ "Identifier", color4 },
	{ "Function", color4 },

	-- Variables
	{ "Type", color4, nil, "NONE" },
	{ "Label", color5 },

	-- Operators and Delimiters
	{ "Operator", color6 },
	{ "Delimiter", color6 },

	-- Constants and Literals
	{ "Constant", color9 },
	{ "Character", color9 },
	{ "Number", color9 },
	{ "Boolean", color9 },
	{ "Float", color9 },

	-- Strings
	{ "String", color10 },

	-- Special characters, TODOs, and Debug
	{ "Special", color3 },
	{ "SpecialChar", color3 },
	{ "Todo", color3, nil, "italic" },
	{ "Debug", color3, nil, "italic" },

	-- Status line, VertSplit, Tab pages, Titles, etc.
	{ "StatusLine", color1 },
	{ "StatusLineNC", color2 },
	{ "VertSplit", color3 },
	{ "Title", color4 },
	{ "TabLine", color3 },
	{ "TabLineSel", color2 },
	{ "TabLineFill", color4 },

	-- Visual Mode
	{ "Visual", color4, color1 },
	{ "VisualNOS", color4, color1 },

	-- Line Numbers
	{ "LineNr", color2 },
	{ "CursorLineNr", color3 },

	-- Folded text, and the column where it's shown
	{ "Folded", color4, bg },
	{ "FoldColumn", color4, bg },

	-- Popup menu
	{ "Pmenu", color9, color1 },
	{ "PmenuSel", color9, color2 },
	{ "PmenuSbar", color4, bg },
	{ "PmenuThumb", color3, bg },

	-- Spell checking
	{ "SpellBad", color2 },
	{ "SpellCap", color3 },
	{ "SpellRare", color4 },
	{ "SpellLocal", color5 },

	-- More UI elements
	{ "Cursor", color2 },
	{ "CursorIM", color2 },
	{ "CursorColumn", color2 },
	{ "CursorLine", nil, color1 },
	{ "ToolbarLine", color3 },
	{ "ToolbarButton", color3 },

	-- UI Messages
	{ "MoreMsg", blue },
	{ "Question", green },
	{ "SpecialKey", red },

	-- Search & Matches
	{ "MatchParen", green },
	{ "Search", orange },
	{ "IncSearch", orange, bg },

	-- Errors and Warnings
	{ "NvimInternalError", red, bg },
	{ "Error", red },
	{ "WarningMsg", orange },
	{ "ErrorMsg", red },

	-- Diagnostic
	{ "DiagnosticInfo", blue, nil, "italic" },
	{ "DiagnosticHint", yellow, nil, "italic" },
	{ "DiagnosticWarning", orange, nil, "italic" },
	{ "DiagnosticWarn", orange, nil, "italic" },
	{ "DiagnosticError", red, nil, "italic" },

	-- Indicators
	{ "LspDiagnosticsSignInformation", blue, bg, "italic" },
	{ "LspDiagnosticsSignHint", yellow, bg, "italic" },
	{ "LspDiagnosticsSignWarning", orange, bg, "italic" },
	{ "LspDiagnosticsSignError", red, bg, "italic" },

	-- Diff mode
	{ "DiffAdd", green },
	{ "DiffChange", orange },
	{ "DiffDelete", red },
	{ "DiffText", color2 },

	-- SignColumn
	{ "SignColumn", nil, bg },
	{ "GitSignsAdd", green, bg },
	{ "GitSignsChange", orange, bg },
	{ "GitSignsDelete", red, bg },

	-- Git & Version Control
	{ "gitcommitComment", color4 },
	{ "gitcommitUntracked", color4 },
	{ "gitcommitDiscarded", color4 },
	{ "gitcommitSelected", color4 },
	{ "gitcommitUnmerged", color2 },
	{ "gitcommitOnBranch", color3 },
	{ "gitcommitBranch", color3 },
	{ "gitcommitDiscardedType", color2 },
	{ "gitcommitSelectedType", color2 },
	{ "gitcommitUntrackedFile", color2 },
	{ "gitcommitDiscardedFile", color2 },
	{ "gitcommitUnmergedFile", color2 },
	{ "gitcommitSelectedFile", color2 },

	-- Indent Lines
	{ "IndentBlanklineChar", color2 },

	-- python
	{ "@repeat.python", color3, nil, "italic" },
	{ "@conditional.python", color3, nil, "italic" },

	{ "@operator.python", color3 },
	{ "@conditional.call.python", color3 },
	{ "@punctuation.bracket.python", color3 },
	{ "@punctuation.special.python", color3 },
	{ "@function.builtin.python", color3 },

	{ "@keyword.operator.python", color5, nil, "italic" },
	{ "@method.call.python", color5 },
	{ "@function.python", color5 },
	{ "@function.call.python", color5 },

	{ "@constructor.python", color6 },
	{ "@constant.builtin.python", color6 },

	{ "@field.python", color7 },

	{ "@variable.python", color9 },
	{ "@parameter.python", color9 },

	{ "@string.python", color10 },

	-- terraform
	{ "@lsp.type.type.terraform", color3 },
	{ "@lsp.type.property.terraform", color6 },
	{ "@lsp.type.variable.terraform", color7 },
	{ "@lsp.type.parameter.terraform", color8 },
	{ "@lsp.type.enumMember.terraform", color10 },
	{ "@lsp.type.string.terraform", color10 },
	{ "@lsp.type.stringMember.terraform", color10 },
}
