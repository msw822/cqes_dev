#
#         FILE: edu_gdm_kc_kccj_da.sh
#
#        USAGE: ./ edu_gdm_kc_kccj_da.sh
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
sql="TRUNCATE TABLE gdm.edu_gdm_kc_kccj_da;
INSERT INTO gdm.edu_gdm_kc_kccj_da
SELECT 
  kccj.XN,
  kccj.XQM,
  xq.MC AS XQM_MC,
  xsjb.XM,
  kccj.XH,
  kccj.KCH,
  kcjb.KCMC,
  kccj.KSFSM,
  ksfs.MC AS KSFSM_MC,
  kccj.KSXZM,
  ksxz.MC AS KSXZM_MC,
  kccj.KSXSM,
  ksxs.MC AS KSXSM_MC,
  kccj.PSCJ,
  kccj.ZSCJ,
  kccj.KCCJ,
  kccj.KCCJ_JG,
  COALESCE(kccj.XF,kcjb.XF) XF,
  kccj.XF_HD,
  COALESCE(KCCJ.XS, kcjb.ZXS) XS,
  kccj.PM,
  kccj.JD,
  xsjb.XBM,
  xsjb.XBM_MC,
  xsjb.JGM,
  xsjb.JGM_MC,
  xsjb.JGM_SM,
  xsjb.SFZJH,
  xsjb.XXM,
  xsjb.XXM_MC,
  xsjb.SFDSZN,
  xsjb.YXXMC,
  xsjb.RXFSM,
  xsjb.RXFSM_MC,
  xsjb.LYDQM,
  xsjb.LYDQM_MC,
  xsjb.LYDQM_SM,
  xsjb.RXNY,
  xsjb.XZ,
  xsjb.ZYM,
  xsjb.ZYM_MC,
  xsjb.SZBH,
  xsjb.BJMC,
  xsjb.SZNJ,
  xsjb.SSYXM,
  xsjb.PYCCM,
  xsjb.PYCCM_MC
  FROM fdm.edu_fdm_kc_cjjbxx kccj
  LEFT OUTER JOIN gdm.edu_gdm_xs_jbxx_da xsjb ON kccj.XH = xsjb.XH
  LEFT OUTER JOIN fdm.edu_fdm_kc_jbxx kcjb ON kccj.KCH = kcjb.KCH
  LEFT OUTER JOIN fdm.edu_hb_ksxs ksxs ON kccj.KSXSM = ksxs.DM
  LEFT OUTER JOIN fdm.edu_hb_ksxz ksxz ON kccj.KSXZM = ksxz.DM
  LEFT OUTER JOIN fdm.edu_hb_ksfs ksfs ON kccj.KSFSM = ksfs.DM
  LEFT OUTER JOIN fdm.edu_hb_xq xq ON kccj.XQM = xq.DM;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"  
else echo "-- generated to fail"   
fi