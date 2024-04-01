SLRP_DIR=$PWD/.slrp
BIN=$SLRP_DIR/bin
PROXY_FILE=$SLRP_DIR/proxies.txt
LIVE=$SLRP_DIR/live.txt
DATA=$SLRP_DIR/data
SLRP=$BIN/slrp
PARSE_POOL=$BIN/parse_pool_json.sh
MUBENG=$BIN/mubeng
CHECK_LIVE=$BIN/check_for_live.sh
CLEAN=$BIN/clean.sh

echo Cleaning up first...
bash $CLEAN
echo Scanning for proxies, please wait 6 seconds...
screen -S slrp -d -m $SLRP
sleep 6;
echo  Checking for live proxies and parsing the pool, please wait 90 seconds... #... current time `date +%r`
screen -S parse_pool -d -m $PARSE_POOL
screen -S mubeng_check_live -d -m  $CHECK_LIVE
sleep 90
$MUBENG -t 6s -a localhost:420 -f $LIVE -w -v -r 1 -m random
echo proxy sever on, connect on http://localhost:420
