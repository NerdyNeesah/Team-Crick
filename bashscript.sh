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

cp ./Team_crick.csv ../

echo "All done. Find the csv file at ./Team-Crick/Team_crick.csv or ./Team_crick.csv"
