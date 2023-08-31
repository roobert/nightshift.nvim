local p = require("nightshift.theme")

-- Exmaple mappings table entry:
-- { "<highlight>", "<fg>", "<bg>", "<style>" }
-- or for multiple styles:
-- { "<highlight>", "<fg>", "<bg>", {p.italic, "bold", "underline" } }
return {
	-- Default window, etc. bg = None is transparent..
	{ "Normal", p.fg, p.bg },
	{ "NormalFloat", p.fg },
	{ "FloatBorder", p.color8, p.bg },
	{ "NotifyBackground", nil, p.bg },
	{ "NonText", p.fg },

	-- End of buffer: ~'s
	{ "EndOfBuffer", p.color3 },

	-- Indent Lines
	{ "IndentBlanklineChar", p.color3 },

	-- Special characters
	{ "Special", p.color3 },
	{ "SpecialChar", p.color3 },

	-- Preprocessor & Include
	{ "PreProc", p.color3 },
	{ "Include", p.color3 },

	-- Statements and Keywords
	{ "Statement", p.color3 },
	{ "Conditional", p.color3 },
	{ "Repeat", p.color3 },
	{ "Exception", p.color3 },
	{ "Directory", p.color3 },
	{ "Keyword", p.color3 },

	-- Operators and Delimiters
	{ "Operator", p.color4 },
	{ "Delimiter", p.color4 },

	-- Comments and Documentation
	{ "Comment", p.color6, nil, p.italic },
	{ "DocComment", p.color6, nil, p.italic },

	-- Identifiers
	{ "Identifier", p.color5 },
	{ "Variable", p.color6 },

	{ "Function", p.color7 },

	-- Strings
	{ "String", p.color8 },

	-- Variables
	{ "Type", p.color8, nil, "NONE" },
	{ "Label", p.red },

	-- Constants and Literals
	{ "Character", p.red },
	{ "Number", p.red },
	{ "Boolean", p.blue },
	{ "Float", p.blue },
	{ "Constant", p.blue },

	-- Todo's etc.
	{ "Todo", p.color3, nil, p.italic },
	{ "Debug", p.color3, nil, p.italic },

	-- Status line, VertSplit, Tab pages, Titles, etc.
	{ "StatusLine", p.color1 },
	{ "StatusLineNC", p.color2 },
	{ "VertSplit", p.color3 },
	{ "TabLine", p.color3 },
	{ "TabLineSel", p.color5 },
	{ "TabLineFill", p.color6 },
	{ "Title", p.color8 },
	--
	-- Visual Mode
	{ "Visual", p.orange, p.color1 },
	{ "VisualNOS", p.color4, p.color1 },

	-- Line Numbers
	{ "LineNr", p.color3 },
	{ "CursorLineNr", p.color4 },

	-- Folded text, and the column where it's shown
	{ "Folded", p.color4, p.bg },
	{ "FoldColumn", p.color4, p.bg },

	-- Popup menu
	{ "Pmenu", p.color5, p.color1 },
	{ "PmenuSel", p.color5, p.color2 },
	--{ "PmenuSbar", p.red },
	{ "PmenuThumb", nil, p.color8 },

	-- Spell checking
	{ "SpellBad", p.color3 },
	{ "SpellCap", p.color4 },
	{ "SpellRare", p.color5 },
	{ "SpellLocal", p.color6 },

	-- More UI elements
	{ "Cursor", p.color2 },
	{ "CursorColumn", p.color2 },
	{ "CursorLine", nil, p.color1 },
	{ "CursorLineFold", p.color2 },
	{ "CursorLineSign", p.color2 },
	{ "ToolbarLine", p.color3 },
	{ "ToolbarButton", p.color3 },

	-- UI Messages / prompts
	-- quit, etc.
	{ "MoreMsg", p.blue },
	-- input method (prompt)
	{ "CursorIM", p.blue },
	{ "Question", p.blue },
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
	{ "DiagnosticInfo", p.blue, nil, p.italic },
	{ "DiagnosticHint", p.yellow, nil, p.italic },
	{ "DiagnosticWarning", p.orange, nil, p.italic },
	{ "DiagnosticWarn", p.orange, nil, p.italic },
	{ "DiagnosticError", p.red, nil, p.italic },

	-- Indicators
	{ "LspDiagnosticsSignInformation", p.blue, p.bg, p.italic },
	{ "LspDiagnosticsSignHint", p.yellow, p.bg, p.italic },
	{ "LspDiagnosticsSignWarning", p.orange, p.bg, p.italic },
	{ "LspDiagnosticsSignError", p.red, p.bg, p.italic },

	-- Diff mode
	{ "DiffAdd", p.green },
	{ "DiffChange", p.orange },
	{ "DiffDelete", p.red },
	{ "DiffText", p.color3 },

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
	{ "gitcommitUnmerged", p.color3 },
	{ "gitcommitOnBranch", p.color3 },
	{ "gitcommitBranch", p.color3 },
	{ "gitcommitDiscardedType", p.color3 },
	{ "gitcommitSelectedType", p.color3 },
	{ "gitcommitUntrackedFile", p.color3 },
	{ "gitcommitDiscardedFile", p.color3 },
	{ "gitcommitUnmergedFile", p.color3 },
	{ "gitcommitSelectedFile", p.color3 },

	-- python
	{ "@repeat.python", p.color3, nil, p.italic },
	{ "@conditional.python", p.color3, nil, p.italic },
	{ "@operator.python", p.color3 },
	{ "@conditional.call.python", p.color3 },
	{ "@punctuation.bracket.python", p.color3 },
	{ "@punctuation.special.python", p.color3 },
	{ "@function.builtin.python", p.color3 },

	{ "@keyword.operator.python", p.color4, nil, p.italic },
	{ "@method.call.python", p.color4 },
	{ "@function.python", p.color4 },
	{ "@function.call.python", p.color4 },
	{ "@type.python", p.color4 },

	{ "@constructor.python", p.color5 },
	{ "@field.python", p.color5 },

	{ "@variable.python", p.color6 },

	-- function arguments (keys)
	{ "@parameter.python", p.color7 },

	{ "@string.python", p.color8 },

	{ "@constant.builtin.python", p.blue },

	-- terraform
	{ "@none.terraform", p.color3 },
	{ "@lsp.type.type.terraform", p.color3 },
	{ "@lsp.type.property.terraform", p.color4 },
	{ "@lsp.type.variable.terraform", p.color5 },
	{ "@lsp.type.enumMember.terraform", p.color8 },
	{ "@lsp.type.parameter.terraform", p.color8 },
	{ "@lsp.type.string.terraform", p.color8 },
	{ "@lsp.type.stringMember.terraform", p.color8 },
}
