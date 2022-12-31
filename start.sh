#!/bin/sh

echo 'Forcing HTTPS for serverURL.'
sed -i "s~var serverUrl = encodeURIComponent( protocol + req.headers.host);~var serverUrl = encodeURIComponent('https://' + req.headers.host);~g" server.js

echo 'Fixing CORS.'
sed -i 's/if (ok) enginefs.sendCORSHeaders/if (true) enginefs.sendCORSHeaders/g' server.js

node server.js
