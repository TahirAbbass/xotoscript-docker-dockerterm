#!/bin/bash
set -x
# Load variables from .env file
if [ -f .env ]; then
   source .env
fi

# MAVEN

set -ex && sudo apt-get install --yes --no-install-recommends --allow-unauthenticated \
  maven
