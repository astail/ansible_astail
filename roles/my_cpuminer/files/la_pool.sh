#!/bin/sh

set -eu

i=`ps -ef | grep minerd | grep -v grep | awk '{print $2;}'`


if [ -n "$i" ]; then
  kill $i
fi

core=$1

minerd -a yescrypt -o stratum+tcp://jp.lapool.me:3014 -t $core -u astail.linux1 -p erio
