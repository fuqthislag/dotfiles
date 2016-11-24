#!/bin/sh

until [[ -n "$(ip addr show wlp2s0 | grep 'inet ')"  ]]; do
  sleep 3
done
/usr/bin/tmux -2 new-session -d -s irc /usr/bin/irssi
/usr/bin/qbittorrent-nox -d

# irssi.service
#
# [Unit]
# Description=Irssi Daemon Service
# After=network-online.target
#
# [Service]
# Type=forking
# User=qbtuser
# ExecStart=/usr/bin/tmux -2 new-session -d -s irc /usr/bin/irssi
# ExecStop=/usr/bin/tmux kill-session -t irc
#
# [Install]
# WantedBy=multi-user.target

# qbittorrent.service
#
# [Unit]
# Description=qBittorrent Daemon Service
# After=network-online.target
#
# [Service]
# Type=forking
# User=qbtuser
# ExecStart=/usr/bin/qbittorrent-nox -d
#
# [Install]
# WantedBy=multi-user.target
