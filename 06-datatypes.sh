#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "additon of $NUMBER1 and $NUMBER2 is: $SUM"

TIMESTAMP=$(date)

echo "this script executed at: $TIMESTAMP"

SUM1=$(($NUMBER1+$NUMBER2))
echo "additon of $NUMBER1 and $NUMBER2 is: $SUM1"
