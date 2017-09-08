#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail

TARGET_DIR="$HOME/autohome/"

# Make and switch to TARGET_DIR
mkdir -p ${TARGET_DIR}
cd ${TARGET_DIR}

# 1. Install docker
function install_docker() {
    if hash docker-compose 2>/dev/null; then
        echo "Docker (and docker-compose) are already installed :)"
    else
        curl https://get.docker.com | sudo bash
    fi
}

# 2. Fetch docker-compose
function fetch_config() {
    curl https://raw.githubusercontent.com/AaronO/autohome/master/docker-compose.yml > docker-compose.yml
}

# 3. Start containers
function docker_up() {
    sudo docker-compose up
}

# Run things
install_docker
fetch_config
docker_up
