#!/bin/sh

echo 'Forcing HTTPS for serverURL.'
sed -i "s~var serverUrl = encodeURIComponent( protocol + req.headers.host);~var serverUrl = encodeURIComponent('https://' + req.headers.host);~g" server.js

echo 'Fixing unsupported media issues.'
sed -i -E "s|(var first = req\.params\.first)|if (req.params.first === 'hlsv2') { req.params.first = req.query.mediaURL.split('/')[3]; req.params.second = req.query.mediaURL.split('/')[4]; }\n    \1|" server.js
sed -i -E 's/HLS.masterMultiPlaylistMiddleware\)/HLS.masterPlaylistMiddleware\)/' server.js

echo 'Fixing CORS.'
sed -i 's/if (ok) enginefs.sendCORSHeaders/if (true) enginefs.sendCORSHeaders/g' server.js

node server.js
