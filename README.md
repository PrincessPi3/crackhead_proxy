# CRACKHEAD PROXY
This is a hacked crackheaded bullshit amalgamation of a per-request proxy finder and rotator. 

Scrapes the proxy lists included with [slrp](https://github.com/nfx/slrp) and multiplexes them through a local HTTP proxy with [mubeng](https://github.com/kitabisa/mubeng) because slrp alone was not working.

This was shitcoded while mentally impared. Expect issues.

## WARNINGS
* About half or so of proxies used will fail, use retries.
* Dont expect privacy on your requests, mitm is possible.
* Dont do crimes

## INSTALL
```
sudo apt install jq screen curl
cd ~
wget <releaseurl>
tar xvf <releasename>
```
## USE
```
cd ~/<releasename>
./run_d.sh
```
then run your app with the HTTP proxy `http://localhost:420`
## STOP
```
Ctrl+C
./kill.sh
```

## TEST
```
curl -D - --proxy-insecure -x http://localhost:420 -k https://canhazip.com
```
or
```
    ./test_proxy.sh
```


##PROJECTS USED
###Give them a hot look
* [slrp](https://github.com/nfx/slrp)
* [mubeng](https://github.com/kitabisa/mubeng)
* [jq](https://github.com/jqlang/jq)
