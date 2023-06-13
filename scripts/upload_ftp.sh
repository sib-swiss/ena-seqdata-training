#!/usr/bin/env bash

HOST=$1
USER=$2
PASS=$3
FILE=$4
DIR=$5

ftp -inv $HOST << EOF
user $USER $PASS
binary
cd $DIR
put $FILE
bye
EOF
