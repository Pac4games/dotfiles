if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Path for Python modules and other user installed binaries
fish_add_path -a "$HOME/.local/bin"

# Aliases
alias nvim="$HOME/Applications/nvim.appimage"
alias nv=nvim

alias gp="git push"
alias gac="git add -A && git commit"
alias gc="git checkout"

# Loading starship prompt
starship init fish | source

# Aesthetic fluff
printf "✱ Greetings.\n\n"
fastfetch
