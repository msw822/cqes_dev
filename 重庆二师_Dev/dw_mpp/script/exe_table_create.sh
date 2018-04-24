#!/usr/bin/env bash
#
#         FILE: exe_table_create.sh 
#
#        USAGE: sh exe_table_create.sh "-umpp -ph3c" "fdm gdm adm"
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
base=$(readlink -f .)
base_parent_dir=$(dirname $base)
conn=$1
dbs=$2
fail_nums=0
for db in ${dbs[@]};
do 
	su - mpp -c "gccli $conn -e 'CREATE DATABASE IF NOT EXISTS $db'"
	echo "----------database-$db alrealy created"
done

for  db in ${dbs[@]};
do
	echo "database-$db begin create table..."
    for file in "${base_parent_dir}"/table/"$db"/*;
	do 
		echo "`date +%Y-%m-%d:%H:%M:%S` executing: $file"
		su - mpp -c "gccli $conn  < $file"
		
		tab_name=$(basename $file .sql)
	    status=$?
	    if [ $status -eq 0 ]; then
			echo "`date +%Y-%m-%d:%H:%M:%S` ${tab_name} table created successfully"
	    else
		    echo "`date +%Y-%m-%d:%H:%M:%S` ${tab_name} table created to fail"
			let fail_nums=fail_nums+1
		fi
	done
done
wait
echo "fail: ${fail_nums}"
echo "-----------$database's tables executed completely!-----------"
