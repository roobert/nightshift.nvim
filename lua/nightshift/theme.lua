-- TODO:
-- * tab colors
-- * improve the color colors?
-- * re-add todo count stuff lualine
-- * background color for action hints and status bar
-- * add description to README

local palettes = {
	day = {
		color0 = "#e9e9ed",
		color1 = "#d3d4db",
		color2 = "#bdbfc9",
		color3 = "#a7a9b7",
		color4 = "#7b7f94",
		color5 = "#656982",
		color6 = "#4e5470",
		color7 = "#383f5e",
		color8 = "#1A1E39",
	},

	night = {
		color0 = "#191d33",
		color1 = "#1A1E39",
		color2 = "#383f5e",
		color3 = "#4e5470",
		color4 = "#7b7f94",
		color5 = "#a7a9b7",
		color6 = "#bdbfc9",
		color7 = "#d3d4db",
		color8 = "#e9e9ed",
	},

	dusk = {
		color0 = "#121527",
		color1 = "#1A1E39",
		color2 = "#232A4D",
		color3 = "#3E4D89",
		color4 = "#687BBA",
		color5 = "#A4B1D6",
		color6 = "#bdbfc9",
		color7 = "#DFE5F1",
		color8 = "#e9e9ed",
	},
}

local accents = {
	dark = {
		accent0 = "#B15555",
		accent1 = "#B17855",
		accent2 = "#B1AA55",
		accent3 = "#56A665",
		accent4 = "#568FA0",
		accent5 = "#B15564",
		accent6 = "#9056A6",
	},

	bright = {
		accent0 = "#D66A6A",
		accent1 = "#D6956A",
		accent2 = "#D6CC6A",
		accent3 = "#6AD682",
		accent4 = "#6AB7D6",
		accent5 = "#D66A7E",
		accent6 = "#B36AD6",
	},

	pastel = {
		accent0 = "#D97C8F",
		accent1 = "#D9AE7E",
		accent2 = "#D9D87E",
		accent3 = "#A5D9A7",
		accent4 = "#8BB9C8",
		accent5 = "#C9A1D3",
		accent6 = "#B8A1D9",
	},
}

local palette = palettes[require("nightshift").get("palette")] or palettes["night"]
local accent = accents[require("nightshift").get("accent")] or accents["bright"]

local italics = function()
	if require("nightshift").get("italics") then
		return "italic"
	else
		return "NONE"
	end
end

local bg = function()
	if require("nightshift").get("transparent_background") then
		return nil
	else
		return palette.color0
	end
end

return {
	-- FIXME:
	italic = italics(),

	-- FIXME:
	bg = bg(),
	fg = palette.color8,

	red = accent.accent0,
	orange = accent.accent1,
	yellow = accent.accent2,
	green = accent.accent3,
	blue = accent.accent4,
	pink = accent.accent5,
	purple = accent.accent6,

	color0 = palette.color0,
	color1 = palette.color1,
	color2 = palette.color2,
	color3 = palette.color3,
	color4 = palette.color4,
	color5 = palette.color5,
	color6 = palette.color6,
	color7 = palette.color7,
	color8 = palette.color8,
}
