#!/bin/bash

USER=<your_rpc_user>
PASSWD=<your_rpc_password>

AC_NAME=OOT
AC_SUPPLY=216000000
SEEDIP1=78.47.196.146
SEEDIP2=144.202.70.31
SEEDIP3=199.247.26.10
SEEDIP4=207.148.84.175

# run container
docker run -d --rm --name $AC_NAME -ti \
  --net host \
  --mount "src=$AC_NAME,dst=/home/komodo/" \
  kmdplatform/komodod:lite \
  -rpcuser=$USER \
  -rpcpassword=$PASSWD \
  -pubkey=$PUBKEY \
  -bind=0.0.0.0 \
  -rpcbind=127.0.0.1 \
  -rpcallowip=0.0.0.0/0 \
  -whitelist=127.0.0.1 \
  -ac_name=$AC_NAME \
  -ac_supply=$AC_SUPPLY \
  -addnode=$SEEDIP1 \
  -addnode=$SEEDIP2 \
  -addnode=$SEEDIP3 \
  -addnode=$SEEDIP4
