#!/bin/bash -x
Name_Regex="^([A-Z]{1}[a-z]{2}[a-z]*)$"
Mail_Regex="^([a-zA-Z0-9]*[.]*[a-zA-Z0-9]*@[a-zA-Z0-9]*.{1}[a-zA-Z0-9]*[.]*[a-zA-Z0-9]*)$"
read -p "Enter First Name" First_Name
	if [[ $First_Name =~ $Name_Regex  ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
read -p "Enter Last Name" Last_Name
	if [[ $Last_Name =~ $Name_Regex  ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
read -p "Enter Mail ID" Mail
	if [[ $Mail =~ $Mail_Regex  ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
