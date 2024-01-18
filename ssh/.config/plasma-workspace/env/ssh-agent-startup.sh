#!/bin/bash

export SSH_ASKPASS="/usr/bin/ksshaskpass"
eval $(keychain --eval --noask --quiet id_ed25519)
