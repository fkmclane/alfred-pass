#!/bin/bash

set -e

QUERY=$1
PATH=/usr/local/bin:$PATH

# PASS
pass show "$QUERY" | awk 'BEGIN{ORS=""} {print; exit}'
