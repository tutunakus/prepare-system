#!/usr/bin/env bash

OS_RELEASE=/etc/os-release				# include file for define distributive OS

# list variables with software
UNI_SOFT="vim htop mc openvpn wget"			# universal soft list for all type installation
DESK_LIST="moc libreoffice dropbox yandex-disk anki cherrytree keepass"		# software for desktop installation

# list variables with of distribution names
FEDORA=fedora
GENTOO=gentoo
CENTOS=centos
UBUNTU=ubuntu

function fedo {						# if you use fedora
	SOFT_LIST=$UNI_SOFT+$DESK_LIST
	echo "somethink for fedora"
	yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
	yum -y install $SOFT_LIST

}

function gent {						# if you use gentoo
	echo "somethink for gentoo"
}

function cent {						# if you use centos
	echo "somethink for centos"
	SOFT_LIST=$UNI_SOFT
	yum install epel-release -y
	yum install -y $SOFT_LIST
}

function ubun {						# if you use ubuntu
	echo "somethink for ubuntu"
}

function errd {						# if distr no in list
	echo "What are you use?"
}


			
if [ -a $OS_RELEASE ]; then				# script start
	        case $ID in
			"$FEDORA" ) fedo ;;
			"$GENTOO" ) gent ;;
			"$CENTOS" ) cent ;;
			"$UBUNTU" ) ubun ;;
			*         ) errd ;;
		esac
else
	echo "File /etc/os-releae didn't found"
fi
                                                                                   
