#!/usr/bin/env bash

OS_RELEASE=/etc/os-release				# include file for define distributive OS

# list variables with software
UNI_SOFT="vim htop mc openvpn wget"			# universal soft list for all type installation
DESK_LIST="moc libreoffice dropbox yandex-disk"		# software for desktop installation

# list variables with of distribution names
FEDORA=Fedora
GENTOO=Gentoo
CENTOS=Centos
UBUNTU=Ubuntu

function fedo {
	SOFT_LIST=$UNI_SOFT+$DESK_LIST
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

#######################################
############ main function ############
#######################################

function main {
	case $NAME in
		"$FEDORA" ) fedo ;;
		"$GENTOO" ) gent ;;
		"$CENTOS" ) cent ;;
		"$UBUNTU" ) ubun ;;
		*	  ) errd ;;
	esac
}

if [ -a $OS_RELEASE ]; then 				# start script
	main
else
	echo "File /etc/os-releae didn't found"
fi
