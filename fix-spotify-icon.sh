# Variables
current_dir=$(pwd)
tmp_dir="/tmp/fsi"

# Do stuff in a temporary directory
mkdir $tmp_dir
cd $tmp_dir

# Download icon
wget -O spotify_icon.ico https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/spotify_icon.ico

# Make a temporary copy of resources.zip
cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip

# Extract it so we replace the icon
unzip resources_old.zip -d resources_old/

# Replace the icon with a new one
cp spotify_icon.ico resources_old/_linux/spotify_icon.ico

# Zip it back up
cd resources_old/
zip -r resources_patched.zip .
cd ..
mv resources_old/resources_patched.zip .

# Replace existing resources.zip with the patched version
cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip

# Clean up
rm -rf $tmp_dir

# Return to previous directory
cd $current_dir
