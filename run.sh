#!/bin/bash

set -e

cd "$(git rev-parse --show-toplevel)"

if ! which xcaddy >/dev/null; then
    echo "You need to install xcaddy so I can make a caddy to use"
    exit 1
fi

if [[ ! -f ./caddy ]]; then
    xcaddy build v2.4.6 --with github.com/leodido/caddy-jsonselect-encoder
fi

export CADDY_LOG_OUTPUT=discard
./caddy run
