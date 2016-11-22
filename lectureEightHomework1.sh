#!/bin/bash

# Loop indefinitely
while true;
do
#	Print out the menu
	echo "Type the letter corresponding to you desired action:"
	echo
	echo -e "\ta. Display a list of currently logged-in users." 
	echo -e "\tb. Display the system’s host name."
	echo -e "\tc. Display the time and date."
	echo -e "\td. Display the disk usage."
	echo -e "\te. Display the current working directory."
	echo -e "\tf. Display the pathname to the BASH shell."
	echo -e "\tx. Exit this menu."
	echo
#	Read in the choice input by the user
	read menuChoice
#	Case statement to handle various choices
	case $menuChoice in
		a | A ) echo "Currently logged in:"
			who
			;;
		b | B ) echo "This syustem's hostname is:"
			hostname
			;;
		c | C ) echo "The current time and date:"
			date
			;;
		d | D ) echo "Current disk usage:"
			df -h
			;;
		e | E ) echo "Your current working directory:"
			pwd
			;;
		f | F ) echo "The full pathname to bash:"
			which bash
			;;
		x | X ) echo "Goodbye"
			exit
			;;
#	End of case statement
	esac
#	Print a blank line to make output look nicer
	echo
# End of while loop
done
