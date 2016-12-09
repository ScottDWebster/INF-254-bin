#!/bin/bash

while true; do
echo -e "\nType the letter corresponding to your chioce of command:
\ta. Display a list of currently logged in users.
\tb. Display the number of users with a GID >= 1000
\tc. Display the 10 destination IPs with the  highest number of
\t   connections excluding connections to port 7800
\td. Display the current working directory.
\te. Display the default gateway.
\tf. Display the current time and date.
\tx. Exit."

read menuChoice

case $menuChoice in

	( A | a )
		who
		;;
	( B | b )
		cat /etc/group | cut -d: -f 3 | sort -n | egrep [0-9]{4} | wc -l
		;;
	( C | c )
		cut /connection_table -d" " -f 3 | grep -v 7800 | cut -d: -f1 | sort -n |uniq -c | sort -n | tail -10 | cut -c 9-
		;;
	( D | d )
		pwd
		;;
	( E | e )
		ip route | grep ^default
		;;
	( F | f )
		date
		;;
	( X | x )
		exit
esac
done
