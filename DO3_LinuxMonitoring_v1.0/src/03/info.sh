#!/bin/bash

get_info() {
    HOSTNAME=$(hostname)
    TIMEZONE=$(timedatectl)
    TIME_ZONE=$(echo "$TIMEZONE" | grep "Time zone" | awk -F ' ' '{print $3}')
    UTC_OFFSET=$(echo "$TIMEZONE" | grep "Time zone" | awk -F ' ' '{print $5}' | sed 's/)//;s/0//' | sed 's/0*$//')
    USER=$(whoami)
    OS=$(cat /etc/os-release | awk '/PRETTY_NAME/{print substr($1,14), $2, substr($3,1,3)}')
    DATE=$(date +'%d %B %Y %H:%M:%S')
    UPTIME=$(uptime -p)
    UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
    IP=$(ip r | grep 'default via' | awk '{print $3}')
    MASK=$(ifconfig | awk '/netmask/{print $2,$3,$4}') 
    GATEWAY=$(ip route | grep default | awk '{print $3}')
    RAM_TOTAL=$(free -m | grep Mem | awk '{ printf "%.3f GB\n", $2/1024 }')
    RAM_USED=$(free -m | grep Mem | awk '{ printf "%.3f GB\n", $3/1024 }')
    RAM_FREE=$(free -m | grep Mem | awk '{ printf "%.3f GB\n", $4/1024 }')
    SPACE_ROOT=$(df -k | grep '/$' | awk '{printf "%.2f MB\n", $2/ 1000}')
    SPACE_ROOT_USED=$(df -k | grep '/$' | awk '{printf "%.2f MB\n", $3 / 1000}') 
    SPACE_ROOT_FREE=$(df -k | grep '/$' | awk '{printf "%.2f MB\n", $4 / 1000}')
}
