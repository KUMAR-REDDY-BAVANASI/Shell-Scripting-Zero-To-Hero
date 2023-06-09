#!/bin/bash

#getting the user ID.
USERID=$(id -u)

#checking the user is root or not
if [ $USERID -eq 0 ] #-eq, -ne, -gt, -lt
then
    echo "User has root access"
else
    echo "You are not root user, Please run with root privilege access"
    exit 1
fi

ls -ltr # it is failure so it will not excute further

if [ $? -ne 0 ]; 
then
	echo "previous command is failure"
	exit 1
fi

ls -ltr

if [ $? -ne 0 ]; 
then
	echo "previous command is failure"
	exit 1
fi

echo "program is success"