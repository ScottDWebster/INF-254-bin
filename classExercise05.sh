#!/bin/bash 
echo -e "What would you like to see? 
	Todays date (d)
	Currently logged in users (u) 
	The contents of the / directory (r)
Enter your choice(d/u/r)-->\c" 
read ANSWER 
if [ $ANSWER = "d” -o $ANSWER = "D" ]; then 
	echo -e "Today’s date is: \c" date 
elif [ $ANSWER = "u” -o $ANSWER = "U" ]; then 
	echo -e "\nThe people logged into the system include:" who
elif [ $ANSWER = "r” -o $ANSWER = "R" ]; then
	echo -e "\nThe contents of the / directory are:" ls –F /
fi

