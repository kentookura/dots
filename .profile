# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
ENV="$HOME/.config/shell/main.shellrc"
export PATH HOME TERM ENV

export EDITOR=vim
export WM=dwm
export PF_INFO="ascii os kernel shell editor wm pkgs memory palette"
