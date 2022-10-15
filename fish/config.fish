set -U fish_greeting ""

alias ls="exa -lah"
alias c="clear"
alias rxfetch="sh ~/.config/rxfetch/rxfetch"
alias c="codium"
alias htop="btop"
alias cl="clear"
alias sl="ls"
alias y="yarn"
alias brave="brave-browser"
alias sn="shutdown now"
alias ins="sudo dnf install"
alias rem="sudo dnf remove"
alias .="cd"
alias vimc="cd ~/.config/nvim && nvim ~/.config/nvim/init.vim"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
