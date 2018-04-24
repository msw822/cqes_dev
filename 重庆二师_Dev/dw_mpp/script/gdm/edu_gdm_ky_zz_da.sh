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
sql="
TRUNCATE TABLE gdm.edu_gdm_ky_zz_da;
INSERT INTO gdm.edu_gdm_ky_zz_da
SELECT
	zz.ZZBH,
	zz.ZZZWMC,
	zz.ZZYWMC,
	zz.DWH,
	dw.DWMC,
	zz.XKLYM,
	NULL AS XKLYM_MC,
	zz.XMLYM,
	xmly.MC AS XMLYM_MC,
	zz.LZLBM,
	lzlb.MC AS LZLBM_MC,
	ZGYZM,
	NULL AS ZGYZM_MC,
	zz.YZM,
	NULL AS YZM_MC,
	zz.CBS,
	zz.CBSJBM,
	cbsjb.MC AS CBSJBM_MC,
	zz.CBRQ,
	zz.CBH,
	zz.ZZZS,
	zz.SSXMBH,
	zz.ISBNH,
	zz.YJXK,
	zz.XXSM,
	ry.XM,
    ry.ZC,
    ry.DWH AS DWH_RY,
    ry.DWMC AS DWMC_RY,
    ry.GZL,
    ry.JSM,
    js.MC AS JSM_MC,
    ry.RYLXM,
    RYLXMC
FROM
	fdm.edu_fdm_ky_zz zz
LEFT OUTER JOIN fdm.edu_dim_dw dw ON zz.DWH = dw.DWH
LEFT OUTER JOIN fdm.edu_hb_xmly xmly ON zz.XMLYM = xmly.DM
LEFT OUTER JOIN fdm.edu_hb_lzlb lzlb ON zz.LZLBM = lzlb.DM
LEFT OUTER JOIN fdm.edu_hb_cbsjb cbsjb ON zz.CBSJBM = cbsjb.DM
LEFT OUTER JOIN fdm.edu_fdm_ky_zz_ry ry ON zz.ZZBH=ry.KYBH
LEFT OUTER JOIN fdm.edu_hb_js js ON ry.JSM=js.DM
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "--generated to fail"
fi
