#!/bin/bash

__version__="2.3.5"

## DEFAULT HOST & PORT
HOST='127.0.0.1'
PORT='8080' 

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
CYANBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

banner_g() {
	echo	${RED}  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
	echo	${RED}  █░░░░░░░░░░░░░░░░░░░░░░█
	echo	${RED}  █░█▀█░█▀█░█▀▄░█▀▀░█░░█░█
	echo	${RED}  █░█▀▀░█▀█░█▀▄░█▀▀░█▀▄█░█
	echo	${RED}  █░▀░░░▀░▀░▀░▀░▀▀▀░▀░░▀░█${YELLOW} ${__version__}
	echo	${RED}  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
}


about() {
    echo "${GREEN}About this script:"
    echo "${GREEN}Version: ${__version__}"
    echo "${GREEN}This script provides various utility functions for system management."
}

exit_script() {
    echo "${GREEN}Exiting script..."
    clear
    exit 0
}

main_menu() {
    while true; do
        clear
        banner_g
        echo
        echo -e "${RED}[${WHITE}01${RED}]${ORANGE} Configuration and Setup"
        echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Branch Management"
        echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Staging and Stash"
        echo -e "${RED}[${WHITE}04${RED}]${ORANGE} Undoing Changes"
        echo -e "${RED}[${WHITE}05${RED}]${ORANGE} Remote Repositories"
        echo -e "${RED}[${WHITE}06${RED}]${ORANGE} Logs and History"
        echo -e "${RED}[${WHITE}07${RED}]${ORANGE} Working with Submodules"
        echo -e "${RED}[${WHITE}08${RED}]${ORANGE} Advanced Commands"
        echo -e "${RED}[${WHITE}09${RED}]${ORANGE} Clean Up"
        echo -e "${RED}[${WHITE}10${RED}]${ORANGE} Tagging"
        echo -e "${RED}[${WHITE}99${RED}]${ORANGE} About"
        echo -e "${RED}[${WHITE}00${RED}]${ORANGE} Exit"

        echo
        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option: ${BLUE}" selected

          case $selected in
            01) configuration_setup ;;
            02) branch_management ;;
            03) staging_and_stash ;;
            04) undoing_changes ;;
            05) remote_repositories ;;
            06) logs_and_history ;;
            07) submodules ;;
            08) advanced_commands ;;
            09) clean_up ;;
            10) tagging ;;
            99) about ;;
            00) exit_script ;;
            *) echo "${RED}Invalid option! Please try again." ;;
        esac


        read -p "${GREEN}Press [Enter] to continue..." dummy
    done
}


# Run the menu
main_menu
