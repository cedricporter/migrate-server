#!/bin/sh
#
# File: adduser.sh
#
# Created: Thursday, August 29 2013 by Hua Liang[Stupid ET] <et@everet.org>
#

if [ "$1" = "" ]
then
    echo "Please input a username"
    exit 1
fi

user=$1

adduser $user
mkdir /home/~$user/www
chown $user:www-data /home/$user/www
chmod 750 /home/$user/www
