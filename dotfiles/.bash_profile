#aliases
alias ll='clear; ls -la'
alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

#rbenv
eval "$(rbenv init -)"

#bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export  PS1="\[\033[0;96m\]\u@\h:\[\033[0;92m\]\w\$(parse_git_branch)$ \[\033[0;0m\]"

