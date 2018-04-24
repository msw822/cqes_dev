#!/usr/bin/env bash
#
#         FILE:
#
#        USAGE:
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
sql="TRUNCATE TABLE ADM.EDU_ADM_YKT_JY_SUM;
INSERT INTO ADM.EDU_ADM_YKT_JY_SUM
SELECT XH, ZYM, ZYM_MC, SSYXM, SSYXM_MC, LYDQM, LYDQM_SM, JGM, JGM_SM,
       COUNT(*) AS XF_CS, SUM(JYJE) AS XF_JE, 
	   SUM(JYJE)/PERIOD_DIFF(
		       	             MAX(SUBSTR(JYRQ, 1, 6)),
		                     MIN(SUBSTR(JYRQ, 1, 6))
		                    ) AS XF_YJXFE,
	   SUM(JYJE)/PERIOD_DIFF(
		       	             MAX(SUBSTR(JYRQ, 1, 6)),
		                     MIN(SUBSTR(JYRQ, 1, 6))
		                    )/30 AS XF_RJXFE
FROM GDM.EDU_GDM_YKT_JY_DA
GROUP BY XH, ZYM, ZYM_MC, SSYXM, SSYXM_MC, LYDQM, LYDQM_SM, JGM, JGM_SM"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
