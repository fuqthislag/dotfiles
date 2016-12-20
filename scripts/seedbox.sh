#!/bin/sh

until [[ -n "$(ip addr show wlp2s0 | grep 'inet ')"  ]]; do
  sleep 3
done
/usr/bin/tmux -2 new-session -d -s irc /usr/bin/irssi
/usr/bin/qbittorrent-nox -d
