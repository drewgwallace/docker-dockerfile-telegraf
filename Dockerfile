FROM ubuntu:xenial
MAINTAINER drewgwallace

# ENV INFLUX_DATABASE_HOSTNAME "192.168.1.1"
# ENV INFLUX_DATABASE_NAME "telegraf"
# ENV INFLUX_DATABASE_USER "username"
# ENV INFLUX_DATABASE_PASS "1234"

# Telegraf

RUN apt-get update && \
    apt-get install -y curl apt-transport-https && \
    echo "deb https://repos.influxdata.com/ubuntu xenial stable" | tee -a /etc/apt/sources.list.d/influx.list && \
    curl -sL https://repos.influxdata.com/influxdb.key | apt-key add - && \
    apt-get update && \
    apt-get install -y telegraf && \
    apt-get clean -qy

COPY telegraf.conf /etc/telegraf/telegraf.conf