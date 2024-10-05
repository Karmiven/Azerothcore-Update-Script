#!/usr/bin/env bash

#Setup some variables to handle colored text
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

#This is the installation directory of your azerothcore.  Do NOT use a tilda ~ when referencing the installation directory; this will cause the script to fail
INSTALL_DIR="/root/azerothcore-wotlk"

cd $INSTALL_DIR

echo -e "${YELLOW}Updating Azerothcore${NC}"
git pull

cd $INSTALL_DIR/modules


for f in *; do
    if [ -d "$f" ]; then
        # Will not run if no directories are available
        echo -e "Updating mod ${CYAN}$f...${NC}"
	git pull
    fi
done




