#!/bin/bash


echo " Top 5 IP addresses with the most requests "
cat /var/log/git.log | awk '{print $1}' | sort | uniq -c | sort -nr | head -n 5

echo " Top 5 most requested paths "
cat /var/log/git.log | awk '{print $7}' | sort | uniq -c | sort -nr | head -n 5

echo " Top 5 response status codes "
cat /var/log/git.log | awk '{print $9}' | sort -n | uniq -c | sort -nr | head -n 5

echo " Top 5 user agents "
cat /var/log/git.log | awk '{print $16}' | sort | uniq -c | sort -nr | head -n 5
