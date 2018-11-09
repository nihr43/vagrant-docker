#!/bin/bash
#
## halts and destroys all vagrant machines residing below ./

destroy () {
  if [ -d $1 ]; then
      cat <<< "=> Entering $1"
      cd ./$1
      vagrant destroy -f
      rm -rf ./.vagrant
      cd ..
    fi
}

export -f destroy

parallel destroy ::: ./*
