#!/bin/zsh

file="target.txt"

while IFS= read line
do
        # display $line or do somthing with $line
	cp "./dataset/train/${line}" "./dataset_small/train/${line}"
done <"$file"


