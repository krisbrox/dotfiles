export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export BASH_SILENCE_DEPRECATION_WARNING=1

alias gits="git status"
alias la="ls -la"
alias ll="ls -l"
alias ls="ls -l"

PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

PYTHONPATH=".;..;/Users/kristianbrox/src/trend-prediction/topics;$PYTHONPATH"



# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

source ~/.bashrc



. "$HOME/.cargo/env"
