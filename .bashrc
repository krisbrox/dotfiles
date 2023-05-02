PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias testit="echo TEST BASHRC"
alias fix="mvn ktlint:format"

alias kd="aws-vault exec kobler-dev"
alias kd="aws-vault exec kobler-dev --"
alias kp="aws-vault exec kobler-prod --"
alias kr="aws-vault exec kobler-root --"

# alias gitprune="git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done"

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

eval "$(rbenv init -)"


export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
