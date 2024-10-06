# Azerothcore Update Script
This is a simple script that updates your AzerothCore installation as well as any modules you may have.  This BASH script is designed to run in a Linux environment.

##Installation
Copy the script to a location of your choosing.  Edit the file and update the INSTALL_DIR variable to the base AzerothCore install directory.  Set executablable permissions (+x) on the script.  Run the script.

```bash
git clone https://github.com/grndal/Azerothcore-Update-Script
chmod u+x updatemods.sh
```

##Options
```
-d : deletes the build directory as defined by the variable BUILD_DIR.  This is an optional parameter.
-c [build | compile] : After the update, will compile Azerothcore with either the BUILD or COMPILE option.  This is an optional parameter.
```

##Running the Script
To run the script, simply navigate to where it was installed and type with any options

```bash
./updatemods.sh
```

Optionally, you can update your environment settings to include an alias so that it can be executed anywhere.

```bash
nano ~/.bashrc
alias updateaz='cd <REPLACE WITH THE INSTALL DIRECTORY>;./update.sh'
```




