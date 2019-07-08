# Devilbox help command.

__devilboxHelp() {
    echo -e "\nUsage: devilbox [COMMAND]\n"

    __devilboxHelpOption "devilbox [--help|-h]" "Display devilbox CLI command ${COLOR_YELLOW}help${COLOR_DEFAULT}."
}

__devilboxHelpOption() {
    COMMAND=$1
    EXPLANATION=$2
    SIZE=$((25 - ${#COMMAND}))

    printf "    $COMMAND %${SIZE}s $EXPLANATION\n"
}