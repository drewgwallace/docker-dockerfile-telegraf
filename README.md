# Docker Dockerfile



## Purpose
  Dockerfile to create a base system for telegraf.
  
----

## Execution

### docker hub <br> https://hub.docker.com/r/drewgwallace/telegraf/
<pre>
    docker run \
    -e INFLUX_DATABASE_HOSTNAME="<b>192.168.1.1</b>" \
    -e INFLUX_DATABASE_NAME="<b>TELEGRAF</b>" \
    -e INFLUX_DATABASE_USER="<b>USER</b>" \
    -e INFLUX_DATABASE_PASS="<b>PASSWORD</b>" \
    -dt drewgwallace/telegraf
</pre>
### Build yourself with docker compose
<pre>
    git clone https://github.com/drewgwallace/docker-dockerfile-telegraf.git
    cd docker-dockerfile-telegraf
    docker build -t <b>USERNAME</b>/telegraf .
    docker push <b>USERNAME</b>/telegraf
</pre>   


----

## Notes
