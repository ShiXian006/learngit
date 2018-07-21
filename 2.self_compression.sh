#!/bin/bash

Usage(){
        echo "usage: 2.self_compression.sh [--list] or [Source compressed file] [Destination path]"
        echo "Self compression accroding to the file namesuffix"
        exit
}

List(){
        echo "Supported file types: zip tar tar.gz tar.bz2"
        exit
}

filename=$1
path=$2

if [ -z $filename ];then
        Usage;
elif [ $filename = '--list' ];then
        List;
else
        case $ext in
