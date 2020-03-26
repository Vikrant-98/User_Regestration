#!/bin/bash -x
Name_Regex="^([A-Z]{1}[a-z]{2}[a-z]*)$"
Mail_Regex="^([a-zA-Z0-9]*[.]*[a-zA-Z0-9]*@[a-zA-Z0-9]*.{1}[a-zA-Z0-9]*[.]*[a-zA-Z0-9]*)$"
Mobile_Regex="^([0-9]{2}[ ]{1}[0-9]{10})$"
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
read -p "Enter Mobile Number" Mobile
	if [[ $Mobile =~ $Mobile_Regex  ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
read -p "Please enter password: " User_passwd
count1=0
count2=0
count3=0
count4=0
if [[ ${#User_passwd} -ge 8 ]]
then
    count1=1
fi

if [[ "$count1" == 1 && "$count2" == 1 && "$count3" == 1 && "$count4" = 1 ]]
then
     echo "Strong Password"
fi
if [[ "$User_passwd" = *[A-Z]* ]]
then
    count2=1
fi
if [[ "$User_passwd" = *[0-9]* ]]
then
    count3=1
fi
if [[ "$User_passwd" = *['!'@#\$%^\&*()_+]* ]]
then
    count4=1
fi
if [[ "$count1" = 0 ]]
then
   echo "Weak Password! It should include at least 8 characters."
fi
if [[ "$count2" = 0 ]]
then
    echo "Weak Password! It should include at least 1 upper case letter."
fi
if [[ "$count3" = 0 ]]
then
    echo "Weak Password! It should include at least 1 number."
fi
if [[ "$count4" = 0 ]]
then
    echo "Weak Password! It should include at least 1 Special character."
fi

