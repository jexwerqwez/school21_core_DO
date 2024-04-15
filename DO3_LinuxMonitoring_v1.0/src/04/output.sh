#!/bin/bash

print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "HOSTNAME" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$HOSTNAME" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "TIMEZONE" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$TIME_ZONE UTC $UTC_OFFSET" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "USER" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$USER" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "OS" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$OS" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "DATE" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$DATE" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "UPTIME" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$UPTIME" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "UPTIME_SEC" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$UPTIME_SEC" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "IP" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$IP" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "MASK" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$MASK" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "GATEWAY" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$GATEWAY" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "RAM_TOTAL" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$RAM_TOTAL" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "RAM_USED" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$RAM_USED" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "RAM_FREE" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$RAM_FREE" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "SPACE_ROOT" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$SPACE_ROOT" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "SPACE_ROOT_USED" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$SPACE_ROOT_USED" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "SPACE_ROOT_FREE" && echo -n " = " && print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "$SPACE_ROOT_FREE" && echo

echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "Column 1 background = $COLUMN1_BACKGROUND ($(color_name $COLUMN1_BACKGROUND))" && echo
print_colored $COLUMN1_BACKGROUND $COLUMN1_FONT_COLOR "Column 1 font color = $COLUMN1_FONT_COLOR ($(color_name $COLUMN1_FONT_COLOR))" && echo
print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "Column 2 background = $COLUMN2_BACKGROUND ($(color_name $COLUMN2_BACKGROUND))" && echo
print_colored $COLUMN2_BACKGROUND $COLUMN2_FONT_COLOR "Column 2 font color = $COLUMN2_FONT_COLOR ($(color_name $COLUMN2_FONT_COLOR))" && echo
