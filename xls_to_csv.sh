#!/bin/zsh

inputDir=$1
outputDir=$2

for file in $inputDir/*
do
  base_name=$(basename ${file})
  in2csv $file > $outputDir/${base_name%.*}.csv
done
