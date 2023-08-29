local p = require("nightshift.palette")

-- Exmaple mappings table entry:
-- { "<highlight>", "<fg>", "<bg>", "<style>" }
-- or for multiple styles:
-- { "<highlight>", "<fg>", "<bg>", {"italic", "bold", "underline" } }
return {
	{ "Normal", p.fg },
	{ "NotifyBackground", nil, p.bg },
	{ "NonText", p.fg },

	-- Comments and Documentation
	{ "EndOfBuffer", p.color2 },
	{ "Comment", p.color2, nil, "italic" },
	{ "DocComment", p.color3, nil, "italic" },

	-- Preprocessor & Include
	{ "PreProc", p.color3 },
	{ "Include", p.color3 },

	-- Statements and Keywords
	{ "Statement", p.color3 },
	{ "Conditional", p.color3 },
	{ "Repeat", p.color3 },
	{ "Keyword", p.color3 },
	{ "Exception", p.color3 },
	{ "Directory", p.color3 },

	-- Identifiers
	{ "Variable", p.color8 },
	{ "Identifier", p.color4 },
	{ "Function", p.color4 },

	-- Variables
	{ "Type", p.color4, nil, "NONE" },
	{ "Label", p.color5 },

	-- Operators and Delimiters
	{ "Operator", p.color6 },
	{ "Delimiter", p.color6 },

	-- Constants and Literals
	{ "Constant", p.color9 },
	{ "Character", p.color9 },
	{ "Number", p.color9 },
	{ "Boolean", p.color9 },
	{ "Float", p.color9 },

	-- Strings
	{ "String", p.color10 },

	-- Special characters, TODOs, and Debug
	{ "Special", p.color3 },
	{ "SpecialChar", p.color3 },
	{ "Todo", p.color3, nil, "italic" },
	{ "Debug", p.color3, nil, "italic" },

	-- Status line, VertSplit, Tab pages, Titles, etc.
	{ "StatusLine", p.color1 },
	{ "StatusLineNC", p.color2 },
	{ "VertSplit", p.color3 },
	{ "Title", p.color4 },
	{ "TabLine", p.color3 },
	{ "TabLineSel", p.color2 },
	{ "TabLineFill", p.color4 },

	-- Visual Mode
	{ "Visual", p.color4, p.color1 },
	{ "VisualNOS", p.color4, p.color1 },

	-- Line Numbers
	{ "LineNr", p.color2 },
	{ "CursorLineNr", p.color3 },

	-- Folded text, and the column where it's shown
	{ "Folded", p.color4, p.bg },
	{ "FoldColumn", p.color4, p.bg },

	-- Popup menu
	{ "Pmenu", p.color9, p.color1 },
	{ "PmenuSel", p.color9, p.color2 },
	{ "PmenuSbar", p.color4, p.bg },
	{ "PmenuThumb", p.color3, p.bg },

	-- Diagnostic Pop-ups
	{ "NormalFloat", p.fg, p.bg },
	{ "FloatBorder", p.color4, p.bg },

	-- Spell checking
	{ "SpellBad", p.color2 },
	{ "SpellCap", p.color3 },
	{ "SpellRare", p.color4 },
	{ "SpellLocal", p.color5 },

	-- More UI elements
	{ "Cursor", p.color2 },
	{ "CursorIM", p.color2 },
	{ "CursorColumn", p.color2 },
	{ "CursorLine", nil, p.color1 },
	{ "ToolbarLine", p.color3 },
	{ "ToolbarButton", p.color3 },

	-- UI Messages
	{ "MoreMsg", p.blue },
	{ "Question", p.green },
	{ "SpecialKey", p.red },

	-- Search & Matches
	{ "MatchParen", p.green },
	{ "Search", p.orange },
	{ "IncSearch", p.orange, p.bg },

	-- Errors and Warnings
	{ "NvimInternalError", p.red, p.bg },
	{ "Error", p.red },
	{ "WarningMsg", p.orange },
	{ "ErrorMsg", p.red },

	-- Diagnostic
	{ "DiagnosticInfo", p.blue, nil, "italic" },
	{ "DiagnosticHint", p.yellow, nil, "italic" },
	{ "DiagnosticWarning", p.orange, nil, "italic" },
	{ "DiagnosticWarn", p.orange, nil, "italic" },
	{ "DiagnosticError", p.red, nil, "italic" },

	-- Indicators
	{ "LspDiagnosticsSignInformation", p.blue, p.bg, "italic" },
	{ "LspDiagnosticsSignHint", p.yellow, p.bg, "italic" },
	{ "LspDiagnosticsSignWarning", p.orange, p.bg, "italic" },
	{ "LspDiagnosticsSignError", p.red, p.bg, "italic" },

	-- Diff mode
	{ "DiffAdd", p.green },
	{ "DiffChange", p.orange },
	{ "DiffDelete", p.red },
	{ "DiffText", p.color2 },

	-- SignColumn
	{ "SignColumn", nil, p.bg },
	{ "GitSignsAdd", p.green, p.bg },
	{ "GitSignsChange", p.orange, p.bg },
	{ "GitSignsDelete", p.red, p.bg },

	-- Git & Version Control
	{ "gitcommitComment", p.color4 },
	{ "gitcommitUntracked", p.color4 },
	{ "gitcommitDiscarded", p.color4 },
	{ "gitcommitSelected", p.color4 },
	{ "gitcommitUnmerged", p.color2 },
	{ "gitcommitOnBranch", p.color3 },
	{ "gitcommitBranch", p.color3 },
	{ "gitcommitDiscardedType", p.color2 },
	{ "gitcommitSelectedType", p.color2 },
	{ "gitcommitUntrackedFile", p.color2 },
	{ "gitcommitDiscardedFile", p.color2 },
	{ "gitcommitUnmergedFile", p.color2 },
	{ "gitcommitSelectedFile", p.color2 },

	-- Indent Lines
	{ "IndentBlanklineChar", p.color2 },

	-- python
	{ "@repeat.python", p.color3, nil, "italic" },
	{ "@conditional.python", p.color3, nil, "italic" },

	{ "@operator.python", p.color3 },
	{ "@conditional.call.python", p.color3 },
	{ "@punctuation.bracket.python", p.color3 },
	{ "@punctuation.special.python", p.color3 },
	{ "@function.builtin.python", p.color3 },

	{ "@keyword.operator.python", p.color5, nil, "italic" },
	{ "@method.call.python", p.color5 },
	{ "@function.python", p.color5 },
	{ "@function.call.python", p.color5 },

	{ "@constructor.python", p.color6 },
	{ "@constant.builtin.python", p.color6 },

	{ "@field.python", p.color7 },

	{ "@variable.python", p.color9 },
	{ "@parameter.python", p.color9 },

	{ "@string.python", p.color10 },

	-- terraform
	{ "@lsp.type.type.terraform", p.color3 },
	{ "@lsp.type.property.terraform", p.color6 },
	{ "@lsp.type.variable.terraform", p.color7 },
	{ "@lsp.type.parameter.terraform", p.color8 },
	{ "@lsp.type.enumMember.terraform", p.color10 },
	{ "@lsp.type.string.terraform", p.color10 },
	{ "@lsp.type.stringMember.terraform", p.color10 },
}
