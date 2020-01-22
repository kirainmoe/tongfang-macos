#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# remove old TongfangFnDaemon
sudo launchctl unload /Library/LaunchAgents/com.tongfang.TongfangFnDaemon.plist 2>/dev/null
sudo rm /usr/bin/TongfangFnDaemon 2>/dev/null

sudo mkdir -p /usr/local/bin/
sudo chmod -R 755 /usr/local/bin/
sudo cp $DIR/TongfangFnDaemon /usr/local/bin/
sudo chmod 755 /usr/local/bin/TongfangFnDaemon
sudo chown root:wheel /usr/local/bin/TongfangFnDaemon

sudo cp $DIR/com.tongfang.TongfangFnDaemon.plist /Library/LaunchAgents
sudo chmod 644 /Library/LaunchAgents/com.tongfang.TongfangFnDaemon.plist
sudo chown root:wheel /Library/LaunchAgents/com.tongfang.TongfangFnDaemon.plist

sudo launchctl load /Library/LaunchAgents/com.tongfang.TongfangFnDaemon.plist
