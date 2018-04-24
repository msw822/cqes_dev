#!/usr/bin/env bash
#
#         FILE: edu_gdm_xs_jbxx_da.sh
#
#        USAGE: ./edu_gdm_xs_jbxx_da.sh
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
sql="TRUNCATE TABLE GDM.EDU_GDM_XS_JBXX_DA;
INSERT INTO GDM.EDU_GDM_XS_JBXX_DA
SELECT xsjbxx.XH,
       xsjbxx.XM,
       xsjbxx.XBM,
       xb.MC AS XBM_MC,
       xsjbxx.CSRQ,
       xsjbxx.JGM,
       xzqh.XZQHMC AS JGM_MC,
       xzqh.SM AS JGM_SM,
       xsjbxx.MZM,
       mz.MC AS MZM_MC,
       xsjbxx.GJDQM,
       NULL AS GJDQM_MC,
       xsjbxx.SFZJLXM,
       SFZJLX.MC AS SFZJM_MC,
       xsjbxx.SFZJH,
       xsjbxx.HYZKM,
       HYZK.MC AS HYZKM_MC,
       xsjbxx.XYZJM,
       XYZJ.MC AS XYZJM_MC,
       xsjbxx.XXM,
       XX.MC AS XXM_MC,
       xsjbxx.SFZJYXQ,
       xsjbxx.SFDSZN,
       xsjbxx.SFZX,
       xslyxx.YXXMC,
       xslyxx.RXFSM,
       RXFS.MC AS RXFSM_MC,
       xslyxx.LYDQM,
       xzqh3.XZQHMC AS LYDQM_MC,
       xzqh3.SM AS LYDQM_SM,
       xslyxx.SYDM,
       xzqh2.XZQHMC AS SYDM_MC,
       xzqh2.SM AS SYDM_SM,
       xslyxx.JDFSM,
       jdfs.MC AS JDFSM_MC,
       xslyxx.LYGBDQM,
       NULL AS LYGBDQM_MC,
       xslyxx.DXWPDW,
       xslyxx.RXQXLM,
       XL.MC AS RXQXLM_MC,
       xslyxx.RXQXWM,
       XW.MC AS RXQXWM_MC,
       xjxx.RXNY,
       xjxx.XSLBM,
       XSLB.MC AS XSLBM_MC,
       COALESCE(xjxx.XZ, bjxx.XZ) AS XZ,
       COALESCE(xjxx.ZYM, bjxx.SSZYM) AS ZYM,
       COALESCE(bzkzy.mc, bjxx.SSZYMC) AS ZYM_MC,
       xjxx.SZBH,
       bjxx.BJMC,
       COALESCE(xjxx.SZNJ, bjxx.SSNJ) AS SZNJ,
       xjxx.XSDQZTM,
       xsdqzt.MC AS XSDQZTM_MC,
       COALESCE(xjxx.SSXYM, bjxx.SSYXM) AS SSYXM,
       COALESCE(dw_3.DWMC) AS SSYXM_MC,
       xjxx.XKMLM AS XKMLM,
       XKML.MC AS XKMLM_MC,
       xjxx.PYFSM,
       pyfs.MC AS PYFSM_MC,
       xjxx.YJFX,
       xjxx.DSH,
       JZG.XM AS DSH_XM,
       xjxx.HDXLFSM,
       hdxlfs.MC AS HDXLFSM_MC,
       xjxx.PYCCM,
       pycc.MC as PYCCM_MC,
       xjxx.LDFSM,
       NULL AS LDFSM_MC,
       dw_3.LSDWH,
       dw_3.DWLBM,
       dw_3.DWJB,
       zsxx.SSFJH,
       ZZMM.MC,
       XQXX.XQH,
       XQXX.XQMC,
       xsjbxx.ZP
  FROM fdm.edu_fdm_xs_jbxx xsjbxx
  LEFT OUTER JOIN fdm.EDU_FDM_XS_LYXX xslyxx ON TRIM(xsjbxx.XH) =
                                             TRIM(xslyxx.XH)
  LEFT OUTER JOIN fdm.EDU_FDM_XS_XJXX xjxx ON TRIM(xsjbxx.XH) = TRIM(xjxx.XH)
  LEFT OUTER JOIN fdm.edu_dim_bjxx bjxx ON TRIM(xjxx.SZBH) = TRIM(bjxx.BH)
  LEFT OUTER JOIN fdm.edu_hb_bzkzy bzkzy ON TRIM(xjxx.ZYM) =
                                           TRIM(bzkzy.dm)
  LEFT OUTER JOIN fdm.edu_dim_dw dw_3 ON TRIM(xjxx.SSXYM) = TRIM(dw_3.DWH)
  LEFT OUTER JOIN fdm.edu_hb_pyfs pyfs ON TRIM(xjxx.PYFSM) = TRIM(pyfs.DM)
  LEFT OUTER JOIN fdm.edu_hb_hdxlfs hdxlfs ON TRIM(xjxx.HDXLFSM) =
                                              TRIM(hdxlfs.DM)
  LEFT OUTER JOIN fdm.edu_hb_xsdqzt xsdqzt ON TRIM(xjxx.XSDQZTM) =
                                              TRIM(xsdqzt.DM)
  LEFT OUTER JOIN fdm.edu_hb_xb xb ON TRIM(xsjbxx.XBM) = TRIM(xb.DM)
  LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh ON TRIM(xsjbxx.JGM) =
                                          TRIM(xzqh.XZQH)
  LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh2 ON TRIM(xslyxx.SYDM) =
                                           TRIM(xzqh2.XZQH)
  LEFT OUTER JOIN fdm.edu_hb_xzqh xzqh3 ON TRIM(xslyxx.LYDQM) =
                                           TRIM(xzqh3.XZQH)
  LEFT OUTER JOIN fdm.edu_hb_jdfs jdfs ON TRIM(xslyxx.JDFSM) =
                                          TRIM(jdfs.DM)
  LEFT OUTER JOIN fdm.edu_hb_pycc pycc ON TRIM(xjxx.PYCCM) = TRIM(pycc.DM)
  LEFT OUTER JOIN fdm.edu_hb_mz mz ON TRIM(xsjbxx.MZM) = mz.DM
  LEFT OUTER JOIN fdm.edu_fdm_xs_zsxx zsxx ON TRIM(xsjbxx.XH) = TRIM(zsxx.XH)
  LEFT OUTER JOIN FDM.EDU_HB_ZZMM ZZMM ON TRIM(XSJBXX.ZZMMM) = TRIM(ZZMM.DM)
  LEFT OUTER JOIN FDM.EDU_FDM_XQXX XQXX ON TRIM(zsxx.xqh) = TRIM(XQXX.XQH)
  LEFT OUTER JOIN FDM.EDU_HB_SFZJLX SFZJLX ON TRIM(SFZJLX.DM) = TRIM(xsjbxx.SFZJLXM)
  LEFT OUTER JOIN FDM.EDU_HB_HYZT HYZK ON TRIM(HYZK.DM) = TRIM(xsjbxx.HYZKM)
  LEFT OUTER JOIN FDM.EDU_HB_XYZJ XYZJ ON TRIM(XYZJ.DM) = TRIM(xsjbxx.XYZJM)
  LEFT OUTER JOIN FDM.EDU_HB_XX XX ON TRIM(XX.DM) = TRIM(xsjbxx.XXM)
  LEFT OUTER JOIN FDM.EDU_HB_RXFS RXFS ON TRIM(RXFS.DM) = TRIM(xslyxx.RXFSM)
  LEFT OUTER JOIN FDM.EDU_HB_XL XL ON TRIM(XL.DM) = TRIM(xslyxx.RXQXLM)
  LEFT OUTER JOIN FDM.EDU_HB_XW XW ON TRIM(XW.DM) = TRIM(xslyxx.RXQXWM)
  LEFT OUTER JOIN FDM.EDU_HB_XSLB XSLB ON TRIM(XSLB.DM) = TRIM(xjxx.XSLBM)
  LEFT OUTER JOIN FDM.EDU_HB_XKML XKML ON TRIM(XKML.DM) = TRIM(xjxx.XKMLM)
  LEFT OUTER JOIN FDM.EDU_FDM_JZG JZG ON TRIM(JZG.GH) = TRIM(xjxx.DSH)
 ;"
now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"
else echo "-- generating to fail"
fi
