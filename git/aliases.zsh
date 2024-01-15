# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gac='git add -A && git commit -m'
alias gev='git add . && git rev' # get rid of changes
alias gappend='git add . && git commit -a --amend --no-edit' ## append changes to last commit
alias gitrid='git branch | grep -v "dev" | grep -v "staging" | grep -v "main" | grep -v "master" | xargs git branch -D' ## delete all branches except dev, staging, main, master


