#!/bin/bash

rootfs.tar.gz
for file in *; do
  if [ "$file" != "rootfs.tar.gz" ]; then
    rm -rf "$file"
  fi
done

exit 0
