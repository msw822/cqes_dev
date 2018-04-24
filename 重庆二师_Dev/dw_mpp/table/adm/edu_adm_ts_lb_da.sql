/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use adm;
DROP TABLE IF EXISTS adm.edu_adm_ts_lb_da;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_ts_lb_da (
  `TSLB` VARCHAR(20) NOT NULL COMMENT '图书类别',
  `TSLB_MC` VARCHAR(100) COMMENT '[edu_hb_tslb]图书类别名称',
  `TSCES` INT(4) COMMENT '同一类别图书数量' ,
  `TSBL` decimal(5,2) COMMENT '同一类别图书占总图书的比例'
)DEFAULT CHARSET=utf8 COMMENT='[图书类别表]图书模型，每日全量更新';