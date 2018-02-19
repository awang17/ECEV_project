#!/bin/bash

###Set file paths###
RefDir=/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
ModDir=/mnt/c/Users/Awang/CSB/project/CTCF_composite

mkdir -p $ModDir

#file=$RefDir/ENCFF006YGI.sorted.merged.bed
ref_file=$(ls $RefDir | sort  -n | head -1)
#file=$(ls $RefDir | sort -n | tail -1)

#bedtools intersect -a $RefDir/$ref_file -b $RefDir/$file > $ModDir/test.bed
#echo $RefDir/$ref_file
#echo $RefDir/$file


for file in $(ls $RefDir | sort -n);
	do
	echo 'comparing ' $file ' to ' $ref_file
	bedtools intersect -a $RefDir/$ref_file -b $RefDir/$file > $RefDir/composite_$file
	ref_file=composite_$file
	done

cp $RefDir/composite_$file $ModDir/composite_CTCF_seq

for file in $RefDir/composite_*;
	do
	echo 'removing ' $file
	rm $file
	done
