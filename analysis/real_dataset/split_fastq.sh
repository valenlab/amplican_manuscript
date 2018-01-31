#!/bin/bash

# Splits fastq files by primers into one file per expeirment.
# As input takes path to config table as csv, where are fastq files located if 
# paths are not full in config and as third argument to which folder output results

function split () { #Forward_Reads Reverse_Reads ID Forward_Primer Reverse_Primer output folder
	echo "ID: ${3}"

	# forward primer in forward read
	cat "${1}" | seqkit grep --by-seq --ignore-case --degenerate --pattern "$4" | seqkit seq --name --only-id > id.txt
	# reverse primer in reverse read	
	cat "${2}" | seqkit grep --by-seq --ignore-case --degenerate --pattern "$5" | seqkit seq --name --only-id >> id.txt
	
	# only unique IDs form both forward and reverse reads	
	echo "$(uniq id.txt)" > id.txt
	
	# based on ID select those reads into new file
	cat "${1}" | seqkit grep --pattern-file id.txt > "$6${3}_sim1.fastq"
	cat "${2}" | seqkit grep --pattern-file id.txt > "$6${3}_sim2.fastq"
}

i=0
OLDIFS=$IFS
IFS=, #set comma delimiter
[ ! -f $1 ] && { echo "$1 file not found"; exit 99; }
while read ID Barcode Forward_Reads Reverse_Reads Group Control guideRNA Forward_Primer Reverse_Primer Direction Amplicon
do	
	if [ $i == 0 ]; then
		((++i))
 		continue
	fi
	
	split "${2}${Forward_Reads}" "${2}${Reverse_Reads}" $ID $Forward_Primer $Reverse_Primer $3
done < $1
IFS=$OLDIFS

rm id.txt
