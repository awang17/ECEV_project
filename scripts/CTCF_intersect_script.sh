#!/bin/bash

###Set file paths###
RefDir=/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
ModDir=/mnt/c/Users/Awang/CSB/project/CTCF_composite
mkdir -p $ModDir #if destination directory does not exist, create

###define initial variables
ref_file=$(ls $RefDir | sort  -n | tail -1) #first entry numerically in reference dir
num_files=$(ls $RefDir | wc -l) #total number of sequences compiling over

###Comparing files to running composite
for file in $(ls $RefDir | sort -n);
	do
	echo 'comparing ' $file ' to ' $ref_file
	bedtools intersect -a $RefDir/$ref_file -b $RefDir/$file > $RefDir/composite_$file 
	#note: creating so many throwaway files not idea, but don't know solution
	ref_file=composite_$file
	done

cp $RefDir/composite_$file $ModDir/composite_CTCF_$num_files.bed

###Because I suck, need to delete throwaway files
for file in $RefDir/composite_*;
	do
	echo 'removing ' $file
	rm $file
	done
