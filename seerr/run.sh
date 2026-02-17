#!/usr/bin/with-contenv bashio

CONFIG_PATH="/app/config/seerr"

# Create config folder if not present
if [ ! -d "$CONFIG_PATH" ]; then
    mkdir -p "$CONFIG_PATH"
fi

# Ensure correct permissions (node user = 1000)
chown -R 1000:1000 "$CONFIG_PATH"

export CONFIG_DIRECTORY="/app/config/seerr"
export TZ=$(bashio::config 'TZ')
export LOG_LEVEL=$(bashio::config 'LOG_LEVEL')

exec /app/server.js
