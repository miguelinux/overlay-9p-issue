#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

rm -rf /tmp/t

mkdir -p /tmp/t

cd /tmp/t

mkdir upper lower work merged

cd lower
mkdir a b c
echo a > a/a.txt
echo b > b/b.txt
echo c > c/c.txt
echo abc > abc.txt

cd ../upper
mkdir a x y
echo xy > a/a.txt
echo x > x/x.txt
echo y > y/y.txt
echo xy > xy.txt

mount -t overlay overlay -o lowerdir=/tmp/t/lower,upperdir=/tmp/t/upper,workdir=/tmp/t/work /tmp/t/merged

