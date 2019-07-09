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
source "$DIR/commands/open.sh"
source "$DIR/commands/shell.sh"

# Devilbox command.
devilbox() {
    if [ -z "$1" ]; then
        devilbox --help
    else
        case $1 in
            --clean|-c)   __devilboxClean ;;
            --down|-d)    __devilboxDown ;;
            --folder|-f)  __devilboxFolder ;;
            --help|-h)    __devilboxHelp ;;
            --open|-o)    __devilboxOpen ;;
            --status|-s)  __devilboxStatus ;;
            --shell|-sh)  __devilboxShell ;;
            --up|-u)      __devilboxUp ;;
            --up-all|-ua) __devilboxUpAll ;;
            --www|-w)     __devilboxProjectsFolder ;;
            *)
                echo -e "${COLOR_RED}[ERROR]${COLOR_DEFAULT} Command not found"
                echo -e "Type ${COLOR_YELLOW}devilbox --help${COLOR_DEFAULT} to see a list of available commands";
        esac
    fi
}