#!/bin/bash

echo "Exercise 1 output:"
last -iw | cut -c 40-50

echo
echo "Exercise 2 output:"
last -iw | grep ^swebster | grep -v ^$ | cut -c 40-55

echo
echo "Exercise 3 output:"
echo -n "longest remote session for the user swebster is [hh:mm] "
last -iw | grep ^root | grep -v still | grep -v down | grep -v crash | cut -c 51-55 | sort | tail -1
echo
