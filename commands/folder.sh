# Move to devilbox folder.
__devilboxFolder() {
    if [ -z "$DEVILBOX_PATH" ]; then
        __error "Variable DEVILBOX_PATH not found"

        return "$KO_CODE"
    fi

    cd $DEVILBOX_PATH
}

# Move to devilbox project folder.
__devilboxProjectsFolder() {
    if [ -z "$DEVILBOX_PROJECTS" ]; then
        __error "Variable DEVILBOX_PROJECTS not found"

        return "$KO_CODE"
    fi

    cd $DEVILBOX_PROJECTS
}