#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>

# Source Prezto
# Takes ~100ms with the current settings
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if which rbenv > /dev/null; then 
  eval "$(rbenv init -)"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias be="bundle exec"
alias bi="bundle install"
alias bef="bundle exec fastlane"

# Costs ~300ms
# Alternative to speed up time: https://github.com/pyenv/pyenv/issues/2918#issuecomment-1977029534
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init - --no-rehash zsh)"
# fi

# autoupdate is very slow one a day
DISABLE_AUTO_UPDATE="true" 