#!/usr/bin/bash

#for f in ./*.jpg;
#do
  #cwebp -q 85 "$f" -o "${f%.*}.webp";
#done
FILES="./*.png"

for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  cwebp -q 85 "$f" -o "${f%.*}.webp";
  #cat "$f"
done
