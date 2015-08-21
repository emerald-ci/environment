#!/bin/bash

/usr/local/bin/docker-compose pull
/usr/local/bin/docker-compose build
/usr/local/bin/docker-compose run web rake

