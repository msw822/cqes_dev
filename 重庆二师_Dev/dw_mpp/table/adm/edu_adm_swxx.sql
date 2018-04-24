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
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use adm;
DROP TABLE IF EXISTS ADM.EDU_ADM_SWXX;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_SWXX(
  "XH" varchar(50) NOT NULL COMMENT '学号',
  "ZYM" VARCHAR (50) COMMENT '专业码',
  "SW_ZSC" decimal(10,0) DEFAULT NULL COMMENT '上网总时长(秒)',
  "SW_YJSC" decimal(10,0) DEFAULT NULL COMMENT '月均上网时长(秒)',
  "SW_RJSC" decimal(10,0) DEFAULT NULL COMMENT '日均上网时长(秒)',
  "SW_SYLL" varchar(255) DEFAULT NULL COMMENT '上网使用总流量(GB)',
  "SW_ZSCPM" varchar(10) DEFAULT NULL COMMENT '上网总时长排名',
  "SW_ZSCJBB" DECIMAL(10, 2) COMMENT '上网总时长击败百分比'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT='上网信息汇总表adm';
