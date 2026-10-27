#!/bin/bash

if [ $# -eq 0 ] 
then
  echo " Provide log directory as follows"
  echo " log-archive <log-directory> "
  exit 1
fi
timestamp=$(date +"%Y%m%d_%H%M%S")
file_name=log_archive_$date

tar -czvf "$file_name.tar.gz" "$1"

echo " Done "
  
