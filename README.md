# stremio-streaming-server-v4

git clone https://github.com/mikdanjey/my-streaming-server-v4.git my-streaming-server-v4

## Step up target on ubuntu

-- Install Nodejs 16.x LTS

* sudo apt install openssl wget ffmpeg

* wget https://dl.strem.io/four/master/server.js
* wget https://dl.strem.io/four/master/stremio.asar

* chmod +x start.sh

* nano /home/ubuntu/.stremio-server/server-settings.json
* rm -rf /home/ubuntu/.stremio-server/stremio-cache # if remove the cache

* ./start.sh


## Add the Addon:
* https:// <cloud-url> /local-addon/manifest.json
