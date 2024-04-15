#!/bin/bash

chmod +x info.sh output.sh save_file.sh

source info.sh
source output.sh

read -p "Хотите сохранить эти данные в файл? (Y/N): " ANSWER

if [[ $ANSWER == "Y" || $ANSWER == "y" ]]; then
    source save_file.sh
fi

