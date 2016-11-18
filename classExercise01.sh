#!/bin/bash
echo "What is your name?"
# Input from user
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file" 
exit

