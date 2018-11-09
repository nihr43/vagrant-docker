#!/bin/bash
#
## starts all vagrant machines residing below ./ in parallel

start () {
  if [ -d $1 ]; then
      cat <<< "=> Entering $1"
      cd ./$1
      vagrant up
      cd ..
    fi
}

export -f start

parallel start ::: ./*
