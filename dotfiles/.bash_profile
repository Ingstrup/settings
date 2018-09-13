#aliases
alias ll='clear; ls -la'
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias ls='ls -aG'
alias rename='mv' #careful mv is move - is there a way to only rename?
alias q='exit'
#git and rubocop
alias rbcm="git diff --name-only | grep '.rb' | xargs rubocop"
alias rbcc="git diff --cached --name-only | grep '.rb' | xargs rubocop"
alias rspecm="git diff --name-only | grep '.rb' | xargs rspec"
alias rspecc="git diff --cached --name-only | grep '.rb' | xargs rspec"

alias findit="cd ~/repos/toshokan"
alias getit="cd ~/repos/getit"
alias repos="cd ~/repos"

alias sourcebash="source ~/.bash_profile"
alias editbash="vi ~/.bash_profile"
#rails
alias be='bundle exec'
alias rials='rails'
alias rilas='rails'

alias ag='ag --ignore spec/ --ignore vendor/'

shopt -s autocd


# This is just silly
simon() {
  if [[ $1 == "says" ]]; then
    shift
    command bundle exec $@
  fi
}


#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export  PS1="\[\033[0;96m\]\T \u@\h:\[\033[0;92m\]\w\$(parse_git_branch)$ \[\033[0;0m\]"

HISTSIZE=10000
HISTFILESIZE=1000000

