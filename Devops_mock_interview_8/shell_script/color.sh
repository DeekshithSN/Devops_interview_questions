#! /bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [ $# -eq 2 ]
then 
    sum=$(( $1 + $2  ))
    diff=`expr $1 - $2`
    echo "${GREEN}sum of $1 and $2 = $sum "
    echo "diff of $1 and $2 = $diff ${NC}"
elif [ $# -lt 2 ]
then
     echo "${RED}args are too less"
     echo "the script execution is not correct"
     echo "ex - sh test.sh number1 number2 ${NC}" 
elif [ $# -gt 2 ]
then 
        echo "${YELLOW} args are too many"
        echo "the script execution is not correct"
        echo "ex - sh test.sh number1 number2 ${NC}"
fi
