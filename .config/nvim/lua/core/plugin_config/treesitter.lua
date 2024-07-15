require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		'c',
		'cpp',
		'lua',
		'vim',
		'bash'
	},
	highlight = {
		enable = true
	},
	rainbow = {
		enable = true
	},
}
