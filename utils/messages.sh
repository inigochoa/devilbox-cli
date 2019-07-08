# Functions for fancy output.

__error() {
    local message=$1
    printf "%s %s\n" "${COLOR_RED}[âœ˜]" "${COLOR_DEFAULT}$message" >&2
}

__info() {
    local message=$1
    printf "%s %s\n" "${COLOR_YELLOW}[!]" "${COLOR_DEFAULT}$message"
}

__option() {
    local option=$1
    local message=$2
    printf "%s %s\n" "${COLOR_RED}[${option}]" "${COLOR_DEFAULT}$message"
}

__question() {
    local message=$1
    printf "%s %s\n" "${COLOR_BLUE}[?]" "${COLOR_DEFAULT}$message"
}

__success() {
    local message=$1
    printf "%s %s\n" "${COLOR_GREEN}[âœ”]" "${COLOR_DEFAULT}$message"
}