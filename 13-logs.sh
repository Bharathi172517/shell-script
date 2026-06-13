#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
LOG_FOLDER="/var/log/shellscript.logs"
LOG_FILE=$( echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"


VALIDATE(){
    if [ $1 -ne 0 ]
      then 
          echo -e "$2 --- $R failed"
          exit 1
      else
          echo -e "$2 ---$G success"

        fi
}

echo "script started executing at : $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
 then 
  echo "error: must have root access"
  exit 1
fi
# we are checking the installtion done before installing


dnf list installed mysql &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
 then 
    dnf install mysql -y &>>$LOG_FILE_NAME
      VALIDATE $?  mysql installaton
  else
     echo -e  "mysql already $Y installed"
  fi



# we are checking the installtion done before installing

 dnf list installed git &>>$LOG_FILE_NAME
if [ $? -ne 0 ]
 then 
    dnf install git -y
      VALIDATE $?  Git installaton
  else
     echo -e "git already $Y installed"
  fi
                     