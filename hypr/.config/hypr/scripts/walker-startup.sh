#!/bin/bash

# Start elephant in the background
/home/kyribaki/go/bin/elephant > /tmp/elephant.log 2>&1 &

sleep 1
#
# Start walker now that elephant is ready
/home/kyribaki/Projects/walker/target/release/walker --gapplication-service > /tmp/walker.log 2>&1
