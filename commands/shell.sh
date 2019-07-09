# Enter devilbox PHP shell.
__devilboxShell() {
    devilbox --folder

    if ! __isRunning; then
        __error "Devilbox containers are not running"
        return "$KO_CODE"
    fi

    sudo ./shell.sh
}