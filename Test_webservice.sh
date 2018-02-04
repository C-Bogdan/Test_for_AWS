#!/bin/bash

test_command=`curl -o /tmp/CURL_OUTPUT.xxx -s -w "%{http_code}\\n%{time_total}\\n" http://$1/version.txt > /tmp/TMP_FILE.xxx 2>&1`

if [[ `sed -n '1p' /tmp/TMP_FILE.xxx` == "200" ]] ;
then
   cat /tmp/CURL_OUTPUT.xxx ;
   #Bellow line can be enabled to see the load time of the page
   #echo "Load Time is:" `sed -n '2p' /tmp/TMP_FILE.xxx`
else
   echo "Server is not up" ;
fi

rm -f /tmp/*.xxx
