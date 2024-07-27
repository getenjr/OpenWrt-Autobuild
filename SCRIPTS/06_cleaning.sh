#!/bin/bash

rm -rf `ls | grep -v "rootfs"`
ls *rootfs.img.gz 1> /dev/null 2>&1
ls *rootfs.img.gz | xargs rm -fr
ls *.gz 1> /dev/null 2>&1
gzip -d *.gz
ls *.img 1> /dev/null 2>&1
gzip *.img
ls *.gz 1> /dev/null 2>&1
for gzfirm in *.gz; do
  sha256sum "$gzfirm" >> sha256sum.txt
done
[ -f ../../../../.config ]
mv ../../../../.config config-full

exit 0
