
#!/bin/sh

# The R scripts folder is taken as an input
$script_folder=$1

source /usr/local/apps/psycapps/config/conda_bash_update python-env


python $script_folder/$script_file $database_file_list
