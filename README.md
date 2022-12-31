# stremio-streaming-server-v4

git clone https://github.com/mikdanjey/stremio-streaming-server-v4.git stremio-streaming-server-v4

## Step up target Ubuntu

Install Nodejs 16.x LTS

* sudo apt install openssl wget ffmpeg

* wget https://dl.strem.io/four/master/server.js
* wget https://dl.strem.io/four/master/stremio.asar

* chmod +x start.sh



* nano /home/ubuntu/.stremio-server/server-settings.json
* rm -rf /home/ubuntu/.stremio-server/stremio-cache # if remove the cache

* ./start.sh


