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
sql="TRUNCATE TABLE fdm.EDU_FDM_XS_XJXX;
INSERT INTO fdm.EDU_FDM_XS_XJXX
SELECT    XH,
  RXNY,
  XSLBM,
  XZ,
  ZYM,
  SZBH,
  SZNJ,
  XSDQZTM,
  SSXYM,
  XKMLM,
  PYFSM,
  YJFX,
  DSH,
  HDXLFSM,
  SFXFZ,
  PYCCM,
  LDFSM,
  CREATED_TIME,
  MODIFIED_TIME
FROM tmp.EDU_FDM_XS_XJXX
WHERE dt IN 
         (
            SELECT MAX(dt)
            FROM tmp.EDU_FDM_XS_XJXX
         )"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now restoring:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- restore successfully"
else echo "-- restore to fail"
fi
