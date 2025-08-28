#!/bin/bash
# add user to docker group
# https://docs.docker.com/engine/install/ubuntu

sudo usermod -aG docker $USER && newgrp docker
