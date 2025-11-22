set -gx PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/bin $PATH
if test (uname) = Linux
    set -gx EDITOR=/usr/bin/vim
end
set -gx VIEWER "bat --paging=always"
set -gx MANPAGER "env MAN_PN=1 vim -M +MANPAGER -"
set -gx MANPAGER "vim -c ASMANPAGER -"
set -gx MANPATH "$HOME/.local/share/man" "$MANPATH"
set -gx MAKEFLAGS "-j "(nproc)
set -gx XZ_OPT "-T0 -9"

alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"
alias scp="scp -p -r"
alias lg="lazygit"
alias yt-dlp="yt-dlp --cookies-from-browser firefox"
