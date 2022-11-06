#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7459c598-a05a-46e7-8c3d-5b1ed8c7b500"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

