#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3f27acd2-fbd0-4993-8b65-1d97e6e3a040"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

