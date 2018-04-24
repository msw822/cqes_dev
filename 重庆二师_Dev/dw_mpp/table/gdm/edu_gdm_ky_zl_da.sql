/*
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
*/
use gdm;
DROP TABLE IF EXISTS edu_gdm_ky_zl_da;
CREATE TABLE IF NOT EXISTS "edu_gdm_ky_zl_da" (
  "ZLCGBH" varchar(100) NOT NULL COMMENT '专利成果编号',
  "ZLCGMC" varchar(60) NOT NULL COMMENT '专利成果名称',
  "DWH_ZL" varchar(64) DEFAULT NULL COMMENT'单位号-来自专利信息，见[edu_dim_dw]',
  "DWMC_ZL" varchar(150) DEFAULT NULL COMMENT'单位名称-来自专利信息',
  "SQRQ" varchar(8) DEFAULT NULL COMMENT '申请日期',
  "ZLLXM" char(1) NOT NULL COMMENT '专利类型码，见[edu_hb_zllx]',
  "ZLLXM_MC" varchar(20) DEFAULT NULL COMMENT '专利类型码名称',
  "PZRQ" varchar(8) DEFAULT NULL COMMENT '批准日期',
  "FMRS" int(3) DEFAULT NULL COMMENT '发明人数',
  "ZLQR" varchar(64) DEFAULT NULL COMMENT '专利权人',
  "XM" varchar(100) DEFAULT NULL COMMENT '专利权人姓名',
  "JSM" varchar(64) DEFAULT NULL COMMENT '角色码，见[edu_hb_js]',
  "JSM_MC" varchar(60) DEFAULT NULL COMMENT '角色码-名称',
  "DWH_RY" varchar(100) DEFAULT NULL COMMENT'单位号-来自人员信息',
  "DWMC_RY" varchar(100) DEFAULT NULL COMMENT'单位号-来自人员信息'
)  DEFAULT CHARSET=utf8 COMMENT='[科研-专利扩展表]来自父表[edu_fdm_ky_zl]';