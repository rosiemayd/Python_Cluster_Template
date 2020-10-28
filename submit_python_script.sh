#!/bin/bash
# Script to call the job scheduler on the cluster

# The R scripts folder is taken as an input
script_folder=$1
script_file=$2
database_file_list=$3



# Create log folder for output and error files
# Make sure to change this according to your account and that this folder exists

OUTPUT_LOG_DIR=~/log
mkdir -p $OUTPUT_LOG_DIR
echo "created log folders successfully"

IFS=', ' read -a database_file_list <<< "$database_file_list"

for database_file in "${database_file_list[@]}"; do

    echo "Processing script $script_file on database $database_file"

    qsub    -l h_rss=8G \
            -o ${OUTPUT_LOG_DIR}/R_${database_file}.out \
            -e ${OUTPUT_LOG_DIR}/R_${database_file}.err \
            bash $script_folder/call_R_Script.sh $script_folder $script_file $database_file;
done
