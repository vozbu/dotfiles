function tempe --description "creates temporary dir and enters it"
    cd "$(mktemp -d)"
    chmod -R 0700 .
    if test (count $argv) -eq 1
        mkdir -p "$argv"
        cd "$argv"
        chmod -R 0700 .
    end
end
