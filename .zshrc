export EDITOR=vim

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Basic theme
prompt fade blue

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# Aliases

alias zshconfig="vim ~/.zshrc"
alias github="cd ~/Documents/GitHub"
alias home="cd ~/"

alias gamemode="xinput set-prop 11 303 0"

alias dotupdate="cp ~/.zshrc ~/Documents/GitHub/dotfiles && cp ~/.gitconfig ~/Documents/GitHub/dotfiles"

alias cassiopeia="ssh cassiopeia -L 5900:localhost:5900 -L 9997:localhost:9997 -D 5000"

alias cassiopeiafs="sshfs lucas@cassiopeia:/home/lucas /home/lucas/cassiopeia -C -o allow_other"

alias installPowerlineFonts="cd ~/ &&
	git clone https://github.com/powerline/fonts.git powerlinefonts &&
	cd powerlinefonts &&
	./install.sh &&
	cd .. &&
	rm -rf powerlinefonts"

alias installPacaur="curl -O https://gist.githubusercontent.com/elementh/7433598ea71be6f4fdd7b2bac4b5c33b/raw/651393f258c41638fad4425473283e1d4e937ba4/install-pacaur.sh &&
	chmod +x install-pacaur.sh &&
	./install-pacaur.sh &&
	rm install-pacaur.sh"

function chpwd() {
	ls -lh
}

export TERM="xterm-256color"




