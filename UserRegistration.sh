#!/bin/bash -x

read -p "enter first name and last name " first_name last_name
read -p "enter email address " email
read -p "enter mobile number formate: country code followed by space followed by 10 digit mobile number " mobileNo
read -p "enter password " password

#patterns for name, email, mobileNo and password validation
namePattern="^[[:upper:]]{1}[a-z]{2,}$";
emailPattern="/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/"
mobPattern="^([+]{1}[9]{1}[1]{1})\s[6-9]{1}[0-9]{9}$"
password_validate="(([[:upper:]]{1,})?).{8,}$/"


if [[ $first_name =~ $namePattern ]] && [[ $last_name =~ $namePattern ]]
then
        echo "first name and last name matched";
else
        echo "name not matched";
fi

if [[ $mobileNo =~ $mobPattern ]]
then
        echo "mobNo matched"
else
        echo "mobNo not mathed"
fi

if [[ $email =~ $emailPattern ]]
then
        echo "email matched"
else
        echo "email not matched"
fi

if  [[ $password =~ $password_validate ]]
then
        echo "password matched"
else
        echo "password not matched"
fi

