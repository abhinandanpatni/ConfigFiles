parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'

}


export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFp'
alias bashrc='vim ~/.bash_profile; source ~/.bash_profile'
alias subl='open -a /Applications/Sublime\ Text\ 2.app/'

function create(){
    touch $1
    subl $1
}
