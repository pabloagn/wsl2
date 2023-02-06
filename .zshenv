#============================================================
# ZSHENV CONFIGURATION FILE
# OWNERSHIP: USER
# PABLO AGUIRRE NÚÑEZ
#============================================================

#------------------------------------------------------------
# BEGINNING OF ZSHENV CONFIGURATION FILE
#------------------------------------------------------------

# Global Order: zshenv, zprofile, zshrc, zlogin

#============================================================
# Export environment variables
#============================================================

#------------------------------------------------------------
# Other default paths
#------------------------------------------------------------
# Delete less history file
export LESSHISTFILE=/dev/null

# Export bash history
export HISTFILE="/home/pabloagnck/.cache/zsh/.zsh_history"

# Export directory to load zsh config file.
export ZDOTDIR="$HOME/.config/zsh"

# Export configuration directory.
export XDG_CONFIG_HOME="$HOME/.config"

# Export default editor.
export EDITOR="/usr/bin/nvim"
