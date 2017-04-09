#!/bin/bash

#Catch errors on startup
if [ -z "$MEDIA_CONV" ]; then
  echo "No config folder specificed in environment variable. Please specify MEDIA_CONV"
  exit 1
fi

#Find all mp4 files

listing=`find $MEDIA_CONV -name "*.mkv"`

for mkv in $listing
do
  echo "Converting $mkv"
  noext=`echo $mkv | sed -e 's/\(.mkv\)*$//g'`
  avconv -loglevel error -y -i "$mkv" -c:v copy -c:a aac -strict experimental "$noext.mp4"
done

echo "Batch conversion done."
exit 0
