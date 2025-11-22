function mkcd --description 'makes directory tree and change current directory to it'
    mkdir -p "$argv"
    cd "$argv"
end
