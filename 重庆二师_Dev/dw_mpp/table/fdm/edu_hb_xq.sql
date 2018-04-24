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
use fdm;
DROP TABLE IF EXISTS `edu_hb_xq`;
CREATE TABLE `edu_hb_xq` (
"DM" char(1) NOT NULL COMMENT '代码' ,
"MC" VARCHAR(10) NOT NULL COMMENT '名称',
"SM" VARCHAR(100) NULL COMMENT '说明'
) DEFAULT CHARSET=utf8 COMMENT='[学期代码表]学期的枚举类型，采用顺序码，用一位数字表示。'
;

-- ----------------------------
-- Records of edu_hb_xq
-- ----------------------------
INSERT INTO `edu_hb_xq` VALUES ('1', '秋季学期',null);
INSERT INTO `edu_hb_xq` VALUES ('2', '春季学期', null);
INSERT INTO `edu_hb_xq` VALUES ('3', '夏季学期', null);
INSERT INTO `edu_hb_xq` VALUES ('9', '其他', null);