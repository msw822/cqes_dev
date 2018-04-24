/*
#  DESCRIPTION: 惩处违章类型信息表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS FDM.EDU_FDM_CCWZLXXX;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_CCWZLXXX (
  "XH" varchar(20) NOT NULL COMMENT '学号',
  "SFZJH" varchar(20) DEFAULT NULL COMMENT '身份证件号',
  "FKE" decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '罚扣额,单位元',
  "WZLX" varchar(40) DEFAULT NULL COMMENT '违章类型',
  "WJRQ" varchar(8) DEFAULT NULL COMMENT '违纪日期,格式：YYYYMMDD',
  "WJJK" varchar(180) DEFAULT NULL COMMENT '违纪简况',
  "WJLBM" varchar(8) DEFAULT NULL COMMENT '违纪类别码',
  "CFMCM" varchar(8) DEFAULT NULL COMMENT '处分名称码',
  "CFYY" varchar(180) DEFAULT NULL COMMENT '处分原因',
  "CFRQ" varchar(8) DEFAULT NULL COMMENT '处分日期,格式：YYYYMMDD',
  "CFWH" varchar(20) DEFAULT NULL COMMENT '处分文号',
  "CFCXRQ" varchar(8) DEFAULT NULL COMMENT '处分撤消日期,格式：YYYYMMDD',
  "CFCXWH" varchar(20) DEFAULT NULL COMMENT '处分撤消文号',
  "SSRQ" varchar(8) DEFAULT NULL COMMENT '申诉日期,格式：YYYYMMDD',
  "SWHSYRQ" varchar(8) DEFAULT NULL COMMENT '申委会审议日期,格式：YYYYMMDD',
  "SWHSYJL" varchar(180) DEFAULT NULL COMMENT '申委会审议结论'
) DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='[惩处违章类型信息表]关于惩罚的相关信息';
