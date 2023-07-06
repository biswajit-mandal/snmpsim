FROM python:3.9.7-slim
ARG SNMP_PORT
ENV SNMP_PORT=$SNMP_PORT

COPY . snmpsim
WORKDIR snmpsim
RUN python setup.py install
RUN adduser --system snmpsim
RUN pip install pyasn1==0.4.5 pysnmp==4.4.12
RUN chmod -R 777 data

# Run the generated shell script.
ENTRYPOINT ["./entrypoint.sh"]
