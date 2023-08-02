local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use '42Paris/42header'
  use 'nvim-neo-tree/neo-tree.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'windwp/nvim-autopairs'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/tokyonight.nvim'
  use 'andweeb/presence.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
	'nvim-treesitter/nvim-treesitter',
	requires = { {'MunifTanjim/nui.nvim'} },
  }
  use 'p00f/nvim-ts-rainbow'
  use {
    'nvim-telescope/telescope.nvim',
	tag = '0.1.0',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'HallerPatrick/py_lsp.nvim'
  use {
	'L3MON4D3/LuaSnip',
	requires = { {'rafamadriz/friendly-snippets'} },
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
