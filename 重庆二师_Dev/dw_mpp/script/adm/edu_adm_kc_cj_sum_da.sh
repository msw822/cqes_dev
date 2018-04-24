#
#        USAGE: ./ edu_adm_kc_cj_sum_da.sh
#
#  DESCRIPTION: 课程总学分、总学时数据导入
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
sql="TRUNCATE TABLE adm.edu_adm_kc_cj_sum_da;
INSERT INTO adm.edu_adm_kc_cj_sum_da (XH,KC_ZKS,KC_ZXS,KC_ZXF,KC_PJCJ,ZH_KCH)
SELECT
  cjsum.*,
  rank.KCH
FROM (
  SELECT
    XH,
    COUNT(DISTINCT KCH) AS KC_ZKS,
    SUM(XS) AS KC_ZXS,
    SUM(XF) AS KC_ZXF,
    AVG(KCCJ_JG) AS KC_PJCJ
    FROM (SELECT XN,XQM,XH,KCH,MAX(KCCJ_JG) AS KCCJ_JG,XF,XS FROM gdm.edu_gdm_kc_kccj_da GROUP BY XN,XQM,XH,KCH,XF,XS) TEMP1
    GROUP BY XH) cjsum
LEFT OUTER JOIN (
    SELECT
      XH,
      MAX(KCH) AS KCH
    FROM (
      SELECT
        XH,
        KCH,
        KCCJ_JG,
        ROW_NUMBER() OVER (partition by XH order by KCCJ_JG DESC) AS CJ_RANK
      FROM (SELECT XN,XQM,XH,KCH,MAX(KCCJ_JG) AS KCCJ_JG,XF,XS FROM gdm.edu_gdm_kc_kccj_da GROUP BY XN,XQM,XH,KCH,XF,XS) TEMP2) a
    WHERE a.CJ_RANK=1
    GROUP BY XH
    ) rank
ON (cjsum.XH = rank.XH);"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi