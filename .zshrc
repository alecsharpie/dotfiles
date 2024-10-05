ZSH=$HOME/.oh-my-zsh

# see all themes at https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell" # "dstufft"

plugins=(git gitfast common-aliases zsh-syntax-highlighting history-substring-search ssh-agent direnv)

# turn off Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

#add line to ignore permissions/skip the verification of insecure directories
ZSH_DISABLE_COMPFIX=true

# Load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Global scripts
export PATH=$PATH:~/scripts

# GCP SDK - Update path
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# GCP SDK- Enable shell command completion
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi

# direnv
eval "$(direnv hook zsh)"
