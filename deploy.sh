#!/bin/bash
wget https://github.com/ntantai21810/demo-github-actions/blob/master/docker-compose.yaml
docker-compose stop
docker-compose rm -f
docker-compose pull
docker-compose up -d