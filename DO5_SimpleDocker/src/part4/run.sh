#!/bin/bash

gcc miniserver.c -lfcgi
chmod 777 a.out
spawn-fcgi -p 8080 a.out
service nginx start
/bin/bash
