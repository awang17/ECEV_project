#!/bin/bash

###Set file paths###
RefDir=/mnt/c/Users/Awang/CSB/project/CTCF_chipseq
ModDir=/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
mkdir -p $ModDir #if destination directory does not exist, make it

for file in $RefDir/*; #for all files in reference directory
	do
	#trim file path and extension
	file_trim=$(echo $file | rev | cut -f 1 -d '/' | rev |  cut -f 1 -d '.')
	echo $file_trim
	#sort by chromosome then nucleotide, merge overlapping sequences, print in directory #ModDir
	sort -k1,1 -k2,2n $file | bedtools merge > $ModDir/$file_trim.sorted.merged.bed 
	echo 'printed file ' $file_trim.sorted.merged.bed ' in directory ' $ModDir
	done
