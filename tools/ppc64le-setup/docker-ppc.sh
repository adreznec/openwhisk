#!/bin/bash

set -ex

# Build missing Docker container dependencies for ppc64le

# Python 2.7 Alpine
docker build -t ppc64le/python:2.7-alpine https://github.com/adreznec/python.git#master:2.7/alpine
# Python 3.6 Alpine
docker build -t ppc64le/python:3.6-alpine https://github.com/adreznec/python.git#master:3.6/alpine
# Couchdb
docker build -t ppc64le/couchdb:1.6 https://github.com/adreznec/docker-couchdb.git#master:1.6.1
# Nginx
docker build -t ppc64le/nginx:1.13.0 https://github.com/adreznec/docker-nginx.git#master:mainline/alpine
# Kafka
docker build -t ppc64le/kafka:0.10.2.0 https://github.com/adreznec/docker-kafka.git#master
# Zookeeper
docker build -t ppc64le/zookeeper:3.4.10 https://github.com/adreznec/zookeeper-docker.git#master:3.4.10
# Consul
docker build -t ppc64le/consul:0.7.0 https://github.com/adreznec/docker-consul.git#v0.7.0:0.X
# Registrator
docker build -t ppc64le/registrator:latest https://github.com/adreznec/registrator.git#master
