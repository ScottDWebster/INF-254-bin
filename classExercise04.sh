#!/bin/bash 
echo -e "Today’s date is: \c" 
date
echo -e "\nThe people logged into the system include:" 
who 
echo -e "\nWould you like to see the contents of /?(y/n)-->\c" 
read ANSWER 
if [ $ANSWER = "y" ]; then 
echo -e "\nThe contents of the / directory are:"
ls -F / 
fi

