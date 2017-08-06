#!/bin/sh

dpkg -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e "[0-9]\.[0-9]" | xargs sudo apt-get -y purge
