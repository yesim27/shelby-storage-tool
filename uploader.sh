#!/bin/bash

while true; do
  SIZE=$((RANDOM%400+500))
  NAME=$(date +%s)

  wget -q https://picsum.photos/$SIZE -O img_$NAME.jpg

  shelby upload img_$NAME.jpg files/blob_$NAME.png -e tomorrow --assume-yes --context shelbynet

  sleep 40
done
