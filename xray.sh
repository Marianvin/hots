#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f9b6bb14-7cea-4188-a916-4420d3a00d5a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

