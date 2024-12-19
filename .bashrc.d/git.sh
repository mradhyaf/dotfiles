# Shell prompt
if ! type __git_ps1 &> /dev/null && [ -e /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
fi

if type __git_ps1 &> /dev/null; then
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWCOLORHINTS=1
    export PROMPT_DIRTRIM=2
    export PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
    PS1='\[\e[1;2m\][\[\e[0;1;36m\]\u\[\e[0m\] in \[\e[38;5;73;4m\]\W\[\e[0;1;2m\]]\[\e[0m\]${PS1_CMD1}\$ '
else
    PS1='\[\e[1;2m\][\[\e[0;1;36m\]\u\[\e[0m\] in \[\e[38;5;73;4m\]\W\[\e[0;1;2m\]]\[\e[0m\]\$ '
fi
