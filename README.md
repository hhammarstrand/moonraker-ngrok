# moonraker-ngrok

Want to access [Mainsail](https://github.com/meteyou/mainsail) from outside of your network?

This plugin for [Moonraker](https://github.com/Arksine/moonraker) helps you do that using [ngrok](https://ngrok.com/)

## Installing the plugin
ssh into your pi (built in to terminal in most linux flavors and MacOS, if you are on win you can use [PuTTY](https://www.putty.org/))

Example ssh for [MainsailOS:](https://github.com/raymondh2/MainsailOS) 
```
ssh pi@mainsailos.local
````

Default password: `raspberry`


Then use the following commands to install

```
cd
git clone https://github.com/hhammarstrand/moonraker-ngrok.git
cd moonraker-ngrok
sh ./scripts/install.sh
```

## Configuration
The easiest way is to use the web gui and edit the file `moonraker_ngrok_config.sh` that is located in the config folder of [Mainsail](https://github.com/meteyou/mainsail)

#### There is a few settings that you can change:

Setting | Description
------------ | -------------
ngrok_auth | **Needed!** [You can find yours at this link](https://dashboard.ngrok.com/auth/your-authtoken)
Port | If you are using [MainsailOS](https://github.com/raymondh2/MainsailOS) you shouldn't need to change port. 
ngrok_hostname | Hostname is only changeable if you have a paid account
ngrok_username |This is **not** your ngrok login details. These are the credentials you would like to use to login in to Mainsail remotely
ngrok_password | This is **not** your ngrok login details. These are the credentials you would like to use to login in to Mainsail remotely
ngrok_region | Choose the region closest to you. Availible regions: us, eu, ap, au, sa, jp, in

After providing your details you need to reboot the pi and your tunnel should be up and running. You can find your tunnels in your [dashboard.](https://dashboard.ngrok.com/status/tunnels)
