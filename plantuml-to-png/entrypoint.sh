#!/bin/sh

export file=`date +%s%N`

cat - > ./$file.txt

java -jar /app/plantuml.jar $file.txt 

cat $file.png > /dev/stdout
