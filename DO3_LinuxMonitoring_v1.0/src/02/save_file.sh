#!/bin/bash

FILE_NAME=$(date +'%d_%m_%y_%H_%M_%S').status
touch $FILE_NAME
echo "HOSTNAME = $HOSTNAME" >> $FILE_NAME
echo "TIMEZONE = $TIME_ZONE UTC $UTC_OFFSET" >> $FILE_NAME
echo "USER = $USER" >> $FILE_NAME
echo "OS = $OS" >> $FILE_NAME
echo "DATE = $DATE" >> $FILE_NAME
echo "UPTIME = $UPTIME" >> $FILE_NAME
echo "UPTIME_SEC = $UPTIME_SEC" >> $FILE_NAME
echo "IP = $IP" >> $FILE_NAME
echo "MASK = $MASK" >> $FILE_NAME
echo "GATEWAY = $GATEWAY" >> $FILE_NAME
echo "RAM_TOTAL = $RAM_TOTAL" >> $FILE_NAME
echo "RAM_USED = $RAM_USED" >> $FILE_NAME
echo "RAM_FREE = $RAM_FREE" >> $FILE_NAME
echo "SPACE_ROOT = $SPACE_ROOT" >> $FILE_NAME
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED" >> $FILE_NAME
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE" >> $FILE_NAME
echo "Данные сохранены в $FILE_NAME."