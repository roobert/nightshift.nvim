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
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nightshift"

	-- load the colorscheme mappings
	require("nightshift.utils").apply_highlight_groups(require("nightshift.highlights"))
end

return M
