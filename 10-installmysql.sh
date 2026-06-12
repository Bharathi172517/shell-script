#!/bin/bash
USERID=$(id -u)

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

# we are  installting wthout checking

  # dnf install mysql -y
  #     if [ $? -ne 0 ]
  #     then 
  #         echo "mysql installaton ---failed"
  #         exit 1
  #     else
  #         echo "mysql installaton ---success"

  #       fi

# dnf install git -y
#       if [ $? -ne 0 ]
#       then 
#           echo "git installaton ---failed"
#           exit 1
#       else
#           echo "git installaton ---success"

#         fi


# we are checking the installtion done before installing

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
                     