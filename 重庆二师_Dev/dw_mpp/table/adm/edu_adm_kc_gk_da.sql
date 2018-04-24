/*
#  DESCRIPTION: 学生挂科信息表，判断接口利用KCCJ_CJ < 60  adm层
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
DROP TABLE IF EXISTS adm.edu_adm_kc_gk_da;
CREATE TABLE IF NOT EXISTS adm.edu_adm_kc_gk_da (
  `XH` varchar(20) NOT NULL COMMENT '学号',
  `XN` varchar(30) NOT NULL COMMENT '学年',
  `GKDE` varchar(256) DEFAULT NULL COMMENT '挂科描述'
) DEFAULT CHARSET=utf8 COMMENT='[挂科记录表]课程模型，每日全量更新';