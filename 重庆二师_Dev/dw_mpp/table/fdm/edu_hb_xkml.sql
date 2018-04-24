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
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
-- ----------------------------
-- Table structure for edu_hb_xkml
-- ----------------------------
use fdm;
DROP TABLE IF EXISTS `edu_hb_xkml`;
CREATE TABLE "edu_hb_xkml" (
  "DM" varchar(1) NOT NULL COMMENT '代码',
  "MC" varchar(50) NOT NULL COMMENT '名称'
) ENGINE=EXPRESS DEFAULT CHARSET=utf8  COMMENT='[学科门类（科技）代码表]本代码采用顺序码，用一位数字表';

-- ----------------------------
-- Records of edu_hb_xkml
-- ----------------------------
INSERT INTO `edu_hb_xkml` VALUES ('1', '自然科学');
INSERT INTO `edu_hb_xkml` VALUES ('2', '农业科学');
INSERT INTO `edu_hb_xkml` VALUES ('3', '医药科学');
INSERT INTO `edu_hb_xkml` VALUES ('4', '工程与技术');
INSERT INTO `edu_hb_xkml` VALUES ('5', '人文与社会科学');
