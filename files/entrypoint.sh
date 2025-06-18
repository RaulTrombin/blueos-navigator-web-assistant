#!/bin/bash

# turn on bash's job control
set -m

echo "Starting navigator webassistant..."
cd app
su navigatorweb -c "./navigator-webassistant"