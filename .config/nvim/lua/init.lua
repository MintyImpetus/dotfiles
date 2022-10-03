vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

local configs = require'nvim-treesitter.configs'
configs.setup {
	ensure_installed = "maintained",
	highlight = {
	       	enable = true,
	}
}
