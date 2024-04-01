while true;
do
curl -D - --proxy-insecure -x http://localhost:420 -k https://canhazip.com
echo "\n"
done
