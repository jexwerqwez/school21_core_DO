#!/bin/bash

gcc miniserver.c -lfcgi -o server
chmod 777 server
spawn-fcgi -p 8080 server
nginx -g "daemon off;"
/bin/bash
