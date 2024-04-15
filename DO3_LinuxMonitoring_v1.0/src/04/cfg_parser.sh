#!/bin/bash

CONFIG_FILE="config.cfg"

COLUMN1_BACKGROUND=6
COLUMN1_FONT_COLOR=1
COLUMN2_BACKGROUND=5
COLUMN2_FONT_COLOR=4

if [ -f $CONFIG_FILE ]; then
    while IFS= read -r line
    do
        key=$(echo $line | cut -d'=' -f1)
        value=$(echo $line | cut -d'=' -f2)
        case $key in
            "column1_background") COLUMN1_BACKGROUND=$value ;;
            "column1_font_color") COLUMN1_FONT_COLOR=$value ;;
            "column2_background") COLUMN2_BACKGROUND=$value ;;
            "column2_font_color") COLUMN2_FONT_COLOR=$value ;;
        esac
    done < "$CONFIG_FILE"
fi