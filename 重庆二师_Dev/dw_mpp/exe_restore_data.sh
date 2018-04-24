#!/usr/bin/env bash
#
#         FILE: exe_restore_data.sh
#
#        USAGE: sh exe_restore_data.sh '-umpp -ph3c' fdm
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
echo "-----------start restore!-----------"
#学生主题
sh $base/backup/$db/edu_fdm_xs_jbxx_da.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_lyxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_xjxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_zsxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xqxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_jttxfsxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_knxsxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_lxrxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_xjydxx.sh "$conn"
sh $base/backup/$db/edu_fdm_xs_zcxx.sh "$conn"

# 教师主题
sh $base/backup/$db/edu_fdm_jzg.sh "$conn"

echo "-----------all executed completely!-----------"
