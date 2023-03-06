# Automated weekly backup written in bash using mega cli
This script creates a zip file of the folder /home/$USER/Documents once every 7 days (on every day dividable by 7) in the folder /home/$USER/Backups, then uploads it to your mega account under the folder "Backup". 

# Requirements: 
[Mega-Cli](https://mega.io/cmd)

# How to run it at startup:
Follow [this](https://stackoverflow.com/questions/12973777/how-to-run-a-shell-script-at-startup) tutorial.

# How to customize it:
You can customize this file the way you want. Below are some examples:
## Encrypt your zip file:
Use the --password option (usage: --password \<password\>). Be aware that by using this method your password is in plain text and anyone with access to the bash file could read it.

## Exclude some folders/file from the zip file:
Use the -x option (usage: zip -x \<path\>).
  
Exclude a folder:  
zip -r -q /home/$USER/Backups/$Filename /home/$USER/Documents -x "/home/$USER/Documents/folder"\\*  
Exclude a file:  
zip -r -q /home/$USER/Backups/$Filename /home/$USER/Documents -x "/home/$USER/Documents/filename"
