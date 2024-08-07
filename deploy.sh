#!/bin/bash
cd ~/infra-iaac/staging/$1;
git pull;
TAG=$2 docker compose up -d;
cd ~/infra-iaac/staging/nginx;
docker compose restart;
