#!/bin/bash

user_check=$(id -u)
var1="mysql"
var2="git"

validate(){
    if [ $1 -eq 0 ]
    then 
        echo "$var1 is install sucess"
    else
        echo "$var2 is install sucess"
    fi
}

if [ user_check -ne 0]
then 
    echo "you are not in root user"
    exit 1
else
    echo "you are in the root"
fi

yum install git -y
validate $?


if [ user_check -ne 0]
then 
    echo "you are not in root user"
    exit 1
else
    echo "you are in the root"
fi

yum install mysql -y
validate $?