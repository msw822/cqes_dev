#!/usr/bin/env bash
#
#         FILE: run_gdm_generate.sh
#
#        USAGE: sh run_gdm_generate.sh '-umpp -ph3c' gdm
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
conn=$1
db=$2
echo "$conn"
#学生主题
#同层依赖情况
sh $base/sql_generate_data/$db/edu_gdm_xs_jbxx_da.sh "$conn"

# 教师主题
#同层依赖情况
sh $base/sql_generate_data/$db/edu_gdm_jzg_da.sh "$conn"
#课程
#sh $base/sql_generate_data/$db/edu_gdm_kc_kccj_da.sh "$conn"

#科研主题 
#同层依赖情况
sh $base/sql_generate_data/$db/edu_gdm_ky_xm_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_gdm_ky_zl_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_gdm_ky_zz_da.sh "$conn"

#图书
#同层依赖情况
sh $base/sql_generate_data/$db/edu_gdm_ts_jyjl_da.sh "$conn"

#一卡通
sh $base/sql_generate_data/$db/edu_gdm_ykt_jy_da.sh "$conn"

#就业主题
sh $base/sql_generate_data/$db/edu_gdm_jyxx_da.sh "$conn"

echo "-----------all executed completely!-----------"
