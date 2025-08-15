require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		'c',
		'cpp',
		'lua',
		'vim',
		'bash'
	},
	auto_install = true,
	highlight = {
		enable = true
	},
	rainbow = {
		enable = true
	},
	indent = { enable = false },
}

-- Filetype detection for Hyprland config files
vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" }
})
