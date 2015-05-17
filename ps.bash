#!/usr/bin/env bash

. /etc/os-release		# include file for define distributive OS

# list variables with software
SOFT_LIST="vim htop mc openvpn"
DESK_LIST="moc libreoffice dropbox yandex-disk"

# list variables with of distribution names
FEDORA=Fedora
GENTOO=Gentoo
CENTOS=Centos
UBUNTU=Ubuntu

function fedo {
	echo "somethink for fedora"
	yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	yum -y install $SOFT_LIST

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

function errd {
	echo "What are you use?"
}
case $NAME in
	"$FEDORA" ) fedo ;;
	"$GENTOO" ) gent ;;
	"$CENTOS" ) cent ;;
	"$UBUNTU" ) ubun ;;
	*	  ) errd ;;
esac

