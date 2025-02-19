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

HISTSIZE= HISTFILESIZE= # Infinite history
# Aliases
alias vim="nvim"
alias mkdir="mkdir -pv"
alias cp="cp -p" # Keep file permissions
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -a"
alias ll="la -l"
alias lns="ln -s"
alias grep="grep --color=auto"

# rsync sane defaults
cpr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 "$@"
}
mvr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files "$@"
}
