#!/bin/bash

# Defining Colors for text output
yellow=$( tput setaf 3 );
green=$( tput setaf 2 );
normal=$( tput sgr 0 );
cyan=$(tput setaf 6);

# Discussion, issues and change requests at:
#   https://github.com/nodesource/distributions
#
# Script to install the NodeSource Node.js LTS repo onto a
# Debian or Ubuntu system.
#
# Run as root or insert `sudo -E` before `bash`:
#
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt update && sudo apt install -y nodejs npm

## Using Debian, as root
#curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
#apt-get install -y nodejs

## Adding the Yarn APT repository to your system
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install --no-install-recommends yarn

    echo "${green}================================================================================${normal}"
    echo -e "${normal}Install of node and Yarn package manager is complete.${normal}"
    echo "${green}================================================================================${normal}"
    echo -e "Version of Node.js installed is${yellow}"
node -v
    echo "${green}================================================================================${normal}"
    echo -e "${normal}Installed Yarn package manager${cyan}"
npm info yarn version
    echo -e "${normal}"
    echo "${green}================================================================================${normal}"
    echo -e "To compile and install native addons from npm you may also need to install build tools"
    read -r -p "If you would like to install the native addons, Press [Enter] to continue.\n
If you don't want to continue installing the build tools press ${yellow}Ctrl-C${normal} to abort."
    read -r -p "Press any key to continue." -t 10 -n 1 -s

## Optional: install build tools
## use `sudo` on Ubuntu or run this as root on debian
sudo apt install -y build-essential

    echo -e "${green}\nInstall is complete.${normal}"
    echo -e "${cyan}Have fun building${normal}"
exit
#apt-get install -y build-essential

    echo -e "${green}Install is complete.${normal}"
    echo -e "${cyan}Have fun building.${normal}"
    
exit
