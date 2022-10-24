:set number
:set autoindent
:set smarttab
:syntax off
:set mouse=

call plug#begin()

Plug '42Paris/42header'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'andweeb/presence.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

let g:user42 = 'paugonca'
let g:mail42 = 'paugonca@student.42lisboa.com'
let g:airline_theme='deus'
let NERDTreeShowHidden=1
:colorscheme dracula
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
:lua << EOF
require("nvim-autopairs").setup {}
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true
	}
}
EOF
