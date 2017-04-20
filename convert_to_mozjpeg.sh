#!/bin/bash
FILES=./inputs/products/*
for file in $FILES
do
  echo "Processing $file file..."
  new_file="${file/inputs/outputs/}"
  new_file="${new_file/products/products/mozjpeg/}"
  /usr/local/opt/mozjpeg/bin/jpegtran -optimize -outfile "$new_file" "$file"
done
