#
#        USAGE: ./ edu_adm_ykt_zy_da.sh
#
#  DESCRIPTION: 一卡通专业数据导入
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
sql="TRUNCATE TABLE ADM.EDU_ADM_YKT_ZY_DA;
INSERT INTO ADM.EDU_ADM_YKT_ZY_DA(ZYM, XF_ZYJE, XFJE_HIGH, XFJE_LOW)
SELECT AA.ZYM, AA.XF_ZYJE, BB.XFJE_HIGH, BB.XFJE_LOW
FROM 
(
	SELECT ZYM, SUM(JYJE)/COUNT(DISTINCT XH) AS XF_ZYJE
	FROM GDM.EDU_GDM_YKT_JY_DA
	GROUP BY ZYM
) AA
LEFT JOIN
(
	SELECT B1.ZYM, MAX(XF_JE) AS XFJE_HIGH, MIN(XF_JE) AS XFJE_LOW
	FROM
	(
		SELECT XH, ZYM, SUM(JYJE) AS XF_JE
		FROM GDM.EDU_GDM_YKT_JY_DA
		GROUP BY XH, ZYM
	) B1
	GROUP BY B1.ZYM
) BB ON AA.ZYM = BB.ZYM"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
