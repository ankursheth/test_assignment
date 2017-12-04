# script for the Second Problem of Scripting Option

#!/bin/bash

# If less than two parameters are provided to the shell script, give an error message
# and exit.
if (( $# < 2 )); then
    echo "Insufficient parameters"
    echo "Usage: ./test_script1.sh <input_dir_path> <output_dir_path>"
    exit 1
fi

# Copy the parameters to variables
input_dir=$1
output_dir=$2

# echo ${input_dir}
# echo ${output_dir}

# Finds the files older than 7 days in the input directory and copies them to output directory.
find ${input_dir} -maxdepth 1 -mtime +7 -type f -exec cp {} ${output_dir} \;
