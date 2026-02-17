#!/usr/bin/with-contenv bashio

# Ensure persistent folder exists
mkdir -p /data/logs

# Fix ownership so node can write
chown -R 1000:1000 /data

# Drop privileges back to node user
exec su-exec node node dist/index.js
