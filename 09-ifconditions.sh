#!/bin/bash
# printing a number which is greater that 100 and less than or equal to 100
# First we need input number 
# in shell script we used -gt (greater than) , -lt (less than), 
# -eq(equal to),-ge(greater than or equal), -le(less than or equal)

NUMBER=$1

if [ $NUMBER -gt 100 ]
then 
    echo "given number is greater  than 100"
else
    echo "given number is less than or equal to 100"
fi
