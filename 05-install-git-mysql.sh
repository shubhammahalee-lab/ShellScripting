#! /bin/bash

usr_check=$(id -u)

validate(){

    pkg=$1
    status=$2
    if [ $status -ne 0 ]
    then 
        echo "$pkg is not install"
        exit 1
    else 
        echo "$pkg is install sucesss"
    fi




}

if [ $usr_check -ne 0 ]
then 
    echo "you are not in the root"
    exit 1
else
    echo "you are in the root "
fi

yum install git -y
validate "git" $?

yum install mysql -y
validate "mysql" $?
