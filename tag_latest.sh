#! /usr/bin/env bash

set -ex

docker-compose build

# nginx img
docker tag dockernodenginxsetup_nginx klotzandrew/dockernodenginxsetup_nginx
docker push klotzandrew/dockernodenginxsetup_nginx

# node img
docker tag dockernodenginxsetup_node1 klotzandrew/dockernodenginxsetup_node1
docker push klotzandrew/dockernodenginxsetup_node1
