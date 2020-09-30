PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
PATH=$PATH:$HOME/bin:$HOME/.local/bin
PATH=$PATH:$HOME/.cabal/bin:$HOME/prj/pyprompt
PATH=$PATH:$HOME/bin/barscripts
PATH=$PATH:$HOME/.npm-global/bin
PATH=$PATH:$HOME/.cargo/bin

export PATH HOME TERM ENV

export EDITOR=vim
export WM=xmonad
export PF_INFO="ascii os kernel shell editor wm pkgs memory palette"
export BAT_THEME="gruvbox"
export MANPAGER="sh -c 'col -bx | bat --theme=gruvbox -l man -p'"
