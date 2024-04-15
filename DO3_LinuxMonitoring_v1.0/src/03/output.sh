#!/bin/bash

print_colored $1 $2 "HOSTNAME" && echo -n " = " && print_colored $3 $4 "$HOSTNAME" && echo
print_colored $1 $2 "TIMEZONE" && echo -n " = " && print_colored $3 $4 "$TIME_ZONE UTC $UTC_OFFSET" && echo
print_colored $1 $2 "USER" && echo -n " = " && print_colored $3 $4 "$USER" && echo
print_colored $1 $2 "OS" && echo -n " = " && print_colored $3 $4 "$OS" && echo
print_colored $1 $2 "DATE" && echo -n " = " && print_colored $3 $4 "$DATE" && echo
print_colored $1 $2 "UPTIME" && echo -n " = " && print_colored $3 $4 "$UPTIME" && echo
print_colored $1 $2 "UPTIME_SEC" && echo -n " = " && print_colored $3 $4 "$UPTIME_SEC" && echo
print_colored $1 $2 "IP" && echo -n " = " && print_colored $3 $4 "$IP" && echo
print_colored $1 $2 "MASK" && echo -n " = " && print_colored $3 $4 "$MASK" && echo
print_colored $1 $2 "GATEWAY" && echo -n " = " && print_colored $3 $4 "$GATEWAY" && echo
print_colored $1 $2 "RAM_TOTAL" && echo -n " = " && print_colored $3 $4 "$RAM_TOTAL" && echo
print_colored $1 $2 "RAM_USED" && echo -n " = " && print_colored $3 $4 "$RAM_USED" && echo
print_colored $1 $2 "RAM_FREE" && echo -n " = " && print_colored $3 $4 "$RAM_FREE" && echo
print_colored $1 $2 "SPACE_ROOT" && echo -n " = " && print_colored $3 $4 "$SPACE_ROOT" && echo
print_colored $1 $2 "SPACE_ROOT_USED" && echo -n " = " && print_colored $3 $4 "$SPACE_ROOT_USED" && echo
print_colored $1 $2 "SPACE_ROOT_FREE" && echo -n " = " && print_colored $3 $4 "$SPACE_ROOT_FREE" && echo
