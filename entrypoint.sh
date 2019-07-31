#!/usr/bin/env bash

for i in {1..100}; do
  var="CHOWN_$i"
  c="${!var}"
  if [[ -z "$c" ]]; then
    break;
  fi

  d=$(echo "$c" | cut -d' ' -f2)

  echo "> chown $c"
  mkdir -v $d
  chown -v $c
done

