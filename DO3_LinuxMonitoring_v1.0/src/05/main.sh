#!/bin/bash

DIR=$1

if [[ "$#" -ne 1 ]]; then
	echo "Запустите скрипт только с одним параметром"
	exit 1
fi

if [ ! -d "$DIR" ]; then
  echo "$DIR - не является директорией"
  exit 1
fi

chmod +x info.sh output.sh

source info.sh
source output.sh
