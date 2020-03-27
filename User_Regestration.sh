#!/bin/bash -x

function Name()
{
while [ $user_Register -lt 2 ]
do
	while [ $user_Register -lt 1 ]
	do

	read -p "Enter First Name" First_Name	

	if [[ $First_Name =~ $Name_Regex  ]]
		then
			echo "valid"
			((user_Register++))
		else
			echo "invalid"
	fi
	done

	read -p "Enter Last Name" Last_Name

	if [[ $Last_Name =~ $Name_Regex  ]]
	then
		echo "valid"
		((user_Register++))
	else
		echo "invalid"
	fi

done
}

function Mail()
{
user_Register=0
while [ $user_Register -lt 3 ]
do

	read -p "Enter Mail ID" Mail

	if [[ $Mail =~ $Mail_Regex  ]]
	then
		echo "valid"
		user_Register=3
	else
		echo "invalid"
	fi

done
}

function Mobile()
{
while [ $user_Register -lt 4 ]
do

	read -p "Enter Mobile Number" Mobile

	if [[ $Mobile =~ $Mobile_Regex  ]]
	then
		echo "valid"
		((user_Register++))
	else
		echo "invalid"
	fi

done
}

function Password()
{
while [ $user_Register -lt 5 ]
do
read -p "Please enter password: " User_passwd
count1=0
count2=0
count3=0
count4=0
if [[ ${#User_passwd} -ge 8 ]]
then
    count1=1
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
if [[ "$count1" == 1 && "$count2" == 1 && "$count3" == 1 && "$count4" = 1 ]]
then
     echo "Strong Password"
	((user_Register++))
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
done
}

Name_Regex="^([A-Z]{1}[a-z]{2}[a-z]*)$"
Mail_Regex="^([a-zA-Z0-9]*[.]*[a-zA-Z0-9]*@[a-zA-Z0-9]*.{1}[a-zA-Z0-9]*[.]*[a-zA-Z0-9]*)$"
Mobile_Regex="^([0-9]{2}[ ]{1}[0-9]{10})$"
user_Register=0
input=0
Name$()
Mail$()
Mobile$()
Password$()
if [ $user_Register -eq 5 ]
then
	echo "$First_Name $Last_Name Registered Succesfully!!!!!!!!!!!!!!"
fi
while [ $input -eq 0 ]

	echo "Do you want to check mail sample valid or not "
	read -p " Enter 0 for yes or any for exit :" input

	Mail$()

done
