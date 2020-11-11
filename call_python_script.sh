#!/bin/bash


source /usr/local/apps/psycapps/config/conda_bash_update

# The python scripts folder is taken as an input
script_folder=$1
subject=$2

cd $script_folder

python sample_python_script.py $subject
