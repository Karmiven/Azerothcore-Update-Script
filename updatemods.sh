#!/bin/bash

#Setup some variables to handle colored text
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

#This is the installation directory of your azerothcore.  Do NOT use a tilda ~ when referencing the installation directory; this will cause the script to fail
INSTALL_DIR="/root/azerothcore-wotlk"
BUILD_DIR="/var/build"
COMPILE_TYPE=

#Variables for command-line options.  Update as needed.
COMPILE_CMD='./acore.sh compiler all'
BUILD_CMD='./acore.sh compiler build'

cd $INSTALL_DIR

#Prompt user for correct usage of update script
usage() 
	{
		echo "Usage ./updatemods.sh [-d] [-c build | compile]";
		exit 0
	}


#Update function for AzerothCore and all modules
update_az()
        {
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
        }


#Call the update function
update_az

while getopts "hdc:" opt; do
	case $opt in
		d)
			echo -e "${YELLOW}Deleting build directory${NC}"
			rm -rf $INSTALL_DIR$BUILD_DIR
			;;
		c)
			COMPILE_TYPE=${OPTARG,,}
			case $COMPILE_TYPE in
				compile)
					echo -e "${YELLOW}Compiling with the all option${NC}"
					cd $INSTALL_DIR
					$COMPILE_CMD
					;;
				build)
					echo -e "${YELLOW}Compiling with the build option${NC}"
					cd $INSTALL_DIR
					$BUILD_CMD
					;;
				*)
					usage
					;;
			esac
			;;
		h | *)
			usage
			;;
	esac
done
shift $((OPTIND-1))


