#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
  echo "error: must have root access"
fi