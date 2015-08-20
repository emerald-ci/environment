#!/bin/bash

docker-compose pull
docker-compose build
docker-compose run web rake

