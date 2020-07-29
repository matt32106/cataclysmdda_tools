#!/bin/bash
echo "start"

# make sure to adapt those variables to your case <<<< IMPORTANT
LAST=$1
VER=$2
CDDA_DIR="/home/hippo/Games/"

###
CDDA_DWNLD="https://github.com/CleverRaven/Cataclysm-DDA/releases/download/cdda-jenkins-b"$VER"/cataclysmdda-0.E-Linux_x64-Tiles-b"$VER".tar.gz"
TMP_FILE="cataclysmdda-0.E-"$VER".tar.gz"
NEW_DIR=$CDDA_DIR"cataclysmdda-0.E-"$VER
OLD_DIR=$CDDA_DIR"cataclysmdda-0.E-"$LAST

# download cdda file in tmp and extract it in cdda dir then remove tmp file
cd /tmp
wget $CDDA_DWNLD -O $TMP_FILE
tar xvzf $TMP_FILE -C $CDDA_DIR
mv $CDDA_DIR"cataclysmdda-0.E" $NEW_DIR
cp -r $OLD_DIR"/config" $NEW_DIR                            	# get your config back
cp -r $OLD_DIR"/gfx/MSX++UnDeadPeopleEdition" $NEW_DIR"/gfx"    # Undead people, yeah!
cp -r $OLD_DIR"/save" $NEW_DIR                                  # copy your saves to new dir

# clean up
rm $TMP_FILE
cd -



