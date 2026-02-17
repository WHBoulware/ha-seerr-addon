#!/usr/bin/with-contenv bashio

#CONFIG_PATH="/app/config"

# Create config folder if not present
#if [ ! -d "$CONFIG_PATH" ]; then
#    mkdir -p "$CONFIG_PATH"
#fi

# Ensure correct permissions (node user = 1000)
# chown -R 1000:1000 "$CONFIG_PATH"

#!/usr/bin/with-contenv bashio

# Fix permissions for Seerr (runs as UID 1000)
chown -R 1000:1000 /data

exec node dist/index.js

#export CONFIG_DIRECTORY="/app/config"
#export TZ=$(bashio::config 'TZ')
#export LOG_LEVEL=$(bashio::config 'LOG_LEVEL')

#exec /app/server.js
