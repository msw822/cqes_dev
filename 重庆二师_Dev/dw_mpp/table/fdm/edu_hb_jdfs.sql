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
DROP TABLE IF EXISTS `edu_hb_jdfs`;
CREATE TABLE "edu_hb_jdfs" (
  "DM" char(1) NOT NULL COMMENT '代码',
  "MC" varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[就读方式代码]见JYT1001';

-- ----------------------------
-- Records of edu_hb_jdfs
-- ----------------------------
INSERT INTO `edu_hb_jdfs` VALUES ('1', '走读');
INSERT INTO `edu_hb_jdfs` VALUES ('2', '住校');
INSERT INTO `edu_hb_jdfs` VALUES ('3', '借宿');
INSERT INTO `edu_hb_jdfs` VALUES ('9', '其他');