
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
TRUNCATE TABLE gdm.edu_gdm_ky_xm_da;
INSERT INTO gdm.edu_gdm_ky_xm_da
SELECT 
xm.XMBH,
xm.DWH,
dw.DWMC,
xm.XMMC,
xm.ZXBH,
xm.KSRQ,
xm.JXRQ,
xm.XMFZRH,
xm.XMWTDWM,
xm.XMWTDWMC,
xm.XMLYM,
xmly.MC AS XMLYM_MC,
xm.MJM,
mj.MC AS MJM_MC,
xm.SHJJXYM,
shjjxy.MC SHJJXYM_MC,
xm.XKLYM,
NULL AS XKLYM_MC,
xm.GJDQM,
NULL AS GJDQM_MC,
xm.JHWCQKM,
jhwcqk.MC AS JHWCQKM_MC,
xm.HZXSM,
HZXS.MC AS HZXSM_MC,
xm.SSJSLY,
xm.XMPZH,
xm.XMLBM,
xmlb.MC AS XMLBM_MC,
xm.XMJBM,
NULL AS XMJBM_MC,
xm.HDLXM,
hdlx.MC AS HDLXM_MC,
xm.XMZXZTM,
zxzt.MC AS ZMZXZTM_MC,
xm.XMJTXS,
xm.SBRQ,
xm.LXRQ,
xm.ZGBM,
xm.XKMLKJM,
xkml.MC AS XKMLKJM_MC,
xm.SSHYM,
NULL AS SSHYM_MC,
xm.DWJSM,
js.MC AS DWJSM_MC,
xm.SBXMH,
xm.YQYJCGJXS,
xm.XMZY,
xm.XDWH,
xm.KTRQ,
xm.SHJJMB,
xm.ZTC,
xm.SSZKT,
xm.XMLYDW,
xm.JBM,
jb.MC AS JBM_MC,
xmjf.JHJFZE,
xmjf.XMJFLYM,
xmjfly.MC AS XMJFLYM_MC,
xmjf.BRRQ,
xmjf.BKS,
xmjf.ZCRQ,
xmjf.BFXZDWJF,
xmjf.BKDW
FROM 
fdm.edu_fdm_ky_xm xm
LEFT OUTER JOIN fdm.edu_dim_dw dw
ON xm.DWH=dw.DWH
LEFT OUTER JOIN fdm.edu_hb_xmly xmly
ON xm.XMLYM=xmly.DM
LEFT OUTER JOIN fdm.edu_hb_bmdj mj
ON xm.MJM=mj.DM
LEFT OUTER JOIN fdm.edu_hb_shjjxy shjjxy
ON xm.SHJJXYM=shjjxy.DM
LEFT OUTER JOIN fdm.edu_hb_jhwcqk jhwcqk
ON xm.JHWCQKM=jhwcqk.DM
LEFT OUTER jOIN fdm.edu_hb_hzxs hzxs
ON xm.HZXSM=hzxs.DM
LEFT OUTER JOIN fdm.edu_hb_xmlb xmlb
ON xm.XMLBM=xmlb.DM
LEFT OUTER JOIN fdm.edu_hb_hdlx hdlx
ON xm.HDLXM=hdlx.DM
LEFT OUTER JOIN fdm.edu_hb_xmzxzt zxzt
ON xm.XMZXZTM=zxzt.DM
LEFT OUTER JOIN fdm.edu_hb_xkml xkml
ON xm.XKMLKJM=xkml.DM
LEFT OUTER JOIN fdm.edu_hb_js js
ON xm.DWJSM=js.DM
LEFT OUTER JOIN fdm.edu_hb_jb jb
ON xm.JBM=jb.DM

LEFT OUTER JOIN fdm.edu_fdm_ky_xmjf xmjf
ON xm.XMBH=xmjf.XMBH
LEFT OUTER JOIN fdm.edu_hb_xmjfly xmjfly
ON xmjf.XMJFLYM=xmjfly.DM
;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
