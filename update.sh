#!/bin/bash

cd /etc

# Teste, ob der Rechner arch-based ist
if [ -d /etc/pacman.d ]
	then 
	sudo pacman -Syu && 
	snap refresh && 
	flatpak update -yy

fi

#Teste, ob der Rechner debian-basiert ist
if [ -d /etc/apt ]
	then 
	sudo apt update &&
	 apt upgrade &&
	 sudo apt dist-upgrade &&
	 flatpak update &&
	 snap refresh && 
	autoremove -yy
fi
