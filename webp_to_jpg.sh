#!/usr/bin/bash

#for f in ./*.jpg;
#do
  #cwebp -q 85 "$f" -o "${f%.*}.webp";
#done
FILES="./*.webp"

for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  dwebp "$f" -o "${f%.*}.jpg";
  #cat "$f"
done
