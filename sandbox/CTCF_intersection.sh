#!/bin/bash

###Set file paths###
RefDir=~/mnt/c/Users/Awang/CSB/project/CTCF_sort_merge
ModDir=~/mnt/c/Users/Awang/CSB/project/CTCF_consensus
mkdir -p $ModDir #if destination directory does not exist, make it

ref_file=$RefDir #/ENCFF006YGI.sorted.merged2.bed   #$(ls $RefDir | sort -n | head -1)
print $ref_file
#for file in $RefDir/*.bed;
#	do
#	bedtools intersect -a $fileA -b $file > fileA
#	done
