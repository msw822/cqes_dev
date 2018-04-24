#!/usr/bin/env bash
#
#         FILE: edu_adm_jyxx_yx_sum.sh
#
#        USAGE: ./edu_adm_jyxx_yx_sum.sh
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
sql="TRUNCATE TABLE ADM.EDU_ADM_JYXX_YX_SUM;
INSERT INTO ADM.EDU_ADM_JYXX_YX_SUM(SSYXM, SSYXM_MC, BYNF, JYLX, JYRS, JYL, JYXZ)
SELECT A.SSYXM, A.SSYXM_MC, A.BYNF, A.JYLX, A.JYRS, A.JYRS/B.RS AS JYL, A.JYXZ
FROM
(
  SELECT SSYXM, SSYXM_MC, BYNF, JYLX, COUNT(*) AS JYRS, AVG(JYXZ) AS JYXZ
  FROM GDM.EDU_GDM_JYXX_DA
  GROUP BY SSYXM, SSYXM_MC, BYNF, JYLX
) A
LEFT JOIN
(
    SELECT SSYXM, COUNT(*) AS RS
    FROM GDM.EDU_GDM_XS_JBXX_DA
    GROUP BY SSYXM
) B
ON A.SSYXM = B.SSYXM;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"
else echo "-- generating to fail"
fi
