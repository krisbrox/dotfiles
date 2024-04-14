PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias fix="mvn ktlint:format"

alias kd="aws-vault exec kobler-dev --"
alias kp="aws-vault exec kobler-prod --"
alias kr="aws-vault exec kobler-root --"

# alias gitprune="git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done"

# Load Bash completions
# Workaround a bug in bash-completion@2 2.10
# https://github.com/scop/bash-completion/issues/374
# https://github.com/Homebrew/homebrew-core/pull/47527
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d" 

#[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
[[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
#[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
eval "$(rbenv init -)"


export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
. "$HOME/.cargo/env"
