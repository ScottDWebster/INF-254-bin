#!/bin/bash
T1=43
T2=43
T3=42
if [ $T1 = $T2 ]; then 
	echo “expression evaluated as true”
else
	echo “expression evaluated as false”
fi
if [ $T1 -eq $T3 ]; then
	echo “expression evaluated as true”
else
	echo “expression evaluated as false”
fi
exit

