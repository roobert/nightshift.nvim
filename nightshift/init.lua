M = {}

-- TODO:
-- * lightmode
-- * improve the color colors?
-- * i think the colorscheme loading is bad somehow due to flash in new buffers?
-- * unselected title tab text
-- * fix cmp/tab shit
-- * background color for action hints..
-- * re-add todo/type shit to lualine

function M.load()
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nightshift"

	-- load the colorscheme mappings
	require("nightshift.utils").apply_highlight_groups(require("nightshift.highlights"))
end

return M
