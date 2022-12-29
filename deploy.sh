#!/bin/bash
cd /root
rm -rf Dockerfile docker-compose.yml config .git*
git clone https://github.com/gak1114/monitor.git
cd monitor
mv * /root
cd /root
rm -rf monitor
#Create folder volumes
mkdir prometheus_data grafana-data grafana-logs

#Chay docker-compose
docker-compose stop
docker-compose rm -f
docker-compose pull
docker-compose up -d
