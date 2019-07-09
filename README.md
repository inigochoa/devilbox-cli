# Devilbox CLI
[![GitHub license](https://img.shields.io/github/license/inigochoa/devilbox-cli.svg?style=flat-square)](https://github.com/inigochoa/devilbox-cli/blob/master/LICENSE) ![GitHub All Releases](https://img.shields.io/github/downloads/inigochoa/devilbox-cli/total.svg?style=flat-square) ![GitHub issues](https://img.shields.io/github/issues/inigochoa/devilbox-cli.svg?style=flat-square) ![GitHub release](https://img.shields.io/github/release/inigochoa/devilbox-cli.svg?style=flat-square)

A simple command line tool to manage devilbox from anywhere.

## Getting started
### Requirements
You will need [Devilbox](https://github.com/cytopia/devilbox) to be installed somewhere on your computer.

### Installation
1. Clone the project inside ~/ in a folder to store custom bash functions.
2. Set _DEVILBOX_URL_, _DEVILBOX_PATH_ and _DEVILBOX_PROJECTS_ in the config file.
    ```bash
    DEVILBOX_URL=""
    DEVILBOX_PATH=""
    DEVILBOX_PROJECTS=""
    ```
3. Add the main file to your _.bashrc_ file.
    ```bash
    if [ -f ~/"##PATH_TO_PROJECT##"/devilbox.sh ]; then
        . ~/"##PATH_TO_PROJECT##"/devilbox.sh
    fi
    ```
4. Finally, reload the sources.
    ```bash
    $ source .bashrc
    ```

### Usage
devilbox-cli comes with a help command.

```bash
$ devilbox --help

Usage: devilbox [COMMAND]

    devilbox [--clean|-c]      Clean devilbox docker containers.
    devilbox [--down|-d]       Stop devilbox docker containers.
    devilbox [--folder|-f]     Move to the devilbox folder.
    devilbox [--help|-h]       Display devilbox CLI command help.
    devilbox [--open|-o]       Open devilbox intranet in browser.
    devilbox [--status|-s]     Show devilbox docker container status.
    devilbox [--up|-u]         Start basic devilbox docker containers.
    devilbox [--up-all|-u]     Start each devilbox docker containers.
    devilbox [--www|-w]        Move current directory to devilbox www folder.
```
