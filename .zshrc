#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#
# -----------------------------------------------------
# ML4W zshrc loader
# -----------------------------------------------------

# DON'T CHANGE THIS FILE

# You can define your custom configuration by adding
# files in ~/.config/zshrc
# or by creating a folder ~/.config/zshrc/custom
# with you own zshrc configuration
# -----------------------------------------------------

if [ -d ~/.config/zshrc/custom ]; then
    for f in ~/.config/zshrc/custom/*; do source $f; done
else
    for f in ~/.config/zshrc/*; do source $f; done
fi


eval "$(zoxide init zsh)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm, without auto-using the default version
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:$HOME/go/bin" #import golang bin


#ALIAS
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias docker='sudo docker'
alias s='yay -Ss'
#Source
source /usr/share/nvm/init-nvm.sh

#use

. "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"

[[ -s "/home/dapra/.gvm/scripts/gvm" ]] && source "/home/dapra/.gvm/scripts/gvm"
eval "$(mise activate zsh)"

# bun completions
[ -s "/home/dapra/.bun/_bun" ] && source "/home/dapra/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/go/bin
