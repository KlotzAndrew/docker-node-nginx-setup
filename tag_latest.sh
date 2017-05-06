#! /usr/bin/env bash

set -ex

docker-compose build

# nginx img
docker tag dockernodenginxsetup_nginx klotzandrew/dockernodenginxsetup_nginx
docker push klotzandrew/dockernodenginxsetup_nginx

# node img
docker tag dockernodenginxsetup_node klotzandrew/dockernodenginxsetup_node
docker push klotzandrew/dockernodenginxsetup_node
