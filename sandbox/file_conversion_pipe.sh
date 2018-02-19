#!/bin/bash

###Set file paths###
RefDir=/mnt/c/Users/Awang/CSB/project/CTCF_chipseq
ModDir=/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
mkdir -p $ModDir #if destination directory does not exist, make it

#file=$RefDir/ENCFF006YGI.bed
for file in $RefDir/*;
	do
	file_trim=$(echo $file | rev | cut -f 1 -d '/' | rev|  cut -f 1 -d '.') 
	echo $file ' ' $file_trim
	sort -k1,1 -k2,2n $file | bedtools merge > $ModDir/$file_trim.sorted.merged2.bed
	echo 'printed file ' $file_trim.sorted.merged.bed ' in directory ' $ModDir
	done
#for file in $RefDir/*;
#	do
#	file_trim=basename $file .bed #$(echo $file | cut -f 1 -d '.')
#	sort -k1,1 -k2,2n $file | bedtools merge > $file_trim.merged.sorted.bed
#	echo 'Sorting and merging '
#	echo $file_trim;
#	done

