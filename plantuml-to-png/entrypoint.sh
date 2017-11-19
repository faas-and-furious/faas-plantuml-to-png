#!/bin/sh

export nano=`date +%s%N`

cat - > ./$nano.txt

java -jar /app/plantuml.jar $nano.txt 

cat $nano.png > /dev/stdout
