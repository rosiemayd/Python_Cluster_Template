#!/bin/bash
# Script to call the job scheduler on the cluster

# The scripts folder is taken as an input
script_folder=$1

# Create log folder for output and error files
# Make sure to change this according to your account and that this folder exists

OUTPUT_LOG_DIR=~/log
mkdir -p $OUTPUT_LOG_DIR
echo "created log folders successfully"
cd $(pwd)

for subject in {1..5}; do
        qsub    -l h_rss=1G \
                -o ${OUTPUT_LOG_DIR}/Python_Output.out \
                -e ${OUTPUT_LOG_DIR}/Python_Error.err \
                call_python_script.sh $script_folder $subject;  
done
