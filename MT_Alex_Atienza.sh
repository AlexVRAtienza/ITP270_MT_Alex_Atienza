#!/bin/bash

read -p "Enter 'google.com' to ping, anythig will be considered invalid:" domain

#The input validation
if [ "$domain" != "google.com" ]; then
  echo "You must enter google.com, anything will be considered invalid"
  exit 1
fi

#created file to store ping results
ping -c 5 "$domain" > ping_results.txt 

#print a message indicating that the ping is complete
echo "Success! Results added to ping_results.txt."

