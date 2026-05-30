#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
  echo "error: must have root access"
  exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
 then 
    dnf install mysql -y
      if [ $? -ne 0 ]
      then 
          echo "mysql installaton ---failed"
          exit 1
      else
          echo "mysql installaton ---success"

        fi
  else
     echo "mysql already installed"
  fi


 dnf list installed git
if [ $? -ne 0 ]
 then 
    dnf install git -y
      if [ $? -ne 0 ]
      then 
          echo "git installaton ---failed"
          exit 1
      else
          echo "git installaton ---success"

        fi
  else
     echo "git already installed"
  fi
                     