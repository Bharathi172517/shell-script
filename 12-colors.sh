#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [ $1 -ne 0 ]
      then 
          echo -e "$2 --- $R failed"
          exit 1
      else
          echo -e "$2 ---$G success"

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
     echo -e  "mysql already $Y installed"
  fi



# we are checking the installtion done before installing

 dnf list installed git
if [ $? -ne 0 ]
 then 
    dnf install git -y
      VALIDATE $?  Git installaton
  else
     echo -e "git already $Y installed"
  fi
                     