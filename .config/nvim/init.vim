:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:syntax off
:set mouse=

call plug#begin()

Plug '42Paris/42header'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

call plug#end()

let g:user42 = 'paugonca'
let g:mail42 = 'paugonca@student.42lisboa.com'
let g:airline_theme='violet'
:colorscheme duskfox
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
let &fcs='eob: '
:lua << EOF
require("nvim-autopairs").setup {}
require("neo-tree").setup {
	filesystem = {
		window = {
			width = 30
		},
		use_libuv_file_watcher=true,
	},
}
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true
	},
	rainbow = {
		enable = true
	}
}
EOF
