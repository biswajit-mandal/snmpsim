#!/bin/bash

docker build -t snmp-simulator .
for port in {9001..9016}
do
    docker run --name snmp_simulator_$port -d -e SNMP_PORT=$port -p $port:$port snmp-simulator:latest
done
