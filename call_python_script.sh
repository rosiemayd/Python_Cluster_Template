#!/bin/bash

# The python scripts folder is taken as an input
script_folder=$1

source /usr/local/apps/psycapps/config/conda_bash_update

cd $script_folder

python sample_python_script.py
