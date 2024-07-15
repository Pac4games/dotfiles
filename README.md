# My GNOME dotfiles
My dotfiles for my GNOME coding environment.

# Previews
Dracula:

![00](https://user-images.githubusercontent.com/96696321/198705771-7aaf9c62-c764-4094-96ce-5aa2de5a2e70.png)
![Screenshot from 2022-10-28 19-15-36](https://user-images.githubusercontent.com/96696321/198706077-ba273ea2-52b4-4238-828b-ef48637496b5.png)
![Screenshot from 2022-10-28 19-17-49](https://user-images.githubusercontent.com/96696321/198705940-5989bf20-9f51-4926-92d6-1582e986a6b8.png)

Nightfox:

![Screenshot from 2023-02-07 11-56-04](https://user-images.githubusercontent.com/96696321/217240515-d285a65b-1d88-4bf0-8acf-50c291266a90.png)
![Screenshot from 2023-02-07 11-59-21](https://user-images.githubusercontent.com/96696321/217240551-60ea1d15-3a3d-4c4e-9cd4-120d315f0feb.png)
![Screenshot from 2023-02-07 12-00-56](https://user-images.githubusercontent.com/96696321/217240575-fa3cc41a-b90a-4b2f-b8a0-d93061473f9f.png)

Tokyonight:

![Screenshot from 2023-08-02 11-56-35](https://github.com/Pac4games/dotfiles/assets/96696321/f737d35e-c22d-4224-8913-2c8c7285ba32)
![image](https://github.com/Pac4games/dotfiles/assets/96696321/b6bbbe8c-11a2-40dc-972d-b36d411fa4cf)
![image](https://github.com/Pac4games/dotfiles/assets/96696321/5f112837-ca44-43bd-ba4a-6d1904d06fb9)

Skeuos:

![it's clOVER](https://github.com/Pac4games/dotfiles/assets/96696321/35887a5e-2c1f-4212-b4d6-3ae6ca67e3cb)
![we're ceroBACK](https://github.com/Pac4games/dotfiles/assets/96696321/2fc5a82d-46cc-4017-8dbc-f32a18ab29b4)
![juandice](https://github.com/Pac4games/dotfiles/assets/96696321/f3648488-9454-4161-8763-5926c364fc6a)

# Neovim config installation
As of the last rewrite, the "Plug" plugin manager has been replaced with "Packer" for more efficient and clean plugin management, and as a result there is no need to manually install the plugin manager since it will be installed right after you open Neovim with this config for the first time.

After Packer finished its installation, follow these steps:
- Use `:PackerSync` to make sure all the plugins get installed correctly;
- Re-open Neovim, then type `:Mason` to open the Mason menu. This will allow you to easily manage your installed LSP's (language server protocols), needed by `nvim-cmp`, that will provide you with code auto-completion inside Neovim, along with real-time warnings and errors in your code. By default, this configuration will automatically install the C and Lua LSP's;
- Reopen Neovim again, and do `:TSInstall X` to install the parser for the languages that you want, with "X" being the name of the language (for example, `:TSInstall cpp` will install the C++ parser). This is just basically a richer syntax highlighting than Neovim offers by default.

And you're done!

# Installed Neovim Plugins

- [`Packer`](https://github.com/wbthomason/packer.nvim) - Plugin manager.
- [`42header`](https://github.com/42Paris/42header) - Header used by 42 School's students.
- [`neo-tree.nvim`](https://github.com/nvim-neo-tree/neo-tree.nvim) - File tree for Neovim.
- [`nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons) - Icons for Neovim (used in `neo-tree.nvim`). Needs a [Nerd Font](https://www.nerdfonts.com/) installed to work!!!
- [`nvim-autopairs`](https://github.com/windwp/nvim-autopairs) - Autopairing for Neovim.
- [`indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim) - Shows an indentation line to make it look cleaner.
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting for Neovim.
- [`nvim-ts-rainbow`](https://github.com/p00f/nvim-ts-rainbow) - Rainbow paratheses addon for treesitter.
- [`tokyonight.nvim`](https://github.com/folke/tokyonight.nvim) - Colorscheme used in the current config.
- [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim) - Very customizable airline.
- [`telescope.nivm`](https://github.com/nvim-telescope/telescope.nvim) - File finder (I don't personally use it but it might suit your taste).
- [`mason.nvim`](https://github.com/williamboman) - LSP package manager.
- [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp) - Autocompletion for Neovim.
- [`presence.nvim`](https://github.com/andweeb/presence.nvim) - Discord rich presence.
- [`vim-godot`](https://github.com/habamax/vim-godot) - Utilities for using Godot with Vim.

Some other dependencies are included in order to make this configuration properly work.

# Final notes

I decided to do this recent rewrite of my configuration following [these tutorials](https://www.youtube.com/playlist?list=PLsz00TDipIffxsNXSkskknolKShdbcALR) in order to increase the efficiency of my workflow while learning more about Neovim and the Lua programmig language, seeing that I had only written configurations for both Vim and Neovim using vimscript, and I have to say I'm really satisfied with the result, totally worth the time invested.
