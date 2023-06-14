#!/bin/bash

docker ps | grep snmp_simulator | awk '{print $1}' | xargs docker rm -f
