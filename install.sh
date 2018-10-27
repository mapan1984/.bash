msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[✔]\33[0m ${1}${2}"
    fi
}

error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

debug() {
    if [[ "$debug_mode" -eq '1' ]] && [ "$ret" -gt '1' ]; then
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}

program_exists() {
    local ret='0'
    command -v $1 >/dev/null 2>&1 || { local ret='1'; }

    # fail on non-zero return value
    if [ "$ret" -ne 0 ]; then
        return 1
    fi

    return 0
}

lnif() {
    if [ -e "$1" ]; then
        ln -srf "$1" "$2"
    fi
    ret="$?"
    debug
}

create_symlinks() {
    local source_path="$1"
    local target_path="$2"

    lnif "$source_path/.bin"               "$target_path/.bin"

    lnif "$source_path/.bash_logout"       "$target_path/.bash_logout"
    lnif "$source_path/.bash_profile"      "$target_path/.bash_profile"
    lnif "$source_path/.bashrc"            "$target_path/.bashrc"

    lnif "$source_path/.eslintrc.js"       "$target_path/.eslintrc.js"
    lnif "$source_path/.prettierrc.js"     "$target_path/.prettierrc.js"
    lnif "$source_path/.flake8"            "$target_path/.flake8"

    lnif "$source_path/.gitconfig"         "$target_path/.gitconfig"
    lnif "$source_path/.gitignore"         "$target_path/.gitignore"
    lnif "$source_path/.gitignore_global"  "$target_path/.gitignore_global"

    lnif "$source_path/.inputrc"           "$target_path/.inputrc"   

    if program_exists "nethack"; then
      lnif "$source_path/.nethackrc"         "$target_path/.nethackrc"
    fi

    lnif "$source_path/.profile"           "$target_path/.profile"

    lnif "$source_path/.rsyncignore"       "$target_path/.rsyncignore"

    if program_exists "tmux"; then
      lnif "$source_path/.tmux.conf"       "$target_path/.tmux.conf"
    fi

    if program_exists "gem"; then
      lnif "$source_path/.gemrc"       "$target_path/.gemrc"
    fi

    ret="$?"
    success "Setting up vim symlinks."
    debug
}

# [ -z "$APP_PATH" ] && APP_PATH="$HOME/.bash"
[ -z "$APP_PATH" ] && APP_PATH="."

create_symlinks "$APP_PATH" \
                "$HOME"
