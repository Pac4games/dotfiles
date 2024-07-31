vim.o.termguicolors = true
require('onedark').setup {
	style = 'cool',
	transparent = true
}
require('onedark').load()
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("let &fcs='eob: '")
