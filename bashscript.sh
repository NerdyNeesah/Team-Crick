#!/bin/bash
git clone https://github.com/NerdyNeesah/Team-Crick
cd ./Team_Crick
FILE=a.out
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