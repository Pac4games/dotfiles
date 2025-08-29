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

# Environment variables
set -gx JUMP_SERVER "rcp_user@10.110.107.118"
set -gx MY_LAB "root@128.140.72.90"

# Loading starship prompt
starship init fish | source

# Aesthetic fluff
set_color red
printf "✱ Greetings.\n\n"
set_color normal

fastfetch
