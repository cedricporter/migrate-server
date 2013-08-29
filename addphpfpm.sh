#!/bin/sh
#
# File: addphpfpm.sh
#
# Created: Thursday, August 29 2013 by Hua Liang[Stupid ET] <et@everet.org>
#


if [ "$1" = "" ]
then
    echo "Please input a username"
    echo "usage: $0 username"
    exit 1
fi

user=$1

cat >> $user.conf <<EOF
[$user]
user = $user
group = $user
listen = /var/run/php5-fpm.$user.sock
pm = dynamic
pm.max_children = 5
pm.start_servers = 1
pm.min_spare_servers = 1
pm.max_spare_servers = 3
chdir = /
EOF
