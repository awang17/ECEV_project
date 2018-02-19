#!/bin/bash

###Set file paths###
RefDir=/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
ModDir=/mnt/c/Users/Awang/CSB/project/CTCF_composite

mkdir -p $ModDir

file=$RefDir/ENCFF006YGI.sorted.merged.bed
echo $file
#file_trim=$(echo $file | rev | cut -f 1 -d '/' | rev|  cut -f 1 -d '.') #basename $file .bed
#echo $file_trim
#sort -k1,1 -k2,2n $file > $ModDir/$file_trim.sorted.bed #$file_trim.sorted.bed
#bedtools merge -i $ModDir/$file_trim.sorted.bed > $ModDir/$file_trim.sorted.merged.bed
#echo 'printing file ' $file_trim.sorted.merged.bed ' in directory' $ModDir
#for file in $RefDir/*;
#	do
#	file_trim=basename $file .bed #$(echo $file | cut -f 1 -d '.')
#	sort -k1,1 -k2,2n $file | bedtools merge > $file_trim.merged.sorted.bed
#	echo 'Sorting and merging '
#	echo $file_trim;
#	done

