export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# bun completions
[ -s "/opt/homebrew/Cellar/bun/1.2.0/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/Cellar/bun/1.2.0/share/zsh/site-functions/_bun"
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/macbookair/.composer/vendor/bin:$PATH"


eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
