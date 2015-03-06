#!/bin/bash
if [[ $USER != root ]]; then
echo -e "\e[00;31mERROR: must be root\e[00m"
exit 1
fi
service squid3 stop
rm -rfv /var/spool/squid3/*
squid3 -z
service squid3 restart
echo -e "\e[00;1;92mFinished...\e[00m"
exit 0
