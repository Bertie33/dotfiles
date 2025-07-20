# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

alias c="clear"
alias vim='nvim'
alias vi='nvim'
# alias ls='ls --color=auto'
alias ls='eza --long --all --no-permissions --no-filesize --no-user --no-time --git'
alias cat='batcat --paging=never --theme=DarkNeon --style=plain'
alias fzfp="fzf --preview 'batcat --style=numbers --color=always {}'"

export EDITOR="nvim"
export SHELL="zsh"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
