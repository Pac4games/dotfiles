# My GNOME dotfiles
My dotfiles for my GNOME coding environment.

Dependecies list:
```
neovim zsh oh-my-zsh curl
```
# Preview
![00](https://user-images.githubusercontent.com/96696321/198705771-7aaf9c62-c764-4094-96ce-5aa2de5a2e70.png)
![Screenshot from 2022-10-28 19-15-36](https://user-images.githubusercontent.com/96696321/198706077-ba273ea2-52b4-4238-828b-ef48637496b5.png)
![Screenshot from 2022-10-28 19-17-49](https://user-images.githubusercontent.com/96696321/198705940-5989bf20-9f51-4926-92d6-1582e986a6b8.png)
# Neovim config installation
If you are using Neovim as a regular package:
- Install the `vim-plug` plugin manager;
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
- Place the `init.vim` config file into `~/.config/nvim`. If said directory does not exist, create it.

Else, if using it as a Flatpak (like in 42 School's computers):
- Run `nvim` at least once by running `flatpak run io.neovim.nvim` (you can run it as just `nvim` or `nv` by using my zshrc or by adding an alias to your own);
- Install the `vim-plug` plugin manager:
```
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- Place the `init.vim` file into `~/.var/app/io.neovim.nvim/config/nvim`, and create the necessary directories if they do not exist.

After this step, the installation is the same for both installation sources.

- Open `init.vim` with `nvim` and do `:PlugInstall` to install the necessary plugins;
- Quit, open the file again, and do `:TSInstall X` to install the parser for the languages that you want, with "X" being the name of the language (for example, `:TSInstall cpp` will install the C++ parser). This is just basically a richer syntax highlighting than Neovim offers by default.

And you're done!

# Installed Neovim Plugins

- [`42header`](https://github.com/42Paris/42header) - Header used by 42 School's students.
- [`vim-airline`](https://github.com/vim-airline/vim-airline) - Airline for Vim/Neovim.
- [`vim-airline-themes`](https://github.com/vim-airline/vim-airline-themes) - Themes for `vim-airline`.
- [`neo-tree.nvim`](https://github.com/nvim-neo-tree/neo-tree.nvim) - File tree for Neovim.
- [`nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons) - Icons for Neovim (used in `neo-tree.nvim`). Needs a [Nerd Font](https://www.nerdfonts.com/) installed to work!!!
- [`vim-devicons`](https://github.com/ryanoasis/vim-devicons) - Icons for Vim (used in `vim-airline`). Again, needs a Nerd Font to work.
- [`nvim-autopairs`](https://github.com/windwp/nvim-autopairs) - Autopairing for Neovim.
- [`indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim) - Shows an indentation line to make it look cleaner.
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting for Neovim.

Also includes the [Dracula Vim theme](https://github.com/dracula/vim), and some other plugins not mentioned that might be purged in the next commits, feel free to remove them and see if you have any issues!
