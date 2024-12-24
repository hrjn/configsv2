
# Shortcut to update Brew packages
jb () {
    cd $CONFIG_DIR
    just brew
    cd -
}


# Create a new directory and jump into it
cake () {
    mkdir -p "$1" && cd "$1"
}


# Go to the root of the git repository
groot () {
    cd "$(git rev-parse --show-toplevel 2>/dev/null)"
}

