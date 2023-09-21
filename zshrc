
# Alias 
alias ls="ls -la"
alias gits="git status"

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


