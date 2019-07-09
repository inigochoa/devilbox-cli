# Devilbox help command.

__devilboxHelp() {
    echo -e "\nUsage: devilbox [COMMAND]\n"

    __devilboxHelpOption "devilbox [--folder|-f]" "${COLOR_YELLOW}Move${COLOR_DEFAULT} to the devilbox folder."
    __devilboxHelpOption "devilbox [--help|-h]" "Display devilbox CLI command ${COLOR_YELLOW}help${COLOR_DEFAULT}."
    __devilboxHelpOption "devilbox [--open|-o]" "Open devilbox ${COLOR_YELLOW}intranet${COLOR_DEFAULT} in browser."
    __devilboxHelpOption "devilbox [--status|-s]" "Show devilbox docker container ${COLOR_YELLOW}status${COLOR_DEFAULT}."
    __devilboxHelpOption "devilbox [--www|-w]" "Move current directory to devilbox ${COLOR_YELLOW}www folder${COLOR_DEFAULT}."
}

__devilboxHelpOption() {
    COMMAND=$1
    EXPLANATION=$2
    SIZE=$((25 - ${#COMMAND}))

    printf "    $COMMAND %${SIZE}s $EXPLANATION\n"
}