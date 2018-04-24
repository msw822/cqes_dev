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
sql="TRUNCATE TABLE fdm.EDU_FDM_JZG;
INSERT INTO fdm.EDU_FDM_JZG
SELECT     GH,
  DWH,
  XM,
  YWXM,
  XMPY,
  CYM,
  XBM,
  CSRQ,
  CSDM,
  JGM,
  MZM,
  GJDQM,
  SFZJLXM,
  SFZJH,
  HYZTM,
  GATQWM,
  ZZMMM,
  JKZKM,
  XYZJM,
  XXM,
  ZP,
  SFZJYXQ,
  XQH,
  ZGXLM,
  WHCDM,
  CJGZNY,
  LXRQ,
  QXRQ,
  CJNY,
  BZLBM,
  JZGLBM,
  RKZKM,
  DABH,
  DAWB,
  DQZTM,
  TC,
  XKLBM,
  YJXKM,
  EJXKM,
  YJFX,
  ZC
FROM tmp.EDU_FDM_JZG
WHERE dt IN 
         (
            SELECT MAX(dt)
            FROM tmp.EDU_FDM_JZG
         )"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now restoring:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- restore successfully"
else echo "-- restore to fail"
fi
