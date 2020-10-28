#!/usr/bin/env bash

echo "This script explains and ask to proceed before each action."
echo "I made this running Cloudready, so if your are running from another ChromiumOS, some steps may need your manual tweak."



echo "[1] - Turn Off Chrome System Protection"
read -p "? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
sudo disable_verity
fi 


echo "[2] - Install Chromebrew"
read -p "? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
curl -Ls git.io/vddgY | bash
fi 


echo "[3] - Install nano and htop"
read -p "? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
crew update
crew install nano htop
fi 

echo "[4] - Install VSCode-Server"
read -p "? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
curl -fsSL https://code-server.dev/install.sh | sh
nano ~/.config/code-server/config.yaml
fi 

echo "[4] - Install Rclone"
read -p "? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
curl https://rclone.org/install.sh | sudo bash
fi 

