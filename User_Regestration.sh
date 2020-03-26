#!/bin/bash -x
read -p "Enter" x
First_Name_Regex="^([A-Z]{1}[a-z]{2}[a-z]*)$"

	if [[ $x =~ $First_Name_Regex  ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi

