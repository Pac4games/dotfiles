require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'duskfox',
	},
	sections = {
		lualine_a = {
			'filename',
			path = 1,
		}
	}
}
