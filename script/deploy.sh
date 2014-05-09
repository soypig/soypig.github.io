#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Deploy to the specified directory or shortcode."
  echo "Usage: <deploy destination>"
  echo " Short codes:"
  echo " fdrop - Frank's Dropbox location"
  exit 1
fi

# determine deploy location

dest=${1}

if [ "${dest}" == "fdrop" ]
then
  dest="/Users/frank/Desktop/Dropbox/Public/"
fi

cp www/* ${dest}
