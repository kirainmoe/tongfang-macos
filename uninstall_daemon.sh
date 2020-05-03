#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# remove old TongfangFnDaemon
launchctl unload /Library/LaunchAgents/io.github.goshin.TongfangFnDaemon.plist > /dev/null 2>&1
sudo rm /Library/LaunchAgents/io.github.goshin.TongfangFnDaemon.plist > /dev/null 2>&1
sudo rm /usr/bin/TongfangFnDaemon > /dev/null 2>&1
