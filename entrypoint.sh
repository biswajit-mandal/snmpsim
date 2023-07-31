#!/bin/bash

python3 snmpsim/commands/responder.py --agent-udpv4-endpoint="0.0.0.0:$SNMP_PORT" \
    --log-level error --process-user=snmpsim --process-group=nogroup --data-dir data/custom_data
