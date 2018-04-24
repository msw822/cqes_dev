#
#        USAGE: ./ edu_adm_kc_ts_jyjl_grhz_da.sh
#
#  DESCRIPTION: 图书借阅个人数据汇总
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
sql="TRUNCATE TABLE ADM.EDU_ADM_TS_JYJL_GRHZ_DA;
INSERT INTO ADM.EDU_ADM_TS_JYJL_GRHZ_DA(XH, ZYM, TS_JSCIS, TS_JSCES, TS_JSCES_PM, TS_JSCES_JBB)
SELECT D.XH, D.ZYM, D.JSCIS, D.JSCES, D.TS_JSCES_PM, ROUND((100 - 100*D.TS_JSCES_PM/E.RS), 2) AS PJCJ_JBB
FROM
(
  SELECT B.XH, B.ZYM, C.JSCIS, B.JSCES, ROW_NUMBER() OVER(PARTITION BY B.ZYM ORDER BY B.JSCES DESC) AS TS_JSCES_PM
  FROM
  (
    SELECT XH, ZYM, COUNT(TSTM) AS JSCES
    FROM GDM.EDU_GDM_TS_JYJL_DA
    GROUP BY XH, ZYM
  ) B
  LEFT OUTER JOIN
  (
    SELECT XH, COUNT(XH) AS JSCIS
    FROM
    (
      SELECT XH, TO_CHAR(STR_TO_DATE(WJSJ, '%Y-%m-%d'), 'yyyyMMdd') AS WJSJ
      FROM GDM.EDU_GDM_TS_JYJL_DA
      GROUP BY XH, TO_CHAR(STR_TO_DATE(WJSJ, '%Y-%m-%d'), 'yyyyMMdd') 
    ) A
    GROUP BY XH
  ) C
  ON B.XH = C.XH
) D
LEFT JOIN
(
  SELECT ZYM, COUNT(DISTINCT XH) AS RS
  FROM GDM.EDU_GDM_TS_JYJL_DA
  GROUP BY ZYM
) E
ON D.ZYM = E.ZYM"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
