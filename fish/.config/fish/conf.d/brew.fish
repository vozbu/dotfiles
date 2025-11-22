if type -q brew
    eval (brew shellenv)

    fish_add_path --global "$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin"
    fish_add_path --global "$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin"
    fish_add_path --global "$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin"

    set MANPATH "$HOMEBREW_PREFIX/share/man" "$MANPATH"
    set MANPATH "$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman" "$MANPATH"

    if type -q "$HOMEBREW_PREFIX/bin/vim"
        set -gx EDITOR "$HOMEBREW_PREFIX/bin/vim"
    end
end
