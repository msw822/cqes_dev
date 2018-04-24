#!/usr/bin/env bash
#
#         FILE:
#
#        USAGE:
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
#      CREATED: 2017/08/01
#     REVIEWER:
#     REVISION: ---
base=$(dirname $0)
conn=$1
sql="TRUNCATE TABLE fdm.EDU_FDM_XQXX;
INSERT INTO fdm.EDU_FDM_XQXX
SELECT    XQH,
  XQMC,
  XQDZ,
  XQYZBM,
  XQLXDH,
  XQCZDH,
  XQFZRH
FROM tmp.EDU_FDM_XQXX
WHERE dt IN 
         (
            SELECT MAX(dt)
            FROM tmp.EDU_FDM_XQXX
         )"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now restoring:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- restore successfully"
else echo "-- restore to fail"
fi
