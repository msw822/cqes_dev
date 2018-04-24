#!/usr/bin/env bash
#
#         FILE: edu_gdm_xs_jbxx_da.sh
#
#        USAGE: ./edu_gdm_xs_jbxx_da.sh
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
sql="TRUNCATE TABLE ADM.EDU_ADM_KC_CJ_ZY_DA;
INSERT INTO ADM.EDU_ADM_KC_CJ_ZY_DA
SElECT A1.XN, A1.XQM, A1.ZYM, A1.PJCJ, B1.GKS
FROM 
(
  SELECT A.XN, A.XQM, A.ZYM, SUM(A.KCCJ_JG * A.XF)/SUM(A.XF) AS PJCJ
  FROM
  (
    SELECT XH, XN, XQM, KCH, ZYM, XF, MAX(KCCJ_JG) AS KCCJ_JG
    FROM GDM.EDU_GDM_KC_KCCJ_DA
    WHERE KCCJ_JG IS NOT NULL
    GROUP BY XH, XN, XQM, KCH, ZYM, XF
  ) A
  GROUP BY A.XN, A.XQM, A.ZYM
)A1
LEFT JOIN
(
  SElECT B.XN, B.XQM, B.ZYM, COUNT(DISTINCT KCH)/COUNT(DISTINCT XH) AS GKS
  FROM
  (
    SELECT XH, XN, XQM, KCH, ZYM, MAX(KCCJ_JG) AS KCCJ_JG
    FROM GDM.EDU_GDM_KC_KCCJ_DA
    WHERE KCCJ_JG IS NOT NULL
    GROUP BY XH, XN, XQM, KCH, ZYM
  ) B
  WHERE KCCJ_JG < '60'
  GROUP  BY XN, XQM, ZYM
)B1
ON A1.XN = B1.XN AND A1.XQM = B1.XQM AND A1.ZYM = B1.ZYM
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi