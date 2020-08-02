#!/bin/bash
trap "exit" SIGINT
#INTERVAL=$1  commenting this line so that the interval is set through environment variable 
echo Configured to generate fortune every $INTERVAL seconds
mkdir /var/htdocs
while :
do
  echo "$(date) : Writing fortune to index.html"
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done