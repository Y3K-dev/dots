set -U fish_greeting ""

# sh ~/.config/rxfetch/rxfetch
# cat /sys/class/power_supply/BAT0/capacity

alias ls="exa -lah"
alias c="clear"
alias rxfetch="sh ~/.config/rxfetch/rxfetch"
alias vim="nvim"
alias checkwifi="nmcli dev wifi"
alias sl="ls"
alias sn="shutdown now"
alias search="nix-env -qa"
alias list="nix-env -q"
alias install="nix-env -iA"
alias garbage="nix-collect-garbage -d"
alias delete="nix-env -e"
alias .="cd"
alias vimc="cd ~/.config/nvim && nvim ~/.config/nvim/init.vim"

# starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
