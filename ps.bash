#!/usr/bin/env bash

. /etc/os-release		# include file for define distributive OS

FEDORA=Fedora
GENTOO=Gentoo

if [ "$NAME" == "$FEDORA" ]; then
	echo 'Fedora'
fi

if [ "$NAME" == "$GENTOO" ]; then
	echo 'Gentoo'
fi

