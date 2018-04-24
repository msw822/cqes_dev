#
#        USAGE: ./ edu_adm_qd_zyhz_da.sh
#
#  DESCRIPTION: 签到专业数据汇总
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---

#!/usr/bin/env bash
base=$(dirname $0)
conn=$1
sql="truncate table adm.edu_adm_qd_zyhz_da;
insert into adm.edu_adm_qd_zyhz_da(zym, zqcs, cdcs, kkcs, qjcs, zqcs_high, zqcs_low)
select zym, sum(zqcs)/count(distinct xh), 
       sum(cdcs)/count(distinct xh), sum(kkcs)/count(distinct xh), 
       sum(qjcs)/count(distinct xh),
       max(zqcs) as zqcs_high, min(zqcs) as zqcs_low
from adm.edu_adm_qd_grhz_da
group by zym"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
