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
DROP TABLE IF EXISTS adm.edu_adm_ts_jyjl_da;
CREATE TABLE
IF NOT EXISTS adm.edu_adm_ts_jyjl_da (
  `XH`          VARCHAR(20)  COMMENT '学号、教工号',
  `TS_DYCMC`    VARCHAR(150) COMMENT '第一次借阅图书名称',
  `TS_DYCSJ`    VARCHAR(20)  COMMENT '第一次借阅图书时间',
  `TS_ZJSCS`    int(4)  COMMENT '总借书次数',
  `TS_ZXHTSLB`  VARCHAR(50)  COMMENT '最喜欢图书类别',
  `TS_ZXHTS`    VARCHAR(150) COMMENT '最喜欢的图书',
  `TS_YJJSCS`   decimal(5,2)  COMMENT '月均借书次数'
)DEFAULT CHARSET=utf8 COMMENT='[图书借阅记录表]图书主题，每日全量更新';
