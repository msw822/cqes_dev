#
#         FILE: edu_gdm_ts_jyjl_da.sh
#
#        USAGE: ./ edu_gdm_ts_jyjl_da.sh
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
sql="TRUNCATE TABLE gdm.edu_gdm_ts_jyjl_da;
INSERT INTO gdm.edu_gdm_ts_jyjl_da
SELECT A.TSTM, A.TSMC, A.DZTM, A.SFRZH, B.XH, 
       D.XM, D.XBM, D.XBM_MC, D.RXNY, D.SZNJ, D.SZBH, D.BJMC, D.ZYM, D.ZYM_MC, 
       D.SSYXM, D.SSYXM_MC, D.PYCCM, D.PYCCM_MC, D.SFZJH, D.CSRQ,
       A.JSRQ, A.YHRQ, A.DZXM, A.WJSJ, A.XJCS, A.CSBM, A.CSMC,C.DM, C.MC
FROM FDM.EDU_FDM_TS_JYJL A
LEFT JOIN FDM.EDU_FDM_TS_DZXX B ON A.DZTM = B.DZTM
LEFT JOIN fdm.edu_hb_tslb C ON INSTR(A.TSTM,C.DM) = 1
LEFT JOIN GDM.edu_gdm_xs_jbxx_da D ON B.XH =D.XH"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"  
else echo "-- generated to fail"       
fi