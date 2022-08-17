#!/usr/bin/env bash

# Usage: 
#
#   ./message [-f FILE_NAME] MESSAGE
# 
#   Creates a file with the name "msg-XX.txt" (where XX is a serial number)
#   in the directory "messages", with the following content:
#
#   MESSAGE\n
#   
#   Example:
#       input:
#           ./message "hei, jeg heter teodor"
#       output:
#           a new file "messages/msg-01.txt", with the contents
#
#           1   hei, jeg heter teodor
#           2   
#

set -e

if [ -z $1 ]; then
    echo "Usage:"
    echo ""
    echo "./message.sh MESSAGE"
    exit 1
fi

file_name=$(find messages -type f | grep msg- | grep "\d" | sort -r | grep "\d*" -m1 -o)

file_name=$((file_name + 1))

cd ./messages
touch msg-$file_name.txt
echo $@ > msg-$file_name.txt
