# CRACKHEAD PROXY
This is a hacked crackheaded bullshit amalgamation of a per-request proxy finder and rotator. 

Scrapes the proxy lists included with [slrp](https://github.com/nfx/slrp) and multiplexes them through a local HTTP proxy with [mubeng](https://github.com/kitabisa/mubeng) so that each request through the local procy is sent through a random free proxy. (because slrp alone was not working)

This was shitcoded while mentally impared. Expect issues.

## WARNINGS
* About half or so of proxies used will fail, use retries.
* Dont expect privacy on your requests, mitm is possible.
* Dont do crimes

## INSTALL
```
sudo apt install jq screen curl
cd ~
wget https://github.com/PrincessPi3/crackhead_proxy/releases/download/firstlol/crackhead_proxy_release_v0.0.0.0.0.1.tar.gz
tar xvf crackhead_proxy_release_v0.0.0.0.0.1
```
## USE
```
cd ~/crackhead_proxy_release_v0.0.0.0.0.1
./run_d.sh
```
then run your app (in another terminal) with the HTTP proxy `http://localhost:420`
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
## EXAMPLE
```
ffuf -w wordlist.txt -u https://url.domain/FUZZ -x http://localhost:420
```

## PROJECTS USED
### Give them a hot look
* [slrp](https://github.com/nfx/slrp)
* [mubeng](https://github.com/kitabisa/mubeng)
* [jq](https://github.com/jqlang/jq)
