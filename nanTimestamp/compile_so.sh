#!/bin/bash
gcc -shared -fPIC -DKXVER=3 $1.c -o $1.so

#sample usage to create time.so
#./compile_so.sh time.c
