#!/bin/bash

docker ps -a | grep snmp_simulator | awk '{print $1}' | xargs docker rm -f
