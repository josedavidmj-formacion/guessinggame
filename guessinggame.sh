#!/usr/bin/env bash

file_count=$(ls | wc -l)

function get_guess_from_user() {

	echo "How many files are in the current directory? "
	read guess
}

while [[ ${guess} -ne ${file_count} ]]
do
	get_guess_from_user

	if [[ ${guess} -gt ${file_count} ]]
	then
		echo "Too high. Try again"
	elif [[ ${guess} -lt ${file_count} ]]
	then
		echo "Too low. Try again"
	fi
done

echo "Congratulations!"

