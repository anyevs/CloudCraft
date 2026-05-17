#!/bin/bash

echo "Updating packages..."
sudo apt update -y

echo "Installing Java..."
sudo apt install openjdk-21-jre-headless -y

echo "Creating Minecraft directory..."
mkdir -p ~/minecraft-server

cd ~/minecraft-server

echo "Downloading Minecraft server..."
wget https://piston-data.mojang.com/v1/objects/97ccd4c0ed3f81bbb7bfacddd1090b0c56f9bc51/server.jar -O server.jar

echo "Accepting EULA..."
echo "eula=true" > eula.txt

echo "Starting Minecraft server..."
java -Xmx512M -Xms512M -jar server.jar nogui