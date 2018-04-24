#
#         FILE: edu_adm_ts_lb_da.sh
#
#        USAGE: ./ edu_adm_ts_lb_da.sh
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
sql="TRUNCATE TABLE adm.edu_adm_ts_lb_da;
INSERT INTO adm.edu_adm_ts_lb_da
SELECT B.FLH,C.MC, B.TSCES, B.TSCES/(SELECT COUNT(*) FROM FDM.EDU_FDM_TS_TSXX) AS TSBL
FROM(
     SELECT A.FLH, COUNT(*) AS TSCES
     FROM FDM.EDU_FDM_TS_TSXX A
     WHERE FLH IS NOT NULL
     GROUP BY FLH) B
LEFT OUTER JOIN fdm.edu_hb_tslb C
ON B.FLH = C.DM;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
