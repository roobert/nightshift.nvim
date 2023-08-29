M = {}

-- TODO:
-- * lightmode
-- * improve the color colors?
-- * i think the colorscheme loading is bad somehow due to flash in new buffers?
-- * unselected title tab text
-- * fix cmp/tab stuff
-- * background color for action hints..
-- * re-add todo/type stuff lualine

function M.load()
	vim.g.colors_name = "nightshift"

	-- options
	vim.o.termguicolors = true
	vim.o.background = "dark"

	-- override border types for hover and diagnostic floats..
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
	vim.diagnostic.config({ float = { border = "rounded" } })

	-- load the colorscheme mappings
	require("nightshift.utils").apply_highlight_groups(require("nightshift.highlights"))
end

return M
