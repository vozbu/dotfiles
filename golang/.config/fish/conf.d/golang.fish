set -gx GOPATH "$HOME/programming/go"
set -gx GOFLAGS "-mod=vendor"   # https://github.com/golang/go/issues/41301
fish_add_path --global $GOPATH/bin
