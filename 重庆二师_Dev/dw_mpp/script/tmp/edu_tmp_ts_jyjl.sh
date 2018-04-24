#
#         FILE: edu_tmp_ts_jyjl.sh
#
#        USAGE: ./ edu_tmp_ts_jyjl.sh
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
sql="TRUNCATE TABLE tmp.edu_tmp_ts_jyjl;
INSERT INTO tmp.edu_tmp_ts_jyjl
SELECT A.XH, A.TSLB_MC, MAX(CNTS) AS CNTS
FROM
(
  SELECT XH, TSLB_MC, COUNT(*) AS CNTS
  FROM GDM.EDU_GDM_TS_JYJL_DA
  GROUP BY XH, TSLB_MC
) A
GROUP BY A.XH, A.TSLB_MC"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- tmp.edu_tmp_ts_jyjl generated successfully"  
else echo "-- tmp.edu_tmp_ts_jyjl generating Failed"       
fi
