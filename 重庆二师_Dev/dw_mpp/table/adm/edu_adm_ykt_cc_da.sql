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
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
DROP TABLE IF EXISTS ADM.EDU_ADM_YKT_CC_DA;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_YKT_CC_DA(
  "JYRQ" varchar(10) DEFAULT NULL COMMENT '交易日期',
  "STCC" varchar(10) DEFAULT NULL COMMENT '餐次',
  "JYJE" decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  "RS" int NOT NULL COMMENT '人数'
)DEFAULT CHARSET=utf8 COMMENT='[EDU_ADM_YKT_CC_DA]一卡通消费餐次adm层宽表';
