# Create XDG vars
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS=/usr/local/share:/usr/share:$HOME/.nix-profile/share
export XDG_CONFIG_DIRS=/etc/xdg

# Make programs XDG complient
if type "compinit" > /dev/null; then
        compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
fi
alias nvidia-settings="nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export VOLTA_HOME="$XDG_CONFIG_HOME"/volta
export WINEPREFIX="$XDG_CONFIG_HOME"/wine
export HISTFILE="$XDG_CONFIG_HOME"/zsh/history
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export KERAS_HOME="${XDG_STATE_HOME}/keras"
export PYTHONSTARTUP="/etc/python/pythonrc"
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var

#Set other env vars
export EDITOR="nvim"
export VISUAL="nvim"

# Create alias'
alias python=/usr/bin/python3
alias update="sudo apt update && sudo apt upgrade"
alias get="sudo apt install"
alias tsget="sudo tailscale file get ~/Downloads"
alias pdev="source /home/jeremy/PyVenv/bin/activate"

# Create functions
function unique(){
        find . ! -empty -not -path "./$1/*" -type f -exec md5sum {} + | sort | uniq -w32 -dD
}

#Create Path
export PATH="/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/games:$HOME/.local/bin:$VOLTA_HOME/bin"

# Set Theme: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# Invove Oh My Zsh
source $ZSH/oh-my-zsh.sh
