#!/bin/bash

about() {
  echo "docker = $([ -f /.dockerenv ] && echo 'true' || echo 'false')"
  echo "distro = $(lsb_release -i -s -r | xargs)"
  echo "system = $(uname -s -n)"
  echo "tools = $(apt-mark showmanual | sort -u | paste -sd, -)"
}
