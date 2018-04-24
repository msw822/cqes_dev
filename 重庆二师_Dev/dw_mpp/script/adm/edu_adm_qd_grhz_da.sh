#
#        USAGE: ./ edu_adm_qd_grhz_da.sh
#
#  DESCRIPTION: 签到个人数据汇总
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
sql="truncate table adm.edu_adm_qd_grhz_da;
insert into adm.edu_adm_qd_grhz_da
select a.xh, a.zqcs, a.cdcs, a.kkcs, a.qjcs, a.zym, a.zqcs_pm, ROUND((100 - 100*a.zqcs_pm/77), 2) AS ZQCS_JBB
from
(
	select xh, zqcs, cdcs, kkcs, qjcs, zym, row_number() over(partition by zym order by zqcs) as zqcs_pm
	from tmp.edu_adm_qd_grhz_da
) a"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
