# Open devilbox administration on a web explorer.
__devilboxOpen() {
    devilbox --folder

    if ! __isRunning; then
        __error "Devilbox containers are not running"

        return "$KO_CODE"
    fi

    if [ -z "$DEVILBOX_URL" ]; then
        __error "Variable DEVILBOX_URL not found"

        return "$KO_CODE"
    fi

    if (which xdg-open > /dev/null) then
        xdg-open $DEVILBOX_URL
    elif (which gnome-open > /dev/null) then
        gnome-open $DEVILBOX_URL
    fi
}