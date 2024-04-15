#!/bin/bash

print_colored() {
    local BG_COLOR
    local FG_COLOR
    case $1 in
        1) BG_COLOR=47 ;;
        2) BG_COLOR=41 ;;
        3) BG_COLOR=42 ;;
        4) BG_COLOR=44 ;;
        5) BG_COLOR=45 ;;
        6) BG_COLOR=40 ;;
        *) BG_COLOR=49 ;;
    esac
    case $2 in
        1) FG_COLOR=37 ;;
        2) FG_COLOR=31 ;;
        3) FG_COLOR=32 ;;
        4) FG_COLOR=34 ;;
        5) FG_COLOR=35 ;;
        6) FG_COLOR=30 ;;
        *) FG_COLOR=37 ;;
    esac
    local TEXT=$3
    echo -en "\e[${BG_COLOR};${FG_COLOR}m${TEXT}\e[0m"
}

color_name() {
    case $1 in
        1) echo "white" ;;
        2) echo "red" ;;
        3) echo "green" ;;
        4) echo "blue" ;;
        5) echo "purple" ;;
        6) echo "black" ;;
        *) echo "unknown" ;;
    esac
}
