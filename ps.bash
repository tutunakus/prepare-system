#!/usr/bin/env bash

. /etc/os-release		# include file for define distributive OS

# list variables with of distibution names
FEDORA=Fedora
GENTOO=Gentoo
CENTOS=Centos
UBUNTU=Ubuntu

function fedo {
	echo "somethink for fedora"
}

function gent {
	echo "somethink for gentoo"
}

function cent {
	echo "somethink for centos"
}

function ubun {
	echo "somethink for ubuntu"
}

case $NAME in
	"$FEDORA" ) fedo ;;
	"$GENTOO" ) gent ;;
	"$CENTOS" ) cent ;;
	"$UBUNTU" ) ubun ;;
esac

