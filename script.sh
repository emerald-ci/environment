#!/bin/sh
set -e

git clone $1 /project
cd /project
git checkout $2

