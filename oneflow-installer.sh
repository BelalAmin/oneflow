#!/bin/bash

REPO_NAME=oneflow
INSTALL_PREFIX=/usr/local/bin
REPO_HOME="https://github.com/BelalAmin/oneflow.git"
CURRENT_DIR=$(pwd)

case "$1" in
	uninstall)
		echo "operation not implemented yet"
		;;
	help)
		echo 	"Usage: [environment] oneflow-installer.sh [install|uninstall]"
		echo	"Environment: "
		echo	"	INSTALL_PREFIX=/usr/local/bin"
		echo	"	REPO_HOME=https://github.com/BelalAmin/oneflow.git"
		echo	"	REPO_NAME=oneflow"
		;;
	*)

#installing process
###check if we already have all of our project files, if not, clone it from oneFlow Repo
##check if all dependency scripts are up to date, otherwise update it
## 1- make sure that the path /usr/local/bin exists
## 2- copy all of our related files to the install path [/usr/local/bin]
## 3- make sure that shFlag library is in our directory and located within our project
## 4- give the scripts execution permission
## 5- verbose everything to our user
		echo "installing oneflow to $INSTALL_PREFIX"

		if [ -d $REPO_NAME -a -d $REPO_NAME/.git ]
		then
			echo "Nice work.. you've already clone the project, lets use the existing repo: $REPO_NAME"
		else
			echo "clonning the project from Github to $CURRENT_DIR/$REPO_NAME"
			git clone $REPO_HOME	$REPO_NAME
			echo "done cloning oneflow repo"
		fi
		;;
esac


