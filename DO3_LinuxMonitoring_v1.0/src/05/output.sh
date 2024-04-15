#!/bin/bash

# DIR=$1

# if [[ "$#" -ne 1 ]]; then
# 	echo "Error: incorrect input. Only one parameter"
# 	exit 1
# fi

# if [ ! -d "$DIR" ]; then
#   echo "Error: $DIR is not a directory"
#   exit 1
# fi

# START=$(date +%s)

# TOTAL_FOLDERS=$(sudo find "$DIR" -type d | wc -l)
# TOP5_FOLDERS=$(sudo du -Sh "$DIR" | sort -rh | head -5 | awk 'BEGIN{counter=1}{print counter " - " $2 ", " $1; counter++}')
# TOTAL_FILES=$(sudo find "$DIR" -type f | wc -l)
# CONF_FILES=$(sudo find "$DIR" -type f -name "*.conf" | wc -l)
# TEXT_FILES=$(sudo find "$DIR" -type f -name "*.txt" | wc -l)
# EXE_FILES=$(sudo find "$DIR" -type f -executable | wc -l)
# LOG_FILES=$(sudo find "$DIR" -type f -name "*.log" | wc -l)
# ARCH_FILES=$(sudo find "$DIR" -type f \( -name "*.tar.gz" -o -name "*.zip" \) | wc -l)
# SYMLINKS=$(sudo find "$DIR" -type l | wc -l)
# TOP10_FILES=$(sudo find "$DIR" -type f -exec du -Sh {} + | sort -rh | awk 'NR<=10{print NR, "-", $2 ", " $1 ", " substr($2,length($2)-2,3)}')
# TOP10_EXE_FILES=$(sudo find "$DIR" -type f -executable -exec du -Sh {} + | sort -rh | head -10 | awk '{print $1, $2}' | \
#   while read -r size path; do \
#     hash=$(sudo md5sum "$path" | awk '{print $1}'); \
#     echo "$size, $path, $hash"; \
#   done | awk 'NR<=10{print NR, "-", $2 ", " $1 " " $3}')

# END=$(date +%s)
# EXECUTION_TIME=$(echo "$END - $START" | bc)


echo "Total number of folders (including all nested ones) = $TOTAL_FOLDERS"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$TOP5_FOLDERS"
echo "Total number of files = $TOTAL_FILES"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $CONF_FILES"
echo "Text files = $TEXT_FILES"
echo "Executable files = $EXE_FILES"
echo "Log files (with the extension .log) = $LOG_FILES"
echo "Archive files = $ARCH_FILES"
echo "Symbolic links = $SYMLINKS"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$TOP10_FILES"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
echo "$TOP10_EXE_FILES"

echo "Script execution time (in seconds) = $EXECUTION_TIME"
