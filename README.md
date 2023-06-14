SNMP Simulator
--------------
### Create the environment
Checkout the repo and issue below command
```
python3 -m venv env
source env/bin/activate
pip install .
pip install pyasn1==0.4.5 pysnmp==4.4.12
```

### Create test data from live setup
Checkout the repo, create the environment as described above, and issue below commands to set your environment:
For dumping the test data from device, use below command:
```
python3 snmpsim/commands/cmd2rec.py --agent-udpv4-endpoint <deviceIP> --start-object <OID>
```
For Ex: OID 1.3.6.1.2.1.2.2 (ifTable)
```
python3 snmpsim/commands/cmd2rec.py --agent-udpv4-endpoint 10.84.30.149 --start-object 1.3.6.1.2.1.2.2 --output-file ./data/public.snmprec
```

Note: here the output file name format is "<community_string>".snmprec
So, if teh above file is used for snmp agent to run, the community string needs to be used as `public`

### Run the snmp servers
Checkout the repo and run using below command
```
bash scale_snmp_servers.sh
```
By default it creates 16 docker containers running snmp servers on ports starting port number 9001

### Cleanup the snmp servers
Issue the below command
```
bash cleanup_snmp_servers.sh
```
