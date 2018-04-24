
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
TRUNCATE TABLE gdm.edu_gdm_jzg_da;
INSERT INTO gdm.edu_gdm_jzg_da
SELECT
	jzg.GH,
	jzg.DWH,
	dw.DWMC AS DWMC,
	jzg.XM,
	jzg.YWXM,
	jzg.XMPY,
	jzg.CYM,
	jzg.XBM,
	xb.MC AS XBM_MC,
	CSRQ,
	CSDM,
	xzqh.XZQHMC AS CSDM_MC,
	xzqh.SM AS CSDM_SM,
	jzg.JGM,
	xzqh_jg.XZQHMC AS JGM_MC,
	xzqh_jg.SM AS JGM_SM,
	jzg.MZM,
	mz.MC AS MZM_MC,
	jzg.GJDQM,
	xzqh_gjdq.XZQHMC AS GJDQM_MC,
	jzg.SFZJLXM,
	sfzjlx.MC AS SFZJLXM_MC,
	jzg.SFZJH,
	jzg.HYZTM,
	hyzt.MC AS HYZTM_MC,
	jzg.GATQWM,
	gatqw.MC AS GATQWM_MC,
	jzg.ZZMMM,
	zzmm.MC AS ZZMMM_MC,
	JKZKM,
	jkzk.MC AS JKZKM_MC,
	jzg.XYZJM,
	xyzj.DM AS XYZJM_MC,
	jzg.XXM,
	xx.MC AS XXM_MC,
	jzg.ZP,
	jzg.SFZJYXQ,
	jzg.XQH,
	xq.XQMC,
	ZGXLM,
	xl.MC AS ZGXLM_MC,
	jzg.WHCDM,
	whcd.MC AS WHCDM_MC,
	CJGZNY,
	jzg.LXRQ,
	jzg.QXRQ,
	jzg.CJNY,
	jzg.BZLBM,
	bzlb.MC AS BZLBM_MC,
	jzg.JZGLBM,
	jzglb.MC AS JZGLBM_MC,
	jzg.RKZKM,
	rkzk.MC AS RKZKM_MC,
	jzg.DABH,
	jzg.DAWB,
	jzg.DQZTM,
	jzg.TC,
	jzg.XKLBM,
	NULL AS XKLBM_MC,
	jzg.YJXKM,
	NULL AS YJXKM_MC,
	jzg.EJXKM,
	NULL AS EJXKM_MC,
	jzg.YJFX,
	jzg.ZC
FROM
	(SELECT * FROM FDM.EDU_FDM_JZG) jzg
LEFT OUTER JOIN fdm.edu_dim_dw dw ON jzg.DWH = dw.DWH
LEFT OUTER JOIN fdm.edu_hb_xb xb ON jzg.XBM = xb.DM
LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh ON jzg.CSDM = xzqh.XZQH
LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh_gjdq ON jzg.GJDQM = xzqh_gjdq.XZQH
LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh_jg ON jzg.CSDM = xzqh_jg.XZQH
LEFT OUTER JOIN fdm.edu_hb_mz mz ON jzg.MZM = mz.DM
LEFT OUTER JOIN fdm.edu_hb_sfzjlx sfzjlx ON jzg.SFZJLXM = sfzjlx.DM
LEFT OUTER JOIN fdm.edu_hb_hyzt hyzt ON jzg.HYZTM = hyzt.DM
LEFT OUTER JOIN fdm.edu_hb_gatqw gatqw ON jzg.HYZTM = gatqw.DM
LEFT OUTER JOIN fdm.edu_hb_zzmm zzmm ON jzg.ZZMMM = zzmm.DM
LEFT OUTER JOIN fdm.edu_hb_jkzk jkzk ON jzg.JKZKM = jkzk.DM
LEFT OUTER JOIN fdm.edu_hb_xyzj xyzj ON jzg.XYZJM = xyzj.DM
LEFT OUTER JOIN fdm.edu_HB_xx xx ON jzg.XXM = xx.DM
LEFT OUTER JOIN fdm.edu_dim_xq xq ON jzg.XQH = xq.XQH
LEFT OUTER JOIN fdm.edu_hb_xl xl ON jzg.ZGXLM = xl.DM
LEFT OUTER JOIN fdm.edu_hb_whcd whcd ON jzg.WHCDM = whcd.DM
LEFT OUTER JOIN fdm.edu_hb_bzlb bzlb ON jzg.BZLBM = bzlb.DM
LEFT OUTER JOIN fdm.edu_hb_jzglb jzglb ON jzg.JZGLBM = jzglb.DM
LEFT OUTER JOIN fdm.edu_hb_rkzk rkzk ON jzg.RKZKM = rkzk.DM
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
