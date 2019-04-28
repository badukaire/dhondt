#!/bin/bash

# to be run inside the "test" folder

for F in input/*.txt
do
  BF=$( basename $F | cut -d. -f1 )
  HTML=output/$BF.html
  echo "file $F => $HTML"
  ../dhondt $F > $HTML
done

