#!/bin/sh

sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get clean
