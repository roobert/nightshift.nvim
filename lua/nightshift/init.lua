M = {}

local config = {
	palette = "night",
	accent = "pastel",
}

M.setup = function(opts)
	config = vim.tbl_extend("force", config, opts)
end

M.get = function(key)
	return config[key]
end

function M.load()
	vim.g.colors_name = "nightshift"

	-- options
	vim.o.termguicolors = true
	vim.o.background = "dark"

	-- override border types for hover and diagnostic floats..
	vim.diagnostic.config({ float = { border = "rounded" } })

	local float = { focusable = true, style = "minimal", border = "rounded" }
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, float)
	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, float)

	require("lspconfig.ui.windows").default_options.border = "single"

	-- load the colorscheme mappings
	require("nightshift.utils").apply_highlight_groups(require("nightshift.highlights"))
end

return M
