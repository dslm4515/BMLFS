#! /bin/bash

# $1 = package name (no version)

ls /var/log/packages/${1}* | cut -d '/' -f 5
