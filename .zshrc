## START OF FILE ###############################################################

# Filename:      ~/.zshrc
# Purpose:       config file for zsh
# Author:        Lucas Maximiliano Marino <hello@lucasmarino.me>
# Bug Reports:   see https://github.com/elementh/dotfiles/issues
# License:       MIT

################################################################################
#                                                                              #
# Yo, this is my config, have fun.                                             # 
# Check my web if you are bored: lucasmarino.me                                #
#                                                                              #
################################################################################

## ZSTYLE

zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*: manuals' separate-sections true
zstyle ':completion:*: manuals.*' insert-sections   true
zstyle ':completion:*' verbose true
zstyle ':completion:*' rehash true
setopt menu_complete

## FUNCTIONS

# Works when changing directory
function chpwd() {
   ls -lah
}

# Memory overview
memusage() {
   ps aux | awk '{if (NR > 1) print $5;
                  if (NR > 2) print "+"}
                  END { print "p" }' | dc
}

# print hex value of a number
hex() {
   emulate -L zsh
   if [[ -n "$1" ]]; then
       printf "%x\n" $1
   else
       print 'Usage: hex <number-to-convert>'
       return 1
   fi
}

# rgb asciiquarium
rgbquarium() {
   asciiquarium | lolcat
}

# hacking for the lulz
fbi() {
   ls -Rlsiua --author --full-time | lolcat
}

# Opens nautilus in the spot
function nh() {
  nautilus . &
}

## ALIAS

alias yay="paru"
alias zshconfig="vim ~/.zshrc"
alias projects="cd ~/Projects"
alias home="cd ~/"
alias upspeed="iperf3 -c bouygues.iperf.fr -p 5207"
alias pacyeet="sudo rm /var/lib/pacman/db.lck"
alias search="firefox-developer-edition --search"
alias docker-ip="docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
#alias downspeed="iperf3 -c -R bouygues.iperf.fr -p 5207" TODO:fix this.

## EXPORTS

export EDITOR=vim
#export TERM="xterm-256color"
export MOZ_USE_XINPUT2=1

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

export npm_config_prefix="$HOME/.local"

PATH=":$HOME/.local/bin:$PATH"

neofetch | lolcat

## END OF FILE #################################################################

