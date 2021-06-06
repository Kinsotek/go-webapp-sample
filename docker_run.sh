#!/bin/bash
echo "Should I run go-webapp-sample (Y/n)?"
read answer
if [[ $answer  == "y"  || $answer == "Y" ]];
then
echo "Enjoy it."
echo `docker run -it -p 8080:8080 --rm go-webapp-sample sh -c 'cd go-webapp-sample && ./go-webapp-sample'`
else

echo "Okay. Exiting."
exit
fi
