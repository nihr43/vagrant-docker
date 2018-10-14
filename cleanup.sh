#!/bin/bash
#
## halts and destroys all vagrant machines residing below ./

for i in ./*; do
  if [ -d $i ]; then
    cat <<< "=> Entering $i"
    cd ./$i
    vagrant destroy -f
    rm -rf ./.vagrant
    cd ..
  fi
done
