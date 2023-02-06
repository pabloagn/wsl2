#============================================================
# ZSHRC CONFIGURATION FILE
# OWNERSHIP: USER
# PABLO AGUIRRE NÚÑEZ
#============================================================

#------------------------------------------------------------
# BEGINNING OF ZSHRC CONFIGURATION FILE
#------------------------------------------------------------

#============================================================
#  General configuration
#============================================================
# Instant Prompt (from pk10 theme)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use most as pager (instead of less)
#export PAGER=most
export PAGER=less

umask 022

#------------------------------------------------------------
# Export Path Variables
#------------------------------------------------------------
# Export bin paths
# Export the following paths, plus the already exported $PATH variables
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh

# Export cache path
export ZSH_CACHE_DIR=$HOME/.config/zsh/hist-cache

# Export hist file
HISTFILE=/home/pabloagnck/.cache/zsh/.zsh_history
SAVEHIST=100000
HISTFILESIZE=500000
setopt appendhistory

#------------------------------------------------------------
# Pastel color mode settings
#------------------------------------------------------------
export PASTEL_COLOR_MODE=24bit

#------------------------------------------------------------
# Auto tab complete
#------------------------------------------------------------
# Allow for showing hidden files
setopt globdots

# Other useful set opts
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if it's not a command
setopt always_to_end # move cursor to end if word had one match

#============================================================
# OH-MY-ZSH CONFIGURATION
#============================================================
# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM=$HOME/.config/oh-my-zsh/custom

#============================================================
# ANTIGEN CONFIGURATION
#============================================================

#------------------------------------------------------------
# Export Antigen Path Variables
#------------------------------------------------------------
# Export adotfir, which will contain bundle config files
export ADOTDIR=$HOME/.config/antigen

# Export zcompdump dir
export ANTIGEN_COMPDUMP=$HOME/.config/antigen/.zcompdump

# Export Antigen log dir
export ANTIGEN_LOG=$HOME/.config/antigen/antigen.log

# Let Antigen auto check configuration files
typeset -a ANTIGEN_CHECK_FILES=($HOME/.config/zsh/.zshrc)

#------------------------------------------------------------
# Initialize Antigen & Plugins
#------------------------------------------------------------
# Load Antigen
source ~/.config/antigen/antigen.zsh

# Load oh-my-zsh library.
antigen use oh-my-zsh
# Load bundles from the default repo (oh-my-zsh).
antigen bundle command-not-found
antigen bundle docker

# Load bundles from external repos.
antigen bundle git
antigen bundle pip
#antigen bundle zsh-users/zsh-completions
#antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle python
antigen bundle sudo
antigen bundle virtualenv
antigen bundle heroku
#antigen bundle shopt
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

#============================================================
# P10K CONFIGURATION
#============================================================
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#============================================================
# GENERAL ZSH CONFIGURATION
#============================================================
# Case-sensitive completion.
CASE_SENSITIVE="true"
zstyle ':completion:*' group-name '' # group results by category
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Set UTF-8 encoding
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8 

#Prompt indent (removes unwanted right prompt one-char indent)
ZLE_RPROMPT_INDENT=0

# Source oh-my-zsh config file
source $ZSH/oh-my-zsh.sh


#============================================================
# ALIASES
#============================================================
# Append shell aliases.
test -r ~/.config/zsh/.aliases && source ~/.config/zsh/.aliases

# Set vim filetype
# vim: set ft=zsh:

#------------------------------------------------------------
# END OF ZSHRC CONFIGURATION FILE
#------------------------------------------------------------


















