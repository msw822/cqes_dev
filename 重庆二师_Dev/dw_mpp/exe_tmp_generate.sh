#!/usr/bin/env bash
#
#         FILE: run_tmp_generate.sh
#
#        USAGE: sh run_tmp_generate.sh '-umpp -ph3c' tmp 
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
conn=$1
db=$2
echo "$conn"

#图书
#依赖gdm层图书表
sh $base/sql_generate_data/$db/edu_tmp_ts_jyjl.sh "$conn"

echo "-----------all executed completely!-----------"
