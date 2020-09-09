#!/bin/bash -x

#pattern
pattern_name="^[[:upper:]][[:lower:]]{2,}$"

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


#show user data
echo "<--------- User Information --------->"
echo "First Name: " $fname
echo "Last Name: " $lname
