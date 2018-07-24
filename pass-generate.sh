#!/bin/bash

set -e

QUERY=$1
PATH=/usr/local/bin:$PATH

pass generate -n "$QUERY" 20 2>&1 | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | tail -n1 | awk 'BEGIN{ORS=""} {print; exit}'
