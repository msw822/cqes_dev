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
DROP TABLE IF EXISTS ADM.EDU_ADM_SWXX_ZY;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_SWXX_ZY(
  "ZYM" VARCHAR (50) COMMENT '专业码',
  "SW_ZSC" decimal(10,0) DEFAULT NULL COMMENT '专业均上网总时长(秒)',
  "SWZSC_HIGH" decimal(10,0) DEFAULT NULL COMMENT '该专业均上网总时长(秒)最高值',
  "SWZSC_LOW" decimal(10,0) DEFAULT NULL COMMENT '该专业均上网总时长(秒)最低值'
)DEFAULT CHARSET=utf8 COMMENT='专业上网信息汇总adm';
