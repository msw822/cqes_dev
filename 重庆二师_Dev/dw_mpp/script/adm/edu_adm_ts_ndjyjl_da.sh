#
#         FILE: edu_adm_ts_ndjyjl_da.sh
#
#        USAGE: ./ edu_adm_ts_ndjyjl_da.sh
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---

#!/usr/bin/env bash
base=$(dirname $0)
conn=$1
sql="TRUNCATE TABLE adm.edu_adm_ts_ndjyjl_da;
INSERT INTO adm.edu_adm_ts_ndjyjl_da
SELECT B.XH, B.NF, C.JSCIS, B.JSCES
FROM
(
  SELECT XH, SUBSTR(WJSJ, 0, 4) AS NF, COUNT(TSTM) AS JSCES
  FROM GDM.EDU_GDM_TS_JYJL_DA
  GROUP BY XH, NF
) B
LEFT OUTER JOIN
(
  SELECT XH, SUBSTR(WJSJ, 0, 4) AS NF, COUNT(XH) AS JSCIS
  FROM
  (
    SELECT XH, TO_CHAR(WJSJ, 'yyyyMMdd') AS WJSJ
    FROM GDM.EDU_GDM_TS_JYJL_DA
    GROUP BY XH, TO_CHAR(WJSJ, 'yyyyMMdd') 
  ) A
  GROUP BY XH, NF
) C
ON B.XH = C.XH AND B.NF = C.NF;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
