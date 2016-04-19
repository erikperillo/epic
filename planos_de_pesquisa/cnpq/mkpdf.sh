#!/bin/sh

file=$1
name=$(echo $file | rev | cut -f1 -d. --complement | rev)

biber $name && \
texi2pdf $file
