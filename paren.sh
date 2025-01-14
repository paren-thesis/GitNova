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
    echo "${GREEN}Backing up files..."
    # Add your backup logic here
    tar -czf backup_$(date +%Y%m%d_%H%M%S).tar.gz -C /path/to/backup .
    echo "${GREEN}Backup completed!"
}

create_folder() {
    read -p "${GREEN}Enter folder name: " folder_name
    mkdir -p "$folder_name"
    echo "${GREEN}Folder '$folder_name' created!"
}

create_file() {
    read -p "${GREEN}Enter file name: " file_name
    touch "$file_name"
    echo "${GREEN}File '$file_name' created!"
}

flush_pc() {
    echo "${GREEN}Flushing system cache..."
    sync; echo 3 > /proc/sys/vm/drop_caches
    echo "${GREEN}System cache flushed!"
}

activate_windows() {
    echo "${GREEN}Activating Windows..."
    # Add your Windows activation logic here
    echo "${GREEN}Windows activated!"
}

file_transfer() {
    echo "${GREEN}Starting file transfer..."
    # Add your file transfer logic here
    scp -P $PORT /path/to/file $HOST:/path/to/destination
    echo "${GREEN}File transfer completed!"
}

about() {
    echo "${GREEN}About this script:"
    echo "${GREEN}Version: ${__version__}"
    echo "${GREEN}This script provides various utility functions for system management."
}

exit_script() {
    echo "${GREEN}Exiting script..."
    exit 0
}

additional_function1() {
    echo "${GREEN}Performing additional function 1..."
    # Add your logic here
}

additional_function2() {
    echo "${GREEN}Performing additional function 2..."
    # Add your logic here
}

main_menu() {
    while true; do
        { clear; banner_g; echo; }
        
        echo ${RED}[${WHITE}::${RED}]${ORANGE} Select an option from the list ["##"] ${RED}[${WHITE}::${RED}]${ORANGE}
        echo
        echo ${RED}[${WHITE}01${RED}]${ORANGE} BackUp      
        echo ${RED}[${WHITE}02${RED}]${ORANGE} Create Folder     
        echo ${RED}[${WHITE}03${RED}]${ORANGE} Create File
        echo ${RED}[${WHITE}04${RED}]${ORANGE} Flush PC    
        echo ${RED}[${WHITE}05${RED}]${ORANGE} Activate Windows 
        echo ${RED}[${WHITE}06${RED}]${ORANGE} File Transfer
        echo ${RED}[${WHITE}07${RED}]${ORANGE} Additional Function 1
        echo ${RED}[${WHITE}08${RED}]${ORANGE} Additional Function 2
        echo
        echo ${RED}[${WHITE}99${RED}]${ORANGE} About         ${RED}[${WHITE}00${RED}]${ORANGE} Exit
        echo
        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}" selected

        case $selected in
            01) backup ;;
            02) create_folder ;;
            03) create_file ;;
            04) flush_pc ;;
            05) activate_windows ;;
            06) file_transfer ;;
            07) additional_function1 ;;
            08) additional_function2 ;;
            99) about ;;
            00) exit_script ;;
            *) echo "${RED}Invalid option! Please try again." ;;
        esac

        read -p "${GREEN}Press [Enter] to continue..." dummy
    done
}

main_menu