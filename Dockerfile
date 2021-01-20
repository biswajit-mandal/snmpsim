FROM python:3.7-slim

COPY . snmpsim
WORKDIR snmpsim
RUN python setup.py install
RUN adduser --system snmpsim

ENTRYPOINT ["python", "snmpsim/commands/responder.py", "--agent-udpv4-endpoint=0.0.0.0:161", "--process-user=snmpsim", "--process-group=nogroup"]
