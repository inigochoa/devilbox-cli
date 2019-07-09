DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Configuration.
source "$DIR/config/codes.sh"
source "$DIR/config/colors.sh"
source "$DIR/config/config.sh"

# Utils.
source "$DIR/utils/codes.sh"
source "$DIR/utils/messages.sh"
source "$DIR/utils/prompt.sh"

# Devilbox command import.
source "$DIR/commands/docker.sh"
source "$DIR/commands/folder.sh"
source "$DIR/commands/help.sh"

# Devilbox command.
devilbox() {
    if [ -z "$1" ]; then
        devilbox --help
    else
        case $1 in
            --folder|-f) __devilboxFolder ;;
            --help|-h)   __devilboxHelp ;;
            --status|-s) __devilboxStatus ;;
            --www|-w)    __devilboxProjectsFolder ;;
            *)
                echo -e "${COLOR_RED}[ERROR]${COLOR_DEFAULT} Command not found"
                echo -e "Type ${COLOR_YELLOW}devilbox --help${COLOR_DEFAULT} to see a list of available commands";
        esac
    fi
}