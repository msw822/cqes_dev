#!/usr/bin/env bash
#
#         FILE: edu_gdm_ykt_jy_da.sh
#
#        USAGE: ./edu_gdm_ykt_jy_da.sh
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: --- 依赖EDU_GDM_XS_JBXX_DA
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
sql="TRUNCATE TABLE GDM.EDU_GDM_YKT_JY_DA;
INSERT INTO GDM.EDU_GDM_YKT_JY_DA
SELECT
  E.XH 学号,
  B.XM 姓名,
  B.XBM 性别码,
  B.XBM_MC 性别,
  B.RXNY 入学年月,
  B.SZNJ 所在年级,
  B.SZBH 所在班号,
  BJMC 班级名称,
  B.ZYM 专业码,
  B.ZYM_MC 专业名称,
  B.SSYXM 所属院校码,
  B.SSYXM_MC 所属院校,
  B.PYCCM 培养层次码,
  B.PYCCM_MC 培养层次,
  B.SFZJH 身份证件号,
  B.CSRQ 出生日期,
  A.KH 卡号,
  A.KXL 卡ID,
  A.JYLX 交易类型,
  A.JYJE 交易金额,
  A.JYLSH 交易流水号,
  A.JYRQ 交易日期,
  A.JYSJ 交易时间,
  A.JYDD 交易地点,
  A.SHDM 商户代码,
  C.SHMC 商户名称,
  C.SHLBDM 商户类别代码,
  C.SHLBMC 商户类别名称,
  A.ZDJH 终端机编号,
  A.LJYKCS 累计用卡次数,
  A.JYYE 交易余额,
  B.LYDQM 来源地区编码,
  B.LYDQM_SM,
  B.JGM 籍贯码,
  B.JGM_SM
FROM
  FDM.EDU_FDM_YKT_JY A
LEFT JOIN FDM.EDU_FDM_YKT_XX E ON A.KH = E.KH
LEFT JOIN GDM.EDU_GDM_XS_JBXX_DA B ON E.XH = B.XH
LEFT JOIN FDM.EDU_FDM_YKT_SHXX C ON A.SHDM = C.SHDM;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "-- generated successfully"
else echo "-- generating to fail"
fi
