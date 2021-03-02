#!/bin/sh

igate=`getent hosts aprs-igate | cut -d ' ' -f 1`
axudp2mqtt=`getent hosts aprs-axudp2mqtt | cut -d ' ' -f 1`

echo /udpbox -R 0.0.0.0:9001 -l $igate:9001 -l $axudp2mqtt:9001 -R 0.0.0.0:9002 -l $igate:9002 -l $axudp2mqtt:9001 -R 0.0.0.0:9003 -l $igate:9003 -l $axudp2mqtt:9001 -v
/udpbox -R 0.0.0.0:9001 -l $igate:9001 -l $axudp2mqtt:9001 -R 0.0.0.0:9002 -l $igate:9002 -l $axudp2mqtt:9001 -R 0.0.0.0:9003 -l $igate:9003 -l $axudp2mqtt:9001 -v