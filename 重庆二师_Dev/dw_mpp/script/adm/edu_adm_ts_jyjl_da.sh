#
#         FILE: edu_adm_ts_jyjl_da.sh
#
#        USAGE: ./ edu_adm_ts_jyjl_da.sh
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
sql="TRUNCATE TABLE adm.edu_adm_ts_jyjl_da;
INSERT INTO adm.edu_adm_ts_jyjl_da
SELECT G.XH, G.TSMC, G.WJSJ, H.TS_ZJSCS, I.TSLB_MC, J.TS_ZXHTS, H.TS_YJJSCS
FROM
(
    SELECT C.XH, MIN(C.WJSJ) AS WJSJ, MIN(C.TSMC) AS TSMC
    FROM
    (
      SELECT A.XH, A.WJSJ, B.TSMC
      FROM
      (
        SELECT XH, MIN(WJSJ) AS WJSJ
        FROM GDM.EDU_GDM_TS_JYJL_DA
        GROUP BY XH
      ) A
      LEFT JOIN 
      GDM.EDU_GDM_TS_JYJL_DA B
      ON A.XH = B.XH AND A.WJSJ = B.WJSJ
    ) C
    GROUP BY C.XH
) G
LEFT JOIN 
(
    SELECT XH,
           COUNT(*) AS TS_ZJSCS, 
           COUNT(*)/PERIOD_DIFF(
           TO_CHAR(MAX(STR_TO_DATE(WJSJ, '%Y-%m-%d')), 'yyyyMM'), 
           TO_CHAR(MIN(STR_TO_DATE(WJSJ, '%Y-%m-%d')), 'yyyyMM')
           ) AS TS_YJJSCS
    FROM GDM.EDU_GDM_TS_JYJL_DA
    GROUP BY XH
) H ON  G.XH = H.XH
LEFT JOIN
(
    SELECT F.XH, MAX(NUMS) AS NUMS, MAX(TSLB_MC) AS TSLB_MC
    FROM
    (
      SELECT D.XH, D.NUMS, E.TSLB_MC
      FROM
      (
        SELECT XH, MAX(CNTS) AS NUMS
        FROM TMP.EDU_TMP_TS_JYJL
        GROUP BY XH
        HAVING XH < 2
        ORDER BY XH
      ) D
      LEFT OUTER JOIN TMP.EDU_TMP_TS_JYJL E
      ON D.XH = E.XH AND D.NUMS = E.CNTS
    ) F
    GROUP BY XH
) I ON G.XH = I.XH
LEFT JOIN
(   
    SELECT BB.XH, MAX(CC.TSMC) AS TS_ZXHTS
    FROM    
    (    
      SELECT XH, MAX(NUM) AS NUM
      FROM
      (  
        SELECT XH, TSMC, COUNT(*) AS NUM
        FROM GDM.EDU_GDM_TS_JYJL_DA
        GROUP BY XH, TSMC
      ) AA
      GROUP BY XH
    ) BB
    LEFT JOIN
    (
      SELECT XH, TSMC, COUNT(*) AS NUM
      FROM GDM.EDU_GDM_TS_JYJL_DA
      GROUP BY XH, TSMC
    ) CC
    ON BB.XH = CC.XH AND BB.NUM = CC.NUM
    GROUP BY XH
) J ON G.XH = J.XH
;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi