#!/bin/bash

echo "\n\n"
echo "#########################################################"
echo "##    Install script for Ngrok plugin for Moonraker    ##"
echo "#########################################################"

# Create a directory called ngrok inside of the moonraker-ngrok folder
sudo mkdir ngrok
# Change directory into the newly created folder
cd ngrok
# Download Ngrok
sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
# Unzip Ngrok
sudo unzip ngrok-stable-linux-arm.zip

# Create a copy of the example config in the same directory and warn before overwriting so that it's possible to update without losing the config
cp -i /home/pi/moonraker-ngrok/config/ngrok_example_config.sh /home/pi/moonraker-ngrok/config/moonraker_ngrok_config.sh

# Create a symlink between the config from github and the klipper config directory that is exposed to the web GUI of Mainsail
cp -s /home/pi/moonraker-ngrok/config/moonraker_ngrok_config.sh /home/pi/klipper_config/moonraker_ngrok_config.sh

# Copy the ngrok.service to system folder
sudo cp /home/pi/moonraker-ngrok/scripts/ngrok.service /etc/systemd/system/ngrok.service

sleep 1
# Set permissions to read and execute for everyone, write only for owner
chmod 755 /home/pi/moonraker-ngrok/scripts/moonraker_ngrok.sh

# Start the service ngrok.service
sudo systemctl start ngrok.service
# Set script to start on boot
sudo systemctl enable ngrok.service

echo "\n\n"
echo "#########################################################"
echo "##   Install complete!                                 ##"
echo "##                                                     ##"
echo "##   The config is located in the same directory as    ##"
echo "##   printer.cfg and is accesible from the web GUI     ##"
echo "##                                                     ##"
echo "##   Config: moonraker_ngrok_config.sh                 ##"
echo "#########################################################"


exit 1