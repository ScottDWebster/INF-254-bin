#!/bin/bash 
echo -e "What would you like to see?
	Todays date (d) 
	Currently logged in users (u)
	The contents of the / directory (r)
Enter your choice(d/u/r)-->\c" 
read ANSWER
case $ANSWER in 
	d | D ) echo -e "\nToday’s date is: \c"
		date
		;;
	 u | U ) echo -e "\nThe people logged into the system include:"
		who 
		;;
	r | R ) echo -e "\nThe contents of the / directory are:" 
		ls –F /
		;; 
	*) echo -e "Invalid choice!"
		;;
esac

