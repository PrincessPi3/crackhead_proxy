SLRP=$PWD/.slrp
BIN=$SLRP/bin
while true
do
$BIN/mubeng -f "$SLRP/proxies.txt" --output "$SLRP/live.txt" --check 2>/dev/null;
done
