#!/bin/bash
set -e

git clone $1 /project

docker-compose pull
docker-compose build
docker-compose run web rake

