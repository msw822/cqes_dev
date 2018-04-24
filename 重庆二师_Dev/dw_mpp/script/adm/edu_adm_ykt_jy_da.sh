#!/usr/bin/env bash
#
#         FILE: edu_adm_ykt_jy_da.sh
#
#        USAGE: ./edu_adm_ykt_jy_da.sh
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
sql="TRUNCATE TABLE ADM.EDU_ADM_YKT_JY_DA;
INSERT INTO ADM.EDU_ADM_YKT_JY_DA
SELECT C.XH, C.ZYM, C.XF_CS, C.XF_CSPM, C.XF_JE, C.XF_JEPM, ROUND((100 - 100*C.XF_JEPM/C.RS), 2) AS XF_JEJBB, C.XF_RJXFE, C.XF_YJXFE
FROM
(
	SELECT A.XH, A.ZYM, A.XF_CS, ROW_NUMBER () OVER (PARTITION BY A.ZYM ORDER BY XF_CS DESC) AS XF_CSPM,
	       A.XF_JE, ROW_NUMBER () OVER (PARTITION BY A.ZYM ORDER BY XF_JE DESC) AS XF_JEPM, B.RS,
	       A.XF_RJXFE, A.XF_YJXFE
	FROM
	(
		SELECT XH, ZYM, COUNT(*) AS XF_CS, SUM(JYJE) AS XF_JE, 
		       SUM(JYJE)/PERIOD_DIFF(
		       	                     MAX(SUBSTR(JYRQ, 1, 6)),
		                             MIN(SUBSTR(JYRQ, 1, 6))
		                             ) AS XF_YJXFE,
		       SUM(JYJE)/PERIOD_DIFF(
		       	                     MAX(SUBSTR(JYRQ, 1, 6)),
		                             MIN(SUBSTR(JYRQ, 1, 6))
		                             )/30 AS XF_RJXFE
		FROM GDM.EDU_GDM_YKT_JY_DA
		GROUP BY XH, ZYM
	) A
	LEFT JOIN
	(
		SELECT ZYM, COUNT(DISTINCT XH) AS RS
		FROM GDM.EDU_GDM_YKT_JY_DA
		GROUP BY ZYM
	) B
	ON A.ZYM = B.ZYM
) C"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
