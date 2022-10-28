# My GNOME dotfiles
My dotfiles for my GNOME coding environment.

Dependecies list:
```
neovim zsh oh-my-zsh curl
```
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
