M = {}

M.apply_highlight_groups = function(highlights)
	-- clear all current highlights
	if vim.g.colors_name then
		vim.cmd("highlight clear")
	end

	for _, highlight in pairs(highlights) do
		local hlgroup = highlight[1]

		local guifg = highlight[2] and "guifg=" .. highlight[2] or "guifg=NONE"
		local guibg = highlight[3] and "guibg=" .. highlight[3] or "guibg=NONE"

		-- handle italic, bold, underline, etc.
		local gui = "gui="
		if highlight[4] then
			if type(highlight[4]) == "table" then
				-- Join the table of styles into a comma-separated string
				gui = gui .. table.concat(highlight[4], ",")
			else
				-- If it's a single string, just append it
				gui = gui .. highlight[4]
			end
		else
			gui = ""
		end

		vim.cmd(string.format("highlight %s %s %s %s", hlgroup, guifg, guibg, gui))
	end
end

return M
