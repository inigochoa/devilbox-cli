# Show docker containers status.
__devilboxStatus() {
    devilbox --folder

    if ! __isRunning; then
        __error "Devilbox containers are not running"

        return "$KO_CODE"
    fi

    sudo docker-compose ps
}

# Check if devilbox is running.
__isRunning() {
    local all
    all=$(docker-compose ps 2> /dev/null | grep "devilbox" | awk '{print $3}' | grep "Up")

    if __was_success; then
        return "$OK_CODE";
    else
        return "$KO_CODE";
    fi
}