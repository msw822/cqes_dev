#!/usr/bin/env bash
#
#         FILE: edu_adm_ykt_st_da.sh
#
#        USAGE: ./edu_adm_ykt_st_da.sh
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
base=$(dirname $0)
conn=$1
sql="TRUNCATE TABLE ADM.EDU_ADM_YKT_ST_DA;
INSERT INTO ADM.EDU_ADM_YKT_ST_DA
SELECT SHMC, JYRQ, SUM(JYJE) AS JYJE, COUNT(*) AS RS
FROM GDM.EDU_GDM_YKT_JY_DA
WHERE SHMC LIKE '%餐厅%' OR SHMC LIKE '%食堂%'
group by SHMC, JYRQ;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
