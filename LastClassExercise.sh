#!/bin/bash

while true;
do
echo -n -e "Type the letter corresponding to you desired action:
\ta. Display a list of currently logged-in users.
\tb. Display the number of users with a bash shell assigned to the login.
\tc. Display the disk free statistics.
\td. Display the current working directory.
\te. Display the default gateway.
\tf. Display the current date and time.\n\n"

	read menuChoice
	case $menuChoice in
		a | A ) echo "Currently logged in users:"
			who
			;;
		b | B ) echo "Number of users with bash as their login shell:"
			grep /bin/bash /etc/passwd | wc -l
			;;
		c | C ) echo "Disk free statistics:"
			df -h
			;;
		d | D ) echo "Current working directory:"
			pwd
			;;
		e | E ) echo "Default gateway:"
			ip route
			;;
		f | F ) echo "Current date and time:"
			date
			;;
	esac
	echo
done
