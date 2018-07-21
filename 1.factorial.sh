#!/bin/bash

factorial()
{
        local N=$1

        if [ $N -eq 0 ]
        then
                echo 1
        else
                local num=$(($N-1))
                local rtn=` factorial $num`
                echo $(($N*$rtn))
        fi
}

if [ -z $1 ]
then
        echo "usage:factorial.sh[n]"
        echo "calculates a number's factorial"
        exit 1
fi

