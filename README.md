# What is cdda_migr?
A tool to ease the installation of the latest experimental version and the migration of your settings and saves.
# How do I use it?
- First, install manually an experimental version. 
- Rename the directory so that it matches:  `cataclysmdda-0.E-10872` (the number at the end is the version you are installing).
- Download the `cdda_migr_old_new.sh` script and inside it modify the directory where you want cdda to be stored.
- Next time there is a new experimental launch:
```
youruser@yourpc$ ~/cdda_migr_old_new.sh 10872 10875
```
where 10872 is the latest version already on your PC and 10875 is the version you want to try.
The script will download version 10875 copy your config and save files from version 10872 to 10875 and also copy Undead tiles if you have them.


