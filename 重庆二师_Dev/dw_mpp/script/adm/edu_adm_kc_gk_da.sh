#
#         FILE: edu_adm_kc_gk_da.sh
#
#        USAGE: ./ edu_adm_kc_gk_da.sh
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
sql="TRUNCATE TABLE adm.edu_adm_kc_gk_da;
INSERT INTO adm.edu_adm_kc_gk_da
SELECT
  kccj.XH,
  kccj.XN,
  concat(kccj.KCMC,kccj.KCCJ_JG) AS GKDE
FROM (SELECT XN,XQM,XH,KCH,MAX(KCCJ_JG) AS KCCJ_JG,XF,XS,KCMC FROM gdm.edu_gdm_kc_kccj_da GROUP BY XN,XQM,XH,KCH,XF,XS,KCMC) kccj
WHERE kccj.KCCJ_JG < 60;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi