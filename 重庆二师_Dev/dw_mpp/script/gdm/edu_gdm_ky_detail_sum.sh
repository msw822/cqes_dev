#
#         FILE: edu_gdm_ky_detail_sum.sh
#
#        USAGE: ./ edu_gdm_ky_detail_sum.sh
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

sql="
TRUNCATE TABLE gdm.edu_gdm_ky_detail_sum;
INSERT INTO gdm.edu_gdm_ky_detail_sum
SELECT
	DWH,
	DWMC,
	XMBH AS KY_BH,
	XMMC AS KY_MC,
	XMLBM AS KY_LX,
	XMLBM_MC AS KY_LX_MC,
	'项目' AS KY_LB,
	NULL AS HJMC,
	XMXZ AS KY_JB,
	XMFZRH AS KY_ZZ,
	JXRQ AS KY_RQ
FROM
	edu_gdm_ky_xm_da;

UNION ALL

SELECT
	COALESCE (DWH_ZL, DWH_RY) AS DWH,
	COALESCE (DWMC_ZL, DWMC_RY) AS DWMC,
	ZLCGBH AS KY_BH,
	ZLCGMC AS KY_MC,
	ZLLXM AS KY_LX,
	ZLLXM_MC AS KY_LX_MC,
	'专利' AS KY_LB,
	NULL AS HJMC,
	NULL AS KY_JB,
	XM AS KY_ZZ,
	PZRQ AS KY_RQ
FROM
	gdm.edu_gdm_ky_zl_da

UNION ALL

SELECT
	COALESCE(DWH_ZZ,DWH_RY) AS DWH,
  COALESCE(DWMC_ZZ,DWMC_ZZ) AS DWMC,
	ZZBH AS KY_BH,
	ZZZWMC AS KY_MC,
	LZLBM AS KY_LX,
	LZLBM_MC AS KY_LX_MC,
	'专著' AS KY_LB,
	NULL AS HJMC,
	NULL AS KY_JB,
	XM AS KY_ZZ,
	CBRQ AS KY_RQ
FROM
	gdm.edu_gdm_ky_zz_da
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "--generated to fail"
fi
