#!/bin/bash

# to be run inside the "test" folder

for F in input/*.txt
do
  BF=$( basename $F | cut -d. -f1 )
  OUT=output/$BF.txt
  echo "file $F => $OUT"
  ../dhondt --output_format text $F > $OUT
done

