if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias nvim="$HOME/Applications/nvim.appimage"
alias nv=nvim

fish_add_path -a "$HOME/.local/bin"

starship init fish | source

printf "✱ Greetings.\n\n"
fastfetch
