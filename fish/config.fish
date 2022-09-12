set -U fish_greeting ""

alias ls="exa -lah"
alias c="clear"
alias rxfetch="sh ~/.config/rxfetch/rxfetch"
alias c="codium"
alias htop="btop"
alias sl="ls"
alias sn="shutdown now"
alias search="nix-env -qa"
alias list="nix-env -q"
alias install="nix-env -iA"
alias garbage="nix-collect-garbage -d"
alias delete="nix-env -e"
alias .="cd"
alias vimc="cd ~/.config/nvim && nvim ~/.config/nvim/init.vim"

# sh ~/.config/rxfetch/rxfetch

if status is-interactive
    # Commands to run in interactive sessions can go here
end
# THEME PURE #
set fish_function_path /home/noah/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /home/noah/.config/fish/functions/theme-pure/conf.d/pure.fish
