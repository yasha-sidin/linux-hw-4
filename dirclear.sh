# !bin/bash

dir=$1

if [ -d $dir ]
    then
        for i in $(ls $dir | grep -G -e '.*\.tmp' -G -e '.*\.backup' -G -e '.*\.bak') 
	    do
    	        rm -rf $i
            done
    else
        echo directory does not excist
fi	
