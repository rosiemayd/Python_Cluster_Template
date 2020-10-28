
#!/bin/sh

# The R scripts folder is taken as an input
$script_folder=$1
script_file=$2
database_file_list=$3

Rscript $script_folder/$script_file $database_file_list
