#!/bin/bash

# Configuration and Setup Functions

configuration_setup() {
    while true; do
        clear
        echo -e "${RED}Configuration and Setup Options:${RESETBG}"
        echo -e "${RED}[${WHITE}01${RED}]${ORANGE} Set user name"
        echo -e "${RED}[${WHITE}02${RED}]${ORANGE} Set user email"
        echo -e "${RED}[${WHITE}03${RED}]${ORANGE} View configuration"
        echo -e "${RED}[${WHITE}00${RED}]${ORANGE} Back to main menu"
        echo
        read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option: ${BLUE}" selected

        case $selected in
            01) 
                read -p "${GREEN}Enter your name: ${BLUE}" name
                git config --global user.name "$name"
                echo "${GREEN}User name set to $name"
                ;;
            02) 
                read -p "${GREEN}Enter your email: ${BLUE}" email
                git config --global user.email "$email"
                echo "${GREEN}User email set to $email"
                ;;
            03)
                echo -e "${GREEN}Git Configuration:${RESETBG}"
                echo "${GREEN}user.name"
                git config --global user.name
                "${GREEN}user.email"
                git config --global user.email
                ;;
            00) break ;;
            *)
                echo "${RED}Invalid option! Please try again."
                ;;
        esac

        read -p "${GREEN}Press [Enter] to continue..." dummy
    done
}
