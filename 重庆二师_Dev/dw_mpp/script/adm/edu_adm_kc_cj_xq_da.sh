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
sql="TRUNCATE TABLE ADM.EDU_ADM_KC_CJ_XQ_DA;
INSERT INTO ADM.EDU_ADM_KC_CJ_XQ_DA
SELECT A1.XH, A1.XN, A1.XQM, A1.PJCJ, B1.GKS
FROM
(
  SElECT A.XH, A.XN, A.XQM, SUM(A.KCCJ_JG * A.XF)/SUM(A.XF) AS PJCJ
  FROM
  (
    SELECT XH, XN, XQM, KCH, XF, MAX(KCCJ_JG) AS KCCJ_JG
    FROM GDM.EDU_GDM_KC_KCCJ_DA
    WHERE KCCJ_JG IS NOT NULL
    GROUP BY XH, XN, XQM, KCH, XF
  ) A
    GROUP BY A.XH, A.XN, A.XQM
) A1
LEFT JOIN
(
  SELECT B.XH, B.XN, B.XQM, COUNT(DISTINCT KCH) AS GKS
  FROM 
  (
    SELECT XH, XN, XQM, KCH, MAX(KCCJ_JG) AS KCCJ_JG
    FROM GDM.EDU_GDM_KC_KCCJ_DA
    WHERE KCCJ_JG IS NOT NULL
    GROUP BY XH, XN, XQM, KCH
  ) B
  WHERE KCCJ_JG < '60'
  GROUP BY B.XH, B.XN, B.XQM
) B1
ON A1.XH = B1.XH AND A1.XN = B1.XN AND A1.XQM = B1.XQM
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
