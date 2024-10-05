# Azerothcore Update Script
This is a simple script that updates your AzerothCore installation as well as any modules you may have.  This BASH script is designed to run in a Linux environment.

##Installation
Copy the script to a location of your choosing.  Edit the file and update the INSTALL_DIR variable to the base AzerothCore install directory.  Set executablable permissions (+x) on the script.  Run the script.

```bash
git clone https://github.com/grndal/Azerothcore-Update-Script
chmod +x update.sh
```

##Running the Script
To run the script, simply navigate to where it was installed and type

```bash
./update.sh
```

Optionally, you can update your environment settings to include an alias so that it can be executed anywhere.

```bash
nano ~/.bashrc
alias updateaz='cd <REPLACE WITH THE INSTALL DIRECTORY>;./update.sh'
```




