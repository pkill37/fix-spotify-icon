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
    msg "Entering temporary directory..."
    mkdir "$tmp_dir"
    cd "$tmp_dir"

    msg "Making a copy of resources.zip..."
    cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip
    unzip resources_old.zip -d resources_old/

    msg "Downloading icons..."
    wget -O spotify_icon.ico https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify_icon.ico
    wget -O spotify-linux-16.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-16.png
    wget -O spotify-linux-22.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-22.png
    wget -O spotify-linux-24.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-24.png
    wget -O spotify-linux-32.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-32.png
    wget -O spotify-linux-48.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-48.png
    wget -O spotify-linux-64.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-64.png
    wget -O spotify-linux-128.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-128.png
    wget -O spotify-linux-256.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-256.png
    wget -O spotify-linux-512.png https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/images/spotify-linux-512.png

    msg "Replacing the icons..."
    cp spotify_icon.ico resources_old/_linux/spotify_icon.ico
    cp spotify-linux-16.png resources_old/_linux/spotify-linux-16.png
    cp spotify-linux-22.png resources_old/_linux/spotify-linux-22.png
    cp spotify-linux-24.png resources_old/_linux/spotify-linux-24.png
    cp spotify-linux-32.png resources_old/_linux/spotify-linux-32.png
    cp spotify-linux-48.png resources_old/_linux/spotify-linux-48.png
    cp spotify-linux-64.png resources_old/_linux/spotify-linux-64.png
    cp spotify-linux-128.png resources_old/_linux/spotify-linux-128.png
    cp spotify-linux-256.png resources_old/_linux/spotify-linux-256.png
    cp spotify-linux-512.png resources_old/_linux/spotify-linux-512.png

    msg "Packaging resources.zip..."
    cd resources_old/
    zip -r resources_patched.zip .
    cd ..
    mv resources_old/resources_patched.zip .

    msg "Replacing current resources.zip..."
    sudo cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip

    msg "Cleaning up..."
    rm -rf "$tmp_dir"

    msg "The Spotify icon has been replaced successfuly!"
    msg "Start Spotify again to check it out."
    sleep 2
}

#############################################################################
## Bootstrap it
#############################################################################

main "$@"
