#!/bin/zsh

filename="dog_name.txt"


while IFS= read line
do
	folderName="./dataset_small/train/${line}"
        # display $line or do somthing with $line
    # mkdir $folderName

    targetName="${line}"

    while IFS= read imageName
	do
	        # display $line or do somthing with $line
		mv "./dataset/train/${imageName}" "./dataset_small/train/${line}/${imageName}"
	done <"$targetName"

done <"$filename"




