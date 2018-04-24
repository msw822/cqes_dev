#!/usr/bin/env bash
#
#         FILE: run_adm_generate.sh
#
#        USAGE: sh run_adm_generate.sh '-umpp -ph3c' adm
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


# 教师主题
#同层依赖情况

#课程
sh $base/sql_generate_data/$db/edu_adm_kc_gk_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_sum_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_xq_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_zy_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_grhz_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_zyhz_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_kc_cj_sum.sh "$conn"
#科研主题 
#同层依赖情况

#图书
#同层依赖情况
sh $base/sql_generate_data/$db/edu_adm_ts_lb_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ts_ndjyjl_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ts_jyjl_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ts_jyjl_grhz_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ts_jyjl_zyhz_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ts_jyjl_sum.sh "$conn"

#一卡通
#同层依赖情况
sh $base/sql_generate_data/$db/edu_adm_ykt_cc_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ykt_jy_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ykt_st_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ykt_zy_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_ykt_jy_sum.sh "$conn"


#上网
sh $base/sql_generate_data/$db/edu_adm_swjzsd.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_swsdtj.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_swxx.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_swxx_zy.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_swxx_sum.sh "$conn"

#签到
#sh $base/sql_generate_data/$db/edu_adm_qd_grhz_da.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_qd_zyhz_da.sh "$conn"

#就业
sh $base/sql_generate_data/$db/edu_adm_jyxx_zy_sum.sh "$conn"
sh $base/sql_generate_data/$db/edu_adm_jyxx_yx_sum.sh "$conn"

sh $base/sql_generate_data/$db/edu_adm_zyhz_da.sh "$conn"

echo "-----------all executed completely!-----------"
