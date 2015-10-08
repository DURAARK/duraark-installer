#!/bin/bash

# TODO: provide version number via command line parameter!

echo ""
echo "Creating installer for windows and pushing it to Docker Hub ..."
echo ""

# Compile 'windows-installer/duraark.nsh'
# 'mv ./duraark-installer.exe ./releases/duraark-installer-v0.8.0.exe'

echo ""
echo "Creating image for windows hosts and pushing it to Docker Hub ..."
echo ""

# 'cp ./docker/docker-compose-windows.yml ./docker/docker-compose-&& dock.yml && docker build -t duraark/duraark-installer-windows ./docker'

echo ""
echo "Creating image for (non-)windows and pushing it to Docker Hub ..."
echo ""

# 'cp ./docker/docker-compose-linux ..yml/docker/docker-compose.yml && docker build -t duraark/duraark-installer-linux ./docker'

# 'docker login && docker push duraark/duraark-installer-windows:v0.8.0
# 'docker push duraark/duraark-installer:v0.8.0

echo ""
echo "Successfully released 'duraark-installer' in version v0.8.0!"
echo ""
echo "The installer is available on Docker Hub and as windows executable in './releases/duraark-installer-v0.8.0'."
echo ""
