#!/bin/bash
wget https://raw.githubusercontent.com/ntantai21810/demo-github-actions/master/docker-compose.yaml
docker compose stop
docker compose rm -f
docker compose pull
docker compose up -d