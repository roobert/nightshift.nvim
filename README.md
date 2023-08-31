# :sparkles: Nightshift

A dark low-contrast Neovim theme.

## :dragon: Preview

![Screenshot](https://user-images.githubusercontent.com/226654/204131002-5ee1650b-784b-499a-b1c9-e28bd55250b6.png)

-- visually distinguish precedence of most useful stuff
-- see relationships with fades across related stuff
-- use greys for most stuff, so tuneable with main color

## :hammer_and_wrench: Install

```lua
{
  "roobert/nightshift.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightshift").setup({
      -- night or dusk
      palette = "dark",
      -- bright or pastel
      accent = "pastel",
    })
    vim.cmd([[colorscheme nightshift]])
  end,
}
```

## :squid: Usage

```
colorscheme nightshift
```

## Border Config

LazyVim

```
ui = { border = "rounded" }
```

## Italic Support in Iterm2

TODO

## :snake: Supported Plugins

- Bufferline
- Lualine
- Trouble

## :snake: Improved Languages

These languages have been improved specific treesitter based syntax highlighting:

- python
- terraform/hcl
