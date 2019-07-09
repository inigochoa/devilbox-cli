# Stop and clear docker containers.
__devilboxDown() {
    devilbox --folder

    if ! __isRunning; then
        __error "Devilbox containers are not running"

        return "$KO_CODE"
    fi

    sudo docker-compose down
}

# Show docker containers status.
__devilboxStatus() {
    devilbox --folder

    if ! __isRunning; then
        __error "Devilbox containers are not running"

        return "$KO_CODE"
    fi

    sudo docker-compose ps
}

# Up basic docker containers for a PHP environment.
__devilboxUp() {
    devilbox --folder

    if __isRunning; then
        __error "Devilbox containers are already running"
        devilbox --open

        return "$KO_CODE"
    fi

    sudo docker-compose up -d httpd php mysql
    devilbox --open
}

# Up docker containers.
__devilboxUpAll() {
    devilbox --folder

    if __isRunning; then
        __error "Devilbox containers are already running"

        return "$KO_CODE"
    fi

    sudo docker-compose up -d
    devilbox --open
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