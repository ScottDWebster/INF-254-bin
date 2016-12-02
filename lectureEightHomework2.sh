#!/bin/bash

# Loop indefinitely
while true;
do
#	Print out instructions
	echo "Enter a number between 0 and 100 to convert the number to a letter grade."
	echo "Enter a negative number to exit the script."
	echo
#	Read in input
	read NUMBER
#		Make decisioons based on input in an if statement
		if [ $NUMBER -lt 0 ]; then
			exit
		elif [ $NUMBER -lt 60 ]; then
			echo "$NUMBER equates to an F"
		elif [ $NUMBER -ge 60 ] && [ $NUMBER -lt 70 ]; then
			echo "$NUMBER equates to a D"
		elif [ $NUMBER -ge 70 ] && [ $NUMBER -lt 80 ]; then
			echo "$NUMBER equates to a C"
		elif [ $NUMBER -ge 80 ] && [ $NUMBER -lt 90 ]; then
			echo "$NUMBER equates to a B"
		elif [ $NUMBER -ge 90 ] && [ $NUMBER -le 100 ]; then
			echo "$NUMBER equates to an A"
		else
			echo "Invalid number - try again"
#		end of if statement
		fi
#		Print a blank line to make it look nicer
		echo
# End of while loop
done
