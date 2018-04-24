#
#        USAGE: ./ edu_adm_kc_ts_jyjl_zyhz_da.sh
#
#  DESCRIPTION: 图书借阅专业数据汇总
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
sql="TRUNCATE TABLE ADM.EDU_ADM_TS_JYJL_ZYHZ_DA;
INSERT INTO ADM.EDU_ADM_TS_JYJL_ZYHZ_DA(ZYM, TS_JSCES, JSCES_HIGH, JSCES_LOW)
SELECT AA.ZYM, AA.JSCES, BB.JSCES_HIGH, BB.JSCES_LOW
FROM
(
	SELECT ZYM, COUNT(TSTM)/COUNT(DISTINCT XH) AS JSCES
	FROM GDM.EDU_GDM_TS_JYJL_DA
	WHERE ZYM IS NOT NULL
	GROUP BY ZYM
) AA
LEFT JOIN
(
	SELECT B1.ZYM, MAX(B1.JSCES) AS JSCES_HIGH, MIN(B1.JSCES) AS JSCES_LOW
	FROM
	(
	    SELECT XH, ZYM, COUNT(TSTM) AS JSCES
	    FROM GDM.EDU_GDM_TS_JYJL_DA
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
