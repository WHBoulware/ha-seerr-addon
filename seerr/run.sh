#!/usr/bin/with-contenv bashio

# Fix permissions for Seerr (runs as UID 1000)
chown -R 1000:1000 /data

exec node dist/index.js
