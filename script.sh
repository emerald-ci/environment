#!/bin/bash
set -e

git clone $1 /project
test-runner

