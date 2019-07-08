## Functions used for user interaction.

__has_confirmed() {
    local response=$1

    case "$response" in
        [yY][eE][sS]|[yY]) return "$OK_CODE";;
        *) return "$KO_CODE";;
    esac
}

__ask() {
    local question=$1
    local response

    read -r -p "$(__question "${question} [y/N] ")" response
    printf '%s' "$response"

    return "$OK_CODE"
}

__confirm() {
    local question=$1

    if __has_confirmed "$(__ask "$question")"; then
        return "$OK_CODE"
    else
        return "$KO_CODE"
    fi
}
