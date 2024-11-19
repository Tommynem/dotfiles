export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git)

source $ZSH/oh-my-zsh.sh
alias z='source /home/tom/.zshrc'
function setalias() {
	echo "alias $1" >> "$HOME/.zshrc"
	source $HOME/.zshrc
}

function trash() { 
	mv "$@" ~/.Trash;
}

function timeshift() {
	sudo timeshift "$@"
}

function browse() {
	librewolf "$@"
}

function setvar() {
	echo "$1" >> "$HOME/.zshrc"
}

alias ls='ls --color=auto'
alias ll='ls -a -l'
alias cd..='cd ..'
alias cd...='cd ../..'
alias grep='grep --color=auto'
alias update='sudo timeshift --create --comments "Autobackup before update" && sudo pacman -Syu'
alias h='cd ~'
alias c='clear'

# Config locations
NVIMCONF="$HOME/.config/nvim/init.lua"
ZSHCONF="$HOME/.zshrc"
ALACRITTYCONF="$HOME/.config/alacritty/alacritty.toml"

# Config access via nvim
alias nvimrc='nvim $NVIMCONF'
alias zshrc='nvim $ZSHCONF'
alias alacrittyrc='nvim $ALACRITTYCONF'
alias aliases='nvim $ZSHCONF'


# Aliases and Variables automatically set by setalias and setvar

alias backup='sudo timeshift --create --comments "Backed up via ZSH backup command"'
alias wget='wget -c'
TMUXCONF='/home/tom/.tmux.conf'
alias tmuxrc='nvim $TMUXCONF'
alias t='tmux source ~/.tmux.conf'
