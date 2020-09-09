#!/bin/bash -x

#pattern
pattern_name="^[[:upper:]][[:lower:]]{2,}$"
pattern_email="^[0-9a-zA-Z]+([._+-][0-9A-Za-z]+)*@[0-9A-Za-z]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})*$"
pattern_mobile="^[0-9]{1,3}[[:space:]][0-9]{10}$"

#First name check
fname_check=0
echo "Enter first name starts with Caps and has minimum 3 Characters"
while [[ fname_check -eq 0 ]]
do
        read -p "Enter First name: " fname
        if [[ $fname =~ $pattern_name ]]
        then
                fname_check=1
        else
                echo "Please enter valid first name"
        fi
done

#Last name check
lname_check=0
echo "Enter last name starts with Caps and has minimum 3 Characters"
while [[ lname_check -eq 0 ]]
do
        read -p "Enter Last name: " lname
        if [[ $lname =~ $pattern_name ]]
        then
                lname_check=1
        else
                echo "Please enter valid last name"
        fi
done

#Email check
email_check=0
echo "Enter Email Id with precise @ and . positions"
while [[ email_check -eq 0 ]]
do
        read -p "Enter Email Id: " email
        if [[ $email =~ $pattern_email ]]
        then
                email_check=1
        else
                echo "Please enter valid email id"
        fi
done

#mobile number check
mobile_check=0
echo "Enter mobile name country code followed by space and 10 digit number"
while [[ mobile_check -eq 0 ]]
do
        read -p "Enter Mobile Number: " mobile
        pattern_mobile="^[0-9]{1,3}[[:space:]][0-9]{10}$"
        if [[ $mobile =~ $pattern_mobile ]]
        then
                mobile_check=1
        else
                echo "Please enter valid mobile number"
        fi
done

#password check
password_check=0
echo "Enter password minimum 8 characters, at least 1 uppercase, at least 1 numeric number, exactly one special character"
while [[ password_check -eq 0 ]]
do
	read -p "Enter Password: " pass
	passpat=$(($(tr -d '[[:alnum:]]' <<< $pass | wc -m)-1))
	if [[ ${#pass} -ge 8 && "$pass" == *[[:upper:]]* && "$pass" == *[0-9]* && $passpat -eq 1 ]]
	then
		password_check=1
	else
		echo "Please enter valid password"
	fi
done

#show user data
echo "<--------- User Information --------->"
echo "First Name    : " $fname
echo "Last Name     : " $lname
echo "Email         : " $email
echo "Mobile Number : " $mobile
echo "Password      : " $pass

#email samples
echo "Email samples validation"
sample_check=0
while [[ sample_check -eq 0 ]]
do
	read -p "Enter Email: " email_samples
	if [[ $email_samples =~ $pattern_email ]]
        then
                echo "Valid"
        else
                echo "Invalid"
        fi
	read -p "Do you want to check another email samples ( Yes = 0, No = 1 ): " choice
	sample_check=$choice
done
