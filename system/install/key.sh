#!/bin/bash
# setup SSH key and keychain

ssh-keygen -t ed25519

keychain id_ed25519

echo 'eval $(keychain --eval --quiet --agents ssh id_ed25519)' >> ~/.bashrc
