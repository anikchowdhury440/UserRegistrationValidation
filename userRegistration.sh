#!/bin/bash -x

#pattern
pattern_fname="^[[:upper:]][[:lower:]]{2,}$"

#First name check
fname_check=0
echo "Enter first name starts with Caps and has minimum 3 Characters"
while [[ fname_check -eq 0 ]]
do
        read -p "Enter First name: " fname
        if [[ $fname =~ $pattern_fname ]]
        then
                fname_check=1
        else
                echo "Please enter valid first name"
        fi
done

#show user data
echo "<--------- User Information --------->"
echo "First Name: " $fname
