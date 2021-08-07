#!/bin/bash
git clone https://github.com/NerdyNeesah/Team-Crick
cd ./Team-Crick
#FILE=a.out

#Delete the file if it exists and recreate new one
rm Team_crick.csv 2> /dev/null || touch Team_crick.csv ; touch Team_crick.csv

for file in $(ls)
do
 echo $file
	#for python files
	if [[ $file == *.py ]]; then
		python3 $file >> Team_crick.csv
	elif [[ $file == *.R ]]; then
		Rscript $file >> Team_crick.csv
	elif [[ $file == *.cpp ]]; then
		g++ $file
		./a.out >> Team_crick.csv
		rm a.out
	elif [[ $file == *.php ]]; then
		php $file >> Team_crick.csv
	fi
done 

if test -f "$FILE"; then
    rm $FILE             #remove if there is any executable file is present
fi

PROG_NAME=firsttask.cpp       #name of my c++ program
echo $PROG_NAME           #print name of pragram name

output=$(g++ $PROG_NAME)  #compile program
echo $output              #print if there is any error


if test -f "$FILE"; then  #check if we have our c++ program compiled succssfully
                          #if yes, then execute it and clean up the executable
    RESULT=$(./$FILE params) #save the output from our program to RESULT

    echo $RESULT >> Team_crick.csv #append thes result in the csv file
    rm $FILE 
fi
