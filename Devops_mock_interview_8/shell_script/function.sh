#! /bin/sh
#set -x 

if [ $# -eq 2 ]
then 
    sum=$(( $1 + $2  ))
    diff=`expr $1 - $2`
    echo "sum of $1 and $2 = $sum "
    echo "diff of $1 and $2 = $diff "
elif [ $# -lt 2 ]
then
     echo "args are too less"
     echo "the script execution is not correct"
     echo "ex - sh test.sh number1 number2" 
elif [ $# -gt 2 ]
then 
        echo "args are too many"
        echo "the script execution is not correct"
        echo "ex - sh test.sh number1 number2"
fi
