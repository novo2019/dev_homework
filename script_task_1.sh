#!/bin/bash
dir=homework
if [ ! -d $dir ]; then
     mkdir $dir
     touch $dir/content.txt
else
     echo "Directory exists"
fi
date >> $dir/content.txt
wc -l $dir/content.txt
tail -n1 $dir/content.txt

