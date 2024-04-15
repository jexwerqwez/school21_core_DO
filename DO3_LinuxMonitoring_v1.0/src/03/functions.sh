#!/bin/bash

print_colored() {
    local BG_COLOR
    local FG_COLOR
    case $1 in
        1) BG_COLOR=107 ;;
        2) BG_COLOR=101 ;;
        3) BG_COLOR=102 ;;
        4) BG_COLOR=104 ;;
        5) BG_COLOR=105 ;;
        6) BG_COLOR=100 ;;
    esac
    case $2 in
        1) FG_COLOR=97 ;;
        2) FG_COLOR=91 ;;
        3) FG_COLOR=92 ;;
        4) FG_COLOR=94 ;;
        5) FG_COLOR=95 ;;
        6) FG_COLOR=90 ;;
    esac
    local TEXT=$3
    echo -en "\e[${BG_COLOR}m\e[${FG_COLOR}m${TEXT}\e[0m"
}

check_colors() {
    if [ "$#" -ne 4 ]; then
        echo "Использование: $0 <фон_названий> <цвет_шрифта_названий> <фон_значений> <цвет_шрифта_значений>"
        exit 1
    fi

    if [ "$1" == "$2" ]; then
        echo "Цвета шрифта и фона для названий не должны совпадать."
        exit 1
    fi
    
    if [ "$3" == "$4" ]; then
        echo "Цвета шрифта и фона для значений не должны совпадать."
        exit 1
    fi
}