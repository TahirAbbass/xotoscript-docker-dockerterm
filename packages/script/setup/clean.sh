#!/bin/bash
set -x
# Load variables from .env file
if [ -f .env ]; then
   source .env
fi

# UPDATE

sudo apt-get update -y -q && sudo apt-get upgrade -y -q
