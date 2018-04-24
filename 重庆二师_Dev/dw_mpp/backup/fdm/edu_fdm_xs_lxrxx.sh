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
sql="TRUNCATE TABLE fdm.edu_fdm_xs_lxrxx;
INSERT INTO fdm.edu_fdm_xs_lxrxx
SELECT      XH,
  JTGXM,
  LXRXM,
  YZBM,
  TXDZ,
  DH,
  YDDH,
  CZDH,
  DZXX,
  WLDZ,
  JSTXH
FROM tmp.edu_fdm_xs_lxrxx
WHERE dt IN 
         (
            SELECT MAX(dt)
            FROM tmp.edu_fdm_xs_lxrxx
         )"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now restoring:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- restore successfully"
else echo "-- restore to fail"
fi
