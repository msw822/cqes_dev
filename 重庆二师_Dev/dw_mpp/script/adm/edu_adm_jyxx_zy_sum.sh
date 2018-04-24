#!/usr/bin/env bash
#
#         FILE: edu_adm_jyxx_zy_sum.sh
#
#        USAGE: ./edu_adm_jyxx_zy_sum.sh
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
sql="TRUNCATE TABLE ADM.EDU_ADM_JYXX_ZY_SUM;
INSERT INTO ADM.EDU_ADM_JYXX_ZY_SUM (ZYM, ZYM_MC, BYNF, JYLX, JYRS, ZYJYL, ZYXZ)
SELECT A.ZYM, A.ZYM_MC, A.BYNF, A.JYLX, A.JYRS, A.JYRS/B.ZYM AS JYL, A.ZYXZ
FROM
(
  SELECT ZYM, ZYM_MC, BYNF, JYLX, COUNT(*) AS JYRS, AVG(JYXZ) as ZYXZ
  FROM GDM.EDU_GDM_JYXX_DA 
  GROUP BY ZYM, ZYM_MC, BYNF, JYLX
) A
LEFT JOIN 
(
    SELECT ZYM, COUNT(*) AS ZYRS
    FROM GDM.EDU_GDM_XS_JBXX_DA
    GROUP BY ZYM
) B
ON A.ZYM = B.ZYM;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"
else echo "-- generating to fail"
fi
