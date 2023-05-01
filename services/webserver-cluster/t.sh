#!/bin/bash

url="webservers-stage-1679285248.us-east-1.elb.amazonaws.com"

while true
do
  curl -s $url 
  echo "................"
  sleep 5
done

