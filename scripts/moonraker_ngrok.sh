#!/bin/bash

# Read all values from the config
. /home/pi/moonraker-ngrok/config/moonraker_ngrok_config.sh

# Activate the authentication token from ngrok
/home/pi/moonraker-ngrok/ngrok/ngrok authtoken $ngrok_auth

# A little delay so that the token is loaded
Sleep 2

# Start Ngrok with configured parameters
/home/pi/moonraker-ngrok/ngrok/ngrok http -hostname=$ngrok_hostname -auth="$ngrok_username":"$ngrok_password" -region $ngrok_region $ngrok_port