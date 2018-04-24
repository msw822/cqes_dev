/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use adm;
DROP TABLE IF EXISTS ADM.EDU_ADM_SWXX_SUM;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_SWXX_SUM(
  "XH" varchar(50) NOT NULL COMMENT '学号',
  "ZYM" VARCHAR (8) COMMENT '专业码',
  "ZYM_MC" VARCHAR (200) COMMENT '专业名称',
  "SSYXM" VARCHAR (50) COMMENT '所属院校码',
  "SSYXM_MC" VARCHAR (200) COMMENT '所属院校',
  "LYDQM" VARCHAR (10) COMMENT '学生来源地区码,见中华人民共和国行政区划代码表',
  "LYDQM_SM" VARCHAR (200) COMMENT '来源地',
  "JGM" VARCHAR (10) COMMENT '籍贯码',
  "JGM_SM" VARCHAR (200) COMMENT '籍贯',
  "SW_ZSC" decimal(10,0) DEFAULT NULL COMMENT '上网总时长(秒)',
  "SW_YJSC" decimal(10,0) DEFAULT NULL COMMENT '月均上网时长(秒)',
  "SW_RJSC" decimal(10,0) DEFAULT NULL COMMENT '日均上网时长(秒)',
  "SW_SYLL" varchar(255) DEFAULT NULL COMMENT '上网使用总流量(GB)'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='上网信息汇总表adm';
