#!/bin/bash

dir=$1

if [ -d $dir ]
    then
        for i in $(ls)
	    do
		owner=$(stat -c '%U' $i)    
                if [ -e $i ] && [ $owner!=root ]
	            then     
			cp $i /home/$owner    
		fi
	    done
    else 
        echo directory does not excist
fi	
