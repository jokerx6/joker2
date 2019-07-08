#!/data/data/com.termux/files/usr/bin/bash

function check_package() {
    if [ $(dpkg-query -W -f='${Status}' $1 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        pkg install $1 -y;
    fi
}

check_package coreutils
git pull origin master
