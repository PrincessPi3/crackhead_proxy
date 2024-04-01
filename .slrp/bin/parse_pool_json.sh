SLRP=$PWD/.slrp
PROXY_FILE=$SLRP/proxies.txt;
TEMP=$SLRP/proxies.tmp;
while true;
 do
  curl -s http://localhost:8089/api/pool | jq '.Records[] | .Proxy' | sed s/\"//g > $TEMP;
   if [ ! -s $TEMP ]
    then 
     echo "Nothing at the moment"; sleep 2;
    else
     cat $TEMP > $PROXY_FILE;
     echo "updated- sleeping 2 seconds..."; sleep 2;
     cat $PROXY_FILE;
   fi
done;
