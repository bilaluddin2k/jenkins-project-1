#!/bin/bash

for i in {1..10}; do
    rand_string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
    echo "$rand_string"
done