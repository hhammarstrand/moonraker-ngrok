#!/bin/bash
#
###################################################
#                                                 #
#   Edit the values between " " - nothing else    #
#                                                 #
###################################################
#
# Auth token needs to be provided
# Your token can be found here: https://dashboard.ngrok.com/auth/your-authtoken
#
ngrok_auth="Your Authtoken"
# Local port to your installation(default is 80)
ngrok_port="80"
# Hostname requires a paid account, leave empty for free account
ngrok_hostname=""
# Username you would like to use for login. NOT your login to Ngrok.io
ngrok_username="username"
# Password you would like to use for login. NOT your login to Ngrok.io
ngrok_password="password"
# Region - us, eu, jp etc availible
ngrok_region="eu"