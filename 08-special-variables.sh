#!/bin/bash

echo "all variable:$@"
echo "first variable:$1"
echo "number of varables:$#"
echo "script name:$0"
echo "present working directory:$PWD"
echo "home directory of current user:$HOME"
echo "which user s running script:$USER"
echo "process id of current script:$$" 
sleep 60 &
ls -l &
echo "process id of last command in background:$!"