#!/bin/bash

if [ $# == 4 ];then
        if [ $1 = "-n" -a $3 = "-d" ];then
                echo "The largest files/directories in $4 are:"
                du -ah $4 | sort -nr | head -$2
        else
                echo "usage:$0 [-n N] [-d DIR]"
                echo "show top N largest files/directories"
        fi

else
        echo "$0 [-n N] [-d DIR]"
        echo "show top N largest files/directories"
fi
