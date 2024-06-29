#!/bin/bash

if [-d "env"]
then 
  echo "Python virtual env exists"
fi

echo $PWD
source env/scripts/activate

pip3 install -r requirement.txt

if [-d "logs"]
  echo "Log folder exists"
else 
   mkdir logs
   touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finishes"


