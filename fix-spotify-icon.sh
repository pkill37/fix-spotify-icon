#! /usr/bin/env bash

set -e

#############################################################################
## Helpers & Config
#############################################################################

msg() {
    tput setab 2 # green bg
    tput setaf 7 # white text
    echo ">>> $1"
    tput sgr 0
    sleep 1
}

tmp_dir="/tmp/fsi-$(date +%s)"

#############################################################################
## Main Script
#############################################################################

main() {
    clear

    msg "Entering temporary directory"
    mkdir $tmp_dir
    cd $tmp_dir

    msg "Making a copy of resources.zip"
    cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip
    unzip resources_old.zip -d resources_old/

    msg "Downloading icon"
    wget -O spotify_icon.ico https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/spotify_icon.ico

    msg "Replacing the icon"
    cp spotify_icon.ico resources_old/_linux/spotify_icon.ico

    msg "Packaging resources.zip back up"
    cd resources_old/
    zip -r resources_patched.zip .
    cd ..
    mv resources_old/resources_patched.zip .

    msg "Replacing current resources.zip"
    sudo cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip

    msg "Cleaning up"
    rm -rf $tmp_dir

    msg "The Spotify icon has been replaced successfuly! Start Spotify again to check it out."
    sleep 2
}

#############################################################################
## Bootstrap it
#############################################################################

main "$@"
