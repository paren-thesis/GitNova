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


backup() {
    read -p "${GREEN}Enter directory to back up: " backup_path
    if [[ -d "$backup_path" ]]; then
        tar -czf "backup_$(date +%Y%m%d_%H%M%S).tar.gz" -C "$backup_path" .
        echo "${GREEN}Backup completed successfully!"
    else
        echo "${RED}Directory does not exist. Backup failed."
    fi
}

create_folder() {
    read -p "${GREEN}Enter folder name: " folder_name
    mkdir -p "$folder_name" || {
        echo "${RED}Failed to create folder '$folder_name'."
        return 1
    }
    echo "${GREEN}Folder '$folder_name' created!"
}

create_file() {
    read -p "${GREEN}Enter file name: " file_name
    touch "$file_name" || {
        echo "${RED}Failed to create file '$file_name'."
        return 1
    }
    echo "${GREEN}File '$file_name' created!"
}

flush_pc() {
    echo "${GREEN}Flushing system cache..."
    sync; echo 3 > /proc/sys/vm/drop_caches || {
        echo "${RED}Failed to flush cache. Make sure you are running as root."
        return 1
    }
    echo "${GREEN}System cache flushed!"
}

activate_windows() {
    echo "${GREEN}Activating Windows... (placeholder logic)"
}

file_transfer() {
    read -p "${GREEN}Enter file to transfer: " file_path
    read -p "${GREEN}Enter destination path: " destination_path
    read -p "${GREEN}Enter host (default: $HOST): " input_host
    read -p "${GREEN}Enter port (default: $PORT): " input_port
    
    host=${input_host:-$HOST}
    port=${input_port:-$PORT}

    scp -P "$port" "$file_path" "$host:$destination_path" || {
        echo "${RED}File transfer failed. Check paths and permissions."
        return 1
    }
    echo "${GREEN}File transfer completed successfully!"
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
        echo -e "${RED}[${WHITE}01${RED}]${ORANGE} BackUp"
        echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Create Folder"
        echo -e "${RED}[${WHITE}03${RED}]${ORANGE} Create File"
        echo -e "${RED}[${WHITE}04${RED}]${ORANGE} Flush PC"
        echo -e "${RED}[${WHITE}05${RED}]${ORANGE} Activate Windows"
        echo -e "${RED}[${WHITE}06${RED}]${ORANGE} File Transfer"
        echo -e "${RED}[${WHITE}99${RED}]${ORANGE} About"
        echo -e "${RED}[${WHITE}00${RED}]${ORANGE} Exit"
        echo
        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option: ${BLUE}" selected

        case $selected in
            01) backup ;;
            02) create_folder ;;
            03) create_file ;;
            04) flush_pc ;;
            05) activate_windows ;;
            06) file_transfer ;;
            99) about ;;
            00) exit_script ;;
            *) echo "${RED}Invalid option! Please try again." ;;
        esac

        read -p "${GREEN}Press [Enter] to continue..." dummy
    done
}


# Run the menu
main_menu
