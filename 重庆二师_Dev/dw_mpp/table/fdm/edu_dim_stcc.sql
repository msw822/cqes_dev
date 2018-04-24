/*
#  DESCRIPTION: 食堂餐次码表
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
DROP TABLE IF EXISTS `edu_dim_stcc`;
CREATE TABLE "edu_dim_stcc" (
  "CCDM" char(2) NOT NULL COMMENT '代码',
  "CCMC" varchar(50) NOT NULL COMMENT '名称',
  "ST_TIME" char(6) NOT NULL COMMENT '开始时间',
  "END_TIME" char(6) NOT NULL COMMENT '结束时间',
  "ST_DATE" varchar(10) DEFAULT NULL COMMENT '开始日期,YYYYMMDD',
  "END_DATE" varchar(10) DEFAULT NULL COMMENT '结束日期,YYYYMMDD'
) DEFAULT CHARSET=utf8 COMMENT='[食堂餐次维度表]根据业务自定义。';

-- ----------------------------
-- Records of edu_dim_stcc
-- ----------------------------
INSERT INTO `edu_dim_stcc` VALUES ('01', '早餐', '050000', '090000', '', '');
INSERT INTO `edu_dim_stcc` VALUES ('02', '午餐', '090001', '155959', '', '');
INSERT INTO `edu_dim_stcc` VALUES ('03', '晚餐', '160000', '200000', '', '');
INSERT INTO `edu_dim_stcc` VALUES ('04', '夜宵', '200001', '235959', '', '');