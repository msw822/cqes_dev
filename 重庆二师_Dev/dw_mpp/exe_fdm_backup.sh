#!/usr/bin/env bash
#
#         FILE: exe_fdm_backup.sh
#
#        USAGE: sh exe_fdm_backup.sh '-umpp -ph3c' 'xxxx-xx-xx'
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

tables=(edu_fdm_xs_jbxx
  EDU_FDM_XS_LYXX
  EDU_FDM_XS_XJXX
  edu_fdm_xs_zsxx
  EDU_FDM_XQXX
  EDU_FDM_JZG
  edu_fdm_xs_jttxfsxx
  edu_fdm_xs_knxsxx
  edu_fdm_xs_lxrxx
  edu_fdm_xs_xjydxx
  edu_fdm_xs_zcxx
)

for  var in ${tables[@] };
do 
  now=`date +%Y-%m-%d:%H:%M:%S`
  echo "$now backup: $var"
  if [ ! -n "$2" ]; then
      sql="DELETE FROM tmp.$var
       WHERE DT = date_sub(date_format(now(), '%Y-%m-%d'), interval 1 day) ;
       INSERT INTO tmp.$var
       SELECT *, date_sub(date_format(now(), '%Y-%m-%d'), interval 1 day) as dt
       FROM FDM.$var"
  else
     dt=$2
     sql="DELETE FROM tmp.$var
       WHERE DT = '$dt' ;
       INSERT INTO tmp.$var
       SELECT *, '$dt' as dt
       FROM FDM.$var" 
  fi
  gccli $conn -e "$sql"
  status=$?
  if [ $status -eq 0 ]; then
    echo "${var%.*} data backup successfully"
	else 
	   "${var%.*} data backup to fail"
	   
  fi
done
wait

