# Make a temporary copy of resources.zip
cp /opt/spotify/spotify-client/Data/resources.zip tmp.zip

# Extract it so we replace the icon
unzip tmp.zip -d tmp/

# Replace the icon with a new one
cp spotify_icon.ico tmp/_linux/spotify_icon.ico

# Zip it back up
cd tmp/
zip -r resources_patched.zip .
cd ..
mv tmp/resources_patched.zip .

# Replace existing resources.zip with patched version
mv resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip

# Clean up
rm -rf tmp/ tmp.zip resources_patched.zip
