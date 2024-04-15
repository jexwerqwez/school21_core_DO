#!/bin/bash

chmod +x functions.sh info.sh output.sh

source functions.sh
source info.sh

check_colors $@
get_info

source output.sh