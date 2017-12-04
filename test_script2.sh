#!/bin/bash

# If less than one parmeter is provided to the shell script, give an error message
# and exit.
if (( $# < 1 )); then
    echo "Insufficient parameters"
    echo "Usage: ./test_script2.sh <dir_path>"
    exit 1
fi

dir_path=$1
echo ${dir_path}

# For each file in the $dir_path, append the name of the file with the current
# timestamp.
for entry in `ls ${dir_path}`; do
    echo ${entry}
    file_path=${dir_path}/${entry}
    mv $file_path ${file_path}_$(date -d "today" +"%Y%m%d%H%M") 
done

