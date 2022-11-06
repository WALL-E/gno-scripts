#!/bin/bash

set -e
set -x

CHAINID=test3
NODE=test3.gno.land:36657
WALLET=g19sf75wdx2uvvd80vsn3ezgepyndtxejh8p5gv5

OPT="--chainid $CHAINID --remote $NODE --broadcast true"
GAS="--gas-fee 1000000ugnot --gas-wanted 2000000"

#
# contract: CreateThread 
# params:
#   args: bid
#   args: title
#   args: body 
#
gnokey maketx call $WALLET $OPT $GAS \
  --pkgpath "gno.land/r/demo/boards" \
  --func "CreateThread" \
  --args "7" \
  --args "Users" \
  --args\#file "/tmp/scripts.md" 
