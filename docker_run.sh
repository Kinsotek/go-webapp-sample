#!/bin/bash
echo "Should I run go-webapp-sample (Y/n)?"
read answer
if [[ $answer  == "y"  || $answer == "Y" ]];
then
echo "Okay, what is the port to be used for the purpose?"
read port
echo "Enjoy it from now on through the link of: http://localhost:$port "
echo `docker run -it -p $port:8080 --rm go-webapp-sample sh -c 'cd go-webapp-sample && ./go-webapp-sample'`
else

echo "Okay. Exiting."
exit
fi
