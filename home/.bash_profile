alias ..="cd .."
alias dockerc='docker-compose'
alias grep='grep --color'
alias ll='ls -lAFh'
alias localip="ipconfig getifaddr en0"
alias ls='ls -G'
alias zcat='gunzip -c'

# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# WP CLI completion
source ~/wp-completion.bash

# GIT helpers and CLI completion 
source ~/git-completion.bash
source ~/git-helpers.bash

profile_extra="$HOME/.bash_profile-extra"
[ -r "$profile_extra" ] && source "$profile_extra";
