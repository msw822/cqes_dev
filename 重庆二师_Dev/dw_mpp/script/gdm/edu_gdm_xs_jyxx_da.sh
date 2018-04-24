#!/usr/bin/env bash
#
#         FILE: edu_gdm_jyxx_da.sh
#
#        USAGE: ./edu_gdm_xs_jyxx_da.sh
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
sql="TRUNCATE TABLE GDM.EDU_GDM_XS_JYXX_DA;
INSERT INTO GDM.EDU_GDM_XS_JYXX_DA(XH, XM, XBM, XBM_MC, RXNY, SZNJ, SZBH, BJMC, ZYM, ZYM_MC, SSYXM, 
                            SSYXM_MC, BYNF, JYLX, JYDD, JYXZ, ZYSFDK, XZSFMY)
SELECT A.XH, 
       A.XM,
       B.XBM,
       B.XBM_MC,
       B.RXNY,
       B.SZNJ,
       B.SZBH,
       B.BJMC,
       B.ZYM,
       B.ZYM_MC,
       B.SSYXM,
       B.SSYXM_MC,
       A.BYNF,
       A.JYLX,
       A.JYDD,
       A.JYXZ,
       A.ZYSFDK,
       A.XZSFMY
FROM FDM.EDU_FDM_XS_JYXX A
LEFT JOIN GDM.EDU_GDM_XS_JBXX_DA B ON A.XH = B.XH;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"
else echo "-- generating to fail"
fi
