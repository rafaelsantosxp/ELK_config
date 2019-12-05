#!/bin/bash
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.5.0-x86_64.rpm
sudo rpm -vi filebeat-7.5.0-x86_64.rpm
cp ./docker.yml /etc/filebeat/modules.d/docker.yml
cp ./filebeat.yml /etc/filebeat/filebeat.yml
systemctl enable filebeat
systemctl start filebeat