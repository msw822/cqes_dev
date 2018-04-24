#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:--
#     REVISION: ---
#    SRC_TABLE:
#    TGT_TABLE:
#!/usr/bin/env bash
base=$(dirname $0)
conn=$1
sql="TRUNCATE TABLE gdm.edu_gdm_ky_zl_da;
INSERT INTO gdm.edu_gdm_ky_zl_da
SELECT
	zl.ZLCGBH,
	zl.ZLCGMC,
	zl.DWH AS DWH_ZL,
	dw.DWMC AS DWMC_ZL,
	zl.SQRQ,
  zl.ZLLXM,
	zllx.MC AS ZLLXM_MC,
	zl.PZRQ,
	zl.FMRS,
	zl.ZLQR,
	ry.XM,
	ry.JSM,
	js.MC AS JSM_MC,
	ry.DWH AS DWH_RY,
    ry.DWMC AS DWMC_RY

FROM
	fdm.edu_fdm_ky_zlcg zl
LEFT OUTER JOIN fdm.edu_hb_zllx zllx ON zl.ZLLXM = zllx.DM
LEFT OUTER JOIN fdm.edu_fdm_ky_zl_ry ry ON zl.ZLCGBH = ry.KYBH
LEFT OUTER JOIN fdm.edu_hb_js js ON ry.JSM = js.DM
LEFT OUTER JOIN fdm.edu_dim_dw dw ON zl.DWH=dw.DWH
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
