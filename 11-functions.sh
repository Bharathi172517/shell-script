#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
      then 
          echo "$2 ---failed"
          exit 1
      else
          echo "$2 ---success"

        fi
}

if [ $USERID -ne 0 ]
 then 
  echo "error: must have root access"
  exit 1
fi
# we are checking the installtion done before installing


dnf list installed mysql
if [ $? -ne 0 ]
 then 
    dnf install mysql -y
      VALIDATE $?  mysql installaton
  else
     echo "mysql already installed"
  fi



# we are checking the installtion done before installing

 dnf list installed git
if [ $? -ne 0 ]
 then 
    dnf install git -y
      VALIDATE $?  Git installaton
  else
     echo "git already installed"
  fi
                     