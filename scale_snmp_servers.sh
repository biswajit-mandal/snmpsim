#!/bin/bash

docker build -t snmp-simulator .
for port in {9001..9016}
do
    docker run --name snmp_simulator_$port -d --network host -e SNMP_PORT=$port snmp-simulator:latest
done
