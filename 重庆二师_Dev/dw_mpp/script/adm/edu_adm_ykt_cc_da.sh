#!/usr/bin/env bash
#
#         FILE: edu_adm_ykt_cc_da.sh
#
#        USAGE: ./edu_adm_ykt_cc_da.sh
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
sql="TRUNCATE TABLE ADM.EDU_ADM_YKT_CC_DA;
INSERT INTO ADM.EDU_ADM_YKT_CC_DA
SELECT  JYRQ,
        CASE WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '050000' AND '090000' THEN '早餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '090001' AND '155959' THEN '中餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '160000' AND '200000' THEN '晚餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '200001' AND '235959' THEN '夜宵'
        END AS STCC,
        SUM(JYJE) AS JYJE,
        COUNT(*) AS RS
FROM GDM.EDU_GDM_YKT_JY_DA A, FDM.EDU_DIM_STCC D
WHERE (SHMC LIKE '%餐厅%' OR SHMC LIKE '%食堂%') AND (SUBSTR(A.JYSJ, 9, 6) BETWEEN D.ST_TIME AND D.END_TIME)
GROUP BY JYRQ, 
        CASE WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '050000' AND '090000' THEN '早餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '090001' AND '155959' THEN '中餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '160000' AND '200000' THEN '晚餐'
             WHEN SUBSTR(A.JYSJ, 9, 6) BETWEEN '200001' AND '235959' THEN '夜宵'
         END;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi