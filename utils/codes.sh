## Basic wrappers around exit codes.

__was_success() {
    local exit_code=$?
    [ "$exit_code" -eq "$OK_CODE" ]
}

__was_error() {
    local exit_code=$?
    [ "$exit_code" -eq "$KO_CODE" ]
}

__die() {
    local exit_code=$1
    if [ ! -z "$exit_code" ]; then
        exit "$exit_code"
    else
        exit "$?"
    fi
}