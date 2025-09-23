#!/bin/bash
# allow binaries on protected ports (e.g 80, 443)

sudo setcap cap_net_bind_service=+ep `which $1`
