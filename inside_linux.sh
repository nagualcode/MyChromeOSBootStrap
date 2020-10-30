#Create a linux container in settings: LINUX (BETA)

sudo apt update && sudo apt upgrade

sudo apt install ffmpeg imagemagick

curl https://rclone.org/install.sh | sudo bash

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo ln -s /usr/bin/python3 /usr/local/bin/python

echo 'export PATH="~/nagualtools:$PATH"' >>~/.bashrc
