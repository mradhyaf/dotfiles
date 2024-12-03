# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export EDITOR="/bin/nvim"
export VISUAL="/bin/nvim"
export MANPAGER="nvim +Man!"
export GOPATH="$HOME/go"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# if [ -d ~/.bashrc.d ]; then
#     for rc in ~/.bashrc.d/*; do
#         if [ -f "$rc" ]; then
#             . "$rc"
#         fi
#     done
# fi
# unset rc

# Shell prompt
if ! type __git_ps1 &> /dev/null && [ -e /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    . /usr/share/git-core/contrib/completion/git-prompt.sh
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

shopt -s autocd # cd into directory by only typing directory name
HISTSIZE= HISTFILESIZE= # Infinite history
# Aliases
alias vim="nvim"
alias mkdir="mkdir -pv"
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -a"
alias ll="la -l"
alias grep="grep --color=auto"
alias apt="dnf" # For fedora
