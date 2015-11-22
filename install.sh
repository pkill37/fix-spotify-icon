#! /usr/bin/env bash

set -e

wget -O fix-spotify-icon.sh https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/src/fix-spotify-icon.sh

chmod +x fix-spotify-icon.sh

sudo mv fix-spotify-icon.sh /usr/local/bin/fix-spotify-icon
