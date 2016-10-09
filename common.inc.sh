photorec_files() {
    find . -type f -regex '.*\/f[0-9][0-9]*\.[^\.][^\.]*'
}

fat() {
    printf '%s' "$1" | tr '\0-\37<>:"/?|*\\' _
}

trim() {
    sed 's/\s*$//g;s/^\s*//g'
}

extname() {
    filename="$1"
    printf '%s' "$filename" | sed 's/.*\(\.[^\.][^\.]*\)/\1/'
}
