# Alias
alias ls="ls -la"
alias gits="git status"
# Alias: aws
alias awsbrox="aws-vault exec prod-brox --"
alias awssa="aws-vault exec prod-saas --"


# Autoconfigured
_comp_options+=(globdots) # With hidden files
autoload -U compinit; compinit


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} %# '
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f $ '

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

DISABLE_AUTO_TITLE="true"
export ANDROID_HOME="~/.android-sdk/platform-tools"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
