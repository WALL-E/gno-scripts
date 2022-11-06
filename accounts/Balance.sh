#!/bin/bash

NODE=test3.gno.land:36657
WALLET=g19sf75wdx2uvvd80vsn3ezgepyndtxejh8p5gv5

gnokey query auth/accounts/$WALLET --remote $NODE

